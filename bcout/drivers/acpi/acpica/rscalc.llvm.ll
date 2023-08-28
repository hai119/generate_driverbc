; ModuleID = '../bcout/drivers/acpi/acpica/rscalc.llvm.bc'
source_filename = "drivers/acpi/acpica/rscalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.acpi_resource_vendor = type <{ i16, [1 x i8] }>
%struct.acpi_resource_address16 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address16_attribute, %struct.acpi_resource_source }>
%union.acpi_resource_attribute = type { %struct.acpi_memory_attribute }
%struct.acpi_memory_attribute = type { i8, i8, i8, i8 }
%struct.acpi_address16_attribute = type { i16, i16, i16, i16, i16 }
%struct.acpi_resource_source = type <{ i8, i16, i8* }>
%struct.acpi_resource_address32 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address32_attribute, %struct.acpi_resource_source }>
%struct.acpi_address32_attribute = type { i32, i32, i32, i32, i32 }
%struct.acpi_resource_address64 = type <{ i8, i8, i8, i8, i8, %union.acpi_resource_attribute, %struct.acpi_address64_attribute, %struct.acpi_resource_source }>
%struct.acpi_address64_attribute = type { i64, i64, i64, i64, i64 }
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, [1 x i32] }>
%struct.acpi_resource_gpio = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, %struct.acpi_resource_source, i16*, i8* }>
%struct.acpi_resource_pin_function = type <{ i8, i8, i8, i16, i16, i16, %struct.acpi_resource_source, i16*, i8* }>
%struct.acpi_resource_common_serialbus = type <{ i8, i8, i8, i8, i8, i8, i16, i16, %struct.acpi_resource_source, i8* }>
%struct.acpi_resource_i2c_serialbus = type <{ i8, i8, i8, i8, i8, i8, i16, i16, %struct.acpi_resource_source, i8*, i8, i16, i32 }>
%struct.acpi_resource_pin_config = type <{ i8, i8, i8, i8, i32, i16, i16, %struct.acpi_resource_source, i16*, i8* }>
%struct.acpi_resource_pin_group = type <{ i8, i8, i16, i16, i16*, %struct.acpi_resource_label, i8* }>
%struct.acpi_resource_label = type <{ i16, i8* }>
%struct.acpi_resource_pin_group_function = type <{ i8, i8, i8, i16, i16, %struct.acpi_resource_source, %struct.acpi_resource_label, i8* }>
%struct.acpi_resource_pin_group_config = type <{ i8, i8, i8, i8, i32, i16, %struct.acpi_resource_source, %struct.acpi_resource_label, i8* }>
%union.aml_resource = type { i32, [52 x i8] }
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
%struct.aml_resource_gpio = type <{ i8, i16, i8, i8, i16, i16, i8, i16, i16, i16, i8, i16, i16, i16 }>
%struct.aml_resource_large_header = type <{ i8, i16 }>
%struct.aml_resource_pin_function = type <{ i8, i16, i8, i16, i8, i16, i16, i8, i16, i16, i16 }>
%struct.aml_resource_common_serialbus = type <{ i8, i16, i8, i8, i8, i8, i16, i8, i16 }>
%struct.aml_resource_pin_config = type <{ i8, i16, i8, i16, i8, i32, i16, i8, i16, i16, i16 }>
%struct.aml_resource_pin_group = type <{ i8, i16, i8, i16, i16, i16, i16, i16 }>
%struct.aml_resource_pin_group_function = type <{ i8, i16, i8, i16, i16, i8, i16, i16, i16, i16 }>
%struct.aml_resource_pin_group_config = type <{ i8, i16, i8, i16, i8, i32, i8, i16, i16, i16, i16 }>
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@acpi_gbl_aml_resource_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_aml_resource_serial_bus_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_aml_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_aml_serial_bus_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_struct_serial_bus_sizes = external dso_local constant [0 x i8], align 1
@acpi_gbl_resource_struct_sizes = external dso_local constant [0 x i8], align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_aml_length(%struct.acpi_resource* %resource, i64 %resource_list_size, i64* %size_needed) #0 !dbg !408 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_resource*, align 8
  %resource_list_size.addr = alloca i64, align 8
  %size_needed.addr = alloca i64*, align 8
  %aml_size_needed = alloca i64, align 8
  %resource_end = alloca %struct.acpi_resource*, align 8
  %total_size = alloca i16, align 2
  store %struct.acpi_resource* %resource, %struct.acpi_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource.addr, metadata !413, metadata !DIExpression()), !dbg !414
  store i64 %resource_list_size, i64* %resource_list_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %resource_list_size.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store i64* %size_needed, i64** %size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %size_needed.addr, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata i64* %aml_size_needed, metadata !419, metadata !DIExpression()), !dbg !420
  store i64 0, i64* %aml_size_needed, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %resource_end, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata i16* %total_size, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !425
  %1 = bitcast %struct.acpi_resource* %0 to i8*, !dbg !425
  %2 = load i64, i64* %resource_list_size.addr, align 8, !dbg !425
  %add.ptr = getelementptr i8, i8* %1, i64 %2, !dbg !425
  %3 = bitcast i8* %add.ptr to %struct.acpi_resource*, !dbg !425
  store %struct.acpi_resource* %3, %struct.acpi_resource** %resource_end, align 8, !dbg !426
  br label %while.cond, !dbg !427

while.cond:                                       ; preds = %sw.epilog, %entry
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !428
  %5 = load %struct.acpi_resource*, %struct.acpi_resource** %resource_end, align 8, !dbg !429
  %cmp = icmp ult %struct.acpi_resource* %4, %5, !dbg !430
  br i1 %cmp, label %while.body, label %while.end, !dbg !427

while.body:                                       ; preds = %while.cond
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !431
  %type = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %6, i32 0, i32 0, !dbg !434
  %7 = load i32, i32* %type, align 1, !dbg !434
  %cmp1 = icmp ugt i32 %7, 24, !dbg !435
  br i1 %cmp1, label %if.then, label %if.end, !dbg !436

if.then:                                          ; preds = %while.body
  store i32 12311, i32* %retval, align 4, !dbg !437
  br label %return, !dbg !437

if.end:                                           ; preds = %while.body
  %8 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !439
  %length = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %8, i32 0, i32 1, !dbg !441
  %9 = load i32, i32* %length, align 1, !dbg !441
  %tobool = icmp ne i32 %9, 0, !dbg !439
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !442

if.then2:                                         ; preds = %if.end
  store i32 12319, i32* %retval, align 4, !dbg !443
  br label %return, !dbg !443

if.end3:                                          ; preds = %if.end
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !445
  %type4 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 0, !dbg !446
  %11 = load i32, i32* %type4, align 1, !dbg !446
  %idxprom = zext i32 %11 to i64, !dbg !447
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_aml_resource_sizes, i64 0, i64 %idxprom, !dbg !447
  %12 = load i8, i8* %arrayidx, align 1, !dbg !447
  %conv = zext i8 %12 to i16, !dbg !447
  store i16 %conv, i16* %total_size, align 2, !dbg !448
  %13 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !449
  %type5 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %13, i32 0, i32 0, !dbg !450
  %14 = load i32, i32* %type5, align 1, !dbg !450
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 6, label %sw.bb21
    i32 7, label %sw.bb34
    i32 11, label %sw.bb37
    i32 12, label %sw.bb43
    i32 13, label %sw.bb51
    i32 15, label %sw.bb59
    i32 17, label %sw.bb71
    i32 20, label %sw.bb87
    i32 19, label %sw.bb106
    i32 21, label %sw.bb124
    i32 22, label %sw.bb143
    i32 23, label %sw.bb161
    i32 24, label %sw.bb179
  ], !dbg !451

sw.bb:                                            ; preds = %if.end3
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !452
  %data = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 2, !dbg !455
  %irq = bitcast %union.acpi_resource_data* %data to %struct.acpi_resource_irq*, !dbg !456
  %descriptor_length = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq, i32 0, i32 0, !dbg !457
  %16 = load i8, i8* %descriptor_length, align 1, !dbg !457
  %conv6 = zext i8 %16 to i32, !dbg !452
  %cmp7 = icmp eq i32 %conv6, 2, !dbg !458
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !459

if.then9:                                         ; preds = %sw.bb
  %17 = load i16, i16* %total_size, align 2, !dbg !460
  %dec = add i16 %17, -1, !dbg !460
  store i16 %dec, i16* %total_size, align 2, !dbg !460
  br label %if.end10, !dbg !462

if.end10:                                         ; preds = %if.then9, %sw.bb
  br label %sw.epilog, !dbg !463

sw.bb11:                                          ; preds = %if.end3
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !464
  %data12 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %18, i32 0, i32 2, !dbg !466
  %irq13 = bitcast %union.acpi_resource_data* %data12 to %struct.acpi_resource_irq*, !dbg !467
  %descriptor_length14 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %irq13, i32 0, i32 0, !dbg !468
  %19 = load i8, i8* %descriptor_length14, align 1, !dbg !468
  %conv15 = zext i8 %19 to i32, !dbg !464
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !469
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !470

if.then18:                                        ; preds = %sw.bb11
  %20 = load i16, i16* %total_size, align 2, !dbg !471
  %dec19 = add i16 %20, -1, !dbg !471
  store i16 %dec19, i16* %total_size, align 2, !dbg !471
  br label %if.end20, !dbg !473

if.end20:                                         ; preds = %if.then18, %sw.bb11
  br label %sw.epilog, !dbg !474

sw.bb21:                                          ; preds = %if.end3
  %21 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !475
  %data22 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %21, i32 0, i32 2, !dbg !477
  %vendor = bitcast %union.acpi_resource_data* %data22 to %struct.acpi_resource_vendor*, !dbg !478
  %byte_length = getelementptr inbounds %struct.acpi_resource_vendor, %struct.acpi_resource_vendor* %vendor, i32 0, i32 0, !dbg !479
  %22 = load i16, i16* %byte_length, align 1, !dbg !479
  %conv23 = zext i16 %22 to i32, !dbg !475
  %cmp24 = icmp sgt i32 %conv23, 7, !dbg !480
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !481

if.then26:                                        ; preds = %sw.bb21
  store i16 3, i16* %total_size, align 2, !dbg !482
  br label %if.end27, !dbg !484

if.end27:                                         ; preds = %if.then26, %sw.bb21
  %23 = load i16, i16* %total_size, align 2, !dbg !485
  %conv28 = zext i16 %23 to i32, !dbg !485
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !486
  %data29 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %24, i32 0, i32 2, !dbg !487
  %vendor30 = bitcast %union.acpi_resource_data* %data29 to %struct.acpi_resource_vendor*, !dbg !488
  %byte_length31 = getelementptr inbounds %struct.acpi_resource_vendor, %struct.acpi_resource_vendor* %vendor30, i32 0, i32 0, !dbg !489
  %25 = load i16, i16* %byte_length31, align 1, !dbg !489
  %conv32 = zext i16 %25 to i32, !dbg !486
  %add = add i32 %conv28, %conv32, !dbg !490
  %conv33 = trunc i32 %add to i16, !dbg !491
  store i16 %conv33, i16* %total_size, align 2, !dbg !492
  br label %sw.epilog, !dbg !493

sw.bb34:                                          ; preds = %if.end3
  %26 = load i64, i64* %aml_size_needed, align 8, !dbg !494
  %27 = load i16, i16* %total_size, align 2, !dbg !495
  %conv35 = zext i16 %27 to i64, !dbg !495
  %add36 = add i64 %26, %conv35, !dbg !496
  %28 = load i64*, i64** %size_needed.addr, align 8, !dbg !497
  store i64 %add36, i64* %28, align 8, !dbg !498
  store i32 0, i32* %retval, align 4, !dbg !499
  br label %return, !dbg !499

sw.bb37:                                          ; preds = %if.end3
  %29 = load i16, i16* %total_size, align 2, !dbg !500
  %conv38 = zext i16 %29 to i32, !dbg !500
  %30 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !501
  %data39 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %30, i32 0, i32 2, !dbg !502
  %address16 = bitcast %union.acpi_resource_data* %data39 to %struct.acpi_resource_address16*, !dbg !503
  %resource_source = getelementptr inbounds %struct.acpi_resource_address16, %struct.acpi_resource_address16* %address16, i32 0, i32 7, !dbg !504
  %call = call zeroext i16 @acpi_rs_struct_option_length(%struct.acpi_resource_source* %resource_source) #3, !dbg !505
  %conv40 = zext i16 %call to i32, !dbg !505
  %add41 = add i32 %conv38, %conv40, !dbg !506
  %conv42 = trunc i32 %add41 to i16, !dbg !507
  store i16 %conv42, i16* %total_size, align 2, !dbg !508
  br label %sw.epilog, !dbg !509

sw.bb43:                                          ; preds = %if.end3
  %31 = load i16, i16* %total_size, align 2, !dbg !510
  %conv44 = zext i16 %31 to i32, !dbg !510
  %32 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !511
  %data45 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %32, i32 0, i32 2, !dbg !512
  %address32 = bitcast %union.acpi_resource_data* %data45 to %struct.acpi_resource_address32*, !dbg !513
  %resource_source46 = getelementptr inbounds %struct.acpi_resource_address32, %struct.acpi_resource_address32* %address32, i32 0, i32 7, !dbg !514
  %call47 = call zeroext i16 @acpi_rs_struct_option_length(%struct.acpi_resource_source* %resource_source46) #3, !dbg !515
  %conv48 = zext i16 %call47 to i32, !dbg !515
  %add49 = add i32 %conv44, %conv48, !dbg !516
  %conv50 = trunc i32 %add49 to i16, !dbg !517
  store i16 %conv50, i16* %total_size, align 2, !dbg !518
  br label %sw.epilog, !dbg !519

sw.bb51:                                          ; preds = %if.end3
  %33 = load i16, i16* %total_size, align 2, !dbg !520
  %conv52 = zext i16 %33 to i32, !dbg !520
  %34 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !521
  %data53 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %34, i32 0, i32 2, !dbg !522
  %address64 = bitcast %union.acpi_resource_data* %data53 to %struct.acpi_resource_address64*, !dbg !523
  %resource_source54 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %address64, i32 0, i32 7, !dbg !524
  %call55 = call zeroext i16 @acpi_rs_struct_option_length(%struct.acpi_resource_source* %resource_source54) #3, !dbg !525
  %conv56 = zext i16 %call55 to i32, !dbg !525
  %add57 = add i32 %conv52, %conv56, !dbg !526
  %conv58 = trunc i32 %add57 to i16, !dbg !527
  store i16 %conv58, i16* %total_size, align 2, !dbg !528
  br label %sw.epilog, !dbg !529

sw.bb59:                                          ; preds = %if.end3
  %35 = load i16, i16* %total_size, align 2, !dbg !530
  %conv60 = zext i16 %35 to i32, !dbg !530
  %36 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !531
  %data61 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %36, i32 0, i32 2, !dbg !532
  %extended_irq = bitcast %union.acpi_resource_data* %data61 to %struct.acpi_resource_extended_irq*, !dbg !533
  %interrupt_count = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq, i32 0, i32 5, !dbg !534
  %37 = load i8, i8* %interrupt_count, align 1, !dbg !534
  %conv62 = zext i8 %37 to i32, !dbg !531
  %sub = sub i32 %conv62, 1, !dbg !535
  %mul = mul i32 %sub, 4, !dbg !536
  %add63 = add i32 %conv60, %mul, !dbg !537
  %38 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !538
  %data64 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %38, i32 0, i32 2, !dbg !539
  %extended_irq65 = bitcast %union.acpi_resource_data* %data64 to %struct.acpi_resource_extended_irq*, !dbg !540
  %resource_source66 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %extended_irq65, i32 0, i32 6, !dbg !541
  %call67 = call zeroext i16 @acpi_rs_struct_option_length(%struct.acpi_resource_source* %resource_source66) #3, !dbg !542
  %conv68 = zext i16 %call67 to i32, !dbg !542
  %add69 = add i32 %add63, %conv68, !dbg !543
  %conv70 = trunc i32 %add69 to i16, !dbg !544
  store i16 %conv70, i16* %total_size, align 2, !dbg !545
  br label %sw.epilog, !dbg !546

sw.bb71:                                          ; preds = %if.end3
  %39 = load i16, i16* %total_size, align 2, !dbg !547
  %conv72 = zext i16 %39 to i32, !dbg !547
  %40 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !548
  %data73 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %40, i32 0, i32 2, !dbg !549
  %gpio = bitcast %union.acpi_resource_data* %data73 to %struct.acpi_resource_gpio*, !dbg !550
  %pin_table_length = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %gpio, i32 0, i32 11, !dbg !551
  %41 = load i16, i16* %pin_table_length, align 1, !dbg !551
  %conv74 = zext i16 %41 to i32, !dbg !548
  %mul75 = mul i32 %conv74, 2, !dbg !552
  %add76 = add i32 %conv72, %mul75, !dbg !553
  %42 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !554
  %data77 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %42, i32 0, i32 2, !dbg !555
  %gpio78 = bitcast %union.acpi_resource_data* %data77 to %struct.acpi_resource_gpio*, !dbg !556
  %resource_source79 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %gpio78, i32 0, i32 13, !dbg !557
  %string_length = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source79, i32 0, i32 1, !dbg !558
  %43 = load i16, i16* %string_length, align 1, !dbg !558
  %conv80 = zext i16 %43 to i32, !dbg !554
  %add81 = add i32 %add76, %conv80, !dbg !559
  %44 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !560
  %data82 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %44, i32 0, i32 2, !dbg !561
  %gpio83 = bitcast %union.acpi_resource_data* %data82 to %struct.acpi_resource_gpio*, !dbg !562
  %vendor_length = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %gpio83, i32 0, i32 12, !dbg !563
  %45 = load i16, i16* %vendor_length, align 1, !dbg !563
  %conv84 = zext i16 %45 to i32, !dbg !560
  %add85 = add i32 %add81, %conv84, !dbg !564
  %conv86 = trunc i32 %add85 to i16, !dbg !565
  store i16 %conv86, i16* %total_size, align 2, !dbg !566
  br label %sw.epilog, !dbg !567

sw.bb87:                                          ; preds = %if.end3
  %46 = load i16, i16* %total_size, align 2, !dbg !568
  %conv88 = zext i16 %46 to i32, !dbg !568
  %47 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !569
  %data89 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %47, i32 0, i32 2, !dbg !570
  %pin_function = bitcast %union.acpi_resource_data* %data89 to %struct.acpi_resource_pin_function*, !dbg !571
  %pin_table_length90 = getelementptr inbounds %struct.acpi_resource_pin_function, %struct.acpi_resource_pin_function* %pin_function, i32 0, i32 4, !dbg !572
  %48 = load i16, i16* %pin_table_length90, align 1, !dbg !572
  %conv91 = zext i16 %48 to i32, !dbg !569
  %mul92 = mul i32 %conv91, 2, !dbg !573
  %add93 = add i32 %conv88, %mul92, !dbg !574
  %49 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !575
  %data94 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %49, i32 0, i32 2, !dbg !576
  %pin_function95 = bitcast %union.acpi_resource_data* %data94 to %struct.acpi_resource_pin_function*, !dbg !577
  %resource_source96 = getelementptr inbounds %struct.acpi_resource_pin_function, %struct.acpi_resource_pin_function* %pin_function95, i32 0, i32 6, !dbg !578
  %string_length97 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source96, i32 0, i32 1, !dbg !579
  %50 = load i16, i16* %string_length97, align 1, !dbg !579
  %conv98 = zext i16 %50 to i32, !dbg !575
  %add99 = add i32 %add93, %conv98, !dbg !580
  %51 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !581
  %data100 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %51, i32 0, i32 2, !dbg !582
  %pin_function101 = bitcast %union.acpi_resource_data* %data100 to %struct.acpi_resource_pin_function*, !dbg !583
  %vendor_length102 = getelementptr inbounds %struct.acpi_resource_pin_function, %struct.acpi_resource_pin_function* %pin_function101, i32 0, i32 5, !dbg !584
  %52 = load i16, i16* %vendor_length102, align 1, !dbg !584
  %conv103 = zext i16 %52 to i32, !dbg !581
  %add104 = add i32 %add99, %conv103, !dbg !585
  %conv105 = trunc i32 %add104 to i16, !dbg !586
  store i16 %conv105, i16* %total_size, align 2, !dbg !587
  br label %sw.epilog, !dbg !588

sw.bb106:                                         ; preds = %if.end3
  %53 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !589
  %data107 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %53, i32 0, i32 2, !dbg !590
  %common_serial_bus = bitcast %union.acpi_resource_data* %data107 to %struct.acpi_resource_common_serialbus*, !dbg !591
  %type108 = getelementptr inbounds %struct.acpi_resource_common_serialbus, %struct.acpi_resource_common_serialbus* %common_serial_bus, i32 0, i32 1, !dbg !592
  %54 = load i8, i8* %type108, align 1, !dbg !592
  %idxprom109 = zext i8 %54 to i64, !dbg !593
  %arrayidx110 = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_aml_resource_serial_bus_sizes, i64 0, i64 %idxprom109, !dbg !593
  %55 = load i8, i8* %arrayidx110, align 1, !dbg !593
  %conv111 = zext i8 %55 to i16, !dbg !593
  store i16 %conv111, i16* %total_size, align 2, !dbg !594
  %56 = load i16, i16* %total_size, align 2, !dbg !595
  %conv112 = zext i16 %56 to i32, !dbg !595
  %57 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !596
  %data113 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %57, i32 0, i32 2, !dbg !597
  %i2c_serial_bus = bitcast %union.acpi_resource_data* %data113 to %struct.acpi_resource_i2c_serialbus*, !dbg !598
  %resource_source114 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %i2c_serial_bus, i32 0, i32 8, !dbg !599
  %string_length115 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source114, i32 0, i32 1, !dbg !600
  %58 = load i16, i16* %string_length115, align 1, !dbg !600
  %conv116 = zext i16 %58 to i32, !dbg !596
  %add117 = add i32 %conv112, %conv116, !dbg !601
  %59 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !602
  %data118 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %59, i32 0, i32 2, !dbg !603
  %i2c_serial_bus119 = bitcast %union.acpi_resource_data* %data118 to %struct.acpi_resource_i2c_serialbus*, !dbg !604
  %vendor_length120 = getelementptr inbounds %struct.acpi_resource_i2c_serialbus, %struct.acpi_resource_i2c_serialbus* %i2c_serial_bus119, i32 0, i32 7, !dbg !605
  %60 = load i16, i16* %vendor_length120, align 1, !dbg !605
  %conv121 = zext i16 %60 to i32, !dbg !602
  %add122 = add i32 %add117, %conv121, !dbg !606
  %conv123 = trunc i32 %add122 to i16, !dbg !607
  store i16 %conv123, i16* %total_size, align 2, !dbg !608
  br label %sw.epilog, !dbg !609

sw.bb124:                                         ; preds = %if.end3
  %61 = load i16, i16* %total_size, align 2, !dbg !610
  %conv125 = zext i16 %61 to i32, !dbg !610
  %62 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !611
  %data126 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %62, i32 0, i32 2, !dbg !612
  %pin_config = bitcast %union.acpi_resource_data* %data126 to %struct.acpi_resource_pin_config*, !dbg !613
  %pin_table_length127 = getelementptr inbounds %struct.acpi_resource_pin_config, %struct.acpi_resource_pin_config* %pin_config, i32 0, i32 5, !dbg !614
  %63 = load i16, i16* %pin_table_length127, align 1, !dbg !614
  %conv128 = zext i16 %63 to i32, !dbg !611
  %mul129 = mul i32 %conv128, 2, !dbg !615
  %add130 = add i32 %conv125, %mul129, !dbg !616
  %64 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !617
  %data131 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %64, i32 0, i32 2, !dbg !618
  %pin_config132 = bitcast %union.acpi_resource_data* %data131 to %struct.acpi_resource_pin_config*, !dbg !619
  %resource_source133 = getelementptr inbounds %struct.acpi_resource_pin_config, %struct.acpi_resource_pin_config* %pin_config132, i32 0, i32 7, !dbg !620
  %string_length134 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source133, i32 0, i32 1, !dbg !621
  %65 = load i16, i16* %string_length134, align 1, !dbg !621
  %conv135 = zext i16 %65 to i32, !dbg !617
  %add136 = add i32 %add130, %conv135, !dbg !622
  %66 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !623
  %data137 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %66, i32 0, i32 2, !dbg !624
  %pin_config138 = bitcast %union.acpi_resource_data* %data137 to %struct.acpi_resource_pin_config*, !dbg !625
  %vendor_length139 = getelementptr inbounds %struct.acpi_resource_pin_config, %struct.acpi_resource_pin_config* %pin_config138, i32 0, i32 6, !dbg !626
  %67 = load i16, i16* %vendor_length139, align 1, !dbg !626
  %conv140 = zext i16 %67 to i32, !dbg !623
  %add141 = add i32 %add136, %conv140, !dbg !627
  %conv142 = trunc i32 %add141 to i16, !dbg !628
  store i16 %conv142, i16* %total_size, align 2, !dbg !629
  br label %sw.epilog, !dbg !630

sw.bb143:                                         ; preds = %if.end3
  %68 = load i16, i16* %total_size, align 2, !dbg !631
  %conv144 = zext i16 %68 to i32, !dbg !631
  %69 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !632
  %data145 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %69, i32 0, i32 2, !dbg !633
  %pin_group = bitcast %union.acpi_resource_data* %data145 to %struct.acpi_resource_pin_group*, !dbg !634
  %pin_table_length146 = getelementptr inbounds %struct.acpi_resource_pin_group, %struct.acpi_resource_pin_group* %pin_group, i32 0, i32 2, !dbg !635
  %70 = load i16, i16* %pin_table_length146, align 1, !dbg !635
  %conv147 = zext i16 %70 to i32, !dbg !632
  %mul148 = mul i32 %conv147, 2, !dbg !636
  %add149 = add i32 %conv144, %mul148, !dbg !637
  %71 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !638
  %data150 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %71, i32 0, i32 2, !dbg !639
  %pin_group151 = bitcast %union.acpi_resource_data* %data150 to %struct.acpi_resource_pin_group*, !dbg !640
  %resource_label = getelementptr inbounds %struct.acpi_resource_pin_group, %struct.acpi_resource_pin_group* %pin_group151, i32 0, i32 5, !dbg !641
  %string_length152 = getelementptr inbounds %struct.acpi_resource_label, %struct.acpi_resource_label* %resource_label, i32 0, i32 0, !dbg !642
  %72 = load i16, i16* %string_length152, align 1, !dbg !642
  %conv153 = zext i16 %72 to i32, !dbg !638
  %add154 = add i32 %add149, %conv153, !dbg !643
  %73 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !644
  %data155 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %73, i32 0, i32 2, !dbg !645
  %pin_group156 = bitcast %union.acpi_resource_data* %data155 to %struct.acpi_resource_pin_group*, !dbg !646
  %vendor_length157 = getelementptr inbounds %struct.acpi_resource_pin_group, %struct.acpi_resource_pin_group* %pin_group156, i32 0, i32 3, !dbg !647
  %74 = load i16, i16* %vendor_length157, align 1, !dbg !647
  %conv158 = zext i16 %74 to i32, !dbg !644
  %add159 = add i32 %add154, %conv158, !dbg !648
  %conv160 = trunc i32 %add159 to i16, !dbg !649
  store i16 %conv160, i16* %total_size, align 2, !dbg !650
  br label %sw.epilog, !dbg !651

sw.bb161:                                         ; preds = %if.end3
  %75 = load i16, i16* %total_size, align 2, !dbg !652
  %conv162 = zext i16 %75 to i32, !dbg !652
  %76 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !653
  %data163 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %76, i32 0, i32 2, !dbg !654
  %pin_group_function = bitcast %union.acpi_resource_data* %data163 to %struct.acpi_resource_pin_group_function*, !dbg !655
  %resource_source164 = getelementptr inbounds %struct.acpi_resource_pin_group_function, %struct.acpi_resource_pin_group_function* %pin_group_function, i32 0, i32 5, !dbg !656
  %string_length165 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source164, i32 0, i32 1, !dbg !657
  %77 = load i16, i16* %string_length165, align 1, !dbg !657
  %conv166 = zext i16 %77 to i32, !dbg !653
  %add167 = add i32 %conv162, %conv166, !dbg !658
  %78 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !659
  %data168 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %78, i32 0, i32 2, !dbg !660
  %pin_group_function169 = bitcast %union.acpi_resource_data* %data168 to %struct.acpi_resource_pin_group_function*, !dbg !661
  %resource_source_label = getelementptr inbounds %struct.acpi_resource_pin_group_function, %struct.acpi_resource_pin_group_function* %pin_group_function169, i32 0, i32 6, !dbg !662
  %string_length170 = getelementptr inbounds %struct.acpi_resource_label, %struct.acpi_resource_label* %resource_source_label, i32 0, i32 0, !dbg !663
  %79 = load i16, i16* %string_length170, align 1, !dbg !663
  %conv171 = zext i16 %79 to i32, !dbg !659
  %add172 = add i32 %add167, %conv171, !dbg !664
  %80 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !665
  %data173 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %80, i32 0, i32 2, !dbg !666
  %pin_group_function174 = bitcast %union.acpi_resource_data* %data173 to %struct.acpi_resource_pin_group_function*, !dbg !667
  %vendor_length175 = getelementptr inbounds %struct.acpi_resource_pin_group_function, %struct.acpi_resource_pin_group_function* %pin_group_function174, i32 0, i32 4, !dbg !668
  %81 = load i16, i16* %vendor_length175, align 1, !dbg !668
  %conv176 = zext i16 %81 to i32, !dbg !665
  %add177 = add i32 %add172, %conv176, !dbg !669
  %conv178 = trunc i32 %add177 to i16, !dbg !670
  store i16 %conv178, i16* %total_size, align 2, !dbg !671
  br label %sw.epilog, !dbg !672

sw.bb179:                                         ; preds = %if.end3
  %82 = load i16, i16* %total_size, align 2, !dbg !673
  %conv180 = zext i16 %82 to i32, !dbg !673
  %83 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !674
  %data181 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %83, i32 0, i32 2, !dbg !675
  %pin_group_config = bitcast %union.acpi_resource_data* %data181 to %struct.acpi_resource_pin_group_config*, !dbg !676
  %resource_source182 = getelementptr inbounds %struct.acpi_resource_pin_group_config, %struct.acpi_resource_pin_group_config* %pin_group_config, i32 0, i32 6, !dbg !677
  %string_length183 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %resource_source182, i32 0, i32 1, !dbg !678
  %84 = load i16, i16* %string_length183, align 1, !dbg !678
  %conv184 = zext i16 %84 to i32, !dbg !674
  %add185 = add i32 %conv180, %conv184, !dbg !679
  %85 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !680
  %data186 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %85, i32 0, i32 2, !dbg !681
  %pin_group_config187 = bitcast %union.acpi_resource_data* %data186 to %struct.acpi_resource_pin_group_config*, !dbg !682
  %resource_source_label188 = getelementptr inbounds %struct.acpi_resource_pin_group_config, %struct.acpi_resource_pin_group_config* %pin_group_config187, i32 0, i32 7, !dbg !683
  %string_length189 = getelementptr inbounds %struct.acpi_resource_label, %struct.acpi_resource_label* %resource_source_label188, i32 0, i32 0, !dbg !684
  %86 = load i16, i16* %string_length189, align 1, !dbg !684
  %conv190 = zext i16 %86 to i32, !dbg !680
  %add191 = add i32 %add185, %conv190, !dbg !685
  %87 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !686
  %data192 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %87, i32 0, i32 2, !dbg !687
  %pin_group_config193 = bitcast %union.acpi_resource_data* %data192 to %struct.acpi_resource_pin_group_config*, !dbg !688
  %vendor_length194 = getelementptr inbounds %struct.acpi_resource_pin_group_config, %struct.acpi_resource_pin_group_config* %pin_group_config193, i32 0, i32 5, !dbg !689
  %88 = load i16, i16* %vendor_length194, align 1, !dbg !689
  %conv195 = zext i16 %88 to i32, !dbg !686
  %add196 = add i32 %add191, %conv195, !dbg !690
  %conv197 = trunc i32 %add196 to i16, !dbg !691
  store i16 %conv197, i16* %total_size, align 2, !dbg !692
  br label %sw.epilog, !dbg !693

sw.default:                                       ; preds = %if.end3
  br label %sw.epilog, !dbg !694

sw.epilog:                                        ; preds = %sw.default, %sw.bb179, %sw.bb161, %sw.bb143, %sw.bb124, %sw.bb106, %sw.bb87, %sw.bb71, %sw.bb59, %sw.bb51, %sw.bb43, %sw.bb37, %if.end27, %if.end20, %if.end10
  %89 = load i16, i16* %total_size, align 2, !dbg !695
  %conv198 = zext i16 %89 to i64, !dbg !695
  %90 = load i64, i64* %aml_size_needed, align 8, !dbg !696
  %add199 = add i64 %90, %conv198, !dbg !696
  store i64 %add199, i64* %aml_size_needed, align 8, !dbg !696
  %91 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !697
  %92 = bitcast %struct.acpi_resource* %91 to i8*, !dbg !697
  %93 = load %struct.acpi_resource*, %struct.acpi_resource** %resource.addr, align 8, !dbg !697
  %length200 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %93, i32 0, i32 1, !dbg !697
  %94 = load i32, i32* %length200, align 1, !dbg !697
  %conv201 = zext i32 %94 to i64, !dbg !697
  %add.ptr202 = getelementptr i8, i8* %92, i64 %conv201, !dbg !697
  %95 = bitcast i8* %add.ptr202 to %struct.acpi_resource*, !dbg !697
  store %struct.acpi_resource* %95, %struct.acpi_resource** %resource.addr, align 8, !dbg !698
  br label %while.cond, !dbg !427, !llvm.loop !699

while.end:                                        ; preds = %while.cond
  store i32 12316, i32* %retval, align 4, !dbg !701
  br label %return, !dbg !701

return:                                           ; preds = %while.end, %sw.bb34, %if.then2, %if.then
  %96 = load i32, i32* %retval, align 4, !dbg !702
  ret i32 %96, !dbg !702
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @acpi_rs_struct_option_length(%struct.acpi_resource_source* %resource_source) #0 !dbg !703 {
entry:
  %retval = alloca i16, align 2
  %resource_source.addr = alloca %struct.acpi_resource_source*, align 8
  store %struct.acpi_resource_source* %resource_source, %struct.acpi_resource_source** %resource_source.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource_source** %resource_source.addr, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !709
  %string_ptr = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %0, i32 0, i32 2, !dbg !711
  %1 = load i8*, i8** %string_ptr, align 1, !dbg !711
  %tobool = icmp ne i8* %1, null, !dbg !709
  br i1 %tobool, label %if.then, label %if.end, !dbg !712

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %resource_source.addr, align 8, !dbg !713
  %string_length = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %2, i32 0, i32 1, !dbg !715
  %3 = load i16, i16* %string_length, align 1, !dbg !715
  %conv = zext i16 %3 to i32, !dbg !713
  %add = add i32 %conv, 1, !dbg !716
  %conv1 = trunc i32 %add to i16, !dbg !717
  store i16 %conv1, i16* %retval, align 2, !dbg !718
  br label %return, !dbg !718

if.end:                                           ; preds = %entry
  store i16 0, i16* %retval, align 2, !dbg !719
  br label %return, !dbg !719

return:                                           ; preds = %if.end, %if.then
  %4 = load i16, i16* %retval, align 2, !dbg !720
  ret i16 %4, !dbg !720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_list_length(i8* %aml_buffer, i32 %aml_buffer_length, i64* %size_needed) #0 !dbg !721 {
entry:
  %retval = alloca i32, align 4
  %aml_buffer.addr = alloca i8*, align 8
  %aml_buffer_length.addr = alloca i32, align 4
  %size_needed.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %end_aml = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %buffer_size = alloca i32, align 4
  %temp16 = alloca i16, align 2
  %resource_length = alloca i16, align 2
  %extra_struct_bytes = alloca i32, align 4
  %resource_index = alloca i8, align 1
  %minimum_aml_resource_length = alloca i8, align 1
  %aml_resource = alloca %union.aml_resource*, align 8
  store i8* %aml_buffer, i8** %aml_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_buffer.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i32 %aml_buffer_length, i32* %aml_buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %aml_buffer_length.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store i64* %size_needed, i64** %size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %size_needed.addr, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata i32* %status, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata i8** %end_aml, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata i32* %buffer_size, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata i16* %temp16, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata i16* %resource_length, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata i32* %extra_struct_bytes, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata i8* %resource_index, metadata !744, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata i8* %minimum_aml_resource_length, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata %union.aml_resource** %aml_resource, metadata !748, metadata !DIExpression()), !dbg !1075
  %0 = load i64*, i64** %size_needed.addr, align 8, !dbg !1076
  store i64 16, i64* %0, align 8, !dbg !1077
  %1 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1078
  %2 = load i32, i32* %aml_buffer_length.addr, align 4, !dbg !1079
  %idx.ext = zext i32 %2 to i64, !dbg !1080
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !1080
  store i8* %add.ptr, i8** %end_aml, align 8, !dbg !1081
  br label %while.cond, !dbg !1082

while.cond:                                       ; preds = %if.end174, %entry
  %3 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1083
  %4 = load i8*, i8** %end_aml, align 8, !dbg !1084
  %cmp = icmp ult i8* %3, %4, !dbg !1085
  br i1 %cmp, label %while.body, label %while.end, !dbg !1082

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1086
  %call = call i32 @acpi_ut_validate_resource(%struct.acpi_walk_state* null, i8* %5, i8* %resource_index) #3, !dbg !1088
  store i32 %call, i32* %status, align 4, !dbg !1089
  %6 = load i32, i32* %status, align 4, !dbg !1090
  %tobool = icmp ne i32 %6, 0, !dbg !1090
  br i1 %tobool, label %if.then, label %if.end, !dbg !1092

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %status, align 4, !dbg !1093
  store i32 %7, i32* %retval, align 4, !dbg !1093
  br label %return, !dbg !1093

if.end:                                           ; preds = %while.body
  %8 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1095
  %9 = bitcast i8* %8 to %union.aml_resource*, !dbg !1096
  store %union.aml_resource* %9, %union.aml_resource** %aml_resource, align 8, !dbg !1097
  %10 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1098
  %call1 = call zeroext i16 @acpi_ut_get_resource_length(i8* %10) #3, !dbg !1099
  store i16 %call1, i16* %resource_length, align 2, !dbg !1100
  %11 = load i8, i8* %resource_index, align 1, !dbg !1101
  %idxprom = zext i8 %11 to i64, !dbg !1102
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_resource_aml_sizes, i64 0, i64 %idxprom, !dbg !1102
  %12 = load i8, i8* %arrayidx, align 1, !dbg !1102
  store i8 %12, i8* %minimum_aml_resource_length, align 1, !dbg !1103
  store i32 0, i32* %extra_struct_bytes, align 4, !dbg !1104
  %13 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1105
  %14 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1106
  %call2 = call zeroext i8 @acpi_ut_get_resource_header_length(i8* %14) #3, !dbg !1107
  %conv = zext i8 %call2 to i32, !dbg !1107
  %idx.ext3 = sext i32 %conv to i64, !dbg !1108
  %add.ptr4 = getelementptr i8, i8* %13, i64 %idx.ext3, !dbg !1108
  store i8* %add.ptr4, i8** %buffer, align 8, !dbg !1109
  %15 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1110
  %call5 = call zeroext i8 @acpi_ut_get_resource_type(i8* %15) #3, !dbg !1111
  %conv6 = zext i8 %call5 to i32, !dbg !1111
  switch i32 %conv6, label %sw.default [
    i32 32, label %sw.bb
    i32 40, label %sw.bb9
    i32 112, label %sw.bb13
    i32 132, label %sw.bb13
    i32 120, label %sw.bb18
    i32 135, label %sw.bb19
    i32 136, label %sw.bb19
    i32 138, label %sw.bb19
    i32 137, label %sw.bb23
    i32 140, label %sw.bb32
    i32 141, label %sw.bb56
    i32 142, label %sw.bb85
    i32 143, label %sw.bb94
    i32 144, label %sw.bb123
    i32 145, label %sw.bb135
    i32 146, label %sw.bb146
  ], !dbg !1112

sw.bb:                                            ; preds = %if.end
  %16 = load i8*, i8** %buffer, align 8, !dbg !1113
  %17 = bitcast i8* %16 to i16*, !dbg !1113
  %18 = load i16, i16* %17, align 2, !dbg !1113
  %19 = bitcast i16* %temp16 to i8*, !dbg !1113
  %20 = bitcast i8* %19 to i16*, !dbg !1113
  store i16 %18, i16* %20, align 2, !dbg !1113
  %21 = load i16, i16* %temp16, align 2, !dbg !1115
  %call7 = call zeroext i8 @acpi_rs_count_set_bits(i16 zeroext %21) #3, !dbg !1116
  %conv8 = zext i8 %call7 to i32, !dbg !1116
  store i32 %conv8, i32* %extra_struct_bytes, align 4, !dbg !1117
  br label %sw.epilog, !dbg !1118

sw.bb9:                                           ; preds = %if.end
  %22 = load i8*, i8** %buffer, align 8, !dbg !1119
  %23 = load i8, i8* %22, align 1, !dbg !1120
  %conv10 = zext i8 %23 to i16, !dbg !1120
  %call11 = call zeroext i8 @acpi_rs_count_set_bits(i16 zeroext %conv10) #3, !dbg !1121
  %conv12 = zext i8 %call11 to i32, !dbg !1121
  store i32 %conv12, i32* %extra_struct_bytes, align 4, !dbg !1122
  br label %sw.epilog, !dbg !1123

sw.bb13:                                          ; preds = %if.end, %if.end
  %24 = load i16, i16* %resource_length, align 2, !dbg !1124
  %conv14 = zext i16 %24 to i32, !dbg !1124
  store i32 %conv14, i32* %extra_struct_bytes, align 4, !dbg !1125
  %25 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1126
  %tobool15 = icmp ne i32 %25, 0, !dbg !1126
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1128

if.then16:                                        ; preds = %sw.bb13
  %26 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1129
  %dec = add i32 %26, -1, !dbg !1129
  store i32 %dec, i32* %extra_struct_bytes, align 4, !dbg !1129
  br label %if.end17, !dbg !1131

if.end17:                                         ; preds = %if.then16, %sw.bb13
  br label %sw.epilog, !dbg !1132

sw.bb18:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1133
  br label %return, !dbg !1133

sw.bb19:                                          ; preds = %if.end, %if.end, %if.end
  %27 = load i16, i16* %resource_length, align 2, !dbg !1134
  %conv20 = zext i16 %27 to i32, !dbg !1134
  %28 = load i8, i8* %minimum_aml_resource_length, align 1, !dbg !1135
  %conv21 = zext i8 %28 to i32, !dbg !1135
  %call22 = call i32 @acpi_rs_stream_option_length(i32 %conv20, i32 %conv21) #3, !dbg !1136
  store i32 %call22, i32* %extra_struct_bytes, align 4, !dbg !1137
  br label %sw.epilog, !dbg !1138

sw.bb23:                                          ; preds = %if.end
  %29 = load i8*, i8** %buffer, align 8, !dbg !1139
  %arrayidx24 = getelementptr i8, i8* %29, i64 1, !dbg !1139
  %30 = load i8, i8* %arrayidx24, align 1, !dbg !1139
  %conv25 = zext i8 %30 to i32, !dbg !1139
  %sub = sub i32 %conv25, 1, !dbg !1140
  %conv26 = sext i32 %sub to i64, !dbg !1141
  %mul = mul i64 %conv26, 4, !dbg !1142
  %conv27 = trunc i64 %mul to i32, !dbg !1141
  store i32 %conv27, i32* %extra_struct_bytes, align 4, !dbg !1143
  %31 = load i16, i16* %resource_length, align 2, !dbg !1144
  %conv28 = zext i16 %31 to i32, !dbg !1144
  %32 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1145
  %sub29 = sub i32 %conv28, %32, !dbg !1146
  %33 = load i8, i8* %minimum_aml_resource_length, align 1, !dbg !1147
  %conv30 = zext i8 %33 to i32, !dbg !1147
  %call31 = call i32 @acpi_rs_stream_option_length(i32 %sub29, i32 %conv30) #3, !dbg !1148
  %34 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1149
  %add = add i32 %34, %call31, !dbg !1149
  store i32 %add, i32* %extra_struct_bytes, align 4, !dbg !1149
  br label %sw.epilog, !dbg !1150

sw.bb32:                                          ; preds = %if.end
  %35 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1151
  %gpio = bitcast %union.aml_resource* %35 to %struct.aml_resource_gpio*, !dbg !1153
  %vendor_length = getelementptr inbounds %struct.aml_resource_gpio, %struct.aml_resource_gpio* %gpio, i32 0, i32 13, !dbg !1154
  %36 = load i16, i16* %vendor_length, align 1, !dbg !1154
  %tobool33 = icmp ne i16 %36, 0, !dbg !1151
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !1155

if.then34:                                        ; preds = %sw.bb32
  %37 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1156
  %gpio35 = bitcast %union.aml_resource* %37 to %struct.aml_resource_gpio*, !dbg !1158
  %vendor_offset = getelementptr inbounds %struct.aml_resource_gpio, %struct.aml_resource_gpio* %gpio35, i32 0, i32 12, !dbg !1159
  %38 = load i16, i16* %vendor_offset, align 1, !dbg !1159
  %conv36 = zext i16 %38 to i32, !dbg !1156
  %39 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1160
  %gpio37 = bitcast %union.aml_resource* %39 to %struct.aml_resource_gpio*, !dbg !1161
  %pin_table_offset = getelementptr inbounds %struct.aml_resource_gpio, %struct.aml_resource_gpio* %gpio37, i32 0, i32 9, !dbg !1162
  %40 = load i16, i16* %pin_table_offset, align 2, !dbg !1162
  %conv38 = zext i16 %40 to i32, !dbg !1160
  %sub39 = sub i32 %conv36, %conv38, !dbg !1163
  %41 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1164
  %gpio40 = bitcast %union.aml_resource* %41 to %struct.aml_resource_gpio*, !dbg !1165
  %vendor_length41 = getelementptr inbounds %struct.aml_resource_gpio, %struct.aml_resource_gpio* %gpio40, i32 0, i32 13, !dbg !1166
  %42 = load i16, i16* %vendor_length41, align 1, !dbg !1166
  %conv42 = zext i16 %42 to i32, !dbg !1164
  %add43 = add i32 %sub39, %conv42, !dbg !1167
  %43 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1168
  %add44 = add i32 %43, %add43, !dbg !1168
  store i32 %add44, i32* %extra_struct_bytes, align 4, !dbg !1168
  br label %if.end55, !dbg !1169

if.else:                                          ; preds = %sw.bb32
  %44 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1170
  %large_header = bitcast %union.aml_resource* %44 to %struct.aml_resource_large_header*, !dbg !1172
  %resource_length45 = getelementptr inbounds %struct.aml_resource_large_header, %struct.aml_resource_large_header* %large_header, i32 0, i32 1, !dbg !1173
  %45 = load i16, i16* %resource_length45, align 1, !dbg !1173
  %conv46 = zext i16 %45 to i64, !dbg !1170
  %add47 = add i64 %conv46, 3, !dbg !1174
  %46 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1175
  %gpio48 = bitcast %union.aml_resource* %46 to %struct.aml_resource_gpio*, !dbg !1176
  %pin_table_offset49 = getelementptr inbounds %struct.aml_resource_gpio, %struct.aml_resource_gpio* %gpio48, i32 0, i32 9, !dbg !1177
  %47 = load i16, i16* %pin_table_offset49, align 2, !dbg !1177
  %conv50 = zext i16 %47 to i64, !dbg !1175
  %sub51 = sub i64 %add47, %conv50, !dbg !1178
  %48 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1179
  %conv52 = zext i32 %48 to i64, !dbg !1179
  %add53 = add i64 %conv52, %sub51, !dbg !1179
  %conv54 = trunc i64 %add53 to i32, !dbg !1179
  store i32 %conv54, i32* %extra_struct_bytes, align 4, !dbg !1179
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then34
  br label %sw.epilog, !dbg !1180

sw.bb56:                                          ; preds = %if.end
  %49 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1181
  %pin_function = bitcast %union.aml_resource* %49 to %struct.aml_resource_pin_function*, !dbg !1183
  %vendor_length57 = getelementptr inbounds %struct.aml_resource_pin_function, %struct.aml_resource_pin_function* %pin_function, i32 0, i32 10, !dbg !1184
  %50 = load i16, i16* %vendor_length57, align 4, !dbg !1184
  %tobool58 = icmp ne i16 %50, 0, !dbg !1181
  br i1 %tobool58, label %if.then59, label %if.else72, !dbg !1185

if.then59:                                        ; preds = %sw.bb56
  %51 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1186
  %pin_function60 = bitcast %union.aml_resource* %51 to %struct.aml_resource_pin_function*, !dbg !1188
  %vendor_offset61 = getelementptr inbounds %struct.aml_resource_pin_function, %struct.aml_resource_pin_function* %pin_function60, i32 0, i32 9, !dbg !1189
  %52 = load i16, i16* %vendor_offset61, align 2, !dbg !1189
  %conv62 = zext i16 %52 to i32, !dbg !1186
  %53 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1190
  %pin_function63 = bitcast %union.aml_resource* %53 to %struct.aml_resource_pin_function*, !dbg !1191
  %pin_table_offset64 = getelementptr inbounds %struct.aml_resource_pin_function, %struct.aml_resource_pin_function* %pin_function63, i32 0, i32 6, !dbg !1192
  %54 = load i16, i16* %pin_table_offset64, align 1, !dbg !1192
  %conv65 = zext i16 %54 to i32, !dbg !1190
  %sub66 = sub i32 %conv62, %conv65, !dbg !1193
  %55 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1194
  %pin_function67 = bitcast %union.aml_resource* %55 to %struct.aml_resource_pin_function*, !dbg !1195
  %vendor_length68 = getelementptr inbounds %struct.aml_resource_pin_function, %struct.aml_resource_pin_function* %pin_function67, i32 0, i32 10, !dbg !1196
  %56 = load i16, i16* %vendor_length68, align 4, !dbg !1196
  %conv69 = zext i16 %56 to i32, !dbg !1194
  %add70 = add i32 %sub66, %conv69, !dbg !1197
  %57 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1198
  %add71 = add i32 %57, %add70, !dbg !1198
  store i32 %add71, i32* %extra_struct_bytes, align 4, !dbg !1198
  br label %if.end84, !dbg !1199

if.else72:                                        ; preds = %sw.bb56
  %58 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1200
  %large_header73 = bitcast %union.aml_resource* %58 to %struct.aml_resource_large_header*, !dbg !1202
  %resource_length74 = getelementptr inbounds %struct.aml_resource_large_header, %struct.aml_resource_large_header* %large_header73, i32 0, i32 1, !dbg !1203
  %59 = load i16, i16* %resource_length74, align 1, !dbg !1203
  %conv75 = zext i16 %59 to i64, !dbg !1200
  %add76 = add i64 %conv75, 3, !dbg !1204
  %60 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1205
  %pin_function77 = bitcast %union.aml_resource* %60 to %struct.aml_resource_pin_function*, !dbg !1206
  %pin_table_offset78 = getelementptr inbounds %struct.aml_resource_pin_function, %struct.aml_resource_pin_function* %pin_function77, i32 0, i32 6, !dbg !1207
  %61 = load i16, i16* %pin_table_offset78, align 1, !dbg !1207
  %conv79 = zext i16 %61 to i64, !dbg !1205
  %sub80 = sub i64 %add76, %conv79, !dbg !1208
  %62 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1209
  %conv81 = zext i32 %62 to i64, !dbg !1209
  %add82 = add i64 %conv81, %sub80, !dbg !1209
  %conv83 = trunc i64 %add82 to i32, !dbg !1209
  store i32 %conv83, i32* %extra_struct_bytes, align 4, !dbg !1209
  br label %if.end84

if.end84:                                         ; preds = %if.else72, %if.then59
  br label %sw.epilog, !dbg !1210

sw.bb85:                                          ; preds = %if.end
  %63 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1211
  %common_serial_bus = bitcast %union.aml_resource* %63 to %struct.aml_resource_common_serialbus*, !dbg !1212
  %type = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus, i32 0, i32 4, !dbg !1213
  %64 = load i8, i8* %type, align 1, !dbg !1213
  %idxprom86 = zext i8 %64 to i64, !dbg !1214
  %arrayidx87 = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_resource_aml_serial_bus_sizes, i64 0, i64 %idxprom86, !dbg !1214
  %65 = load i8, i8* %arrayidx87, align 1, !dbg !1214
  store i8 %65, i8* %minimum_aml_resource_length, align 1, !dbg !1215
  %66 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1216
  %common_serial_bus88 = bitcast %union.aml_resource* %66 to %struct.aml_resource_common_serialbus*, !dbg !1217
  %resource_length89 = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus88, i32 0, i32 1, !dbg !1218
  %67 = load i16, i16* %resource_length89, align 1, !dbg !1218
  %conv90 = zext i16 %67 to i32, !dbg !1216
  %68 = load i8, i8* %minimum_aml_resource_length, align 1, !dbg !1219
  %conv91 = zext i8 %68 to i32, !dbg !1219
  %sub92 = sub i32 %conv90, %conv91, !dbg !1220
  %69 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1221
  %add93 = add i32 %69, %sub92, !dbg !1221
  store i32 %add93, i32* %extra_struct_bytes, align 4, !dbg !1221
  br label %sw.epilog, !dbg !1222

sw.bb94:                                          ; preds = %if.end
  %70 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1223
  %pin_config = bitcast %union.aml_resource* %70 to %struct.aml_resource_pin_config*, !dbg !1225
  %vendor_length95 = getelementptr inbounds %struct.aml_resource_pin_config, %struct.aml_resource_pin_config* %pin_config, i32 0, i32 10, !dbg !1226
  %71 = load i16, i16* %vendor_length95, align 2, !dbg !1226
  %tobool96 = icmp ne i16 %71, 0, !dbg !1223
  br i1 %tobool96, label %if.then97, label %if.else110, !dbg !1227

if.then97:                                        ; preds = %sw.bb94
  %72 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1228
  %pin_config98 = bitcast %union.aml_resource* %72 to %struct.aml_resource_pin_config*, !dbg !1230
  %vendor_offset99 = getelementptr inbounds %struct.aml_resource_pin_config, %struct.aml_resource_pin_config* %pin_config98, i32 0, i32 9, !dbg !1231
  %73 = load i16, i16* %vendor_offset99, align 4, !dbg !1231
  %conv100 = zext i16 %73 to i32, !dbg !1228
  %74 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1232
  %pin_config101 = bitcast %union.aml_resource* %74 to %struct.aml_resource_pin_config*, !dbg !1233
  %pin_table_offset102 = getelementptr inbounds %struct.aml_resource_pin_config, %struct.aml_resource_pin_config* %pin_config101, i32 0, i32 6, !dbg !1234
  %75 = load i16, i16* %pin_table_offset102, align 1, !dbg !1234
  %conv103 = zext i16 %75 to i32, !dbg !1232
  %sub104 = sub i32 %conv100, %conv103, !dbg !1235
  %76 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1236
  %pin_config105 = bitcast %union.aml_resource* %76 to %struct.aml_resource_pin_config*, !dbg !1237
  %vendor_length106 = getelementptr inbounds %struct.aml_resource_pin_config, %struct.aml_resource_pin_config* %pin_config105, i32 0, i32 10, !dbg !1238
  %77 = load i16, i16* %vendor_length106, align 2, !dbg !1238
  %conv107 = zext i16 %77 to i32, !dbg !1236
  %add108 = add i32 %sub104, %conv107, !dbg !1239
  %78 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1240
  %add109 = add i32 %78, %add108, !dbg !1240
  store i32 %add109, i32* %extra_struct_bytes, align 4, !dbg !1240
  br label %if.end122, !dbg !1241

if.else110:                                       ; preds = %sw.bb94
  %79 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1242
  %large_header111 = bitcast %union.aml_resource* %79 to %struct.aml_resource_large_header*, !dbg !1244
  %resource_length112 = getelementptr inbounds %struct.aml_resource_large_header, %struct.aml_resource_large_header* %large_header111, i32 0, i32 1, !dbg !1245
  %80 = load i16, i16* %resource_length112, align 1, !dbg !1245
  %conv113 = zext i16 %80 to i64, !dbg !1242
  %add114 = add i64 %conv113, 3, !dbg !1246
  %81 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1247
  %pin_config115 = bitcast %union.aml_resource* %81 to %struct.aml_resource_pin_config*, !dbg !1248
  %pin_table_offset116 = getelementptr inbounds %struct.aml_resource_pin_config, %struct.aml_resource_pin_config* %pin_config115, i32 0, i32 6, !dbg !1249
  %82 = load i16, i16* %pin_table_offset116, align 1, !dbg !1249
  %conv117 = zext i16 %82 to i64, !dbg !1247
  %sub118 = sub i64 %add114, %conv117, !dbg !1250
  %83 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1251
  %conv119 = zext i32 %83 to i64, !dbg !1251
  %add120 = add i64 %conv119, %sub118, !dbg !1251
  %conv121 = trunc i64 %add120 to i32, !dbg !1251
  store i32 %conv121, i32* %extra_struct_bytes, align 4, !dbg !1251
  br label %if.end122

if.end122:                                        ; preds = %if.else110, %if.then97
  br label %sw.epilog, !dbg !1252

sw.bb123:                                         ; preds = %if.end
  %84 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1253
  %pin_group = bitcast %union.aml_resource* %84 to %struct.aml_resource_pin_group*, !dbg !1254
  %vendor_offset124 = getelementptr inbounds %struct.aml_resource_pin_group, %struct.aml_resource_pin_group* %pin_group, i32 0, i32 6, !dbg !1255
  %85 = load i16, i16* %vendor_offset124, align 2, !dbg !1255
  %conv125 = zext i16 %85 to i32, !dbg !1253
  %86 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1256
  %pin_group126 = bitcast %union.aml_resource* %86 to %struct.aml_resource_pin_group*, !dbg !1257
  %pin_table_offset127 = getelementptr inbounds %struct.aml_resource_pin_group, %struct.aml_resource_pin_group* %pin_group126, i32 0, i32 4, !dbg !1258
  %87 = load i16, i16* %pin_table_offset127, align 2, !dbg !1258
  %conv128 = zext i16 %87 to i32, !dbg !1256
  %sub129 = sub i32 %conv125, %conv128, !dbg !1259
  %88 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1260
  %pin_group130 = bitcast %union.aml_resource* %88 to %struct.aml_resource_pin_group*, !dbg !1261
  %vendor_length131 = getelementptr inbounds %struct.aml_resource_pin_group, %struct.aml_resource_pin_group* %pin_group130, i32 0, i32 7, !dbg !1262
  %89 = load i16, i16* %vendor_length131, align 4, !dbg !1262
  %conv132 = zext i16 %89 to i32, !dbg !1260
  %add133 = add i32 %sub129, %conv132, !dbg !1263
  %90 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1264
  %add134 = add i32 %90, %add133, !dbg !1264
  store i32 %add134, i32* %extra_struct_bytes, align 4, !dbg !1264
  br label %sw.epilog, !dbg !1265

sw.bb135:                                         ; preds = %if.end
  %91 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1266
  %pin_group_function = bitcast %union.aml_resource* %91 to %struct.aml_resource_pin_group_function*, !dbg !1267
  %vendor_offset136 = getelementptr inbounds %struct.aml_resource_pin_group_function, %struct.aml_resource_pin_group_function* %pin_group_function, i32 0, i32 8, !dbg !1268
  %92 = load i16, i16* %vendor_offset136, align 1, !dbg !1268
  %conv137 = zext i16 %92 to i32, !dbg !1266
  %93 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1269
  %pin_group_function138 = bitcast %union.aml_resource* %93 to %struct.aml_resource_pin_group_function*, !dbg !1270
  %res_source_offset = getelementptr inbounds %struct.aml_resource_pin_group_function, %struct.aml_resource_pin_group_function* %pin_group_function138, i32 0, i32 6, !dbg !1271
  %94 = load i16, i16* %res_source_offset, align 1, !dbg !1271
  %conv139 = zext i16 %94 to i32, !dbg !1269
  %sub140 = sub i32 %conv137, %conv139, !dbg !1272
  %95 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1273
  %pin_group_function141 = bitcast %union.aml_resource* %95 to %struct.aml_resource_pin_group_function*, !dbg !1274
  %vendor_length142 = getelementptr inbounds %struct.aml_resource_pin_group_function, %struct.aml_resource_pin_group_function* %pin_group_function141, i32 0, i32 9, !dbg !1275
  %96 = load i16, i16* %vendor_length142, align 1, !dbg !1275
  %conv143 = zext i16 %96 to i32, !dbg !1273
  %add144 = add i32 %sub140, %conv143, !dbg !1276
  %97 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1277
  %add145 = add i32 %97, %add144, !dbg !1277
  store i32 %add145, i32* %extra_struct_bytes, align 4, !dbg !1277
  br label %sw.epilog, !dbg !1278

sw.bb146:                                         ; preds = %if.end
  %98 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1279
  %pin_group_config = bitcast %union.aml_resource* %98 to %struct.aml_resource_pin_group_config*, !dbg !1280
  %vendor_offset147 = getelementptr inbounds %struct.aml_resource_pin_group_config, %struct.aml_resource_pin_group_config* %pin_group_config, i32 0, i32 9, !dbg !1281
  %99 = load i16, i16* %vendor_offset147, align 4, !dbg !1281
  %conv148 = zext i16 %99 to i32, !dbg !1279
  %100 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1282
  %pin_group_config149 = bitcast %union.aml_resource* %100 to %struct.aml_resource_pin_group_config*, !dbg !1283
  %res_source_offset150 = getelementptr inbounds %struct.aml_resource_pin_group_config, %struct.aml_resource_pin_group_config* %pin_group_config149, i32 0, i32 7, !dbg !1284
  %101 = load i16, i16* %res_source_offset150, align 4, !dbg !1284
  %conv151 = zext i16 %101 to i32, !dbg !1282
  %sub152 = sub i32 %conv148, %conv151, !dbg !1285
  %102 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1286
  %pin_group_config153 = bitcast %union.aml_resource* %102 to %struct.aml_resource_pin_group_config*, !dbg !1287
  %vendor_length154 = getelementptr inbounds %struct.aml_resource_pin_group_config, %struct.aml_resource_pin_group_config* %pin_group_config153, i32 0, i32 10, !dbg !1288
  %103 = load i16, i16* %vendor_length154, align 2, !dbg !1288
  %conv155 = zext i16 %103 to i32, !dbg !1286
  %add156 = add i32 %sub152, %conv155, !dbg !1289
  %104 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1290
  %add157 = add i32 %104, %add156, !dbg !1290
  store i32 %add157, i32* %extra_struct_bytes, align 4, !dbg !1290
  br label %sw.epilog, !dbg !1291

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1292

sw.epilog:                                        ; preds = %sw.default, %sw.bb146, %sw.bb135, %sw.bb123, %if.end122, %sw.bb85, %if.end84, %if.end55, %sw.bb23, %sw.bb19, %if.end17, %sw.bb9, %sw.bb
  %105 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1293
  %call158 = call zeroext i8 @acpi_ut_get_resource_type(i8* %105) #3, !dbg !1295
  %conv159 = zext i8 %call158 to i32, !dbg !1295
  %cmp160 = icmp eq i32 %conv159, 142, !dbg !1296
  br i1 %cmp160, label %if.then162, label %if.else169, !dbg !1297

if.then162:                                       ; preds = %sw.epilog
  %106 = load %union.aml_resource*, %union.aml_resource** %aml_resource, align 8, !dbg !1298
  %common_serial_bus163 = bitcast %union.aml_resource* %106 to %struct.aml_resource_common_serialbus*, !dbg !1300
  %type164 = getelementptr inbounds %struct.aml_resource_common_serialbus, %struct.aml_resource_common_serialbus* %common_serial_bus163, i32 0, i32 4, !dbg !1301
  %107 = load i8, i8* %type164, align 1, !dbg !1301
  %idxprom165 = zext i8 %107 to i64, !dbg !1302
  %arrayidx166 = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_resource_struct_serial_bus_sizes, i64 0, i64 %idxprom165, !dbg !1302
  %108 = load i8, i8* %arrayidx166, align 1, !dbg !1302
  %conv167 = zext i8 %108 to i32, !dbg !1302
  %109 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1303
  %add168 = add i32 %conv167, %109, !dbg !1304
  store i32 %add168, i32* %buffer_size, align 4, !dbg !1305
  br label %if.end174, !dbg !1306

if.else169:                                       ; preds = %sw.epilog
  %110 = load i8, i8* %resource_index, align 1, !dbg !1307
  %idxprom170 = zext i8 %110 to i64, !dbg !1309
  %arrayidx171 = getelementptr [0 x i8], [0 x i8]* @acpi_gbl_resource_struct_sizes, i64 0, i64 %idxprom170, !dbg !1309
  %111 = load i8, i8* %arrayidx171, align 1, !dbg !1309
  %conv172 = zext i8 %111 to i32, !dbg !1309
  %112 = load i32, i32* %extra_struct_bytes, align 4, !dbg !1310
  %add173 = add i32 %conv172, %112, !dbg !1311
  store i32 %add173, i32* %buffer_size, align 4, !dbg !1312
  br label %if.end174

if.end174:                                        ; preds = %if.else169, %if.then162
  %113 = load i32, i32* %buffer_size, align 4, !dbg !1313
  %conv175 = zext i32 %113 to i64, !dbg !1313
  %add176 = add i64 %conv175, 7, !dbg !1313
  %and = and i64 %add176, -8, !dbg !1313
  %conv177 = trunc i64 %and to i32, !dbg !1314
  store i32 %conv177, i32* %buffer_size, align 4, !dbg !1315
  %114 = load i32, i32* %buffer_size, align 4, !dbg !1316
  %conv178 = zext i32 %114 to i64, !dbg !1316
  %115 = load i64*, i64** %size_needed.addr, align 8, !dbg !1317
  %116 = load i64, i64* %115, align 8, !dbg !1318
  %add179 = add i64 %116, %conv178, !dbg !1318
  store i64 %add179, i64* %115, align 8, !dbg !1318
  %117 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1319
  %call180 = call i32 @acpi_ut_get_descriptor_length(i8* %117) #3, !dbg !1320
  %118 = load i8*, i8** %aml_buffer.addr, align 8, !dbg !1321
  %idx.ext181 = zext i32 %call180 to i64, !dbg !1321
  %add.ptr182 = getelementptr i8, i8* %118, i64 %idx.ext181, !dbg !1321
  store i8* %add.ptr182, i8** %aml_buffer.addr, align 8, !dbg !1321
  br label %while.cond, !dbg !1082, !llvm.loop !1322

while.end:                                        ; preds = %while.cond
  store i32 12316, i32* %retval, align 4, !dbg !1324
  br label %return, !dbg !1324

return:                                           ; preds = %while.end, %sw.bb18, %if.then
  %119 = load i32, i32* %retval, align 4, !dbg !1325
  ret i32 %119, !dbg !1325
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_validate_resource(%struct.acpi_walk_state*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_ut_get_resource_length(i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_get_resource_header_length(i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_get_resource_type(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @acpi_rs_count_set_bits(i16 zeroext %bit_field) #0 !dbg !1326 {
entry:
  %bit_field.addr = alloca i16, align 2
  %bits_set = alloca i8, align 1
  store i16 %bit_field, i16* %bit_field.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %bit_field.addr, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata i8* %bits_set, metadata !1331, metadata !DIExpression()), !dbg !1332
  store i8 0, i8* %bits_set, align 1, !dbg !1333
  br label %for.cond, !dbg !1335

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %bit_field.addr, align 2, !dbg !1336
  %tobool = icmp ne i16 %0, 0, !dbg !1338
  br i1 %tobool, label %for.body, label %for.end, !dbg !1338

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %bit_field.addr, align 2, !dbg !1339
  %conv = zext i16 %1 to i32, !dbg !1339
  %sub = sub i32 %conv, 1, !dbg !1341
  %conv1 = trunc i32 %sub to i16, !dbg !1342
  %conv2 = zext i16 %conv1 to i32, !dbg !1342
  %2 = load i16, i16* %bit_field.addr, align 2, !dbg !1343
  %conv3 = zext i16 %2 to i32, !dbg !1343
  %and = and i32 %conv3, %conv2, !dbg !1343
  %conv4 = trunc i32 %and to i16, !dbg !1343
  store i16 %conv4, i16* %bit_field.addr, align 2, !dbg !1343
  br label %for.inc, !dbg !1344

for.inc:                                          ; preds = %for.body
  %3 = load i8, i8* %bits_set, align 1, !dbg !1345
  %inc = add i8 %3, 1, !dbg !1345
  store i8 %inc, i8* %bits_set, align 1, !dbg !1345
  br label %for.cond, !dbg !1346, !llvm.loop !1347

for.end:                                          ; preds = %for.cond
  %4 = load i8, i8* %bits_set, align 1, !dbg !1349
  ret i8 %4, !dbg !1350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_rs_stream_option_length(i32 %resource_length, i32 %minimum_aml_resource_length) #0 !dbg !1351 {
entry:
  %resource_length.addr = alloca i32, align 4
  %minimum_aml_resource_length.addr = alloca i32, align 4
  %string_length = alloca i32, align 4
  store i32 %resource_length, i32* %resource_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resource_length.addr, metadata !1354, metadata !DIExpression()), !dbg !1355
  store i32 %minimum_aml_resource_length, i32* %minimum_aml_resource_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %minimum_aml_resource_length.addr, metadata !1356, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.declare(metadata i32* %string_length, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i32 0, i32* %string_length, align 4, !dbg !1359
  %0 = load i32, i32* %resource_length.addr, align 4, !dbg !1360
  %1 = load i32, i32* %minimum_aml_resource_length.addr, align 4, !dbg !1362
  %cmp = icmp ugt i32 %0, %1, !dbg !1363
  br i1 %cmp, label %if.then, label %if.end, !dbg !1364

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %resource_length.addr, align 4, !dbg !1365
  %3 = load i32, i32* %minimum_aml_resource_length.addr, align 4, !dbg !1367
  %sub = sub i32 %2, %3, !dbg !1368
  %sub1 = sub i32 %sub, 1, !dbg !1369
  store i32 %sub1, i32* %string_length, align 4, !dbg !1370
  br label %if.end, !dbg !1371

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %string_length, align 4, !dbg !1372
  %conv = zext i32 %4 to i64, !dbg !1372
  %add = add i64 %conv, 7, !dbg !1372
  %and = and i64 %add, -8, !dbg !1372
  %conv2 = trunc i64 %and to i32, !dbg !1373
  ret i32 %conv2, !dbg !1374
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_get_descriptor_length(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_rs_get_pci_routing_table_length(%union.acpi_operand_object* %package_object, i64* %buffer_size_needed) #0 !dbg !1375 {
entry:
  %retval = alloca i32, align 4
  %package_object.addr = alloca %union.acpi_operand_object*, align 8
  %buffer_size_needed.addr = alloca i64*, align 8
  %number_of_elements = alloca i32, align 4
  %temp_size_needed = alloca i64, align 8
  %top_object_list = alloca %union.acpi_operand_object**, align 8
  %index = alloca i32, align 4
  %package_element = alloca %union.acpi_operand_object*, align 8
  %sub_object_list = alloca %union.acpi_operand_object**, align 8
  %name_found = alloca i8, align 1
  %table_index = alloca i32, align 4
  store %union.acpi_operand_object* %package_object, %union.acpi_operand_object** %package_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_object.addr, metadata !2132, metadata !DIExpression()), !dbg !2133
  store i64* %buffer_size_needed, i64** %buffer_size_needed.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %buffer_size_needed.addr, metadata !2134, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.declare(metadata i32* %number_of_elements, metadata !2136, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.declare(metadata i64* %temp_size_needed, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i64 0, i64* %temp_size_needed, align 8, !dbg !2139
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %top_object_list, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.declare(metadata i32* %index, metadata !2142, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_element, metadata !2144, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %sub_object_list, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.declare(metadata i8* %name_found, metadata !2148, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !2150, metadata !DIExpression()), !dbg !2151
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object.addr, align 8, !dbg !2152
  %package = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_package*, !dbg !2153
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !2154
  %1 = load i32, i32* %count, align 4, !dbg !2154
  store i32 %1, i32* %number_of_elements, align 4, !dbg !2155
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_object.addr, align 8, !dbg !2156
  %package1 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_package*, !dbg !2157
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package1, i32 0, i32 6, !dbg !2158
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !2158
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !2159
  store i32 0, i32* %index, align 4, !dbg !2160
  br label %for.cond, !dbg !2162

for.cond:                                         ; preds = %for.inc51, %entry
  %4 = load i32, i32* %index, align 4, !dbg !2163
  %5 = load i32, i32* %number_of_elements, align 4, !dbg !2165
  %cmp = icmp ult i32 %4, %5, !dbg !2166
  br i1 %cmp, label %for.body, label %for.end53, !dbg !2167

for.body:                                         ; preds = %for.cond
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !2168
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8, !dbg !2170
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %package_element, align 8, !dbg !2171
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_element, align 8, !dbg !2172
  %tobool = icmp ne %union.acpi_operand_object* %8, null, !dbg !2172
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2174

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_element, align 8, !dbg !2175
  %common = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !2176
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !2177
  %10 = load i8, i8* %type, align 1, !dbg !2177
  %conv = zext i8 %10 to i32, !dbg !2175
  %cmp2 = icmp ne i32 %conv, 4, !dbg !2178
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2179

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 12291, i32* %retval, align 4, !dbg !2180
  br label %return, !dbg !2180

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_element, align 8, !dbg !2182
  %package4 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_package*, !dbg !2183
  %elements5 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package4, i32 0, i32 6, !dbg !2184
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements5, align 8, !dbg !2184
  store %union.acpi_operand_object** %12, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2185
  store i8 0, i8* %name_found, align 1, !dbg !2186
  store i32 0, i32* %table_index, align 4, !dbg !2187
  br label %for.cond6, !dbg !2189

for.cond6:                                        ; preds = %for.inc, %if.end
  %13 = load i32, i32* %table_index, align 4, !dbg !2190
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_element, align 8, !dbg !2192
  %package7 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_package*, !dbg !2193
  %count8 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package7, i32 0, i32 9, !dbg !2194
  %15 = load i32, i32* %count8, align 4, !dbg !2194
  %cmp9 = icmp ult i32 %13, %15, !dbg !2195
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !2196

land.rhs:                                         ; preds = %for.cond6
  %16 = load i8, i8* %name_found, align 1, !dbg !2197
  %tobool11 = icmp ne i8 %16, 0, !dbg !2198
  %lnot = xor i1 %tobool11, true, !dbg !2198
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond6
  %17 = phi i1 [ false, %for.cond6 ], [ %lnot, %land.rhs ], !dbg !2199
  br i1 %17, label %for.body12, label %for.end, !dbg !2200

for.body12:                                       ; preds = %land.end
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2201
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8, !dbg !2204
  %tobool13 = icmp ne %union.acpi_operand_object* %19, null, !dbg !2204
  br i1 %tobool13, label %land.lhs.true, label %if.else, !dbg !2205

land.lhs.true:                                    ; preds = %for.body12
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2206
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %20, align 8, !dbg !2207
  %common14 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_common*, !dbg !2208
  %type15 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common14, i32 0, i32 2, !dbg !2209
  %22 = load i8, i8* %type15, align 1, !dbg !2209
  %conv16 = zext i8 %22 to i32, !dbg !2210
  %cmp17 = icmp eq i32 2, %conv16, !dbg !2211
  br i1 %cmp17, label %if.then29, label %lor.lhs.false19, !dbg !2212

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2213
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %23, align 8, !dbg !2214
  %common20 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_common*, !dbg !2215
  %type21 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common20, i32 0, i32 2, !dbg !2216
  %25 = load i8, i8* %type21, align 1, !dbg !2216
  %conv22 = zext i8 %25 to i32, !dbg !2217
  %cmp23 = icmp eq i32 20, %conv22, !dbg !2218
  br i1 %cmp23, label %land.lhs.true25, label %if.else, !dbg !2219

land.lhs.true25:                                  ; preds = %lor.lhs.false19
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2220
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %26, align 8, !dbg !2221
  %reference = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_reference*, !dbg !2222
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !2223
  %28 = load i8, i8* %class, align 1, !dbg !2223
  %conv26 = zext i8 %28 to i32, !dbg !2224
  %cmp27 = icmp eq i32 %conv26, 5, !dbg !2225
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !2226

if.then29:                                        ; preds = %land.lhs.true25, %land.lhs.true
  store i8 1, i8* %name_found, align 1, !dbg !2227
  br label %if.end30, !dbg !2229

if.else:                                          ; preds = %land.lhs.true25, %lor.lhs.false19, %for.body12
  %29 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2230
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %29, i32 1, !dbg !2230
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2230
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  br label %for.inc, !dbg !2232

for.inc:                                          ; preds = %if.end30
  %30 = load i32, i32* %table_index, align 4, !dbg !2233
  %inc = add i32 %30, 1, !dbg !2233
  store i32 %inc, i32* %table_index, align 4, !dbg !2233
  br label %for.cond6, !dbg !2234, !llvm.loop !2235

for.end:                                          ; preds = %land.end
  %31 = load i64, i64* %temp_size_needed, align 8, !dbg !2237
  %add = add i64 %31, 20, !dbg !2237
  store i64 %add, i64* %temp_size_needed, align 8, !dbg !2237
  %32 = load i8, i8* %name_found, align 1, !dbg !2238
  %tobool31 = icmp ne i8 %32, 0, !dbg !2238
  br i1 %tobool31, label %if.then32, label %if.else46, !dbg !2240

if.then32:                                        ; preds = %for.end
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2241
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %33, align 8, !dbg !2244
  %common33 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_common*, !dbg !2245
  %type34 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common33, i32 0, i32 2, !dbg !2246
  %35 = load i8, i8* %type34, align 1, !dbg !2246
  %conv35 = zext i8 %35 to i32, !dbg !2247
  %cmp36 = icmp eq i32 %conv35, 2, !dbg !2248
  br i1 %cmp36, label %if.then38, label %if.else42, !dbg !2249

if.then38:                                        ; preds = %if.then32
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2250
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %36, align 8, !dbg !2252
  %string = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_string*, !dbg !2253
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !2254
  %38 = load i32, i32* %length, align 8, !dbg !2254
  %conv39 = zext i32 %38 to i64, !dbg !2255
  %add40 = add i64 %conv39, 1, !dbg !2256
  %39 = load i64, i64* %temp_size_needed, align 8, !dbg !2257
  %add41 = add i64 %39, %add40, !dbg !2257
  store i64 %add41, i64* %temp_size_needed, align 8, !dbg !2257
  br label %if.end45, !dbg !2258

if.else42:                                        ; preds = %if.then32
  %40 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %sub_object_list, align 8, !dbg !2259
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %40, align 8, !dbg !2261
  %reference43 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_reference*, !dbg !2262
  %node = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference43, i32 0, i32 9, !dbg !2263
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !2263
  %call = call i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node* %42) #3, !dbg !2264
  %43 = load i64, i64* %temp_size_needed, align 8, !dbg !2265
  %add44 = add i64 %43, %call, !dbg !2265
  store i64 %add44, i64* %temp_size_needed, align 8, !dbg !2265
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then38
  br label %if.end48, !dbg !2266

if.else46:                                        ; preds = %for.end
  %44 = load i64, i64* %temp_size_needed, align 8, !dbg !2267
  %add47 = add i64 %44, 4, !dbg !2267
  store i64 %add47, i64* %temp_size_needed, align 8, !dbg !2267
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.end45
  %45 = load i64, i64* %temp_size_needed, align 8, !dbg !2269
  %add49 = add i64 %45, 7, !dbg !2269
  %and = and i64 %add49, -8, !dbg !2269
  store i64 %and, i64* %temp_size_needed, align 8, !dbg !2270
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !2271
  %incdec.ptr50 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %46, i32 1, !dbg !2271
  store %union.acpi_operand_object** %incdec.ptr50, %union.acpi_operand_object*** %top_object_list, align 8, !dbg !2271
  br label %for.inc51, !dbg !2272

for.inc51:                                        ; preds = %if.end48
  %47 = load i32, i32* %index, align 4, !dbg !2273
  %inc52 = add i32 %47, 1, !dbg !2273
  store i32 %inc52, i32* %index, align 4, !dbg !2273
  br label %for.cond, !dbg !2274, !llvm.loop !2275

for.end53:                                        ; preds = %for.cond
  %48 = load i64, i64* %temp_size_needed, align 8, !dbg !2277
  %add54 = add i64 %48, 24, !dbg !2278
  %49 = load i64*, i64** %buffer_size_needed.addr, align 8, !dbg !2279
  store i64 %add54, i64* %49, align 8, !dbg !2280
  store i32 0, i32* %retval, align 4, !dbg !2281
  br label %return, !dbg !2281

return:                                           ; preds = %for.end53, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !2282
  ret i32 %50, !dbg !2282
}

; Function Attrs: noredzone
declare dso_local i64 @acpi_ns_get_pathname_length(%struct.acpi_namespace_node*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!403, !404, !405, !406}
!llvm.ident = !{!407}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/rscalc.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 321, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!15 = !{!16, !398, !255, !399, !401, !402, !21, !253, !66}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !18, line: 651, size: 544, elements: !19)
!18 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !18, line: 652, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !5)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !17, file: !18, line: 653, baseType: !21, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !17, file: !18, line: 654, baseType: !27, size: 480, offset: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !18, line: 614, size: 480, elements: !28)
!28 = !{!29, !45, !53, !59, !70, !75, !81, !86, !96, !100, !108, !116, !122, !164, !182, !203, !215, !227, !235, !256, !272, !292, !314, !327, !339, !352, !366, !377, !389}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !27, file: !18, line: 615, baseType: !30, size: 56)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !18, line: 138, size: 56, elements: !31)
!31 = !{!32, !36, !37, !38, !39, !40, !41}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !30, file: !18, line: 139, baseType: !33, size: 8)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !30, file: !18, line: 140, baseType: !33, size: 8, offset: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !30, file: !18, line: 141, baseType: !33, size: 8, offset: 16)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !30, file: !18, line: 142, baseType: !33, size: 8, offset: 24)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !30, file: !18, line: 143, baseType: !33, size: 8, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !30, file: !18, line: 144, baseType: !33, size: 8, offset: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !30, file: !18, line: 145, baseType: !42, size: 8, offset: 48)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 1)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !27, file: !18, line: 616, baseType: !46, size: 40)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !18, line: 148, size: 40, elements: !47)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !18, line: 149, baseType: !33, size: 8)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !46, file: !18, line: 150, baseType: !33, size: 8, offset: 8)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !46, file: !18, line: 151, baseType: !33, size: 8, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !46, file: !18, line: 152, baseType: !33, size: 8, offset: 24)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !46, file: !18, line: 153, baseType: !42, size: 8, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !27, file: !18, line: 617, baseType: !54, size: 24)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !18, line: 156, size: 24, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !54, file: !18, line: 157, baseType: !33, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !54, file: !18, line: 158, baseType: !33, size: 8, offset: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !54, file: !18, line: 159, baseType: !33, size: 8, offset: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !27, file: !18, line: 618, baseType: !60, size: 56)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !18, line: 167, size: 56, elements: !61)
!61 = !{!62, !63, !64, !65, !69}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !60, file: !18, line: 168, baseType: !33, size: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !60, file: !18, line: 169, baseType: !33, size: 8, offset: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !60, file: !18, line: 170, baseType: !33, size: 8, offset: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !60, file: !18, line: 171, baseType: !66, size: 16, offset: 24)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !68)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !60, file: !18, line: 172, baseType: !66, size: 16, offset: 40)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !27, file: !18, line: 619, baseType: !71, size: 24)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !18, line: 175, size: 24, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !71, file: !18, line: 176, baseType: !66, size: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !71, file: !18, line: 177, baseType: !33, size: 8, offset: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !27, file: !18, line: 620, baseType: !76, size: 40)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !18, line: 180, size: 40, elements: !77)
!77 = !{!78, !79, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !76, file: !18, line: 181, baseType: !66, size: 16)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !76, file: !18, line: 182, baseType: !66, size: 16, offset: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !76, file: !18, line: 183, baseType: !33, size: 8, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !27, file: !18, line: 621, baseType: !82, size: 24)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !18, line: 195, size: 24, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !82, file: !18, line: 196, baseType: !66, size: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !82, file: !18, line: 197, baseType: !42, size: 8, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !27, file: !18, line: 622, baseType: !87, size: 160)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !18, line: 202, size: 160, elements: !88)
!88 = !{!89, !90, !91, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !87, file: !18, line: 203, baseType: !66, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !87, file: !18, line: 204, baseType: !33, size: 8, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !87, file: !18, line: 205, baseType: !92, size: 128, offset: 24)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !87, file: !18, line: 206, baseType: !42, size: 8, offset: 152)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !27, file: !18, line: 623, baseType: !97, size: 8)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !18, line: 209, size: 8, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !97, file: !18, line: 210, baseType: !33, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !27, file: !18, line: 624, baseType: !101, size: 72)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !18, line: 213, size: 72, elements: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !101, file: !18, line: 214, baseType: !33, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !101, file: !18, line: 215, baseType: !66, size: 16, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !101, file: !18, line: 216, baseType: !66, size: 16, offset: 24)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !101, file: !18, line: 217, baseType: !66, size: 16, offset: 40)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !101, file: !18, line: 218, baseType: !66, size: 16, offset: 56)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !27, file: !18, line: 625, baseType: !109, size: 136)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !18, line: 221, size: 136, elements: !110)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !109, file: !18, line: 222, baseType: !33, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !109, file: !18, line: 223, baseType: !21, size: 32, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !109, file: !18, line: 224, baseType: !21, size: 32, offset: 40)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !109, file: !18, line: 225, baseType: !21, size: 32, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !109, file: !18, line: 226, baseType: !21, size: 32, offset: 104)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !27, file: !18, line: 626, baseType: !117, size: 72)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !18, line: 229, size: 72, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !117, file: !18, line: 230, baseType: !33, size: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !117, file: !18, line: 231, baseType: !21, size: 32, offset: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !117, file: !18, line: 232, baseType: !21, size: 32, offset: 40)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !27, file: !18, line: 627, baseType: !123, size: 240)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !18, line: 306, size: 240, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !148, !156}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !123, file: !18, line: 307, baseType: !33, size: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !123, file: !18, line: 307, baseType: !33, size: 8, offset: 8)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !123, file: !18, line: 307, baseType: !33, size: 8, offset: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !123, file: !18, line: 307, baseType: !33, size: 8, offset: 24)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !123, file: !18, line: 307, baseType: !33, size: 8, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !123, file: !18, line: 307, baseType: !131, size: 32, offset: 40)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !18, line: 249, size: 32, elements: !132)
!132 = !{!133, !140, !147}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !131, file: !18, line: 250, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !18, line: 235, size: 32, elements: !135)
!135 = !{!136, !137, !138, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !134, file: !18, line: 236, baseType: !33, size: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !134, file: !18, line: 237, baseType: !33, size: 8, offset: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !134, file: !18, line: 238, baseType: !33, size: 8, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !134, file: !18, line: 239, baseType: !33, size: 8, offset: 24)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !131, file: !18, line: 251, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !18, line: 242, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !141, file: !18, line: 243, baseType: !33, size: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !141, file: !18, line: 244, baseType: !33, size: 8, offset: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !141, file: !18, line: 245, baseType: !33, size: 8, offset: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !141, file: !18, line: 246, baseType: !33, size: 8, offset: 24)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !131, file: !18, line: 255, baseType: !33, size: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !123, file: !18, line: 307, baseType: !149, size: 80, offset: 72)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !18, line: 279, size: 80, elements: !150)
!150 = !{!151, !152, !153, !154, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !149, file: !18, line: 280, baseType: !66, size: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !149, file: !18, line: 281, baseType: !66, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !149, file: !18, line: 282, baseType: !66, size: 16, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !149, file: !18, line: 283, baseType: !66, size: 16, offset: 48)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !149, file: !18, line: 284, baseType: !66, size: 16, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !123, file: !18, line: 308, baseType: !157, size: 88, offset: 152)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !18, line: 263, size: 88, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !157, file: !18, line: 264, baseType: !33, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !157, file: !18, line: 265, baseType: !66, size: 16, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !157, file: !18, line: 266, baseType: !162, size: 64, offset: 24)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !27, file: !18, line: 628, baseType: !165, size: 320)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !18, line: 311, size: 320, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !165, file: !18, line: 312, baseType: !33, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !165, file: !18, line: 312, baseType: !33, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !165, file: !18, line: 312, baseType: !33, size: 8, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !165, file: !18, line: 312, baseType: !33, size: 8, offset: 24)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !165, file: !18, line: 312, baseType: !33, size: 8, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !165, file: !18, line: 312, baseType: !131, size: 32, offset: 40)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !165, file: !18, line: 312, baseType: !174, size: 160, offset: 72)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !18, line: 287, size: 160, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !174, file: !18, line: 288, baseType: !21, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !174, file: !18, line: 289, baseType: !21, size: 32, offset: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !174, file: !18, line: 290, baseType: !21, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !174, file: !18, line: 291, baseType: !21, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !174, file: !18, line: 292, baseType: !21, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !165, file: !18, line: 313, baseType: !157, size: 88, offset: 232)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !27, file: !18, line: 629, baseType: !183, size: 480)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !18, line: 316, size: 480, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !202}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !183, file: !18, line: 317, baseType: !33, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !183, file: !18, line: 317, baseType: !33, size: 8, offset: 8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !183, file: !18, line: 317, baseType: !33, size: 8, offset: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !183, file: !18, line: 317, baseType: !33, size: 8, offset: 24)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !183, file: !18, line: 317, baseType: !33, size: 8, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !183, file: !18, line: 317, baseType: !131, size: 32, offset: 40)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !183, file: !18, line: 317, baseType: !192, size: 320, offset: 72)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !18, line: 295, size: 320, elements: !193)
!193 = !{!194, !198, !199, !200, !201}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !192, file: !18, line: 296, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !197)
!197 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !192, file: !18, line: 297, baseType: !195, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !192, file: !18, line: 298, baseType: !195, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !192, file: !18, line: 299, baseType: !195, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !192, file: !18, line: 300, baseType: !195, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !183, file: !18, line: 318, baseType: !157, size: 88, offset: 392)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !27, file: !18, line: 630, baseType: !204, size: 464)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !18, line: 321, size: 464, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !204, file: !18, line: 322, baseType: !33, size: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !204, file: !18, line: 322, baseType: !33, size: 8, offset: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !204, file: !18, line: 322, baseType: !33, size: 8, offset: 16)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !204, file: !18, line: 322, baseType: !33, size: 8, offset: 24)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !204, file: !18, line: 322, baseType: !33, size: 8, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !204, file: !18, line: 322, baseType: !131, size: 32, offset: 40)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !204, file: !18, line: 322, baseType: !33, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !204, file: !18, line: 323, baseType: !192, size: 320, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !204, file: !18, line: 324, baseType: !195, size: 64, offset: 400)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !27, file: !18, line: 631, baseType: !216, size: 168)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !18, line: 327, size: 168, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !216, file: !18, line: 328, baseType: !33, size: 8)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !216, file: !18, line: 329, baseType: !33, size: 8, offset: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !216, file: !18, line: 330, baseType: !33, size: 8, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !216, file: !18, line: 331, baseType: !33, size: 8, offset: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !216, file: !18, line: 332, baseType: !33, size: 8, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !216, file: !18, line: 333, baseType: !33, size: 8, offset: 40)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !216, file: !18, line: 334, baseType: !157, size: 88, offset: 48)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !216, file: !18, line: 335, baseType: !226, size: 32, offset: 136)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !43)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !27, file: !18, line: 632, baseType: !228, size: 96)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !18, line: 338, size: 96, elements: !229)
!229 = !{!230, !231, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !228, file: !18, line: 339, baseType: !33, size: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !228, file: !18, line: 340, baseType: !33, size: 8, offset: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !228, file: !18, line: 341, baseType: !33, size: 8, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !228, file: !18, line: 342, baseType: !33, size: 8, offset: 24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !228, file: !18, line: 343, baseType: !195, size: 64, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !27, file: !18, line: 633, baseType: !236, size: 352)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !18, line: 346, size: 352, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !236, file: !18, line: 347, baseType: !33, size: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !236, file: !18, line: 348, baseType: !33, size: 8, offset: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !236, file: !18, line: 349, baseType: !33, size: 8, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !236, file: !18, line: 350, baseType: !33, size: 8, offset: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !236, file: !18, line: 351, baseType: !33, size: 8, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !236, file: !18, line: 352, baseType: !33, size: 8, offset: 40)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !236, file: !18, line: 353, baseType: !33, size: 8, offset: 48)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !236, file: !18, line: 354, baseType: !33, size: 8, offset: 56)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !236, file: !18, line: 355, baseType: !33, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !236, file: !18, line: 356, baseType: !66, size: 16, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !236, file: !18, line: 357, baseType: !66, size: 16, offset: 88)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !236, file: !18, line: 358, baseType: !66, size: 16, offset: 104)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !236, file: !18, line: 359, baseType: !66, size: 16, offset: 120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !236, file: !18, line: 360, baseType: !157, size: 88, offset: 136)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !236, file: !18, line: 361, baseType: !253, size: 64, offset: 224)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !236, file: !18, line: 362, baseType: !255, size: 64, offset: 288)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !27, file: !18, line: 634, baseType: !257, size: 288)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !18, line: 412, size: 288, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !257, file: !18, line: 413, baseType: !33, size: 8)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !257, file: !18, line: 413, baseType: !33, size: 8, offset: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !257, file: !18, line: 413, baseType: !33, size: 8, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !257, file: !18, line: 413, baseType: !33, size: 8, offset: 24)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !257, file: !18, line: 413, baseType: !33, size: 8, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !257, file: !18, line: 413, baseType: !33, size: 8, offset: 40)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !257, file: !18, line: 413, baseType: !66, size: 16, offset: 48)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !257, file: !18, line: 413, baseType: !66, size: 16, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !257, file: !18, line: 413, baseType: !157, size: 88, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !257, file: !18, line: 413, baseType: !255, size: 64, offset: 168)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !257, file: !18, line: 413, baseType: !33, size: 8, offset: 232)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !257, file: !18, line: 414, baseType: !66, size: 16, offset: 240)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !257, file: !18, line: 415, baseType: !21, size: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !27, file: !18, line: 635, baseType: !273, size: 320)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !18, line: 423, size: 320, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !273, file: !18, line: 424, baseType: !33, size: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !273, file: !18, line: 424, baseType: !33, size: 8, offset: 8)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !273, file: !18, line: 424, baseType: !33, size: 8, offset: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !273, file: !18, line: 424, baseType: !33, size: 8, offset: 24)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !273, file: !18, line: 424, baseType: !33, size: 8, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !273, file: !18, line: 424, baseType: !33, size: 8, offset: 40)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !273, file: !18, line: 424, baseType: !66, size: 16, offset: 48)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !273, file: !18, line: 424, baseType: !66, size: 16, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !273, file: !18, line: 424, baseType: !157, size: 88, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !273, file: !18, line: 424, baseType: !255, size: 64, offset: 168)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !273, file: !18, line: 424, baseType: !33, size: 8, offset: 232)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !273, file: !18, line: 425, baseType: !33, size: 8, offset: 240)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !273, file: !18, line: 426, baseType: !33, size: 8, offset: 248)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !273, file: !18, line: 427, baseType: !33, size: 8, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !273, file: !18, line: 428, baseType: !33, size: 8, offset: 264)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !273, file: !18, line: 429, baseType: !66, size: 16, offset: 272)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !273, file: !18, line: 430, baseType: !21, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !27, file: !18, line: 636, baseType: !293, size: 344)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !18, line: 453, size: 344, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !293, file: !18, line: 454, baseType: !33, size: 8)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !293, file: !18, line: 454, baseType: !33, size: 8, offset: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !293, file: !18, line: 454, baseType: !33, size: 8, offset: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !293, file: !18, line: 454, baseType: !33, size: 8, offset: 24)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !293, file: !18, line: 454, baseType: !33, size: 8, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !293, file: !18, line: 454, baseType: !33, size: 8, offset: 40)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !293, file: !18, line: 454, baseType: !66, size: 16, offset: 48)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !293, file: !18, line: 454, baseType: !66, size: 16, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !293, file: !18, line: 454, baseType: !157, size: 88, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !293, file: !18, line: 454, baseType: !255, size: 64, offset: 168)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !293, file: !18, line: 454, baseType: !33, size: 8, offset: 232)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !293, file: !18, line: 455, baseType: !33, size: 8, offset: 240)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !293, file: !18, line: 456, baseType: !33, size: 8, offset: 248)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !293, file: !18, line: 457, baseType: !33, size: 8, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !293, file: !18, line: 458, baseType: !33, size: 8, offset: 264)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !293, file: !18, line: 459, baseType: !33, size: 8, offset: 272)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !293, file: !18, line: 460, baseType: !66, size: 16, offset: 280)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !293, file: !18, line: 461, baseType: !66, size: 16, offset: 296)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !293, file: !18, line: 462, baseType: !21, size: 32, offset: 312)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !27, file: !18, line: 637, baseType: !315, size: 232)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !18, line: 398, size: 232, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !315, file: !18, line: 399, baseType: !33, size: 8)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !315, file: !18, line: 399, baseType: !33, size: 8, offset: 8)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !315, file: !18, line: 399, baseType: !33, size: 8, offset: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !315, file: !18, line: 399, baseType: !33, size: 8, offset: 24)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !315, file: !18, line: 399, baseType: !33, size: 8, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !315, file: !18, line: 399, baseType: !33, size: 8, offset: 40)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !315, file: !18, line: 399, baseType: !66, size: 16, offset: 48)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !315, file: !18, line: 399, baseType: !66, size: 16, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !315, file: !18, line: 399, baseType: !157, size: 88, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !315, file: !18, line: 399, baseType: !255, size: 64, offset: 168)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !27, file: !18, line: 638, baseType: !328, size: 288)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !18, line: 508, size: 288, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !328, file: !18, line: 509, baseType: !33, size: 8)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !328, file: !18, line: 510, baseType: !33, size: 8, offset: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !328, file: !18, line: 511, baseType: !33, size: 8, offset: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !328, file: !18, line: 512, baseType: !66, size: 16, offset: 24)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !328, file: !18, line: 513, baseType: !66, size: 16, offset: 40)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !328, file: !18, line: 514, baseType: !66, size: 16, offset: 56)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !328, file: !18, line: 515, baseType: !157, size: 88, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !328, file: !18, line: 516, baseType: !253, size: 64, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !328, file: !18, line: 517, baseType: !255, size: 64, offset: 224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !27, file: !18, line: 639, baseType: !340, size: 312)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !18, line: 520, size: 312, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !340, file: !18, line: 521, baseType: !33, size: 8)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !340, file: !18, line: 522, baseType: !33, size: 8, offset: 8)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !340, file: !18, line: 523, baseType: !33, size: 8, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !340, file: !18, line: 524, baseType: !33, size: 8, offset: 24)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !340, file: !18, line: 525, baseType: !21, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !340, file: !18, line: 526, baseType: !66, size: 16, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !340, file: !18, line: 527, baseType: !66, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !340, file: !18, line: 528, baseType: !157, size: 88, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !340, file: !18, line: 529, baseType: !253, size: 64, offset: 184)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !340, file: !18, line: 530, baseType: !255, size: 64, offset: 248)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !27, file: !18, line: 640, baseType: !353, size: 256)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !18, line: 550, size: 256, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !365}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !353, file: !18, line: 551, baseType: !33, size: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !353, file: !18, line: 552, baseType: !33, size: 8, offset: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !353, file: !18, line: 553, baseType: !66, size: 16, offset: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !353, file: !18, line: 554, baseType: !66, size: 16, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !353, file: !18, line: 555, baseType: !253, size: 64, offset: 48)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !353, file: !18, line: 556, baseType: !361, size: 80, offset: 112)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !18, line: 258, size: 80, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !361, file: !18, line: 259, baseType: !66, size: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !361, file: !18, line: 260, baseType: !162, size: 64, offset: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !353, file: !18, line: 557, baseType: !255, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !27, file: !18, line: 641, baseType: !367, size: 288)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !18, line: 560, size: 288, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !367, file: !18, line: 561, baseType: !33, size: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !367, file: !18, line: 562, baseType: !33, size: 8, offset: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !367, file: !18, line: 563, baseType: !33, size: 8, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !367, file: !18, line: 564, baseType: !66, size: 16, offset: 24)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !367, file: !18, line: 565, baseType: !66, size: 16, offset: 40)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !367, file: !18, line: 566, baseType: !157, size: 88, offset: 56)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !367, file: !18, line: 567, baseType: !361, size: 80, offset: 144)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !367, file: !18, line: 568, baseType: !255, size: 64, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !27, file: !18, line: 642, baseType: !378, size: 312)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !18, line: 571, size: 312, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !378, file: !18, line: 572, baseType: !33, size: 8)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !378, file: !18, line: 573, baseType: !33, size: 8, offset: 8)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !378, file: !18, line: 574, baseType: !33, size: 8, offset: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !378, file: !18, line: 575, baseType: !33, size: 8, offset: 24)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !378, file: !18, line: 576, baseType: !21, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !378, file: !18, line: 577, baseType: !66, size: 16, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !378, file: !18, line: 578, baseType: !157, size: 88, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !378, file: !18, line: 579, baseType: !361, size: 80, offset: 168)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !378, file: !18, line: 580, baseType: !255, size: 64, offset: 248)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !27, file: !18, line: 646, baseType: !390, size: 72)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !18, line: 303, size: 72, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !390, file: !18, line: 304, baseType: !33, size: 8)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !390, file: !18, line: 304, baseType: !33, size: 8, offset: 8)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !390, file: !18, line: 304, baseType: !33, size: 8, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !390, file: !18, line: 304, baseType: !33, size: 8, offset: 24)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !390, file: !18, line: 304, baseType: !33, size: 8, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !390, file: !18, line: 304, baseType: !131, size: 32, offset: 40)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !400, line: 127, baseType: !195)
!400 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !400, line: 421, baseType: !21)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_rs_length", file: !18, line: 16, baseType: !66)
!403 = !{i32 7, !"Dwarf Version", i32 4}
!404 = !{i32 2, !"Debug Info Version", i32 3}
!405 = !{i32 1, !"wchar_size", i32 2}
!406 = !{i32 1, !"Code Model", i32 2}
!407 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!408 = distinct !DISubprogram(name: "acpi_rs_get_aml_length", scope: !1, file: !1, line: 154, type: !409, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !412)
!409 = !DISubroutineType(types: !410)
!410 = !{!401, !16, !399, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!412 = !{}
!413 = !DILocalVariable(name: "resource", arg: 1, scope: !408, file: !1, line: 154, type: !16)
!414 = !DILocation(line: 154, column: 46, scope: !408)
!415 = !DILocalVariable(name: "resource_list_size", arg: 2, scope: !408, file: !1, line: 155, type: !399)
!416 = !DILocation(line: 155, column: 20, scope: !408)
!417 = !DILocalVariable(name: "size_needed", arg: 3, scope: !408, file: !1, line: 155, type: !411)
!418 = !DILocation(line: 155, column: 51, scope: !408)
!419 = !DILocalVariable(name: "aml_size_needed", scope: !408, file: !1, line: 157, type: !399)
!420 = !DILocation(line: 157, column: 12, scope: !408)
!421 = !DILocalVariable(name: "resource_end", scope: !408, file: !1, line: 158, type: !16)
!422 = !DILocation(line: 158, column: 24, scope: !408)
!423 = !DILocalVariable(name: "total_size", scope: !408, file: !1, line: 159, type: !402)
!424 = !DILocation(line: 159, column: 17, scope: !408)
!425 = !DILocation(line: 166, column: 6, scope: !408)
!426 = !DILocation(line: 165, column: 15, scope: !408)
!427 = !DILocation(line: 167, column: 2, scope: !408)
!428 = !DILocation(line: 167, column: 9, scope: !408)
!429 = !DILocation(line: 167, column: 20, scope: !408)
!430 = !DILocation(line: 167, column: 18, scope: !408)
!431 = !DILocation(line: 171, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 171, column: 7)
!433 = distinct !DILexicalBlock(scope: !408, file: !1, line: 167, column: 34)
!434 = !DILocation(line: 171, column: 17, scope: !432)
!435 = !DILocation(line: 171, column: 22, scope: !432)
!436 = !DILocation(line: 171, column: 7, scope: !433)
!437 = !DILocation(line: 172, column: 4, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 171, column: 48)
!439 = !DILocation(line: 177, column: 8, scope: !440)
!440 = distinct !DILexicalBlock(scope: !433, file: !1, line: 177, column: 7)
!441 = !DILocation(line: 177, column: 18, scope: !440)
!442 = !DILocation(line: 177, column: 7, scope: !433)
!443 = !DILocation(line: 178, column: 4, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !1, line: 177, column: 26)
!445 = !DILocation(line: 183, column: 44, scope: !433)
!446 = !DILocation(line: 183, column: 54, scope: !433)
!447 = !DILocation(line: 183, column: 16, scope: !433)
!448 = !DILocation(line: 183, column: 14, scope: !433)
!449 = !DILocation(line: 189, column: 11, scope: !433)
!450 = !DILocation(line: 189, column: 21, scope: !433)
!451 = !DILocation(line: 189, column: 3, scope: !433)
!452 = !DILocation(line: 194, column: 8, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !1, line: 194, column: 8)
!454 = distinct !DILexicalBlock(scope: !433, file: !1, line: 189, column: 27)
!455 = !DILocation(line: 194, column: 18, scope: !453)
!456 = !DILocation(line: 194, column: 23, scope: !453)
!457 = !DILocation(line: 194, column: 27, scope: !453)
!458 = !DILocation(line: 194, column: 45, scope: !453)
!459 = !DILocation(line: 194, column: 8, scope: !454)
!460 = !DILocation(line: 195, column: 15, scope: !461)
!461 = distinct !DILexicalBlock(scope: !453, file: !1, line: 194, column: 51)
!462 = !DILocation(line: 196, column: 4, scope: !461)
!463 = !DILocation(line: 197, column: 4, scope: !454)
!464 = !DILocation(line: 203, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !454, file: !1, line: 203, column: 8)
!466 = !DILocation(line: 203, column: 18, scope: !465)
!467 = !DILocation(line: 203, column: 23, scope: !465)
!468 = !DILocation(line: 203, column: 27, scope: !465)
!469 = !DILocation(line: 203, column: 45, scope: !465)
!470 = !DILocation(line: 203, column: 8, scope: !454)
!471 = !DILocation(line: 204, column: 15, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !1, line: 203, column: 51)
!473 = !DILocation(line: 205, column: 4, scope: !472)
!474 = !DILocation(line: 206, column: 4, scope: !454)
!475 = !DILocation(line: 215, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !454, file: !1, line: 215, column: 8)
!477 = !DILocation(line: 215, column: 18, scope: !476)
!478 = !DILocation(line: 215, column: 23, scope: !476)
!479 = !DILocation(line: 215, column: 30, scope: !476)
!480 = !DILocation(line: 215, column: 42, scope: !476)
!481 = !DILocation(line: 215, column: 8, scope: !454)
!482 = !DILocation(line: 219, column: 16, scope: !483)
!483 = distinct !DILexicalBlock(scope: !476, file: !1, line: 215, column: 47)
!484 = !DILocation(line: 221, column: 4, scope: !483)
!485 = !DILocation(line: 226, column: 9, scope: !454)
!486 = !DILocation(line: 226, column: 22, scope: !454)
!487 = !DILocation(line: 226, column: 32, scope: !454)
!488 = !DILocation(line: 226, column: 37, scope: !454)
!489 = !DILocation(line: 226, column: 44, scope: !454)
!490 = !DILocation(line: 226, column: 20, scope: !454)
!491 = !DILocation(line: 225, column: 17, scope: !454)
!492 = !DILocation(line: 225, column: 15, scope: !454)
!493 = !DILocation(line: 227, column: 4, scope: !454)
!494 = !DILocation(line: 234, column: 19, scope: !454)
!495 = !DILocation(line: 234, column: 37, scope: !454)
!496 = !DILocation(line: 234, column: 35, scope: !454)
!497 = !DILocation(line: 234, column: 5, scope: !454)
!498 = !DILocation(line: 234, column: 17, scope: !454)
!499 = !DILocation(line: 238, column: 4, scope: !454)
!500 = !DILocation(line: 245, column: 34, scope: !454)
!501 = !DILocation(line: 247, column: 15, scope: !454)
!502 = !DILocation(line: 247, column: 25, scope: !454)
!503 = !DILocation(line: 248, column: 14, scope: !454)
!504 = !DILocation(line: 249, column: 14, scope: !454)
!505 = !DILocation(line: 246, column: 13, scope: !454)
!506 = !DILocation(line: 245, column: 45, scope: !454)
!507 = !DILocation(line: 245, column: 17, scope: !454)
!508 = !DILocation(line: 245, column: 15, scope: !454)
!509 = !DILocation(line: 250, column: 4, scope: !454)
!510 = !DILocation(line: 257, column: 34, scope: !454)
!511 = !DILocation(line: 259, column: 15, scope: !454)
!512 = !DILocation(line: 259, column: 25, scope: !454)
!513 = !DILocation(line: 260, column: 14, scope: !454)
!514 = !DILocation(line: 261, column: 14, scope: !454)
!515 = !DILocation(line: 258, column: 13, scope: !454)
!516 = !DILocation(line: 257, column: 45, scope: !454)
!517 = !DILocation(line: 257, column: 17, scope: !454)
!518 = !DILocation(line: 257, column: 15, scope: !454)
!519 = !DILocation(line: 262, column: 4, scope: !454)
!520 = !DILocation(line: 269, column: 34, scope: !454)
!521 = !DILocation(line: 271, column: 15, scope: !454)
!522 = !DILocation(line: 271, column: 25, scope: !454)
!523 = !DILocation(line: 272, column: 14, scope: !454)
!524 = !DILocation(line: 273, column: 14, scope: !454)
!525 = !DILocation(line: 270, column: 13, scope: !454)
!526 = !DILocation(line: 269, column: 45, scope: !454)
!527 = !DILocation(line: 269, column: 17, scope: !454)
!528 = !DILocation(line: 269, column: 15, scope: !454)
!529 = !DILocation(line: 274, column: 4, scope: !454)
!530 = !DILocation(line: 282, column: 34, scope: !454)
!531 = !DILocation(line: 283, column: 15, scope: !454)
!532 = !DILocation(line: 283, column: 25, scope: !454)
!533 = !DILocation(line: 284, column: 8, scope: !454)
!534 = !DILocation(line: 285, column: 8, scope: !454)
!535 = !DILocation(line: 285, column: 24, scope: !454)
!536 = !DILocation(line: 286, column: 11, scope: !454)
!537 = !DILocation(line: 282, column: 45, scope: !454)
!538 = !DILocation(line: 289, column: 15, scope: !454)
!539 = !DILocation(line: 289, column: 25, scope: !454)
!540 = !DILocation(line: 290, column: 14, scope: !454)
!541 = !DILocation(line: 291, column: 14, scope: !454)
!542 = !DILocation(line: 288, column: 13, scope: !454)
!543 = !DILocation(line: 286, column: 16, scope: !454)
!544 = !DILocation(line: 282, column: 17, scope: !454)
!545 = !DILocation(line: 282, column: 15, scope: !454)
!546 = !DILocation(line: 292, column: 4, scope: !454)
!547 = !DILocation(line: 296, column: 34, scope: !454)
!548 = !DILocation(line: 297, column: 14, scope: !454)
!549 = !DILocation(line: 297, column: 24, scope: !454)
!550 = !DILocation(line: 297, column: 29, scope: !454)
!551 = !DILocation(line: 298, column: 14, scope: !454)
!552 = !DILocation(line: 298, column: 31, scope: !454)
!553 = !DILocation(line: 296, column: 45, scope: !454)
!554 = !DILocation(line: 299, column: 13, scope: !454)
!555 = !DILocation(line: 299, column: 23, scope: !454)
!556 = !DILocation(line: 299, column: 28, scope: !454)
!557 = !DILocation(line: 300, column: 13, scope: !454)
!558 = !DILocation(line: 301, column: 13, scope: !454)
!559 = !DILocation(line: 298, column: 36, scope: !454)
!560 = !DILocation(line: 302, column: 13, scope: !454)
!561 = !DILocation(line: 302, column: 23, scope: !454)
!562 = !DILocation(line: 302, column: 28, scope: !454)
!563 = !DILocation(line: 303, column: 13, scope: !454)
!564 = !DILocation(line: 301, column: 27, scope: !454)
!565 = !DILocation(line: 296, column: 17, scope: !454)
!566 = !DILocation(line: 296, column: 15, scope: !454)
!567 = !DILocation(line: 305, column: 4, scope: !454)
!568 = !DILocation(line: 309, column: 34, scope: !454)
!569 = !DILocation(line: 310, column: 14, scope: !454)
!570 = !DILocation(line: 310, column: 24, scope: !454)
!571 = !DILocation(line: 311, column: 14, scope: !454)
!572 = !DILocation(line: 312, column: 14, scope: !454)
!573 = !DILocation(line: 312, column: 31, scope: !454)
!574 = !DILocation(line: 309, column: 45, scope: !454)
!575 = !DILocation(line: 313, column: 13, scope: !454)
!576 = !DILocation(line: 313, column: 23, scope: !454)
!577 = !DILocation(line: 314, column: 13, scope: !454)
!578 = !DILocation(line: 315, column: 13, scope: !454)
!579 = !DILocation(line: 316, column: 13, scope: !454)
!580 = !DILocation(line: 312, column: 36, scope: !454)
!581 = !DILocation(line: 317, column: 13, scope: !454)
!582 = !DILocation(line: 317, column: 23, scope: !454)
!583 = !DILocation(line: 318, column: 13, scope: !454)
!584 = !DILocation(line: 319, column: 13, scope: !454)
!585 = !DILocation(line: 316, column: 27, scope: !454)
!586 = !DILocation(line: 309, column: 17, scope: !454)
!587 = !DILocation(line: 309, column: 15, scope: !454)
!588 = !DILocation(line: 321, column: 4, scope: !454)
!589 = !DILocation(line: 326, column: 47, scope: !454)
!590 = !DILocation(line: 327, column: 12, scope: !454)
!591 = !DILocation(line: 328, column: 12, scope: !454)
!592 = !DILocation(line: 329, column: 12, scope: !454)
!593 = !DILocation(line: 326, column: 8, scope: !454)
!594 = !DILocation(line: 325, column: 15, scope: !454)
!595 = !DILocation(line: 331, column: 34, scope: !454)
!596 = !DILocation(line: 332, column: 13, scope: !454)
!597 = !DILocation(line: 332, column: 23, scope: !454)
!598 = !DILocation(line: 333, column: 13, scope: !454)
!599 = !DILocation(line: 334, column: 13, scope: !454)
!600 = !DILocation(line: 335, column: 13, scope: !454)
!601 = !DILocation(line: 331, column: 45, scope: !454)
!602 = !DILocation(line: 336, column: 13, scope: !454)
!603 = !DILocation(line: 336, column: 23, scope: !454)
!604 = !DILocation(line: 337, column: 13, scope: !454)
!605 = !DILocation(line: 338, column: 13, scope: !454)
!606 = !DILocation(line: 335, column: 27, scope: !454)
!607 = !DILocation(line: 331, column: 17, scope: !454)
!608 = !DILocation(line: 331, column: 15, scope: !454)
!609 = !DILocation(line: 340, column: 4, scope: !454)
!610 = !DILocation(line: 344, column: 34, scope: !454)
!611 = !DILocation(line: 345, column: 14, scope: !454)
!612 = !DILocation(line: 345, column: 24, scope: !454)
!613 = !DILocation(line: 346, column: 14, scope: !454)
!614 = !DILocation(line: 347, column: 14, scope: !454)
!615 = !DILocation(line: 347, column: 31, scope: !454)
!616 = !DILocation(line: 344, column: 45, scope: !454)
!617 = !DILocation(line: 348, column: 13, scope: !454)
!618 = !DILocation(line: 348, column: 23, scope: !454)
!619 = !DILocation(line: 348, column: 28, scope: !454)
!620 = !DILocation(line: 349, column: 13, scope: !454)
!621 = !DILocation(line: 350, column: 13, scope: !454)
!622 = !DILocation(line: 347, column: 36, scope: !454)
!623 = !DILocation(line: 351, column: 13, scope: !454)
!624 = !DILocation(line: 351, column: 23, scope: !454)
!625 = !DILocation(line: 351, column: 28, scope: !454)
!626 = !DILocation(line: 352, column: 13, scope: !454)
!627 = !DILocation(line: 350, column: 27, scope: !454)
!628 = !DILocation(line: 344, column: 17, scope: !454)
!629 = !DILocation(line: 344, column: 15, scope: !454)
!630 = !DILocation(line: 354, column: 4, scope: !454)
!631 = !DILocation(line: 358, column: 34, scope: !454)
!632 = !DILocation(line: 359, column: 14, scope: !454)
!633 = !DILocation(line: 359, column: 24, scope: !454)
!634 = !DILocation(line: 359, column: 29, scope: !454)
!635 = !DILocation(line: 360, column: 14, scope: !454)
!636 = !DILocation(line: 360, column: 31, scope: !454)
!637 = !DILocation(line: 358, column: 45, scope: !454)
!638 = !DILocation(line: 361, column: 13, scope: !454)
!639 = !DILocation(line: 361, column: 23, scope: !454)
!640 = !DILocation(line: 361, column: 28, scope: !454)
!641 = !DILocation(line: 362, column: 13, scope: !454)
!642 = !DILocation(line: 363, column: 13, scope: !454)
!643 = !DILocation(line: 360, column: 36, scope: !454)
!644 = !DILocation(line: 364, column: 13, scope: !454)
!645 = !DILocation(line: 364, column: 23, scope: !454)
!646 = !DILocation(line: 364, column: 28, scope: !454)
!647 = !DILocation(line: 365, column: 13, scope: !454)
!648 = !DILocation(line: 363, column: 27, scope: !454)
!649 = !DILocation(line: 358, column: 17, scope: !454)
!650 = !DILocation(line: 358, column: 15, scope: !454)
!651 = !DILocation(line: 367, column: 4, scope: !454)
!652 = !DILocation(line: 371, column: 34, scope: !454)
!653 = !DILocation(line: 372, column: 13, scope: !454)
!654 = !DILocation(line: 372, column: 23, scope: !454)
!655 = !DILocation(line: 373, column: 13, scope: !454)
!656 = !DILocation(line: 374, column: 13, scope: !454)
!657 = !DILocation(line: 375, column: 13, scope: !454)
!658 = !DILocation(line: 371, column: 45, scope: !454)
!659 = !DILocation(line: 376, column: 13, scope: !454)
!660 = !DILocation(line: 376, column: 23, scope: !454)
!661 = !DILocation(line: 377, column: 13, scope: !454)
!662 = !DILocation(line: 378, column: 13, scope: !454)
!663 = !DILocation(line: 379, column: 13, scope: !454)
!664 = !DILocation(line: 375, column: 27, scope: !454)
!665 = !DILocation(line: 380, column: 13, scope: !454)
!666 = !DILocation(line: 380, column: 23, scope: !454)
!667 = !DILocation(line: 381, column: 13, scope: !454)
!668 = !DILocation(line: 382, column: 13, scope: !454)
!669 = !DILocation(line: 379, column: 27, scope: !454)
!670 = !DILocation(line: 371, column: 17, scope: !454)
!671 = !DILocation(line: 371, column: 15, scope: !454)
!672 = !DILocation(line: 384, column: 4, scope: !454)
!673 = !DILocation(line: 388, column: 34, scope: !454)
!674 = !DILocation(line: 389, column: 13, scope: !454)
!675 = !DILocation(line: 389, column: 23, scope: !454)
!676 = !DILocation(line: 390, column: 13, scope: !454)
!677 = !DILocation(line: 391, column: 13, scope: !454)
!678 = !DILocation(line: 392, column: 13, scope: !454)
!679 = !DILocation(line: 388, column: 45, scope: !454)
!680 = !DILocation(line: 393, column: 13, scope: !454)
!681 = !DILocation(line: 393, column: 23, scope: !454)
!682 = !DILocation(line: 394, column: 13, scope: !454)
!683 = !DILocation(line: 395, column: 13, scope: !454)
!684 = !DILocation(line: 396, column: 13, scope: !454)
!685 = !DILocation(line: 392, column: 27, scope: !454)
!686 = !DILocation(line: 397, column: 13, scope: !454)
!687 = !DILocation(line: 397, column: 23, scope: !454)
!688 = !DILocation(line: 398, column: 13, scope: !454)
!689 = !DILocation(line: 399, column: 13, scope: !454)
!690 = !DILocation(line: 396, column: 27, scope: !454)
!691 = !DILocation(line: 388, column: 17, scope: !454)
!692 = !DILocation(line: 388, column: 15, scope: !454)
!693 = !DILocation(line: 401, column: 4, scope: !454)
!694 = !DILocation(line: 405, column: 4, scope: !454)
!695 = !DILocation(line: 410, column: 22, scope: !433)
!696 = !DILocation(line: 410, column: 19, scope: !433)
!697 = !DILocation(line: 415, column: 7, scope: !433)
!698 = !DILocation(line: 414, column: 12, scope: !433)
!699 = distinct !{!699, !427, !700}
!700 = !DILocation(line: 417, column: 2, scope: !408)
!701 = !DILocation(line: 421, column: 2, scope: !408)
!702 = !DILocation(line: 422, column: 1, scope: !408)
!703 = distinct !DISubprogram(name: "acpi_rs_struct_option_length", scope: !1, file: !1, line: 69, type: !704, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !412)
!704 = !DISubroutineType(types: !705)
!705 = !{!402, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!707 = !DILocalVariable(name: "resource_source", arg: 1, scope: !703, file: !1, line: 69, type: !706)
!708 = !DILocation(line: 69, column: 59, scope: !703)
!709 = !DILocation(line: 78, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !703, file: !1, line: 78, column: 6)
!711 = !DILocation(line: 78, column: 23, scope: !710)
!712 = !DILocation(line: 78, column: 6, scope: !703)
!713 = !DILocation(line: 79, column: 28, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !1, line: 78, column: 35)
!715 = !DILocation(line: 79, column: 45, scope: !714)
!716 = !DILocation(line: 79, column: 59, scope: !714)
!717 = !DILocation(line: 79, column: 11, scope: !714)
!718 = !DILocation(line: 79, column: 3, scope: !714)
!719 = !DILocation(line: 82, column: 2, scope: !703)
!720 = !DILocation(line: 83, column: 1, scope: !703)
!721 = distinct !DISubprogram(name: "acpi_rs_get_list_length", scope: !1, file: !1, line: 441, type: !722, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !412)
!722 = !DISubroutineType(types: !723)
!723 = !{!401, !255, !21, !411}
!724 = !DILocalVariable(name: "aml_buffer", arg: 1, scope: !721, file: !1, line: 441, type: !255)
!725 = !DILocation(line: 441, column: 29, scope: !721)
!726 = !DILocalVariable(name: "aml_buffer_length", arg: 2, scope: !721, file: !1, line: 442, type: !21)
!727 = !DILocation(line: 442, column: 8, scope: !721)
!728 = !DILocalVariable(name: "size_needed", arg: 3, scope: !721, file: !1, line: 442, type: !411)
!729 = !DILocation(line: 442, column: 38, scope: !721)
!730 = !DILocalVariable(name: "status", scope: !721, file: !1, line: 444, type: !401)
!731 = !DILocation(line: 444, column: 14, scope: !721)
!732 = !DILocalVariable(name: "end_aml", scope: !721, file: !1, line: 445, type: !255)
!733 = !DILocation(line: 445, column: 6, scope: !721)
!734 = !DILocalVariable(name: "buffer", scope: !721, file: !1, line: 446, type: !255)
!735 = !DILocation(line: 446, column: 6, scope: !721)
!736 = !DILocalVariable(name: "buffer_size", scope: !721, file: !1, line: 447, type: !21)
!737 = !DILocation(line: 447, column: 6, scope: !721)
!738 = !DILocalVariable(name: "temp16", scope: !721, file: !1, line: 448, type: !66)
!739 = !DILocation(line: 448, column: 6, scope: !721)
!740 = !DILocalVariable(name: "resource_length", scope: !721, file: !1, line: 449, type: !66)
!741 = !DILocation(line: 449, column: 6, scope: !721)
!742 = !DILocalVariable(name: "extra_struct_bytes", scope: !721, file: !1, line: 450, type: !21)
!743 = !DILocation(line: 450, column: 6, scope: !721)
!744 = !DILocalVariable(name: "resource_index", scope: !721, file: !1, line: 451, type: !33)
!745 = !DILocation(line: 451, column: 5, scope: !721)
!746 = !DILocalVariable(name: "minimum_aml_resource_length", scope: !721, file: !1, line: 452, type: !33)
!747 = !DILocation(line: 452, column: 5, scope: !721)
!748 = !DILocalVariable(name: "aml_resource", scope: !721, file: !1, line: 453, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "aml_resource", file: !751, line: 478, size: 448, elements: !752)
!751 = !DIFile(filename: "drivers/acpi/acpica/amlresrc.h", directory: "/home/lizy2001/genbc/linux")
!752 = !{!753, !754, !758, !763, !769, !775, !780, !784, !793, !799, !806, !810, !815, !825, !835, !840, !850, !858, !871, !884, !897, !913, !921, !938, !952, !969, !986, !998, !1012, !1026, !1037, !1050, !1064, !1072, !1073, !1074}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !751, line: 481, baseType: !33, size: 8)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "small_header", scope: !750, file: !751, line: 482, baseType: !755, size: 8)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_small_header", file: !751, line: 114, size: 8, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !751, line: 115, baseType: !33, size: 8)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "large_header", scope: !750, file: !751, line: 483, baseType: !759, size: 24)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_large_header", file: !751, line: 174, size: 24, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !751, line: 175, baseType: !33, size: 8)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !759, file: !751, line: 175, baseType: !66, size: 16, offset: 8)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !750, file: !751, line: 487, baseType: !764, size: 32)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_irq", file: !751, line: 117, size: 32, elements: !765)
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !751, line: 118, baseType: !33, size: 8)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !764, file: !751, line: 118, baseType: !66, size: 16, offset: 8)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !751, line: 119, baseType: !33, size: 8, offset: 24)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !750, file: !751, line: 488, baseType: !770, size: 24)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_dma", file: !751, line: 126, size: 24, elements: !771)
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !751, line: 127, baseType: !33, size: 8)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel_mask", scope: !770, file: !751, line: 127, baseType: !33, size: 8, offset: 8)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !751, line: 128, baseType: !33, size: 8, offset: 16)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !750, file: !751, line: 489, baseType: !776, size: 16)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_start_dependent", file: !751, line: 131, size: 16, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !751, line: 132, baseType: !33, size: 8)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !751, line: 132, baseType: !33, size: 8, offset: 8)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "end_dpf", scope: !750, file: !751, line: 490, baseType: !781, size: 8)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_dependent", file: !751, line: 138, size: 8, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !751, line: 139, baseType: !33, size: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !750, file: !751, line: 491, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_io", file: !751, line: 141, size: 64, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !751, line: 142, baseType: !33, size: 8)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !751, line: 142, baseType: !33, size: 8, offset: 8)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !785, file: !751, line: 143, baseType: !66, size: 16, offset: 16)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !785, file: !751, line: 144, baseType: !66, size: 16, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !785, file: !751, line: 145, baseType: !33, size: 8, offset: 48)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !785, file: !751, line: 146, baseType: !33, size: 8, offset: 56)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !750, file: !751, line: 492, baseType: !794, size: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_io", file: !751, line: 149, size: 32, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !751, line: 150, baseType: !33, size: 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !794, file: !751, line: 150, baseType: !66, size: 16, offset: 8)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !794, file: !751, line: 151, baseType: !33, size: 8, offset: 24)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !750, file: !751, line: 493, baseType: !800, size: 48)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_dma", file: !751, line: 161, size: 48, elements: !801)
!801 = !{!802, !803, !804, !805}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !800, file: !751, line: 162, baseType: !33, size: 8)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !800, file: !751, line: 162, baseType: !66, size: 16, offset: 8)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !800, file: !751, line: 163, baseType: !66, size: 16, offset: 24)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !800, file: !751, line: 164, baseType: !33, size: 8, offset: 40)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_small", scope: !750, file: !751, line: 494, baseType: !807, size: 8)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_small", file: !751, line: 154, size: 8, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !807, file: !751, line: 155, baseType: !33, size: 8)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !750, file: !751, line: 495, baseType: !811, size: 16)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_end_tag", file: !751, line: 157, size: 16, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !811, file: !751, line: 158, baseType: !33, size: 8)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !811, file: !751, line: 158, baseType: !33, size: 8, offset: 8)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !750, file: !751, line: 499, baseType: !816, size: 96)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory24", file: !751, line: 183, size: 96, elements: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !816, file: !751, line: 184, baseType: !33, size: 8)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !816, file: !751, line: 184, baseType: !66, size: 16, offset: 8)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !751, line: 184, baseType: !33, size: 8, offset: 24)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !816, file: !751, line: 185, baseType: !66, size: 16, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !816, file: !751, line: 186, baseType: !66, size: 16, offset: 48)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !816, file: !751, line: 187, baseType: !66, size: 16, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !816, file: !751, line: 188, baseType: !66, size: 16, offset: 80)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !750, file: !751, line: 500, baseType: !826, size: 120)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_generic_register", file: !751, line: 264, size: 120, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !826, file: !751, line: 265, baseType: !33, size: 8)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !826, file: !751, line: 265, baseType: !66, size: 16, offset: 8)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "address_space_id", scope: !826, file: !751, line: 265, baseType: !33, size: 8, offset: 24)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !826, file: !751, line: 266, baseType: !33, size: 8, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !826, file: !751, line: 267, baseType: !33, size: 8, offset: 40)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !826, file: !751, line: 268, baseType: !33, size: 8, offset: 48)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !826, file: !751, line: 269, baseType: !195, size: 64, offset: 56)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_large", scope: !750, file: !751, line: 501, baseType: !836, size: 24)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_vendor_large", file: !751, line: 191, size: 24, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !836, file: !751, line: 192, baseType: !33, size: 8)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !836, file: !751, line: 192, baseType: !66, size: 16, offset: 8)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !750, file: !751, line: 502, baseType: !841, size: 160)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_memory32", file: !751, line: 194, size: 160, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !849}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !841, file: !751, line: 195, baseType: !33, size: 8)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !841, file: !751, line: 195, baseType: !66, size: 16, offset: 8)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !841, file: !751, line: 195, baseType: !33, size: 8, offset: 24)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !841, file: !751, line: 196, baseType: !21, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !841, file: !751, line: 197, baseType: !21, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !841, file: !751, line: 198, baseType: !21, size: 32, offset: 96)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !841, file: !751, line: 199, baseType: !21, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !750, file: !751, line: 503, baseType: !851, size: 96)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_fixed_memory32", file: !751, line: 202, size: 96, elements: !852)
!852 = !{!853, !854, !855, !856, !857}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !851, file: !751, line: 203, baseType: !33, size: 8)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !851, file: !751, line: 203, baseType: !66, size: 16, offset: 8)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !851, file: !751, line: 203, baseType: !33, size: 8, offset: 24)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !851, file: !751, line: 204, baseType: !21, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !851, file: !751, line: 205, baseType: !21, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !750, file: !751, line: 504, baseType: !859, size: 128)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address16", file: !751, line: 248, size: 128, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !869, !870}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !859, file: !751, line: 249, baseType: !33, size: 8)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !859, file: !751, line: 249, baseType: !66, size: 16, offset: 8)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !859, file: !751, line: 250, baseType: !33, size: 8, offset: 24)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !859, file: !751, line: 250, baseType: !33, size: 8, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !859, file: !751, line: 250, baseType: !33, size: 8, offset: 40)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !859, file: !751, line: 250, baseType: !66, size: 16, offset: 48)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !859, file: !751, line: 251, baseType: !66, size: 16, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !859, file: !751, line: 252, baseType: !66, size: 16, offset: 80)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !859, file: !751, line: 253, baseType: !66, size: 16, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !859, file: !751, line: 254, baseType: !66, size: 16, offset: 112)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !750, file: !751, line: 505, baseType: !872, size: 208)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address32", file: !751, line: 239, size: 208, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !872, file: !751, line: 240, baseType: !33, size: 8)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !872, file: !751, line: 240, baseType: !66, size: 16, offset: 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !872, file: !751, line: 241, baseType: !33, size: 8, offset: 24)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !751, line: 241, baseType: !33, size: 8, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !872, file: !751, line: 241, baseType: !33, size: 8, offset: 40)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !872, file: !751, line: 241, baseType: !21, size: 32, offset: 48)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !872, file: !751, line: 242, baseType: !21, size: 32, offset: 80)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !872, file: !751, line: 243, baseType: !21, size: 32, offset: 112)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !872, file: !751, line: 244, baseType: !21, size: 32, offset: 144)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !872, file: !751, line: 245, baseType: !21, size: 32, offset: 176)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !750, file: !751, line: 506, baseType: !885, size: 368)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address64", file: !751, line: 230, size: 368, elements: !886)
!886 = !{!887, !888, !889, !890, !891, !892, !893, !894, !895, !896}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !885, file: !751, line: 231, baseType: !33, size: 8)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !885, file: !751, line: 231, baseType: !66, size: 16, offset: 8)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !885, file: !751, line: 232, baseType: !33, size: 8, offset: 24)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !751, line: 232, baseType: !33, size: 8, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !885, file: !751, line: 232, baseType: !33, size: 8, offset: 40)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !885, file: !751, line: 232, baseType: !195, size: 64, offset: 48)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !885, file: !751, line: 233, baseType: !195, size: 64, offset: 112)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !885, file: !751, line: 234, baseType: !195, size: 64, offset: 176)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !885, file: !751, line: 235, baseType: !195, size: 64, offset: 240)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !885, file: !751, line: 236, baseType: !195, size: 64, offset: 304)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !750, file: !751, line: 507, baseType: !898, size: 448)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_address64", file: !751, line: 216, size: 448, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !898, file: !751, line: 217, baseType: !33, size: 8)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !898, file: !751, line: 217, baseType: !66, size: 16, offset: 8)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !898, file: !751, line: 218, baseType: !33, size: 8, offset: 24)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !751, line: 218, baseType: !33, size: 8, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !898, file: !751, line: 218, baseType: !33, size: 8, offset: 40)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !898, file: !751, line: 218, baseType: !33, size: 8, offset: 48)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !898, file: !751, line: 219, baseType: !33, size: 8, offset: 56)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !898, file: !751, line: 220, baseType: !195, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !898, file: !751, line: 221, baseType: !195, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !898, file: !751, line: 222, baseType: !195, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !898, file: !751, line: 223, baseType: !195, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !898, file: !751, line: 224, baseType: !195, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !898, file: !751, line: 225, baseType: !195, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !750, file: !751, line: 508, baseType: !914, size: 72)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_extended_irq", file: !751, line: 257, size: 72, elements: !915)
!915 = !{!916, !917, !918, !919, !920}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !914, file: !751, line: 258, baseType: !33, size: 8)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !914, file: !751, line: 258, baseType: !66, size: 16, offset: 8)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !751, line: 258, baseType: !33, size: 8, offset: 24)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !914, file: !751, line: 259, baseType: !33, size: 8, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !914, file: !751, line: 260, baseType: !226, size: 32, offset: 40)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !750, file: !751, line: 509, baseType: !922, size: 184)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_gpio", file: !751, line: 274, size: 184, elements: !923)
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !922, file: !751, line: 275, baseType: !33, size: 8)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !922, file: !751, line: 275, baseType: !66, size: 16, offset: 8)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !922, file: !751, line: 275, baseType: !33, size: 8, offset: 24)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !922, file: !751, line: 276, baseType: !33, size: 8, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !751, line: 277, baseType: !66, size: 16, offset: 40)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "int_flags", scope: !922, file: !751, line: 278, baseType: !66, size: 16, offset: 56)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !922, file: !751, line: 279, baseType: !33, size: 8, offset: 72)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !922, file: !751, line: 280, baseType: !66, size: 16, offset: 80)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !922, file: !751, line: 281, baseType: !66, size: 16, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !922, file: !751, line: 282, baseType: !66, size: 16, offset: 112)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !922, file: !751, line: 283, baseType: !33, size: 8, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !922, file: !751, line: 284, baseType: !66, size: 16, offset: 136)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !922, file: !751, line: 285, baseType: !66, size: 16, offset: 152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !922, file: !751, line: 286, baseType: !66, size: 16, offset: 168)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !750, file: !751, line: 510, baseType: !939, size: 144)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_i2c_serialbus", file: !751, line: 325, size: 144, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !939, file: !751, line: 326, baseType: !33, size: 8)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !939, file: !751, line: 326, baseType: !66, size: 16, offset: 8)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !939, file: !751, line: 327, baseType: !33, size: 8, offset: 24)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !939, file: !751, line: 327, baseType: !33, size: 8, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !939, file: !751, line: 327, baseType: !33, size: 8, offset: 40)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !751, line: 327, baseType: !33, size: 8, offset: 48)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !939, file: !751, line: 327, baseType: !66, size: 16, offset: 56)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !939, file: !751, line: 327, baseType: !33, size: 8, offset: 72)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !939, file: !751, line: 327, baseType: !66, size: 16, offset: 80)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !939, file: !751, line: 327, baseType: !21, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !939, file: !751, line: 328, baseType: !66, size: 16, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !750, file: !751, line: 511, baseType: !953, size: 168)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_spi_serialbus", file: !751, line: 340, size: 168, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !953, file: !751, line: 341, baseType: !33, size: 8)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !953, file: !751, line: 341, baseType: !66, size: 16, offset: 8)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !953, file: !751, line: 342, baseType: !33, size: 8, offset: 24)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !953, file: !751, line: 342, baseType: !33, size: 8, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !953, file: !751, line: 342, baseType: !33, size: 8, offset: 40)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !751, line: 342, baseType: !33, size: 8, offset: 48)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !953, file: !751, line: 342, baseType: !66, size: 16, offset: 56)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !953, file: !751, line: 342, baseType: !33, size: 8, offset: 72)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !953, file: !751, line: 342, baseType: !66, size: 16, offset: 80)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !953, file: !751, line: 342, baseType: !21, size: 32, offset: 96)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !953, file: !751, line: 343, baseType: !33, size: 8, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !953, file: !751, line: 344, baseType: !33, size: 8, offset: 136)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !953, file: !751, line: 345, baseType: !33, size: 8, offset: 144)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !953, file: !751, line: 346, baseType: !66, size: 16, offset: 152)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !750, file: !751, line: 512, baseType: !970, size: 176)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_uart_serialbus", file: !751, line: 358, size: 176, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !970, file: !751, line: 359, baseType: !33, size: 8)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !970, file: !751, line: 359, baseType: !66, size: 16, offset: 8)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !970, file: !751, line: 360, baseType: !33, size: 8, offset: 24)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !970, file: !751, line: 360, baseType: !33, size: 8, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !970, file: !751, line: 360, baseType: !33, size: 8, offset: 40)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !751, line: 360, baseType: !33, size: 8, offset: 48)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !970, file: !751, line: 360, baseType: !66, size: 16, offset: 56)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !970, file: !751, line: 360, baseType: !33, size: 8, offset: 72)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !970, file: !751, line: 360, baseType: !66, size: 16, offset: 80)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !970, file: !751, line: 360, baseType: !21, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !970, file: !751, line: 361, baseType: !66, size: 16, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !970, file: !751, line: 362, baseType: !66, size: 16, offset: 144)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !970, file: !751, line: 363, baseType: !33, size: 8, offset: 160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !970, file: !751, line: 364, baseType: !33, size: 8, offset: 168)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !750, file: !751, line: 513, baseType: !987, size: 96)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_common_serialbus", file: !751, line: 322, size: 96, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !987, file: !751, line: 323, baseType: !33, size: 8)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !987, file: !751, line: 323, baseType: !66, size: 16, offset: 8)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !987, file: !751, line: 323, baseType: !33, size: 8, offset: 24)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !987, file: !751, line: 323, baseType: !33, size: 8, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !987, file: !751, line: 323, baseType: !33, size: 8, offset: 40)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !751, line: 323, baseType: !33, size: 8, offset: 48)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific_flags", scope: !987, file: !751, line: 323, baseType: !66, size: 16, offset: 56)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !987, file: !751, line: 323, baseType: !33, size: 8, offset: 72)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !987, file: !751, line: 323, baseType: !66, size: 16, offset: 80)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !750, file: !751, line: 514, baseType: !999, size: 144)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_function", file: !751, line: 376, size: 144, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !999, file: !751, line: 377, baseType: !33, size: 8)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !999, file: !751, line: 377, baseType: !66, size: 16, offset: 8)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !999, file: !751, line: 377, baseType: !33, size: 8, offset: 24)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !999, file: !751, line: 378, baseType: !66, size: 16, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !999, file: !751, line: 379, baseType: !33, size: 8, offset: 48)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !999, file: !751, line: 380, baseType: !66, size: 16, offset: 56)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !999, file: !751, line: 381, baseType: !66, size: 16, offset: 72)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !999, file: !751, line: 382, baseType: !33, size: 8, offset: 88)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !999, file: !751, line: 383, baseType: !66, size: 16, offset: 96)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !999, file: !751, line: 384, baseType: !66, size: 16, offset: 112)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !999, file: !751, line: 385, baseType: !66, size: 16, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !750, file: !751, line: 515, baseType: !1013, size: 160)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_config", file: !751, line: 396, size: 160, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1013, file: !751, line: 397, baseType: !33, size: 8)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1013, file: !751, line: 397, baseType: !66, size: 16, offset: 8)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1013, file: !751, line: 397, baseType: !33, size: 8, offset: 24)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !751, line: 398, baseType: !66, size: 16, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1013, file: !751, line: 399, baseType: !33, size: 8, offset: 48)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1013, file: !751, line: 400, baseType: !21, size: 32, offset: 56)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1013, file: !751, line: 401, baseType: !66, size: 16, offset: 88)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1013, file: !751, line: 402, baseType: !33, size: 8, offset: 104)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1013, file: !751, line: 403, baseType: !66, size: 16, offset: 112)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1013, file: !751, line: 404, baseType: !66, size: 16, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1013, file: !751, line: 405, baseType: !66, size: 16, offset: 144)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !750, file: !751, line: 516, baseType: !1027, size: 112)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group", file: !751, line: 416, size: 112, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1027, file: !751, line: 417, baseType: !33, size: 8)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1027, file: !751, line: 417, baseType: !66, size: 16, offset: 8)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1027, file: !751, line: 417, baseType: !33, size: 8, offset: 24)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !751, line: 418, baseType: !66, size: 16, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_offset", scope: !1027, file: !751, line: 419, baseType: !66, size: 16, offset: 48)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "label_offset", scope: !1027, file: !751, line: 420, baseType: !66, size: 16, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1027, file: !751, line: 421, baseType: !66, size: 16, offset: 80)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1027, file: !751, line: 422, baseType: !66, size: 16, offset: 96)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !750, file: !751, line: 517, baseType: !1038, size: 136)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_function", file: !751, line: 433, size: 136, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1038, file: !751, line: 434, baseType: !33, size: 8)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1038, file: !751, line: 434, baseType: !66, size: 16, offset: 8)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1038, file: !751, line: 434, baseType: !33, size: 8, offset: 24)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !751, line: 435, baseType: !66, size: 16, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !1038, file: !751, line: 436, baseType: !66, size: 16, offset: 48)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1038, file: !751, line: 437, baseType: !33, size: 8, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1038, file: !751, line: 438, baseType: !66, size: 16, offset: 72)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1038, file: !751, line: 439, baseType: !66, size: 16, offset: 88)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1038, file: !751, line: 440, baseType: !66, size: 16, offset: 104)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1038, file: !751, line: 441, baseType: !66, size: 16, offset: 120)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !750, file: !751, line: 518, baseType: !1051, size: 160)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_pin_group_config", file: !751, line: 452, size: 160, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1051, file: !751, line: 453, baseType: !33, size: 8)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1051, file: !751, line: 453, baseType: !66, size: 16, offset: 8)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !1051, file: !751, line: 453, baseType: !33, size: 8, offset: 24)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1051, file: !751, line: 454, baseType: !66, size: 16, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !1051, file: !751, line: 455, baseType: !33, size: 8, offset: 48)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !1051, file: !751, line: 456, baseType: !21, size: 32, offset: 56)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_index", scope: !1051, file: !751, line: 457, baseType: !33, size: 8, offset: 88)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_offset", scope: !1051, file: !751, line: 458, baseType: !66, size: 16, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "res_source_label_offset", scope: !1051, file: !751, line: 459, baseType: !66, size: 16, offset: 112)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_offset", scope: !1051, file: !751, line: 460, baseType: !66, size: 16, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !1051, file: !751, line: 461, baseType: !66, size: 16, offset: 144)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !750, file: !751, line: 522, baseType: !1065, size: 48)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aml_resource_address", file: !751, line: 213, size: 48, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1065, file: !751, line: 214, baseType: !33, size: 8)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1065, file: !751, line: 214, baseType: !66, size: 16, offset: 8)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !1065, file: !751, line: 214, baseType: !33, size: 8, offset: 24)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !751, line: 214, baseType: !33, size: 8, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "specific_flags", scope: !1065, file: !751, line: 214, baseType: !33, size: 8, offset: 40)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dword_item", scope: !750, file: !751, line: 523, baseType: !21, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "word_item", scope: !750, file: !751, line: 524, baseType: !66, size: 16)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "byte_item", scope: !750, file: !751, line: 525, baseType: !33, size: 8)
!1075 = !DILocation(line: 453, column: 22, scope: !721)
!1076 = !DILocation(line: 457, column: 3, scope: !721)
!1077 = !DILocation(line: 457, column: 15, scope: !721)
!1078 = !DILocation(line: 458, column: 12, scope: !721)
!1079 = !DILocation(line: 458, column: 25, scope: !721)
!1080 = !DILocation(line: 458, column: 23, scope: !721)
!1081 = !DILocation(line: 458, column: 10, scope: !721)
!1082 = !DILocation(line: 462, column: 2, scope: !721)
!1083 = !DILocation(line: 462, column: 9, scope: !721)
!1084 = !DILocation(line: 462, column: 22, scope: !721)
!1085 = !DILocation(line: 462, column: 20, scope: !721)
!1086 = !DILocation(line: 467, column: 39, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !721, file: !1, line: 462, column: 31)
!1088 = !DILocation(line: 467, column: 7, scope: !1087)
!1089 = !DILocation(line: 466, column: 10, scope: !1087)
!1090 = !DILocation(line: 469, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 469, column: 7)
!1092 = !DILocation(line: 469, column: 7, scope: !1087)
!1093 = !DILocation(line: 474, column: 4, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 469, column: 29)
!1095 = !DILocation(line: 477, column: 26, scope: !1087)
!1096 = !DILocation(line: 477, column: 18, scope: !1087)
!1097 = !DILocation(line: 477, column: 16, scope: !1087)
!1098 = !DILocation(line: 481, column: 49, scope: !1087)
!1099 = !DILocation(line: 481, column: 21, scope: !1087)
!1100 = !DILocation(line: 481, column: 19, scope: !1087)
!1101 = !DILocation(line: 483, column: 35, scope: !1087)
!1102 = !DILocation(line: 483, column: 7, scope: !1087)
!1103 = !DILocation(line: 482, column: 31, scope: !1087)
!1104 = !DILocation(line: 489, column: 22, scope: !1087)
!1105 = !DILocation(line: 491, column: 7, scope: !1087)
!1106 = !DILocation(line: 491, column: 55, scope: !1087)
!1107 = !DILocation(line: 491, column: 20, scope: !1087)
!1108 = !DILocation(line: 491, column: 18, scope: !1087)
!1109 = !DILocation(line: 490, column: 10, scope: !1087)
!1110 = !DILocation(line: 493, column: 37, scope: !1087)
!1111 = !DILocation(line: 493, column: 11, scope: !1087)
!1112 = !DILocation(line: 493, column: 3, scope: !1087)
!1113 = !DILocation(line: 499, column: 4, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 493, column: 50)
!1115 = !DILocation(line: 500, column: 48, scope: !1114)
!1116 = !DILocation(line: 500, column: 25, scope: !1114)
!1117 = !DILocation(line: 500, column: 23, scope: !1114)
!1118 = !DILocation(line: 501, column: 4, scope: !1114)
!1119 = !DILocation(line: 508, column: 49, scope: !1114)
!1120 = !DILocation(line: 508, column: 48, scope: !1114)
!1121 = !DILocation(line: 508, column: 25, scope: !1114)
!1122 = !DILocation(line: 508, column: 23, scope: !1114)
!1123 = !DILocation(line: 509, column: 4, scope: !1114)
!1124 = !DILocation(line: 517, column: 25, scope: !1114)
!1125 = !DILocation(line: 517, column: 23, scope: !1114)
!1126 = !DILocation(line: 524, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 524, column: 8)
!1128 = !DILocation(line: 524, column: 8, scope: !1114)
!1129 = !DILocation(line: 525, column: 23, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 524, column: 28)
!1131 = !DILocation(line: 526, column: 4, scope: !1130)
!1132 = !DILocation(line: 527, column: 4, scope: !1114)
!1133 = !DILocation(line: 533, column: 4, scope: !1114)
!1134 = !DILocation(line: 543, column: 37, scope: !1114)
!1135 = !DILocation(line: 544, column: 9, scope: !1114)
!1136 = !DILocation(line: 543, column: 8, scope: !1114)
!1137 = !DILocation(line: 542, column: 23, scope: !1114)
!1138 = !DILocation(line: 545, column: 4, scope: !1114)
!1139 = !DILocation(line: 554, column: 26, scope: !1114)
!1140 = !DILocation(line: 554, column: 36, scope: !1114)
!1141 = !DILocation(line: 554, column: 25, scope: !1114)
!1142 = !DILocation(line: 554, column: 41, scope: !1114)
!1143 = !DILocation(line: 554, column: 23, scope: !1114)
!1144 = !DILocation(line: 559, column: 37, scope: !1114)
!1145 = !DILocation(line: 560, column: 9, scope: !1114)
!1146 = !DILocation(line: 559, column: 53, scope: !1114)
!1147 = !DILocation(line: 561, column: 9, scope: !1114)
!1148 = !DILocation(line: 559, column: 8, scope: !1114)
!1149 = !DILocation(line: 558, column: 23, scope: !1114)
!1150 = !DILocation(line: 562, column: 4, scope: !1114)
!1151 = !DILocation(line: 568, column: 8, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 568, column: 8)
!1153 = !DILocation(line: 568, column: 22, scope: !1152)
!1154 = !DILocation(line: 568, column: 27, scope: !1152)
!1155 = !DILocation(line: 568, column: 8, scope: !1114)
!1156 = !DILocation(line: 570, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 568, column: 42)
!1158 = !DILocation(line: 570, column: 23, scope: !1157)
!1159 = !DILocation(line: 570, column: 28, scope: !1157)
!1160 = !DILocation(line: 571, column: 9, scope: !1157)
!1161 = !DILocation(line: 571, column: 23, scope: !1157)
!1162 = !DILocation(line: 571, column: 28, scope: !1157)
!1163 = !DILocation(line: 570, column: 42, scope: !1157)
!1164 = !DILocation(line: 572, column: 9, scope: !1157)
!1165 = !DILocation(line: 572, column: 23, scope: !1157)
!1166 = !DILocation(line: 572, column: 28, scope: !1157)
!1167 = !DILocation(line: 571, column: 45, scope: !1157)
!1168 = !DILocation(line: 569, column: 24, scope: !1157)
!1169 = !DILocation(line: 573, column: 4, scope: !1157)
!1170 = !DILocation(line: 575, column: 9, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 573, column: 11)
!1172 = !DILocation(line: 575, column: 23, scope: !1171)
!1173 = !DILocation(line: 575, column: 36, scope: !1171)
!1174 = !DILocation(line: 575, column: 52, scope: !1171)
!1175 = !DILocation(line: 577, column: 9, scope: !1171)
!1176 = !DILocation(line: 577, column: 23, scope: !1171)
!1177 = !DILocation(line: 577, column: 28, scope: !1171)
!1178 = !DILocation(line: 576, column: 50, scope: !1171)
!1179 = !DILocation(line: 574, column: 24, scope: !1171)
!1180 = !DILocation(line: 579, column: 4, scope: !1114)
!1181 = !DILocation(line: 585, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 585, column: 8)
!1183 = !DILocation(line: 585, column: 22, scope: !1182)
!1184 = !DILocation(line: 585, column: 35, scope: !1182)
!1185 = !DILocation(line: 585, column: 8, scope: !1114)
!1186 = !DILocation(line: 587, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 585, column: 50)
!1188 = !DILocation(line: 587, column: 23, scope: !1187)
!1189 = !DILocation(line: 587, column: 36, scope: !1187)
!1190 = !DILocation(line: 588, column: 9, scope: !1187)
!1191 = !DILocation(line: 588, column: 23, scope: !1187)
!1192 = !DILocation(line: 589, column: 9, scope: !1187)
!1193 = !DILocation(line: 587, column: 50, scope: !1187)
!1194 = !DILocation(line: 590, column: 9, scope: !1187)
!1195 = !DILocation(line: 590, column: 23, scope: !1187)
!1196 = !DILocation(line: 590, column: 36, scope: !1187)
!1197 = !DILocation(line: 589, column: 26, scope: !1187)
!1198 = !DILocation(line: 586, column: 24, scope: !1187)
!1199 = !DILocation(line: 591, column: 4, scope: !1187)
!1200 = !DILocation(line: 593, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 591, column: 11)
!1202 = !DILocation(line: 593, column: 23, scope: !1201)
!1203 = !DILocation(line: 593, column: 36, scope: !1201)
!1204 = !DILocation(line: 593, column: 52, scope: !1201)
!1205 = !DILocation(line: 595, column: 9, scope: !1201)
!1206 = !DILocation(line: 595, column: 23, scope: !1201)
!1207 = !DILocation(line: 595, column: 36, scope: !1201)
!1208 = !DILocation(line: 594, column: 50, scope: !1201)
!1209 = !DILocation(line: 592, column: 24, scope: !1201)
!1210 = !DILocation(line: 597, column: 4, scope: !1114)
!1211 = !DILocation(line: 603, column: 9, scope: !1114)
!1212 = !DILocation(line: 603, column: 23, scope: !1114)
!1213 = !DILocation(line: 603, column: 41, scope: !1114)
!1214 = !DILocation(line: 602, column: 8, scope: !1114)
!1215 = !DILocation(line: 601, column: 32, scope: !1114)
!1216 = !DILocation(line: 605, column: 8, scope: !1114)
!1217 = !DILocation(line: 605, column: 22, scope: !1114)
!1218 = !DILocation(line: 605, column: 40, scope: !1114)
!1219 = !DILocation(line: 606, column: 8, scope: !1114)
!1220 = !DILocation(line: 605, column: 56, scope: !1114)
!1221 = !DILocation(line: 604, column: 23, scope: !1114)
!1222 = !DILocation(line: 607, column: 4, scope: !1114)
!1223 = !DILocation(line: 613, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 613, column: 8)
!1225 = !DILocation(line: 613, column: 22, scope: !1224)
!1226 = !DILocation(line: 613, column: 33, scope: !1224)
!1227 = !DILocation(line: 613, column: 8, scope: !1114)
!1228 = !DILocation(line: 615, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 613, column: 48)
!1230 = !DILocation(line: 615, column: 23, scope: !1229)
!1231 = !DILocation(line: 615, column: 34, scope: !1229)
!1232 = !DILocation(line: 616, column: 9, scope: !1229)
!1233 = !DILocation(line: 616, column: 23, scope: !1229)
!1234 = !DILocation(line: 616, column: 34, scope: !1229)
!1235 = !DILocation(line: 615, column: 48, scope: !1229)
!1236 = !DILocation(line: 617, column: 9, scope: !1229)
!1237 = !DILocation(line: 617, column: 23, scope: !1229)
!1238 = !DILocation(line: 617, column: 34, scope: !1229)
!1239 = !DILocation(line: 616, column: 51, scope: !1229)
!1240 = !DILocation(line: 614, column: 24, scope: !1229)
!1241 = !DILocation(line: 618, column: 4, scope: !1229)
!1242 = !DILocation(line: 620, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 618, column: 11)
!1244 = !DILocation(line: 620, column: 23, scope: !1243)
!1245 = !DILocation(line: 620, column: 36, scope: !1243)
!1246 = !DILocation(line: 620, column: 52, scope: !1243)
!1247 = !DILocation(line: 622, column: 9, scope: !1243)
!1248 = !DILocation(line: 622, column: 23, scope: !1243)
!1249 = !DILocation(line: 622, column: 34, scope: !1243)
!1250 = !DILocation(line: 621, column: 50, scope: !1243)
!1251 = !DILocation(line: 619, column: 24, scope: !1243)
!1252 = !DILocation(line: 624, column: 4, scope: !1114)
!1253 = !DILocation(line: 629, column: 8, scope: !1114)
!1254 = !DILocation(line: 629, column: 22, scope: !1114)
!1255 = !DILocation(line: 629, column: 32, scope: !1114)
!1256 = !DILocation(line: 630, column: 8, scope: !1114)
!1257 = !DILocation(line: 630, column: 22, scope: !1114)
!1258 = !DILocation(line: 630, column: 32, scope: !1114)
!1259 = !DILocation(line: 629, column: 46, scope: !1114)
!1260 = !DILocation(line: 631, column: 8, scope: !1114)
!1261 = !DILocation(line: 631, column: 22, scope: !1114)
!1262 = !DILocation(line: 631, column: 32, scope: !1114)
!1263 = !DILocation(line: 630, column: 49, scope: !1114)
!1264 = !DILocation(line: 628, column: 23, scope: !1114)
!1265 = !DILocation(line: 633, column: 4, scope: !1114)
!1266 = !DILocation(line: 638, column: 8, scope: !1114)
!1267 = !DILocation(line: 638, column: 22, scope: !1114)
!1268 = !DILocation(line: 638, column: 41, scope: !1114)
!1269 = !DILocation(line: 639, column: 8, scope: !1114)
!1270 = !DILocation(line: 639, column: 22, scope: !1114)
!1271 = !DILocation(line: 639, column: 41, scope: !1114)
!1272 = !DILocation(line: 638, column: 55, scope: !1114)
!1273 = !DILocation(line: 640, column: 8, scope: !1114)
!1274 = !DILocation(line: 640, column: 22, scope: !1114)
!1275 = !DILocation(line: 640, column: 41, scope: !1114)
!1276 = !DILocation(line: 639, column: 59, scope: !1114)
!1277 = !DILocation(line: 637, column: 23, scope: !1114)
!1278 = !DILocation(line: 642, column: 4, scope: !1114)
!1279 = !DILocation(line: 647, column: 8, scope: !1114)
!1280 = !DILocation(line: 647, column: 22, scope: !1114)
!1281 = !DILocation(line: 647, column: 39, scope: !1114)
!1282 = !DILocation(line: 648, column: 8, scope: !1114)
!1283 = !DILocation(line: 648, column: 22, scope: !1114)
!1284 = !DILocation(line: 648, column: 39, scope: !1114)
!1285 = !DILocation(line: 647, column: 53, scope: !1114)
!1286 = !DILocation(line: 649, column: 8, scope: !1114)
!1287 = !DILocation(line: 649, column: 22, scope: !1114)
!1288 = !DILocation(line: 649, column: 39, scope: !1114)
!1289 = !DILocation(line: 648, column: 57, scope: !1114)
!1290 = !DILocation(line: 646, column: 23, scope: !1114)
!1291 = !DILocation(line: 651, column: 4, scope: !1114)
!1292 = !DILocation(line: 655, column: 4, scope: !1114)
!1293 = !DILocation(line: 664, column: 33, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 664, column: 7)
!1295 = !DILocation(line: 664, column: 7, scope: !1294)
!1296 = !DILocation(line: 664, column: 45, scope: !1294)
!1297 = !DILocation(line: 664, column: 7, scope: !1087)
!1298 = !DILocation(line: 668, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 665, column: 38)
!1300 = !DILocation(line: 668, column: 23, scope: !1299)
!1301 = !DILocation(line: 668, column: 41, scope: !1299)
!1302 = !DILocation(line: 667, column: 8, scope: !1299)
!1303 = !DILocation(line: 669, column: 8, scope: !1299)
!1304 = !DILocation(line: 668, column: 47, scope: !1299)
!1305 = !DILocation(line: 666, column: 16, scope: !1299)
!1306 = !DILocation(line: 670, column: 3, scope: !1299)
!1307 = !DILocation(line: 672, column: 39, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 670, column: 10)
!1309 = !DILocation(line: 672, column: 8, scope: !1308)
!1310 = !DILocation(line: 673, column: 8, scope: !1308)
!1311 = !DILocation(line: 672, column: 55, scope: !1308)
!1312 = !DILocation(line: 671, column: 16, scope: !1308)
!1313 = !DILocation(line: 676, column: 22, scope: !1087)
!1314 = !DILocation(line: 676, column: 17, scope: !1087)
!1315 = !DILocation(line: 676, column: 15, scope: !1087)
!1316 = !DILocation(line: 677, column: 19, scope: !1087)
!1317 = !DILocation(line: 677, column: 4, scope: !1087)
!1318 = !DILocation(line: 677, column: 16, scope: !1087)
!1319 = !DILocation(line: 689, column: 47, scope: !1087)
!1320 = !DILocation(line: 689, column: 17, scope: !1087)
!1321 = !DILocation(line: 689, column: 14, scope: !1087)
!1322 = distinct !{!1322, !1082, !1323}
!1323 = !DILocation(line: 690, column: 2, scope: !721)
!1324 = !DILocation(line: 694, column: 2, scope: !721)
!1325 = !DILocation(line: 695, column: 1, scope: !721)
!1326 = distinct !DISubprogram(name: "acpi_rs_count_set_bits", scope: !1, file: !1, line: 38, type: !1327, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !412)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!33, !66}
!1329 = !DILocalVariable(name: "bit_field", arg: 1, scope: !1326, file: !1, line: 38, type: !66)
!1330 = !DILocation(line: 38, column: 38, scope: !1326)
!1331 = !DILocalVariable(name: "bits_set", scope: !1326, file: !1, line: 40, type: !33)
!1332 = !DILocation(line: 40, column: 5, scope: !1326)
!1333 = !DILocation(line: 44, column: 16, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 44, column: 2)
!1335 = !DILocation(line: 44, column: 7, scope: !1334)
!1336 = !DILocation(line: 44, column: 21, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !1, line: 44, column: 2)
!1338 = !DILocation(line: 44, column: 2, scope: !1334)
!1339 = !DILocation(line: 48, column: 23, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 44, column: 44)
!1341 = !DILocation(line: 48, column: 33, scope: !1340)
!1342 = !DILocation(line: 48, column: 16, scope: !1340)
!1343 = !DILocation(line: 48, column: 13, scope: !1340)
!1344 = !DILocation(line: 49, column: 2, scope: !1340)
!1345 = !DILocation(line: 44, column: 40, scope: !1337)
!1346 = !DILocation(line: 44, column: 2, scope: !1337)
!1347 = distinct !{!1347, !1338, !1348}
!1348 = !DILocation(line: 49, column: 2, scope: !1334)
!1349 = !DILocation(line: 51, column: 10, scope: !1326)
!1350 = !DILocation(line: 51, column: 2, scope: !1326)
!1351 = distinct !DISubprogram(name: "acpi_rs_stream_option_length", scope: !1, file: !1, line: 102, type: !1352, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !412)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!21, !21, !21}
!1354 = !DILocalVariable(name: "resource_length", arg: 1, scope: !1351, file: !1, line: 102, type: !21)
!1355 = !DILocation(line: 102, column: 34, scope: !1351)
!1356 = !DILocalVariable(name: "minimum_aml_resource_length", arg: 2, scope: !1351, file: !1, line: 103, type: !21)
!1357 = !DILocation(line: 103, column: 13, scope: !1351)
!1358 = !DILocalVariable(name: "string_length", scope: !1351, file: !1, line: 105, type: !21)
!1359 = !DILocation(line: 105, column: 6, scope: !1351)
!1360 = !DILocation(line: 122, column: 6, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 122, column: 6)
!1362 = !DILocation(line: 122, column: 24, scope: !1361)
!1363 = !DILocation(line: 122, column: 22, scope: !1361)
!1364 = !DILocation(line: 122, column: 6, scope: !1351)
!1365 = !DILocation(line: 127, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 122, column: 53)
!1367 = !DILocation(line: 127, column: 25, scope: !1366)
!1368 = !DILocation(line: 127, column: 23, scope: !1366)
!1369 = !DILocation(line: 127, column: 53, scope: !1366)
!1370 = !DILocation(line: 126, column: 17, scope: !1366)
!1371 = !DILocation(line: 128, column: 2, scope: !1366)
!1372 = !DILocation(line: 134, column: 16, scope: !1351)
!1373 = !DILocation(line: 134, column: 10, scope: !1351)
!1374 = !DILocation(line: 134, column: 2, scope: !1351)
!1375 = distinct !DISubprogram(name: "acpi_rs_get_pci_routing_table_length", scope: !1, file: !1, line: 715, type: !1376, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !412)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!401, !1378, !411}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !4, line: 367, size: 576, elements: !1380)
!1380 = !{!1381, !1389, !1402, !1412, !1447, !1461, !1470, !1783, !1800, !1815, !1828, !1906, !1918, !1932, !1942, !1960, !1982, !2001, !2020, !2039, !2052, !2078, !2095, !2108, !2122, !2131}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1379, file: !4, line: 368, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !4, line: 73, size: 128, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1382, file: !4, line: 74, baseType: !1378, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1382, file: !4, line: 74, baseType: !33, size: 8, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1382, file: !4, line: 74, baseType: !33, size: 8, offset: 72)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1382, file: !4, line: 74, baseType: !66, size: 16, offset: 80)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !4, line: 74, baseType: !33, size: 8, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1379, file: !4, line: 369, baseType: !1390, size: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !4, line: 76, size: 192, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1401}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1390, file: !4, line: 77, baseType: !1378, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1390, file: !4, line: 77, baseType: !33, size: 8, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1390, file: !4, line: 77, baseType: !33, size: 8, offset: 72)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1390, file: !4, line: 77, baseType: !66, size: 16, offset: 80)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !4, line: 77, baseType: !33, size: 8, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !1390, file: !4, line: 77, baseType: !1398, size: 24, offset: 104)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 3)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1390, file: !4, line: 78, baseType: !195, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1379, file: !4, line: 370, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !4, line: 93, size: 256, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1403, file: !4, line: 94, baseType: !1378, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1403, file: !4, line: 94, baseType: !33, size: 8, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1403, file: !4, line: 94, baseType: !33, size: 8, offset: 72)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1403, file: !4, line: 94, baseType: !66, size: 16, offset: 80)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !4, line: 94, baseType: !33, size: 8, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1403, file: !4, line: 94, baseType: !162, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1403, file: !4, line: 94, baseType: !21, size: 32, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1379, file: !4, line: 371, baseType: !1413, size: 384)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !4, line: 97, size: 384, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1413, file: !4, line: 98, baseType: !1378, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1413, file: !4, line: 98, baseType: !33, size: 8, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1413, file: !4, line: 98, baseType: !33, size: 8, offset: 72)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1413, file: !4, line: 98, baseType: !66, size: 16, offset: 80)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1413, file: !4, line: 98, baseType: !33, size: 8, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1413, file: !4, line: 98, baseType: !255, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1413, file: !4, line: 98, baseType: !21, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1413, file: !4, line: 99, baseType: !21, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1413, file: !4, line: 100, baseType: !255, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1413, file: !4, line: 101, baseType: !1425, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !1427, line: 133, size: 384, elements: !1428)
!1427 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1442, !1443, !1444, !1445}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1426, file: !1427, line: 134, baseType: !1378, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1426, file: !1427, line: 135, baseType: !33, size: 8, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1426, file: !1427, line: 136, baseType: !33, size: 8, offset: 72)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !1427, line: 137, baseType: !66, size: 16, offset: 80)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1426, file: !1427, line: 138, baseType: !1434, size: 32, offset: 96)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1435, line: 327, size: 32, elements: !1436)
!1435 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1434, file: !1435, line: 328, baseType: !21, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1434, file: !1435, line: 329, baseType: !1439, size: 32)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 4)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1426, file: !1427, line: 139, baseType: !1425, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1426, file: !1427, line: 140, baseType: !1425, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1426, file: !1427, line: 141, baseType: !1425, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1426, file: !1427, line: 142, baseType: !1446, size: 16, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !400, line: 445, baseType: !66)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1379, file: !4, line: 372, baseType: !1448, size: 384)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !4, line: 104, size: 384, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1458, !1459, !1460}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1448, file: !4, line: 105, baseType: !1378, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1448, file: !4, line: 105, baseType: !33, size: 8, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1448, file: !4, line: 105, baseType: !33, size: 8, offset: 72)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1448, file: !4, line: 105, baseType: !66, size: 16, offset: 80)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1448, file: !4, line: 105, baseType: !33, size: 8, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1448, file: !4, line: 105, baseType: !1425, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1448, file: !4, line: 106, baseType: !1457, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1448, file: !4, line: 107, baseType: !255, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1448, file: !4, line: 108, baseType: !21, size: 32, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1448, file: !4, line: 109, baseType: !21, size: 32, offset: 352)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1379, file: !4, line: 373, baseType: !1462, size: 192)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !4, line: 118, size: 192, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1462, file: !4, line: 119, baseType: !1378, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1462, file: !4, line: 119, baseType: !33, size: 8, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !4, line: 119, baseType: !33, size: 8, offset: 72)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1462, file: !4, line: 119, baseType: !66, size: 16, offset: 80)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !4, line: 119, baseType: !33, size: 8, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !1462, file: !4, line: 119, baseType: !398, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1379, file: !4, line: 374, baseType: !1471, size: 448)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !4, line: 143, size: 448, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1780, !1781, !1782}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1471, file: !4, line: 144, baseType: !1378, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1471, file: !4, line: 144, baseType: !33, size: 8, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1471, file: !4, line: 144, baseType: !33, size: 8, offset: 72)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1471, file: !4, line: 144, baseType: !66, size: 16, offset: 80)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1471, file: !4, line: 144, baseType: !33, size: 8, offset: 96)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !1471, file: !4, line: 144, baseType: !33, size: 8, offset: 104)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1471, file: !4, line: 145, baseType: !33, size: 8, offset: 112)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1471, file: !4, line: 146, baseType: !33, size: 8, offset: 120)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1471, file: !4, line: 147, baseType: !1378, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1471, file: !4, line: 148, baseType: !1378, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1471, file: !4, line: 149, baseType: !255, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1471, file: !4, line: 153, baseType: !1485, size: 64, offset: 320)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !4, line: 150, size: 64, elements: !1486)
!1486 = !{!1487, !1779}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !1485, file: !4, line: 151, baseType: !1488, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !1427, line: 248, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!401, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !1494, line: 37, size: 9024, elements: !1495)
!1494 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1725, !1726, !1727, !1728, !1729, !1733, !1735, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1771, !1777}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1493, file: !1494, line: 38, baseType: !1492, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1493, file: !1494, line: 39, baseType: !33, size: 8, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !1493, file: !1494, line: 40, baseType: !33, size: 8, offset: 72)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1493, file: !1494, line: 41, baseType: !66, size: 16, offset: 80)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !1493, file: !1494, line: 42, baseType: !33, size: 8, offset: 96)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !1493, file: !1494, line: 43, baseType: !33, size: 8, offset: 104)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !1493, file: !1494, line: 44, baseType: !33, size: 8, offset: 112)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1493, file: !1494, line: 45, baseType: !1446, size: 16, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !1493, file: !1494, line: 46, baseType: !33, size: 8, offset: 144)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !1493, file: !1494, line: 47, baseType: !33, size: 8, offset: 152)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !1493, file: !1494, line: 48, baseType: !33, size: 8, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !1493, file: !1494, line: 49, baseType: !33, size: 8, offset: 168)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1493, file: !1494, line: 50, baseType: !33, size: 8, offset: 176)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !1493, file: !1494, line: 51, baseType: !33, size: 8, offset: 184)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !1493, file: !1494, line: 52, baseType: !33, size: 8, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !1493, file: !1494, line: 53, baseType: !33, size: 8, offset: 200)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1493, file: !1494, line: 54, baseType: !255, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !1493, file: !1494, line: 55, baseType: !21, size: 32, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !1493, file: !1494, line: 56, baseType: !21, size: 32, offset: 352)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !1493, file: !1494, line: 57, baseType: !21, size: 32, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !1493, file: !1494, line: 58, baseType: !21, size: 32, offset: 416)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !1493, file: !1494, line: 60, baseType: !1518, size: 640, offset: 448)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !1427, line: 893, size: 640, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1606, !1607, !1723, !1724}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1518, file: !1427, line: 894, baseType: !255, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1518, file: !1427, line: 895, baseType: !255, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !1518, file: !1427, line: 896, baseType: !255, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !1518, file: !1427, line: 897, baseType: !255, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1518, file: !1427, line: 898, baseType: !255, size: 64, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !1518, file: !1427, line: 899, baseType: !1526, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !1427, line: 875, size: 1600, elements: !1528)
!1528 = !{!1529, !1549, !1565}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1527, file: !1427, line: 876, baseType: !1530, size: 448)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !1427, line: 828, size: 448, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1548}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1530, file: !1427, line: 829, baseType: !1526, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1530, file: !1427, line: 829, baseType: !33, size: 8, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1427, line: 829, baseType: !33, size: 8, offset: 72)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1530, file: !1427, line: 829, baseType: !66, size: 16, offset: 80)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1530, file: !1427, line: 829, baseType: !255, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1530, file: !1427, line: 829, baseType: !1526, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1530, file: !1427, line: 829, baseType: !1425, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1530, file: !1427, line: 829, baseType: !1540, size: 64, offset: 320)
!1540 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !1427, line: 716, size: 64, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1540, file: !1427, line: 717, baseType: !195, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1540, file: !1427, line: 718, baseType: !21, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1540, file: !1427, line: 719, baseType: !162, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1540, file: !1427, line: 720, baseType: !255, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1540, file: !1427, line: 721, baseType: !162, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1540, file: !1427, line: 722, baseType: !1526, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1530, file: !1427, line: 829, baseType: !33, size: 8, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1527, file: !1427, line: 877, baseType: !1550, size: 640)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !1427, line: 835, size: 640, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1550, file: !1427, line: 836, baseType: !1526, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1550, file: !1427, line: 836, baseType: !33, size: 8, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !1427, line: 836, baseType: !33, size: 8, offset: 72)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1550, file: !1427, line: 836, baseType: !66, size: 16, offset: 80)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1550, file: !1427, line: 836, baseType: !255, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1550, file: !1427, line: 836, baseType: !1526, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1550, file: !1427, line: 836, baseType: !1425, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1550, file: !1427, line: 836, baseType: !1540, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1550, file: !1427, line: 836, baseType: !33, size: 8, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1550, file: !1427, line: 836, baseType: !162, size: 64, offset: 448)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1550, file: !1427, line: 837, baseType: !255, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1550, file: !1427, line: 838, baseType: !21, size: 32, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1550, file: !1427, line: 839, baseType: !21, size: 32, offset: 608)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !1527, file: !1427, line: 878, baseType: !1566, size: 1600)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !1427, line: 846, size: 1600, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1566, file: !1427, line: 847, baseType: !1526, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1566, file: !1427, line: 847, baseType: !33, size: 8, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !1427, line: 847, baseType: !33, size: 8, offset: 72)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1566, file: !1427, line: 847, baseType: !66, size: 16, offset: 80)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1566, file: !1427, line: 847, baseType: !255, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1566, file: !1427, line: 847, baseType: !1526, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1566, file: !1427, line: 847, baseType: !1425, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1566, file: !1427, line: 847, baseType: !1540, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1566, file: !1427, line: 847, baseType: !33, size: 8, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1566, file: !1427, line: 847, baseType: !1526, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !1566, file: !1427, line: 848, baseType: !1526, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1566, file: !1427, line: 849, baseType: !162, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !1566, file: !1427, line: 850, baseType: !33, size: 8, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !1566, file: !1427, line: 851, baseType: !162, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !1566, file: !1427, line: 852, baseType: !162, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !1566, file: !1427, line: 853, baseType: !162, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !1566, file: !1427, line: 854, baseType: !1439, size: 32, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !1566, file: !1427, line: 855, baseType: !21, size: 32, offset: 928)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1566, file: !1427, line: 856, baseType: !21, size: 32, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1566, file: !1427, line: 857, baseType: !21, size: 32, offset: 992)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !1566, file: !1427, line: 858, baseType: !21, size: 32, offset: 1024)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !1566, file: !1427, line: 859, baseType: !21, size: 32, offset: 1056)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !1566, file: !1427, line: 860, baseType: !21, size: 32, offset: 1088)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !1566, file: !1427, line: 861, baseType: !21, size: 32, offset: 1120)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !1566, file: !1427, line: 862, baseType: !21, size: 32, offset: 1152)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1566, file: !1427, line: 863, baseType: !21, size: 32, offset: 1184)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !1566, file: !1427, line: 864, baseType: !21, size: 32, offset: 1216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !1566, file: !1427, line: 865, baseType: !21, size: 32, offset: 1248)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !1566, file: !1427, line: 866, baseType: !21, size: 32, offset: 1280)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !1566, file: !1427, line: 867, baseType: !21, size: 32, offset: 1312)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !1566, file: !1427, line: 868, baseType: !66, size: 16, offset: 1344)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !1566, file: !1427, line: 869, baseType: !33, size: 8, offset: 1360)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !1566, file: !1427, line: 870, baseType: !33, size: 8, offset: 1368)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1566, file: !1427, line: 871, baseType: !33, size: 8, offset: 1376)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !1566, file: !1427, line: 872, baseType: !1603, size: 160, offset: 1384)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 160, elements: !1604)
!1604 = !{!1605}
!1605 = !DISubrange(count: 20)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !1518, file: !1427, line: 900, baseType: !1425, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1518, file: !1427, line: 901, baseType: !1608, size: 64, offset: 448)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !1427, line: 663, size: 640, elements: !1610)
!1610 = !{!1611, !1619, !1632, !1641, !1650, !1663, !1677, !1689, !1701}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1609, file: !1427, line: 664, baseType: !1612, size: 128)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !1427, line: 567, size: 128, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1612, file: !1427, line: 568, baseType: !398, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1612, file: !1427, line: 568, baseType: !33, size: 8, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1612, file: !1427, line: 568, baseType: !33, size: 8, offset: 72)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1612, file: !1427, line: 568, baseType: !66, size: 16, offset: 80)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1612, file: !1427, line: 568, baseType: !66, size: 16, offset: 96)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1609, file: !1427, line: 665, baseType: !1620, size: 384)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !1427, line: 593, size: 384, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1620, file: !1427, line: 594, baseType: !398, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1620, file: !1427, line: 594, baseType: !33, size: 8, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1427, line: 594, baseType: !33, size: 8, offset: 72)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1620, file: !1427, line: 594, baseType: !66, size: 16, offset: 80)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1620, file: !1427, line: 594, baseType: !66, size: 16, offset: 96)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1620, file: !1427, line: 594, baseType: !66, size: 16, offset: 112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !1620, file: !1427, line: 595, baseType: !1526, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !1620, file: !1427, line: 596, baseType: !255, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !1620, file: !1427, line: 597, baseType: !255, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !1620, file: !1427, line: 598, baseType: !195, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1609, file: !1427, line: 666, baseType: !1633, size: 192)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !1427, line: 573, size: 192, elements: !1634)
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1633, file: !1427, line: 574, baseType: !398, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1633, file: !1427, line: 574, baseType: !33, size: 8, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1633, file: !1427, line: 574, baseType: !33, size: 8, offset: 72)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1633, file: !1427, line: 574, baseType: !66, size: 16, offset: 80)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1633, file: !1427, line: 574, baseType: !66, size: 16, offset: 96)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1633, file: !1427, line: 574, baseType: !1378, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1609, file: !1427, line: 667, baseType: !1642, size: 192)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !1427, line: 604, size: 192, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1642, file: !1427, line: 605, baseType: !398, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1642, file: !1427, line: 605, baseType: !33, size: 8, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1642, file: !1427, line: 605, baseType: !33, size: 8, offset: 72)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1642, file: !1427, line: 605, baseType: !66, size: 16, offset: 80)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1642, file: !1427, line: 605, baseType: !66, size: 16, offset: 96)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1642, file: !1427, line: 605, baseType: !1425, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !1609, file: !1427, line: 668, baseType: !1651, size: 448)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !1427, line: 608, size: 448, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1651, file: !1427, line: 609, baseType: !398, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1651, file: !1427, line: 609, baseType: !33, size: 8, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1651, file: !1427, line: 609, baseType: !33, size: 8, offset: 72)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1651, file: !1427, line: 609, baseType: !66, size: 16, offset: 80)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1651, file: !1427, line: 609, baseType: !66, size: 16, offset: 96)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1651, file: !1427, line: 609, baseType: !21, size: 32, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1651, file: !1427, line: 610, baseType: !1526, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1651, file: !1427, line: 611, baseType: !255, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1651, file: !1427, line: 612, baseType: !255, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1651, file: !1427, line: 613, baseType: !21, size: 32, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1609, file: !1427, line: 669, baseType: !1664, size: 512)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !1427, line: 580, size: 512, elements: !1665)
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1664, file: !1427, line: 581, baseType: !398, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1664, file: !1427, line: 581, baseType: !33, size: 8, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1664, file: !1427, line: 581, baseType: !33, size: 8, offset: 72)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1664, file: !1427, line: 581, baseType: !66, size: 16, offset: 80)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1664, file: !1427, line: 581, baseType: !66, size: 16, offset: 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1664, file: !1427, line: 581, baseType: !21, size: 32, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1664, file: !1427, line: 582, baseType: !1378, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1664, file: !1427, line: 583, baseType: !1378, size: 64, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1664, file: !1427, line: 584, baseType: !1492, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1664, file: !1427, line: 585, baseType: !398, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1664, file: !1427, line: 586, baseType: !21, size: 32, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1609, file: !1427, line: 670, baseType: !1678, size: 320)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !1427, line: 620, size: 320, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1678, file: !1427, line: 621, baseType: !398, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1678, file: !1427, line: 621, baseType: !33, size: 8, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1678, file: !1427, line: 621, baseType: !33, size: 8, offset: 72)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1678, file: !1427, line: 621, baseType: !66, size: 16, offset: 80)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1678, file: !1427, line: 621, baseType: !66, size: 16, offset: 96)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !1678, file: !1427, line: 621, baseType: !33, size: 8, offset: 112)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !1678, file: !1427, line: 622, baseType: !1492, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !1678, file: !1427, line: 623, baseType: !1378, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1678, file: !1427, line: 624, baseType: !195, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1609, file: !1427, line: 671, baseType: !1690, size: 640)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !1427, line: 631, size: 640, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1690, file: !1427, line: 632, baseType: !398, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1690, file: !1427, line: 632, baseType: !33, size: 8, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !1427, line: 632, baseType: !33, size: 8, offset: 72)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1690, file: !1427, line: 632, baseType: !66, size: 16, offset: 80)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1690, file: !1427, line: 632, baseType: !66, size: 16, offset: 96)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1690, file: !1427, line: 633, baseType: !1698, size: 512, offset: 128)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 512, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 8)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1609, file: !1427, line: 672, baseType: !1702, size: 320)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !1427, line: 654, size: 320, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1702, file: !1427, line: 655, baseType: !398, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1702, file: !1427, line: 655, baseType: !33, size: 8, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1427, line: 655, baseType: !33, size: 8, offset: 72)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1702, file: !1427, line: 655, baseType: !66, size: 16, offset: 80)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1702, file: !1427, line: 655, baseType: !66, size: 16, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1702, file: !1427, line: 655, baseType: !33, size: 8, offset: 112)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1702, file: !1427, line: 656, baseType: !1425, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1702, file: !1427, line: 657, baseType: !1378, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1702, file: !1427, line: 658, baseType: !1713, size: 64, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !1427, line: 645, size: 128, elements: !1715)
!1715 = !{!1716, !1722}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1714, file: !1427, line: 646, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !400, line: 1052, baseType: !1718)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1721, !21, !398}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !400, line: 424, baseType: !398)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1714, file: !1427, line: 647, baseType: !398, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !1518, file: !1427, line: 902, baseType: !1526, size: 64, offset: 512)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !1518, file: !1427, line: 903, baseType: !21, size: 32, offset: 576)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !1493, file: !1494, line: 61, baseType: !21, size: 32, offset: 1088)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1493, file: !1494, line: 62, baseType: !21, size: 32, offset: 1120)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !1493, file: !1494, line: 63, baseType: !66, size: 16, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !1493, file: !1494, line: 64, baseType: !33, size: 8, offset: 1168)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1493, file: !1494, line: 66, baseType: !1730, size: 2688, offset: 1216)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 2688, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 7)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !1493, file: !1494, line: 67, baseType: !1734, size: 3072, offset: 3904)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 3072, elements: !1699)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1493, file: !1494, line: 68, baseType: !1736, size: 576, offset: 6976)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 576, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 9)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !1493, file: !1494, line: 69, baseType: !1457, size: 64, offset: 7552)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !1493, file: !1494, line: 71, baseType: !255, size: 64, offset: 7616)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !1493, file: !1494, line: 72, baseType: !1457, size: 64, offset: 7680)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !1493, file: !1494, line: 73, baseType: !1608, size: 64, offset: 7744)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !1493, file: !1494, line: 74, baseType: !1425, size: 64, offset: 7808)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !1493, file: !1494, line: 75, baseType: !1378, size: 64, offset: 7872)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !1493, file: !1494, line: 76, baseType: !1425, size: 64, offset: 7936)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !1493, file: !1494, line: 77, baseType: !1526, size: 64, offset: 8000)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !1493, file: !1494, line: 78, baseType: !1378, size: 64, offset: 8064)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1493, file: !1494, line: 79, baseType: !1425, size: 64, offset: 8128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !1493, file: !1494, line: 80, baseType: !162, size: 64, offset: 8192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1493, file: !1494, line: 81, baseType: !1526, size: 64, offset: 8256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !1493, file: !1494, line: 82, baseType: !1752, size: 64, offset: 8320)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !1427, line: 702, size: 128, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1754, file: !1427, line: 706, baseType: !21, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1754, file: !1427, line: 707, baseType: !21, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !1427, line: 708, baseType: !66, size: 16, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1754, file: !1427, line: 709, baseType: !33, size: 8, offset: 80)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1754, file: !1427, line: 710, baseType: !33, size: 8, offset: 88)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1754, file: !1427, line: 711, baseType: !33, size: 8, offset: 96)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1493, file: !1494, line: 83, baseType: !1526, size: 64, offset: 8384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !1493, file: !1494, line: 84, baseType: !1378, size: 64, offset: 8448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1493, file: !1494, line: 85, baseType: !1608, size: 64, offset: 8512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !1493, file: !1494, line: 86, baseType: !1378, size: 64, offset: 8576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !1493, file: !1494, line: 87, baseType: !1608, size: 64, offset: 8640)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !1493, file: !1494, line: 88, baseType: !1526, size: 64, offset: 8704)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !1493, file: !1494, line: 89, baseType: !1526, size: 64, offset: 8768)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1493, file: !1494, line: 90, baseType: !1770, size: 64, offset: 8832)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !1493, file: !1494, line: 91, baseType: !1772, size: 64, offset: 8896)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !1427, line: 637, baseType: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!401, !1492, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !1493, file: !1494, line: 92, baseType: !1778, size: 64, offset: 8960)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !1427, line: 641, baseType: !1489)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1485, file: !4, line: 152, baseType: !1378, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1471, file: !4, line: 155, baseType: !21, size: 32, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1471, file: !4, line: 156, baseType: !1446, size: 16, offset: 416)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !1471, file: !4, line: 157, baseType: !33, size: 8, offset: 432)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1379, file: !4, line: 375, baseType: !1784, size: 576)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !4, line: 122, size: 576, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1784, file: !4, line: 123, baseType: !1378, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1784, file: !4, line: 123, baseType: !33, size: 8, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1784, file: !4, line: 123, baseType: !33, size: 8, offset: 72)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1784, file: !4, line: 123, baseType: !66, size: 16, offset: 80)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !4, line: 123, baseType: !33, size: 8, offset: 96)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1784, file: !4, line: 123, baseType: !33, size: 8, offset: 104)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !1784, file: !4, line: 124, baseType: !66, size: 16, offset: 112)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !1784, file: !4, line: 125, baseType: !398, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1784, file: !4, line: 126, baseType: !195, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !1784, file: !4, line: 127, baseType: !1770, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1784, file: !4, line: 128, baseType: !1378, size: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1784, file: !4, line: 129, baseType: !1378, size: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1784, file: !4, line: 130, baseType: !1425, size: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !1784, file: !4, line: 131, baseType: !33, size: 8, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1379, file: !4, line: 376, baseType: !1801, size: 448)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !4, line: 134, size: 448, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1814}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1801, file: !4, line: 135, baseType: !1378, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1801, file: !4, line: 135, baseType: !33, size: 8, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1801, file: !4, line: 135, baseType: !33, size: 8, offset: 72)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1801, file: !4, line: 135, baseType: !66, size: 16, offset: 80)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1801, file: !4, line: 135, baseType: !33, size: 8, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1801, file: !4, line: 135, baseType: !33, size: 8, offset: 104)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1801, file: !4, line: 136, baseType: !1425, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1801, file: !4, line: 137, baseType: !1378, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1801, file: !4, line: 138, baseType: !1378, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1801, file: !4, line: 139, baseType: !1813, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !400, line: 129, baseType: !195)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1801, file: !4, line: 140, baseType: !21, size: 32, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !1379, file: !4, line: 377, baseType: !1816, size: 320)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !4, line: 184, size: 320, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1827}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1816, file: !4, line: 185, baseType: !1378, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1816, file: !4, line: 185, baseType: !33, size: 8, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1816, file: !4, line: 185, baseType: !33, size: 8, offset: 72)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1816, file: !4, line: 185, baseType: !66, size: 16, offset: 80)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1816, file: !4, line: 185, baseType: !33, size: 8, offset: 96)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1816, file: !4, line: 185, baseType: !1824, size: 128, offset: 128)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 128, elements: !1825)
!1825 = !{!1826}
!1826 = !DISubrange(count: 2)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1816, file: !4, line: 185, baseType: !1378, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1379, file: !4, line: 378, baseType: !1829, size: 384)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !4, line: 187, size: 384, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1829, file: !4, line: 188, baseType: !1378, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1829, file: !4, line: 188, baseType: !33, size: 8, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1829, file: !4, line: 188, baseType: !33, size: 8, offset: 72)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1829, file: !4, line: 188, baseType: !66, size: 16, offset: 80)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1829, file: !4, line: 188, baseType: !33, size: 8, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1829, file: !4, line: 189, baseType: !1824, size: 128, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1829, file: !4, line: 189, baseType: !1378, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1829, file: !4, line: 189, baseType: !1839, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !1427, line: 480, size: 576, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1853, !1868, !1900, !1901, !1902, !1903, !1904, !1905}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1840, file: !1427, line: 481, baseType: !1425, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1840, file: !1427, line: 482, baseType: !1839, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1840, file: !1427, line: 483, baseType: !1839, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !1840, file: !1427, line: 484, baseType: !1846, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !1427, line: 497, size: 256, elements: !1848)
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1847, file: !1427, line: 498, baseType: !1846, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1847, file: !1427, line: 499, baseType: !1846, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !1847, file: !1427, line: 500, baseType: !1839, size: 64, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !1847, file: !1427, line: 501, baseType: !21, size: 32, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1840, file: !1427, line: 485, baseType: !1854, size: 64, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !1427, line: 466, size: 320, elements: !1856)
!1856 = !{!1857, !1862, !1863, !1864, !1865, !1866, !1867}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1855, file: !1427, line: 467, baseType: !1858, size: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !1427, line: 459, size: 128, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1858, file: !1427, line: 460, baseType: !33, size: 8)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1858, file: !1427, line: 461, baseType: !195, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1855, file: !1427, line: 468, baseType: !1858, size: 128, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1855, file: !1427, line: 469, baseType: !66, size: 16, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1855, file: !1427, line: 470, baseType: !33, size: 8, offset: 272)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1855, file: !1427, line: 471, baseType: !33, size: 8, offset: 280)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1855, file: !1427, line: 472, baseType: !33, size: 8, offset: 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1855, file: !1427, line: 473, baseType: !33, size: 8, offset: 296)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !1840, file: !1427, line: 486, baseType: !1869, size: 64, offset: 320)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !1427, line: 448, size: 192, elements: !1871)
!1871 = !{!1872, !1895, !1896, !1897, !1898, !1899}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1870, file: !1427, line: 449, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !1427, line: 438, size: 64, elements: !1874)
!1874 = !{!1875, !1876, !1889}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1873, file: !1427, line: 439, baseType: !1425, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1873, file: !1427, line: 440, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !1427, line: 419, size: 256, elements: !1879)
!1879 = !{!1880, !1885, !1886, !1887, !1888}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1878, file: !1427, line: 420, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !400, line: 1049, baseType: !1882)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!21, !1721, !21, !398}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1878, file: !1427, line: 421, baseType: !398, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1878, file: !1427, line: 422, baseType: !1425, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1878, file: !1427, line: 423, baseType: !33, size: 8, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1878, file: !1427, line: 424, baseType: !33, size: 8, offset: 200)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1873, file: !1427, line: 441, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !1427, line: 429, size: 128, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1891, file: !1427, line: 430, baseType: !1425, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1891, file: !1427, line: 431, baseType: !1890, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1870, file: !1427, line: 450, baseType: !1854, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1427, line: 451, baseType: !33, size: 8, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1870, file: !1427, line: 452, baseType: !33, size: 8, offset: 136)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1870, file: !1427, line: 453, baseType: !33, size: 8, offset: 144)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1870, file: !1427, line: 454, baseType: !33, size: 8, offset: 152)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1840, file: !1427, line: 487, baseType: !195, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !1840, file: !1427, line: 488, baseType: !21, size: 32, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !1840, file: !1427, line: 489, baseType: !66, size: 16, offset: 480)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !1840, file: !1427, line: 490, baseType: !66, size: 16, offset: 496)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1840, file: !1427, line: 491, baseType: !33, size: 8, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1840, file: !1427, line: 492, baseType: !33, size: 8, offset: 520)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1379, file: !4, line: 379, baseType: !1907, size: 384)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !4, line: 192, size: 384, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1907, file: !4, line: 193, baseType: !1378, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1907, file: !4, line: 193, baseType: !33, size: 8, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !4, line: 193, baseType: !33, size: 8, offset: 72)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1907, file: !4, line: 193, baseType: !66, size: 16, offset: 80)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !4, line: 193, baseType: !33, size: 8, offset: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1907, file: !4, line: 193, baseType: !1824, size: 128, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1907, file: !4, line: 193, baseType: !1378, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1907, file: !4, line: 193, baseType: !21, size: 32, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1907, file: !4, line: 194, baseType: !21, size: 32, offset: 352)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1379, file: !4, line: 380, baseType: !1919, size: 384)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !4, line: 197, size: 384, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1919, file: !4, line: 198, baseType: !1378, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1919, file: !4, line: 198, baseType: !33, size: 8, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1919, file: !4, line: 198, baseType: !33, size: 8, offset: 72)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1919, file: !4, line: 198, baseType: !66, size: 16, offset: 80)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1919, file: !4, line: 198, baseType: !33, size: 8, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1919, file: !4, line: 200, baseType: !33, size: 8, offset: 104)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1919, file: !4, line: 201, baseType: !33, size: 8, offset: 112)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1919, file: !4, line: 202, baseType: !1824, size: 128, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1919, file: !4, line: 202, baseType: !1378, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1919, file: !4, line: 202, baseType: !1931, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !400, line: 128, baseType: !195)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !1379, file: !4, line: 381, baseType: !1933, size: 320)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !4, line: 205, size: 320, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1933, file: !4, line: 206, baseType: !1378, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1933, file: !4, line: 206, baseType: !33, size: 8, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1933, file: !4, line: 206, baseType: !33, size: 8, offset: 72)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1933, file: !4, line: 206, baseType: !66, size: 16, offset: 80)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !4, line: 206, baseType: !33, size: 8, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1933, file: !4, line: 206, baseType: !1824, size: 128, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1933, file: !4, line: 206, baseType: !1378, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !1379, file: !4, line: 382, baseType: !1943, size: 384)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !4, line: 233, size: 384, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1943, file: !4, line: 234, baseType: !1378, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 72)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1943, file: !4, line: 234, baseType: !66, size: 16, offset: 80)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 96)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 104)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 112)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 120)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1943, file: !4, line: 234, baseType: !1425, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1943, file: !4, line: 234, baseType: !21, size: 32, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1943, file: !4, line: 234, baseType: !21, size: 32, offset: 224)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1943, file: !4, line: 234, baseType: !21, size: 32, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 288)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1943, file: !4, line: 234, baseType: !33, size: 8, offset: 296)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1943, file: !4, line: 234, baseType: !1378, size: 64, offset: 320)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !1379, file: !4, line: 383, baseType: !1961, size: 576)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !4, line: 237, size: 576, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1961, file: !4, line: 238, baseType: !1378, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 72)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1961, file: !4, line: 238, baseType: !66, size: 16, offset: 80)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 96)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 104)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 112)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 120)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1961, file: !4, line: 238, baseType: !1425, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1961, file: !4, line: 238, baseType: !21, size: 32, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1961, file: !4, line: 238, baseType: !21, size: 32, offset: 224)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1961, file: !4, line: 238, baseType: !21, size: 32, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1961, file: !4, line: 238, baseType: !33, size: 8, offset: 296)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1961, file: !4, line: 238, baseType: !66, size: 16, offset: 304)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1961, file: !4, line: 239, baseType: !1378, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1961, file: !4, line: 240, baseType: !255, size: 64, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1961, file: !4, line: 241, baseType: !66, size: 16, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1961, file: !4, line: 242, baseType: !255, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !1379, file: !4, line: 384, baseType: !1983, size: 384)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !4, line: 262, size: 384, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1983, file: !4, line: 263, baseType: !1378, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 72)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1983, file: !4, line: 263, baseType: !66, size: 16, offset: 80)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 96)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 104)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 112)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 120)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1983, file: !4, line: 263, baseType: !1425, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1983, file: !4, line: 263, baseType: !21, size: 32, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1983, file: !4, line: 263, baseType: !21, size: 32, offset: 224)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1983, file: !4, line: 263, baseType: !21, size: 32, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 288)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 296)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1983, file: !4, line: 263, baseType: !33, size: 8, offset: 304)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1983, file: !4, line: 264, baseType: !1378, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !1379, file: !4, line: 385, baseType: !2002, size: 448)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !4, line: 245, size: 448, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2002, file: !4, line: 246, baseType: !1378, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 72)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2002, file: !4, line: 246, baseType: !66, size: 16, offset: 80)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 96)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 104)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 112)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 120)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2002, file: !4, line: 246, baseType: !1425, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !2002, file: !4, line: 246, baseType: !21, size: 32, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !2002, file: !4, line: 246, baseType: !21, size: 32, offset: 224)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2002, file: !4, line: 246, baseType: !21, size: 32, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 288)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !2002, file: !4, line: 246, baseType: !33, size: 8, offset: 296)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !2002, file: !4, line: 246, baseType: !1378, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !2002, file: !4, line: 247, baseType: !1378, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !1379, file: !4, line: 386, baseType: !2021, size: 448)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !4, line: 250, size: 448, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2021, file: !4, line: 251, baseType: !1378, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 72)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2021, file: !4, line: 251, baseType: !66, size: 16, offset: 80)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 96)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 104)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 112)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 120)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2021, file: !4, line: 251, baseType: !1425, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !2021, file: !4, line: 251, baseType: !21, size: 32, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !2021, file: !4, line: 251, baseType: !21, size: 32, offset: 224)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2021, file: !4, line: 251, baseType: !21, size: 32, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 288)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !2021, file: !4, line: 251, baseType: !33, size: 8, offset: 296)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !2021, file: !4, line: 256, baseType: !1378, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !2021, file: !4, line: 257, baseType: !1378, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1379, file: !4, line: 387, baseType: !2040, size: 512)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !4, line: 273, size: 512, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2040, file: !4, line: 274, baseType: !1378, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2040, file: !4, line: 274, baseType: !33, size: 8, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2040, file: !4, line: 274, baseType: !33, size: 8, offset: 72)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2040, file: !4, line: 274, baseType: !66, size: 16, offset: 80)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2040, file: !4, line: 274, baseType: !33, size: 8, offset: 96)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2040, file: !4, line: 274, baseType: !1425, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !2040, file: !4, line: 275, baseType: !21, size: 32, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2040, file: !4, line: 276, baseType: !1717, size: 64, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2040, file: !4, line: 277, baseType: !398, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2040, file: !4, line: 278, baseType: !1824, size: 128, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1379, file: !4, line: 388, baseType: !2053, size: 512)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !4, line: 281, size: 512, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2068, !2069, !2070, !2076, !2077}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2053, file: !4, line: 282, baseType: !1378, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2053, file: !4, line: 282, baseType: !33, size: 8, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2053, file: !4, line: 282, baseType: !33, size: 8, offset: 72)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2053, file: !4, line: 282, baseType: !66, size: 16, offset: 80)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2053, file: !4, line: 282, baseType: !33, size: 8, offset: 96)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2053, file: !4, line: 282, baseType: !33, size: 8, offset: 104)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !2053, file: !4, line: 283, baseType: !33, size: 8, offset: 112)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2053, file: !4, line: 284, baseType: !2063, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !400, line: 1084, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!401, !21, !1813, !21, !2067, !398, !398}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2053, file: !4, line: 285, baseType: !1425, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2053, file: !4, line: 286, baseType: !398, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2053, file: !4, line: 287, baseType: !2071, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !400, line: 1102, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!401, !1721, !21, !398, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !2053, file: !4, line: 288, baseType: !1378, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2053, file: !4, line: 289, baseType: !1378, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1379, file: !4, line: 389, baseType: !2079, size: 512)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !4, line: 307, size: 512, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2079, file: !4, line: 308, baseType: !1378, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2079, file: !4, line: 308, baseType: !33, size: 8, offset: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2079, file: !4, line: 308, baseType: !33, size: 8, offset: 72)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2079, file: !4, line: 308, baseType: !66, size: 16, offset: 80)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2079, file: !4, line: 308, baseType: !33, size: 8, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2079, file: !4, line: 308, baseType: !33, size: 8, offset: 104)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !2079, file: !4, line: 309, baseType: !33, size: 8, offset: 112)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !2079, file: !4, line: 310, baseType: !33, size: 8, offset: 120)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !2079, file: !4, line: 311, baseType: !398, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2079, file: !4, line: 312, baseType: !1425, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !2079, file: !4, line: 313, baseType: !1457, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !2079, file: !4, line: 314, baseType: !255, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !2079, file: !4, line: 315, baseType: !255, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2079, file: !4, line: 316, baseType: !21, size: 32, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1379, file: !4, line: 390, baseType: !2096, size: 448)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !4, line: 340, size: 448, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2096, file: !4, line: 341, baseType: !1378, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2096, file: !4, line: 341, baseType: !33, size: 8, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2096, file: !4, line: 341, baseType: !33, size: 8, offset: 72)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2096, file: !4, line: 341, baseType: !66, size: 16, offset: 80)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !4, line: 341, baseType: !33, size: 8, offset: 96)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !2096, file: !4, line: 341, baseType: !1425, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !2096, file: !4, line: 342, baseType: !1425, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !2096, file: !4, line: 343, baseType: !398, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !2096, file: !4, line: 344, baseType: !255, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !2096, file: !4, line: 345, baseType: !21, size: 32, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1379, file: !4, line: 391, baseType: !2109, size: 256)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !4, line: 350, size: 256, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2121}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2109, file: !4, line: 351, baseType: !1378, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2109, file: !4, line: 351, baseType: !33, size: 8, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2109, file: !4, line: 351, baseType: !33, size: 8, offset: 72)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2109, file: !4, line: 351, baseType: !66, size: 16, offset: 80)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2109, file: !4, line: 351, baseType: !33, size: 8, offset: 96)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2109, file: !4, line: 351, baseType: !2117, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !400, line: 1055, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !1721, !398}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2109, file: !4, line: 352, baseType: !398, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1379, file: !4, line: 392, baseType: !2123, size: 192)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !4, line: 357, size: 192, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !2123, file: !4, line: 358, baseType: !1378, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !2123, file: !4, line: 358, baseType: !33, size: 8, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2123, file: !4, line: 358, baseType: !33, size: 8, offset: 72)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !2123, file: !4, line: 358, baseType: !66, size: 16, offset: 80)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !4, line: 358, baseType: !33, size: 8, offset: 96)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2123, file: !4, line: 358, baseType: !1378, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1379, file: !4, line: 399, baseType: !1426, size: 384)
!2132 = !DILocalVariable(name: "package_object", arg: 1, scope: !1375, file: !1, line: 715, type: !1378)
!2133 = !DILocation(line: 715, column: 65, scope: !1375)
!2134 = !DILocalVariable(name: "buffer_size_needed", arg: 2, scope: !1375, file: !1, line: 716, type: !411)
!2135 = !DILocation(line: 716, column: 21, scope: !1375)
!2136 = !DILocalVariable(name: "number_of_elements", scope: !1375, file: !1, line: 718, type: !21)
!2137 = !DILocation(line: 718, column: 6, scope: !1375)
!2138 = !DILocalVariable(name: "temp_size_needed", scope: !1375, file: !1, line: 719, type: !399)
!2139 = !DILocation(line: 719, column: 12, scope: !1375)
!2140 = !DILocalVariable(name: "top_object_list", scope: !1375, file: !1, line: 720, type: !1457)
!2141 = !DILocation(line: 720, column: 30, scope: !1375)
!2142 = !DILocalVariable(name: "index", scope: !1375, file: !1, line: 721, type: !21)
!2143 = !DILocation(line: 721, column: 6, scope: !1375)
!2144 = !DILocalVariable(name: "package_element", scope: !1375, file: !1, line: 722, type: !1378)
!2145 = !DILocation(line: 722, column: 29, scope: !1375)
!2146 = !DILocalVariable(name: "sub_object_list", scope: !1375, file: !1, line: 723, type: !1457)
!2147 = !DILocation(line: 723, column: 30, scope: !1375)
!2148 = !DILocalVariable(name: "name_found", scope: !1375, file: !1, line: 724, type: !33)
!2149 = !DILocation(line: 724, column: 5, scope: !1375)
!2150 = !DILocalVariable(name: "table_index", scope: !1375, file: !1, line: 725, type: !21)
!2151 = !DILocation(line: 725, column: 6, scope: !1375)
!2152 = !DILocation(line: 729, column: 23, scope: !1375)
!2153 = !DILocation(line: 729, column: 39, scope: !1375)
!2154 = !DILocation(line: 729, column: 47, scope: !1375)
!2155 = !DILocation(line: 729, column: 21, scope: !1375)
!2156 = !DILocation(line: 741, column: 20, scope: !1375)
!2157 = !DILocation(line: 741, column: 36, scope: !1375)
!2158 = !DILocation(line: 741, column: 44, scope: !1375)
!2159 = !DILocation(line: 741, column: 18, scope: !1375)
!2160 = !DILocation(line: 743, column: 13, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 743, column: 2)
!2162 = !DILocation(line: 743, column: 7, scope: !2161)
!2163 = !DILocation(line: 743, column: 18, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !1, line: 743, column: 2)
!2165 = !DILocation(line: 743, column: 26, scope: !2164)
!2166 = !DILocation(line: 743, column: 24, scope: !2164)
!2167 = !DILocation(line: 743, column: 2, scope: !2161)
!2168 = !DILocation(line: 747, column: 22, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !1, line: 743, column: 55)
!2170 = !DILocation(line: 747, column: 21, scope: !2169)
!2171 = !DILocation(line: 747, column: 19, scope: !2169)
!2172 = !DILocation(line: 751, column: 8, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 751, column: 7)
!2174 = !DILocation(line: 751, column: 24, scope: !2173)
!2175 = !DILocation(line: 752, column: 8, scope: !2173)
!2176 = !DILocation(line: 752, column: 25, scope: !2173)
!2177 = !DILocation(line: 752, column: 32, scope: !2173)
!2178 = !DILocation(line: 752, column: 37, scope: !2173)
!2179 = !DILocation(line: 751, column: 7, scope: !2169)
!2180 = !DILocation(line: 753, column: 4, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 752, column: 60)
!2182 = !DILocation(line: 760, column: 21, scope: !2169)
!2183 = !DILocation(line: 760, column: 38, scope: !2169)
!2184 = !DILocation(line: 760, column: 46, scope: !2169)
!2185 = !DILocation(line: 760, column: 19, scope: !2169)
!2186 = !DILocation(line: 764, column: 14, scope: !2169)
!2187 = !DILocation(line: 766, column: 20, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 766, column: 3)
!2189 = !DILocation(line: 766, column: 8, scope: !2188)
!2190 = !DILocation(line: 767, column: 8, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !1, line: 766, column: 3)
!2192 = !DILocation(line: 767, column: 22, scope: !2191)
!2193 = !DILocation(line: 767, column: 39, scope: !2191)
!2194 = !DILocation(line: 767, column: 47, scope: !2191)
!2195 = !DILocation(line: 767, column: 20, scope: !2191)
!2196 = !DILocation(line: 768, column: 8, scope: !2191)
!2197 = !DILocation(line: 768, column: 12, scope: !2191)
!2198 = !DILocation(line: 768, column: 11, scope: !2191)
!2199 = !DILocation(line: 0, scope: !2191)
!2200 = !DILocation(line: 766, column: 3, scope: !2188)
!2201 = !DILocation(line: 769, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !1, line: 769, column: 8)
!2203 = distinct !DILexicalBlock(scope: !2191, file: !1, line: 768, column: 39)
!2204 = !DILocation(line: 769, column: 8, scope: !2202)
!2205 = !DILocation(line: 769, column: 25, scope: !2202)
!2206 = !DILocation(line: 771, column: 12, scope: !2202)
!2207 = !DILocation(line: 771, column: 11, scope: !2202)
!2208 = !DILocation(line: 771, column: 30, scope: !2202)
!2209 = !DILocation(line: 771, column: 37, scope: !2202)
!2210 = !DILocation(line: 771, column: 10, scope: !2202)
!2211 = !DILocation(line: 770, column: 27, scope: !2202)
!2212 = !DILocation(line: 771, column: 43, scope: !2202)
!2213 = !DILocation(line: 773, column: 13, scope: !2202)
!2214 = !DILocation(line: 773, column: 12, scope: !2202)
!2215 = !DILocation(line: 773, column: 31, scope: !2202)
!2216 = !DILocation(line: 773, column: 38, scope: !2202)
!2217 = !DILocation(line: 773, column: 11, scope: !2202)
!2218 = !DILocation(line: 772, column: 37, scope: !2202)
!2219 = !DILocation(line: 773, column: 44, scope: !2202)
!2220 = !DILocation(line: 774, column: 13, scope: !2202)
!2221 = !DILocation(line: 774, column: 12, scope: !2202)
!2222 = !DILocation(line: 774, column: 31, scope: !2202)
!2223 = !DILocation(line: 774, column: 41, scope: !2202)
!2224 = !DILocation(line: 774, column: 11, scope: !2202)
!2225 = !DILocation(line: 774, column: 47, scope: !2202)
!2226 = !DILocation(line: 769, column: 8, scope: !2203)
!2227 = !DILocation(line: 776, column: 16, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 775, column: 34)
!2229 = !DILocation(line: 777, column: 4, scope: !2228)
!2230 = !DILocation(line: 780, column: 20, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 777, column: 11)
!2232 = !DILocation(line: 782, column: 3, scope: !2203)
!2233 = !DILocation(line: 768, column: 35, scope: !2191)
!2234 = !DILocation(line: 766, column: 3, scope: !2191)
!2235 = distinct !{!2235, !2200, !2236}
!2236 = !DILocation(line: 782, column: 3, scope: !2188)
!2237 = !DILocation(line: 784, column: 20, scope: !2169)
!2238 = !DILocation(line: 788, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 788, column: 7)
!2240 = !DILocation(line: 788, column: 7, scope: !2169)
!2241 = !DILocation(line: 789, column: 10, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !1, line: 789, column: 8)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 788, column: 19)
!2244 = !DILocation(line: 789, column: 9, scope: !2242)
!2245 = !DILocation(line: 789, column: 28, scope: !2242)
!2246 = !DILocation(line: 789, column: 35, scope: !2242)
!2247 = !DILocation(line: 789, column: 8, scope: !2242)
!2248 = !DILocation(line: 789, column: 40, scope: !2242)
!2249 = !DILocation(line: 789, column: 8, scope: !2243)
!2250 = !DILocation(line: 795, column: 14, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 789, column: 61)
!2252 = !DILocation(line: 795, column: 13, scope: !2251)
!2253 = !DILocation(line: 795, column: 32, scope: !2251)
!2254 = !DILocation(line: 796, column: 12, scope: !2251)
!2255 = !DILocation(line: 794, column: 26, scope: !2251)
!2256 = !DILocation(line: 796, column: 19, scope: !2251)
!2257 = !DILocation(line: 794, column: 22, scope: !2251)
!2258 = !DILocation(line: 797, column: 4, scope: !2251)
!2259 = !DILocation(line: 798, column: 55, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2242, file: !1, line: 797, column: 11)
!2261 = !DILocation(line: 798, column: 54, scope: !2260)
!2262 = !DILocation(line: 798, column: 73, scope: !2260)
!2263 = !DILocation(line: 798, column: 83, scope: !2260)
!2264 = !DILocation(line: 798, column: 25, scope: !2260)
!2265 = !DILocation(line: 798, column: 22, scope: !2260)
!2266 = !DILocation(line: 800, column: 3, scope: !2243)
!2267 = !DILocation(line: 805, column: 21, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2239, file: !1, line: 800, column: 10)
!2269 = !DILocation(line: 810, column: 22, scope: !2169)
!2270 = !DILocation(line: 810, column: 20, scope: !2169)
!2271 = !DILocation(line: 814, column: 18, scope: !2169)
!2272 = !DILocation(line: 815, column: 2, scope: !2169)
!2273 = !DILocation(line: 743, column: 51, scope: !2164)
!2274 = !DILocation(line: 743, column: 2, scope: !2164)
!2275 = distinct !{!2275, !2167, !2276}
!2276 = !DILocation(line: 815, column: 2, scope: !2161)
!2277 = !DILocation(line: 822, column: 6, scope: !1375)
!2278 = !DILocation(line: 822, column: 23, scope: !1375)
!2279 = !DILocation(line: 821, column: 3, scope: !1375)
!2280 = !DILocation(line: 821, column: 22, scope: !1375)
!2281 = !DILocation(line: 823, column: 2, scope: !1375)
!2282 = !DILocation(line: 824, column: 1, scope: !1375)
