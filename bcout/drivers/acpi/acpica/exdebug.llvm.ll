; ModuleID = '../bcout/drivers/acpi/acpica/exdebug.llvm.bc'
source_filename = "drivers/acpi/acpica/exdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@acpi_gbl_enable_aml_debug_object = external dso_local global i8, align 1
@acpi_dbg_level = external dso_local global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@acpi_gbl_display_debug_timer = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ACPI Debug: T=0x%8.8X %*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ACPI Debug: %*s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"(%.2u) \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"[Null Object]\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%p, Invalid Internal Object!\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s (Node %p)\0A\00", align 1
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0x%8.8X\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"0x%8.8X%8.8X\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"[0x%.2X]\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"(Contains 0x%.2X Elements):\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Table Index 0x%X\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c" %p - Not a valid namespace node\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Node %p [%4.4s] \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Device\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Thermal Zone\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Buffer[%u] = 0x%2.2X\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"String[%u] = \22%c\22 (0x%2.2X)\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Package[%u] = \00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"[Uninitialized Package Element]\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"Unknown Reference object type %X\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"(Descriptor %p)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_do_debug_object(%union.acpi_operand_object* %source_desc, i32 %level, i32 %index) #0 !dbg !795 {
entry:
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %level.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %timer = alloca i32, align 4
  %object_desc = alloca %union.acpi_operand_object*, align 8
  %value = alloca i32, align 4
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !798, metadata !DIExpression()), !dbg !799
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !800, metadata !DIExpression()), !dbg !801
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %i, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata i32* %timer, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object_desc, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata i32* %value, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = load i8, i8* @acpi_gbl_enable_aml_debug_object, align 1, !dbg !812
  %tobool = icmp ne i8 %0, 0, !dbg !812
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !814

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @acpi_dbg_level, align 4, !dbg !815
  %and = and i32 %1, 2, !dbg !816
  %tobool1 = icmp ne i32 %and, 0, !dbg !816
  br i1 %tobool1, label %if.end, label %if.then, !dbg !817

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !818

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !820
  %tobool2 = icmp ne %union.acpi_operand_object* %2, null, !dbg !820
  br i1 %tobool2, label %land.lhs.true3, label %if.end20, !dbg !822

land.lhs.true3:                                   ; preds = %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !823
  %4 = bitcast %union.acpi_operand_object* %3 to i8*, !dbg !823
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !823
  %common = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !823
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !823
  %6 = load i8, i8* %descriptor_type, align 8, !dbg !823
  %conv = zext i8 %6 to i32, !dbg !823
  %cmp = icmp eq i32 %conv, 14, !dbg !824
  br i1 %cmp, label %land.lhs.true5, label %if.end20, !dbg !825

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !826
  %common6 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !827
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 2, !dbg !828
  %8 = load i8, i8* %type, align 1, !dbg !828
  %conv7 = zext i8 %8 to i32, !dbg !826
  %cmp8 = icmp eq i32 %conv7, 2, !dbg !829
  br i1 %cmp8, label %if.then10, label %if.end20, !dbg !830

if.then10:                                        ; preds = %land.lhs.true5
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !831
  %string = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_string*, !dbg !834
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !835
  %10 = load i32, i32* %length, align 8, !dbg !835
  %cmp11 = icmp eq i32 %10, 1, !dbg !836
  br i1 %cmp11, label %land.lhs.true13, label %if.end19, !dbg !837

land.lhs.true13:                                  ; preds = %if.then10
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !838
  %string14 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_string*, !dbg !839
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string14, i32 0, i32 5, !dbg !840
  %12 = load i8*, i8** %pointer, align 8, !dbg !840
  %13 = load i8, i8* %12, align 1, !dbg !841
  %conv15 = sext i8 %13 to i32, !dbg !841
  %cmp16 = icmp eq i32 %conv15, 10, !dbg !842
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !843

if.then18:                                        ; preds = %land.lhs.true13
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #3, !dbg !844
  br label %return, !dbg !846

if.end19:                                         ; preds = %land.lhs.true13, %if.then10
  br label %if.end20, !dbg !847

if.end20:                                         ; preds = %if.end19, %land.lhs.true5, %land.lhs.true3, %if.end
  %14 = load i32, i32* %level.addr, align 4, !dbg !848
  %cmp21 = icmp ugt i32 %14, 0, !dbg !850
  br i1 %cmp21, label %land.lhs.true23, label %if.then26, !dbg !851

land.lhs.true23:                                  ; preds = %if.end20
  %15 = load i32, i32* %index.addr, align 4, !dbg !852
  %cmp24 = icmp eq i32 %15, 0, !dbg !853
  br i1 %cmp24, label %if.end32, label %if.then26, !dbg !854

if.then26:                                        ; preds = %land.lhs.true23, %if.end20
  %16 = load i8, i8* @acpi_gbl_display_debug_timer, align 1, !dbg !855
  %tobool27 = icmp ne i8 %16, 0, !dbg !855
  br i1 %tobool27, label %if.then28, label %if.else, !dbg !858

if.then28:                                        ; preds = %if.then26
  %call = call i64 @acpi_os_get_timer() #3, !dbg !859
  %conv29 = trunc i64 %call to i32, !dbg !861
  %div = udiv i32 %conv29, 10, !dbg !862
  store i32 %div, i32* %timer, align 4, !dbg !863
  %17 = load i32, i32* %timer, align 4, !dbg !864
  %and30 = and i32 %17, 67108863, !dbg !864
  store i32 %and30, i32* %timer, align 4, !dbg !864
  %18 = load i32, i32* %timer, align 4, !dbg !865
  %19 = load i32, i32* %level.addr, align 4, !dbg !866
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !867
  br label %if.end31, !dbg !868

if.else:                                          ; preds = %if.then26
  %20 = load i32, i32* %level.addr, align 4, !dbg !869
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !871
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  br label %if.end32, !dbg !872

if.end32:                                         ; preds = %if.end31, %land.lhs.true23
  %21 = load i32, i32* %index.addr, align 4, !dbg !873
  %cmp33 = icmp ugt i32 %21, 0, !dbg !875
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !876

if.then35:                                        ; preds = %if.end32
  %22 = load i32, i32* %index.addr, align 4, !dbg !877
  %sub = sub i32 %22, 1, !dbg !879
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %sub) #3, !dbg !880
  br label %if.end36, !dbg !881

if.end36:                                         ; preds = %if.then35, %if.end32
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !882
  %tobool37 = icmp ne %union.acpi_operand_object* %23, null, !dbg !882
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !884

if.then38:                                        ; preds = %if.end36
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !885
  br label %return, !dbg !887

if.end39:                                         ; preds = %if.end36
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !888
  %25 = bitcast %union.acpi_operand_object* %24 to i8*, !dbg !888
  %26 = bitcast i8* %25 to %union.acpi_descriptor*, !dbg !888
  %common40 = bitcast %union.acpi_descriptor* %26 to %struct.acpi_common_descriptor*, !dbg !888
  %descriptor_type41 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common40, i32 0, i32 1, !dbg !888
  %27 = load i8, i8* %descriptor_type41, align 8, !dbg !888
  %conv42 = zext i8 %27 to i32, !dbg !888
  %cmp43 = icmp eq i32 %conv42, 14, !dbg !890
  br i1 %cmp43, label %if.then45, label %if.else64, !dbg !891

if.then45:                                        ; preds = %if.end39
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !892
  %common46 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_common*, !dbg !895
  %type47 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common46, i32 0, i32 2, !dbg !896
  %29 = load i8, i8* %type47, align 1, !dbg !896
  %conv48 = zext i8 %29 to i32, !dbg !892
  %cmp49 = icmp ne i32 %conv48, 1, !dbg !897
  br i1 %cmp49, label %land.lhs.true51, label %if.end59, !dbg !898

land.lhs.true51:                                  ; preds = %if.then45
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !899
  %common52 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_common*, !dbg !900
  %type53 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common52, i32 0, i32 2, !dbg !901
  %31 = load i8, i8* %type53, align 1, !dbg !901
  %conv54 = zext i8 %31 to i32, !dbg !899
  %cmp55 = icmp ne i32 %conv54, 2, !dbg !902
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !903

if.then57:                                        ; preds = %land.lhs.true51
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !904
  %call58 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %32) #3, !dbg !906
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %call58) #3, !dbg !907
  br label %if.end59, !dbg !908

if.end59:                                         ; preds = %if.then57, %land.lhs.true51, %if.then45
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !909
  %34 = bitcast %union.acpi_operand_object* %33 to i8*, !dbg !909
  %call60 = call zeroext i8 @acpi_ut_valid_internal_object(i8* %34) #3, !dbg !911
  %tobool61 = icmp ne i8 %call60, 0, !dbg !911
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !912

if.then62:                                        ; preds = %if.end59
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !913
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), %union.acpi_operand_object* %35) #3, !dbg !915
  br label %return, !dbg !916

if.end63:                                         ; preds = %if.end59
  br label %if.end75, !dbg !917

if.else64:                                        ; preds = %if.end39
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !918
  %37 = bitcast %union.acpi_operand_object* %36 to i8*, !dbg !918
  %38 = bitcast i8* %37 to %union.acpi_descriptor*, !dbg !918
  %common65 = bitcast %union.acpi_descriptor* %38 to %struct.acpi_common_descriptor*, !dbg !918
  %descriptor_type66 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common65, i32 0, i32 1, !dbg !918
  %39 = load i8, i8* %descriptor_type66, align 8, !dbg !918
  %conv67 = zext i8 %39 to i32, !dbg !918
  %cmp68 = icmp eq i32 %conv67, 15, !dbg !920
  br i1 %cmp68, label %if.then70, label %if.else74, !dbg !921

if.then70:                                        ; preds = %if.else64
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !922
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_namespace_node*, !dbg !924
  %type71 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %41, i32 0, i32 2, !dbg !924
  %42 = load i8, i8* %type71, align 1, !dbg !924
  %conv72 = zext i8 %42 to i32, !dbg !925
  %call73 = call i8* @acpi_ut_get_type_name(i32 %conv72) #3, !dbg !926
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !927
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %call73, %union.acpi_operand_object* %43) #3, !dbg !928
  br label %return, !dbg !929

if.else74:                                        ; preds = %if.else64
  br label %return, !dbg !930

if.end75:                                         ; preds = %if.end63
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !932
  %common76 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_common*, !dbg !933
  %type77 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common76, i32 0, i32 2, !dbg !934
  %45 = load i8, i8* %type77, align 1, !dbg !934
  %conv78 = zext i8 %45 to i32, !dbg !932
  switch i32 %conv78, label %sw.default203 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb93
    i32 2, label %sw.bb103
    i32 4, label %sw.bb106
    i32 20, label %sw.bb113
  ], !dbg !935

sw.bb:                                            ; preds = %if.end75
  %46 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !936
  %conv79 = zext i8 %46 to i32, !dbg !936
  %cmp80 = icmp eq i32 %conv79, 4, !dbg !939
  br i1 %cmp80, label %if.then82, label %if.else85, !dbg !940

if.then82:                                        ; preds = %sw.bb
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !941
  %integer = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_integer*, !dbg !943
  %value83 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !944
  %48 = load i64, i64* %value83, align 8, !dbg !944
  %conv84 = trunc i64 %48 to i32, !dbg !945
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %conv84) #3, !dbg !946
  br label %if.end92, !dbg !947

if.else85:                                        ; preds = %sw.bb
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !948
  %integer86 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_integer*, !dbg !948
  %value87 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer86, i32 0, i32 6, !dbg !948
  %50 = load i64, i64* %value87, align 8, !dbg !948
  %shr = lshr i64 %50, 32, !dbg !948
  %conv88 = trunc i64 %shr to i32, !dbg !948
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !948
  %integer89 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_integer*, !dbg !948
  %value90 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer89, i32 0, i32 6, !dbg !948
  %52 = load i64, i64* %value90, align 8, !dbg !948
  %conv91 = trunc i64 %52 to i32, !dbg !948
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %conv88, i32 %conv91) #3, !dbg !950
  br label %if.end92

if.end92:                                         ; preds = %if.else85, %if.then82
  br label %sw.epilog204, !dbg !951

sw.bb93:                                          ; preds = %if.end75
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !952
  %buffer = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_buffer*, !dbg !953
  %length94 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !954
  %54 = load i32, i32* %length94, align 8, !dbg !954
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %54) #3, !dbg !955
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !956
  %buffer95 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_buffer*, !dbg !957
  %pointer96 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer95, i32 0, i32 5, !dbg !958
  %56 = load i8*, i8** %pointer96, align 8, !dbg !958
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !959
  %buffer97 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_buffer*, !dbg !960
  %length98 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer97, i32 0, i32 6, !dbg !961
  %58 = load i32, i32* %length98, align 8, !dbg !961
  %cmp99 = icmp ult i32 %58, 256, !dbg !962
  br i1 %cmp99, label %cond.true, label %cond.false, !dbg !963

cond.true:                                        ; preds = %sw.bb93
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !964
  %buffer101 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_buffer*, !dbg !965
  %length102 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer101, i32 0, i32 6, !dbg !966
  %60 = load i32, i32* %length102, align 8, !dbg !966
  br label %cond.end, !dbg !963

cond.false:                                       ; preds = %sw.bb93
  br label %cond.end, !dbg !963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %60, %cond.true ], [ 256, %cond.false ], !dbg !963
  call void @acpi_ut_dump_buffer(i8* %56, i32 %cond, i32 1, i32 0) #3, !dbg !967
  br label %sw.epilog204, !dbg !968

sw.bb103:                                         ; preds = %if.end75
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !969
  %string104 = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_string*, !dbg !970
  %pointer105 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string104, i32 0, i32 5, !dbg !971
  %62 = load i8*, i8** %pointer105, align 8, !dbg !971
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %62) #3, !dbg !972
  br label %sw.epilog204, !dbg !973

sw.bb106:                                         ; preds = %if.end75
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !974
  %package = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_package*, !dbg !975
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !976
  %64 = load i32, i32* %count, align 4, !dbg !976
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %64) #3, !dbg !977
  store i32 0, i32* %i, align 4, !dbg !978
  br label %for.cond, !dbg !980

for.cond:                                         ; preds = %for.inc, %sw.bb106
  %65 = load i32, i32* %i, align 4, !dbg !981
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !983
  %package107 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_package*, !dbg !984
  %count108 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package107, i32 0, i32 9, !dbg !985
  %67 = load i32, i32* %count108, align 4, !dbg !985
  %cmp109 = icmp ult i32 %65, %67, !dbg !986
  br i1 %cmp109, label %for.body, label %for.end, !dbg !987

for.body:                                         ; preds = %for.cond
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !988
  %package111 = bitcast %union.acpi_operand_object* %68 to %struct.acpi_object_package*, !dbg !990
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package111, i32 0, i32 6, !dbg !991
  %69 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !991
  %70 = load i32, i32* %i, align 4, !dbg !992
  %idxprom = zext i32 %70 to i64, !dbg !988
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %69, i64 %idxprom, !dbg !988
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !988
  %72 = load i32, i32* %level.addr, align 4, !dbg !993
  %add = add i32 %72, 4, !dbg !994
  %73 = load i32, i32* %i, align 4, !dbg !995
  %add112 = add i32 %73, 1, !dbg !996
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %71, i32 %add, i32 %add112) #3, !dbg !997
  br label %for.inc, !dbg !998

for.inc:                                          ; preds = %for.body
  %74 = load i32, i32* %i, align 4, !dbg !999
  %inc = add i32 %74, 1, !dbg !999
  store i32 %inc, i32* %i, align 4, !dbg !999
  br label %for.cond, !dbg !1000, !llvm.loop !1001

for.end:                                          ; preds = %for.cond
  br label %sw.epilog204, !dbg !1003

sw.bb113:                                         ; preds = %if.end75
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1004
  %call114 = call i8* @acpi_ut_get_reference_name(%union.acpi_operand_object* %75) #3, !dbg !1005
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %call114) #3, !dbg !1006
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1007
  %reference = bitcast %union.acpi_operand_object* %76 to %struct.acpi_object_reference*, !dbg !1008
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1009
  %77 = load i8, i8* %class, align 1, !dbg !1009
  %conv115 = zext i8 %77 to i32, !dbg !1007
  switch i32 %conv115, label %sw.default [
    i32 3, label %sw.bb116
    i32 4, label %sw.bb119
  ], !dbg !1010

sw.bb116:                                         ; preds = %sw.bb113
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1011
  %reference117 = bitcast %union.acpi_operand_object* %78 to %struct.acpi_object_reference*, !dbg !1013
  %value118 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference117, i32 0, i32 13, !dbg !1014
  %79 = load i32, i32* %value118, align 8, !dbg !1014
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %79) #3, !dbg !1015
  br label %sw.epilog, !dbg !1016

sw.bb119:                                         ; preds = %sw.bb113
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1017
  %reference120 = bitcast %union.acpi_operand_object* %80 to %struct.acpi_object_reference*, !dbg !1018
  %value121 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference120, i32 0, i32 13, !dbg !1019
  %81 = load i32, i32* %value121, align 8, !dbg !1019
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %81) #3, !dbg !1020
  br label %return, !dbg !1021

sw.default:                                       ; preds = %sw.bb113
  br label %sw.epilog, !dbg !1022

sw.epilog:                                        ; preds = %sw.default, %sw.bb116
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !1023
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1024
  %reference122 = bitcast %union.acpi_operand_object* %82 to %struct.acpi_object_reference*, !dbg !1026
  %node = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference122, i32 0, i32 9, !dbg !1027
  %83 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1027
  %tobool123 = icmp ne %struct.acpi_namespace_node* %83, null, !dbg !1024
  br i1 %tobool123, label %if.then124, label %if.else152, !dbg !1028

if.then124:                                       ; preds = %sw.epilog
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1029
  %reference125 = bitcast %union.acpi_operand_object* %84 to %struct.acpi_object_reference*, !dbg !1029
  %node126 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference125, i32 0, i32 9, !dbg !1029
  %85 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node126, align 8, !dbg !1029
  %86 = bitcast %struct.acpi_namespace_node* %85 to i8*, !dbg !1029
  %87 = bitcast i8* %86 to %union.acpi_descriptor*, !dbg !1029
  %common127 = bitcast %union.acpi_descriptor* %87 to %struct.acpi_common_descriptor*, !dbg !1029
  %descriptor_type128 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common127, i32 0, i32 1, !dbg !1029
  %88 = load i8, i8* %descriptor_type128, align 8, !dbg !1029
  %conv129 = zext i8 %88 to i32, !dbg !1029
  %cmp130 = icmp ne i32 %conv129, 15, !dbg !1032
  br i1 %cmp130, label %if.then132, label %if.else135, !dbg !1033

if.then132:                                       ; preds = %if.then124
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1034
  %reference133 = bitcast %union.acpi_operand_object* %89 to %struct.acpi_object_reference*, !dbg !1036
  %node134 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference133, i32 0, i32 9, !dbg !1037
  %90 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node134, align 8, !dbg !1037
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), %struct.acpi_namespace_node* %90) #3, !dbg !1038
  br label %if.end151, !dbg !1039

if.else135:                                       ; preds = %if.then124
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1040
  %reference136 = bitcast %union.acpi_operand_object* %91 to %struct.acpi_object_reference*, !dbg !1042
  %node137 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference136, i32 0, i32 9, !dbg !1043
  %92 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node137, align 8, !dbg !1043
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1044
  %reference138 = bitcast %union.acpi_operand_object* %93 to %struct.acpi_object_reference*, !dbg !1045
  %node139 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference138, i32 0, i32 9, !dbg !1046
  %94 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node139, align 8, !dbg !1046
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %94, i32 0, i32 4, !dbg !1047
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1048
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1049
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), %struct.acpi_namespace_node* %92, i8* %arraydecay) #3, !dbg !1050
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1051
  %reference140 = bitcast %union.acpi_operand_object* %95 to %struct.acpi_object_reference*, !dbg !1052
  %node141 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference140, i32 0, i32 9, !dbg !1053
  %96 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node141, align 8, !dbg !1053
  %type142 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %96, i32 0, i32 2, !dbg !1054
  %97 = load i8, i8* %type142, align 1, !dbg !1054
  %conv143 = zext i8 %97 to i32, !dbg !1055
  switch i32 %conv143, label %sw.default146 [
    i32 6, label %sw.bb144
    i32 13, label %sw.bb145
  ], !dbg !1056

sw.bb144:                                         ; preds = %if.else135
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #3, !dbg !1057
  br label %sw.epilog150, !dbg !1059

sw.bb145:                                         ; preds = %if.else135
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0)) #3, !dbg !1060
  br label %sw.epilog150, !dbg !1061

sw.default146:                                    ; preds = %if.else135
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1062
  %reference147 = bitcast %union.acpi_operand_object* %98 to %struct.acpi_object_reference*, !dbg !1063
  %node148 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference147, i32 0, i32 9, !dbg !1064
  %99 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node148, align 8, !dbg !1064
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %99, i32 0, i32 0, !dbg !1065
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1065
  %101 = load i32, i32* %level.addr, align 4, !dbg !1066
  %add149 = add i32 %101, 4, !dbg !1067
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %100, i32 %add149, i32 0) #3, !dbg !1068
  br label %sw.epilog150, !dbg !1069

sw.epilog150:                                     ; preds = %sw.default146, %sw.bb145, %sw.bb144
  br label %if.end151

if.end151:                                        ; preds = %sw.epilog150, %if.then132
  br label %if.end202, !dbg !1070

if.else152:                                       ; preds = %sw.epilog
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1071
  %reference153 = bitcast %union.acpi_operand_object* %102 to %struct.acpi_object_reference*, !dbg !1073
  %object154 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference153, i32 0, i32 8, !dbg !1074
  %103 = load i8*, i8** %object154, align 8, !dbg !1074
  %tobool155 = icmp ne i8* %103, null, !dbg !1071
  br i1 %tobool155, label %if.then156, label %if.end201, !dbg !1075

if.then156:                                       ; preds = %if.else152
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1076
  %reference157 = bitcast %union.acpi_operand_object* %104 to %struct.acpi_object_reference*, !dbg !1076
  %object158 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference157, i32 0, i32 8, !dbg !1076
  %105 = load i8*, i8** %object158, align 8, !dbg !1076
  %106 = bitcast i8* %105 to %union.acpi_descriptor*, !dbg !1076
  %common159 = bitcast %union.acpi_descriptor* %106 to %struct.acpi_common_descriptor*, !dbg !1076
  %descriptor_type160 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common159, i32 0, i32 1, !dbg !1076
  %107 = load i8, i8* %descriptor_type160, align 8, !dbg !1076
  %conv161 = zext i8 %107 to i32, !dbg !1076
  %cmp162 = icmp eq i32 %conv161, 15, !dbg !1079
  br i1 %cmp162, label %if.then164, label %if.else168, !dbg !1080

if.then164:                                       ; preds = %if.then156
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1081
  %reference165 = bitcast %union.acpi_operand_object* %108 to %struct.acpi_object_reference*, !dbg !1081
  %object166 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference165, i32 0, i32 8, !dbg !1081
  %109 = load i8*, i8** %object166, align 8, !dbg !1081
  %110 = bitcast i8* %109 to %union.acpi_operand_object*, !dbg !1081
  %111 = load i32, i32* %level.addr, align 4, !dbg !1083
  %add167 = add i32 %111, 4, !dbg !1084
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %110, i32 %add167, i32 0) #3, !dbg !1085
  br label %if.end200, !dbg !1086

if.else168:                                       ; preds = %if.then156
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1087
  %reference169 = bitcast %union.acpi_operand_object* %112 to %struct.acpi_object_reference*, !dbg !1089
  %object170 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference169, i32 0, i32 8, !dbg !1090
  %113 = load i8*, i8** %object170, align 8, !dbg !1090
  %114 = bitcast i8* %113 to %union.acpi_operand_object*, !dbg !1087
  store %union.acpi_operand_object* %114, %union.acpi_operand_object** %object_desc, align 8, !dbg !1091
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1092
  %reference171 = bitcast %union.acpi_operand_object* %115 to %struct.acpi_object_reference*, !dbg !1093
  %value172 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference171, i32 0, i32 13, !dbg !1094
  %116 = load i32, i32* %value172, align 8, !dbg !1094
  store i32 %116, i32* %value, align 4, !dbg !1095
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object_desc, align 8, !dbg !1096
  %common173 = bitcast %union.acpi_operand_object* %117 to %struct.acpi_object_common*, !dbg !1097
  %type174 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common173, i32 0, i32 2, !dbg !1098
  %118 = load i8, i8* %type174, align 1, !dbg !1098
  %conv175 = zext i8 %118 to i32, !dbg !1096
  switch i32 %conv175, label %sw.default195 [
    i32 3, label %sw.bb176
    i32 2, label %sw.bb179
    i32 4, label %sw.bb186
  ], !dbg !1099

sw.bb176:                                         ; preds = %if.else168
  %119 = load i32, i32* %value, align 4, !dbg !1100
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1102
  %reference177 = bitcast %union.acpi_operand_object* %120 to %struct.acpi_object_reference*, !dbg !1103
  %index_pointer = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference177, i32 0, i32 11, !dbg !1104
  %121 = load i8*, i8** %index_pointer, align 8, !dbg !1104
  %122 = load i8, i8* %121, align 1, !dbg !1105
  %conv178 = zext i8 %122 to i32, !dbg !1105
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %119, i32 %conv178) #3, !dbg !1106
  br label %sw.epilog199, !dbg !1107

sw.bb179:                                         ; preds = %if.else168
  %123 = load i32, i32* %value, align 4, !dbg !1108
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1109
  %reference180 = bitcast %union.acpi_operand_object* %124 to %struct.acpi_object_reference*, !dbg !1110
  %index_pointer181 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference180, i32 0, i32 11, !dbg !1111
  %125 = load i8*, i8** %index_pointer181, align 8, !dbg !1111
  %126 = load i8, i8* %125, align 1, !dbg !1112
  %conv182 = zext i8 %126 to i32, !dbg !1112
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1113
  %reference183 = bitcast %union.acpi_operand_object* %127 to %struct.acpi_object_reference*, !dbg !1114
  %index_pointer184 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference183, i32 0, i32 11, !dbg !1115
  %128 = load i8*, i8** %index_pointer184, align 8, !dbg !1115
  %129 = load i8, i8* %128, align 1, !dbg !1116
  %conv185 = zext i8 %129 to i32, !dbg !1116
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 %123, i32 %conv182, i32 %conv185) #3, !dbg !1117
  br label %sw.epilog199, !dbg !1118

sw.bb186:                                         ; preds = %if.else168
  %130 = load i32, i32* %value, align 4, !dbg !1119
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %130) #3, !dbg !1120
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1121
  %reference187 = bitcast %union.acpi_operand_object* %131 to %struct.acpi_object_reference*, !dbg !1123
  %where = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference187, i32 0, i32 10, !dbg !1124
  %132 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where, align 8, !dbg !1124
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %132, align 8, !dbg !1125
  %tobool188 = icmp ne %union.acpi_operand_object* %133, null, !dbg !1126
  br i1 %tobool188, label %if.else190, label %if.then189, !dbg !1127

if.then189:                                       ; preds = %sw.bb186
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0)) #3, !dbg !1128
  br label %if.end194, !dbg !1130

if.else190:                                       ; preds = %sw.bb186
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1131
  %reference191 = bitcast %union.acpi_operand_object* %134 to %struct.acpi_object_reference*, !dbg !1133
  %where192 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference191, i32 0, i32 10, !dbg !1134
  %135 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %where192, align 8, !dbg !1134
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %135, align 8, !dbg !1135
  %137 = load i32, i32* %level.addr, align 4, !dbg !1136
  %add193 = add i32 %137, 4, !dbg !1137
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %136, i32 %add193, i32 0) #3, !dbg !1138
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then189
  br label %sw.epilog199, !dbg !1139

sw.default195:                                    ; preds = %if.else168
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object_desc, align 8, !dbg !1140
  %common196 = bitcast %union.acpi_operand_object* %138 to %struct.acpi_object_common*, !dbg !1141
  %type197 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common196, i32 0, i32 2, !dbg !1142
  %139 = load i8, i8* %type197, align 1, !dbg !1142
  %conv198 = zext i8 %139 to i32, !dbg !1140
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 %conv198) #3, !dbg !1143
  br label %sw.epilog199, !dbg !1144

sw.epilog199:                                     ; preds = %sw.default195, %if.end194, %sw.bb179, %sw.bb176
  br label %if.end200

if.end200:                                        ; preds = %sw.epilog199, %if.then164
  br label %if.end201, !dbg !1145

if.end201:                                        ; preds = %if.end200, %if.else152
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %if.end151
  br label %sw.epilog204, !dbg !1146

sw.default203:                                    ; preds = %if.end75
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1147
  call void (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), %union.acpi_operand_object* %140) #3, !dbg !1148
  br label %sw.epilog204, !dbg !1149

sw.epilog204:                                     ; preds = %sw.default203, %if.end202, %for.end, %sw.bb103, %cond.end, %if.end92
  br label %return, !dbg !1150

return:                                           ; preds = %sw.epilog204, %sw.bb119, %if.else74, %if.then70, %if.then62, %if.then38, %if.then18, %if.then
  ret void, !dbg !1151
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_os_printf(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_os_get_timer() #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_internal_object(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_dump_buffer(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_reference_name(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!790, !791, !792, !793}
!llvm.ident = !{!794}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/exdebug.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !12, !62, !79, !47, !26}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !7)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!7 = !{!8, !19, !788, !789}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !5, file: !6, line: 433, baseType: !9, size: 128)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !9, file: !6, line: 428, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !9, file: !6, line: 429, baseType: !14, size: 8, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !5, file: !6, line: 434, baseType: !20, size: 576)
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !21)
!21 = !{!22, !34, !50, !65, !102, !116, !125, !439, !456, !471, !484, !562, !574, !588, !598, !616, !638, !657, !676, !695, !708, !734, !751, !764, !778, !787}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !20, file: !6, line: 368, baseType: !23, size: 128)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !24)
!24 = !{!25, !27, !28, !29, !33}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !23, file: !6, line: 74, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !23, file: !6, line: 74, baseType: !14, size: 8, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !23, file: !6, line: 74, baseType: !14, size: 8, offset: 72)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !23, file: !6, line: 74, baseType: !30, size: 16, offset: 80)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !32)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !6, line: 74, baseType: !14, size: 8, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !20, file: !6, line: 369, baseType: !35, size: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !35, file: !6, line: 77, baseType: !26, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !35, file: !6, line: 77, baseType: !14, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !6, line: 77, baseType: !14, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !35, file: !6, line: 77, baseType: !30, size: 16, offset: 80)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !6, line: 77, baseType: !14, size: 8, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !35, file: !6, line: 77, baseType: !43, size: 24, offset: 104)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 3)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !35, file: !6, line: 78, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !20, file: !6, line: 370, baseType: !51, size: 256)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !61}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !6, line: 94, baseType: !26, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !6, line: 94, baseType: !14, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !6, line: 94, baseType: !14, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !6, line: 94, baseType: !30, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !6, line: 94, baseType: !14, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !51, file: !6, line: 94, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !6, line: 94, baseType: !62, size: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !64)
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !20, file: !6, line: 371, baseType: !66, size: 384)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !75, !76, !77, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !6, line: 98, baseType: !26, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !6, line: 98, baseType: !14, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !6, line: 98, baseType: !14, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !6, line: 98, baseType: !30, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !6, line: 98, baseType: !14, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !6, line: 98, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !6, line: 98, baseType: !62, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !66, file: !6, line: 99, baseType: !62, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !66, file: !6, line: 100, baseType: !74, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !6, line: 101, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !81, line: 133, size: 384, elements: !82)
!81 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !96, !97, !98, !99}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !80, file: !81, line: 134, baseType: !26, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !81, line: 135, baseType: !14, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !81, line: 136, baseType: !14, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !81, line: 137, baseType: !30, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !81, line: 138, baseType: !88, size: 32, offset: 96)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !89, line: 327, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !88, file: !89, line: 328, baseType: !62, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !88, file: !89, line: 329, baseType: !93, size: 32)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !81, line: 139, baseType: !79, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !80, file: !81, line: 140, baseType: !79, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !80, file: !81, line: 141, baseType: !79, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !80, file: !81, line: 142, baseType: !100, size: 16, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !101, line: 445, baseType: !30)
!101 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !20, file: !6, line: 372, baseType: !103, size: 384)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !113, !114, !115}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !6, line: 105, baseType: !26, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !6, line: 105, baseType: !14, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !6, line: 105, baseType: !14, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !6, line: 105, baseType: !30, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !6, line: 105, baseType: !14, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !6, line: 105, baseType: !79, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !103, file: !6, line: 106, baseType: !112, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !6, line: 107, baseType: !74, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !6, line: 108, baseType: !62, size: 32, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !103, file: !6, line: 109, baseType: !62, size: 32, offset: 352)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !20, file: !6, line: 373, baseType: !117, size: 192)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !6, line: 119, baseType: !26, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !6, line: 119, baseType: !14, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !6, line: 119, baseType: !14, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !6, line: 119, baseType: !30, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !6, line: 119, baseType: !14, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !117, file: !6, line: 119, baseType: !12, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !20, file: !6, line: 374, baseType: !126, size: 448)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !436, !437, !438}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !6, line: 144, baseType: !26, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !6, line: 144, baseType: !14, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !6, line: 144, baseType: !14, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !6, line: 144, baseType: !30, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !6, line: 144, baseType: !14, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !126, file: !6, line: 144, baseType: !14, size: 8, offset: 104)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !126, file: !6, line: 145, baseType: !14, size: 8, offset: 112)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !126, file: !6, line: 146, baseType: !14, size: 8, offset: 120)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !126, file: !6, line: 147, baseType: !26, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !6, line: 148, baseType: !26, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !6, line: 149, baseType: !74, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !126, file: !6, line: 153, baseType: !140, size: 64, offset: 320)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !6, line: 150, size: 64, elements: !141)
!141 = !{!142, !435}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !140, file: !6, line: 151, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !81, line: 248, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !101, line: 421, baseType: !62)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !150, line: 37, size: 9024, elements: !151)
!150 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !381, !382, !383, !384, !385, !389, !391, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !418, !419, !420, !421, !422, !423, !424, !425, !427, !433}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 38, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !149, file: !150, line: 39, baseType: !14, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !149, file: !150, line: 40, baseType: !14, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !149, file: !150, line: 41, baseType: !30, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !149, file: !150, line: 42, baseType: !14, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !149, file: !150, line: 43, baseType: !14, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !149, file: !150, line: 44, baseType: !14, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !149, file: !150, line: 45, baseType: !100, size: 16, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !149, file: !150, line: 46, baseType: !14, size: 8, offset: 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !149, file: !150, line: 47, baseType: !14, size: 8, offset: 152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !149, file: !150, line: 48, baseType: !14, size: 8, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !149, file: !150, line: 49, baseType: !14, size: 8, offset: 168)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !149, file: !150, line: 50, baseType: !14, size: 8, offset: 176)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !149, file: !150, line: 51, baseType: !14, size: 8, offset: 184)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !149, file: !150, line: 52, baseType: !14, size: 8, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !149, file: !150, line: 53, baseType: !14, size: 8, offset: 200)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !149, file: !150, line: 54, baseType: !74, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !149, file: !150, line: 55, baseType: !62, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !149, file: !150, line: 56, baseType: !62, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !149, file: !150, line: 57, baseType: !62, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !149, file: !150, line: 58, baseType: !62, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !149, file: !150, line: 60, baseType: !174, size: 640, offset: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !81, line: 893, size: 640, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !262, !263, !379, !380}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !174, file: !81, line: 894, baseType: !74, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !174, file: !81, line: 895, baseType: !74, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !174, file: !81, line: 896, baseType: !74, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !174, file: !81, line: 897, baseType: !74, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !174, file: !81, line: 898, baseType: !74, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !174, file: !81, line: 899, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !81, line: 875, size: 1600, elements: !184)
!184 = !{!185, !205, !221}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !183, file: !81, line: 876, baseType: !186, size: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !81, line: 828, size: 448, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !186, file: !81, line: 829, baseType: !182, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !81, line: 829, baseType: !14, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !81, line: 829, baseType: !14, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !186, file: !81, line: 829, baseType: !30, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !81, line: 829, baseType: !74, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !81, line: 829, baseType: !182, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !81, line: 829, baseType: !79, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !186, file: !81, line: 829, baseType: !196, size: 64, offset: 320)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !81, line: 716, size: 64, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !196, file: !81, line: 717, baseType: !47, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !196, file: !81, line: 718, baseType: !62, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !196, file: !81, line: 719, baseType: !59, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !196, file: !81, line: 720, baseType: !74, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !81, line: 721, baseType: !59, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !196, file: !81, line: 722, baseType: !182, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !186, file: !81, line: 829, baseType: !14, size: 8, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !183, file: !81, line: 877, baseType: !206, size: 640)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !81, line: 835, size: 640, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !81, line: 836, baseType: !182, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !81, line: 836, baseType: !14, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !81, line: 836, baseType: !14, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !81, line: 836, baseType: !30, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !81, line: 836, baseType: !74, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !81, line: 836, baseType: !182, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !81, line: 836, baseType: !79, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !81, line: 836, baseType: !196, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !81, line: 836, baseType: !14, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !206, file: !81, line: 836, baseType: !59, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !206, file: !81, line: 837, baseType: !74, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !206, file: !81, line: 838, baseType: !62, size: 32, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !81, line: 839, baseType: !62, size: 32, offset: 608)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !183, file: !81, line: 878, baseType: !222, size: 1600)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !81, line: 846, size: 1600, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !81, line: 847, baseType: !182, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !81, line: 847, baseType: !14, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !81, line: 847, baseType: !14, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !81, line: 847, baseType: !30, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !81, line: 847, baseType: !74, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !81, line: 847, baseType: !182, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !81, line: 847, baseType: !79, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !81, line: 847, baseType: !196, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !81, line: 847, baseType: !14, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !222, file: !81, line: 847, baseType: !182, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !222, file: !81, line: 848, baseType: !182, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !222, file: !81, line: 849, baseType: !59, size: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !222, file: !81, line: 850, baseType: !14, size: 8, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !222, file: !81, line: 851, baseType: !59, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !222, file: !81, line: 852, baseType: !59, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !222, file: !81, line: 853, baseType: !59, size: 64, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !222, file: !81, line: 854, baseType: !93, size: 32, offset: 896)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !222, file: !81, line: 855, baseType: !62, size: 32, offset: 928)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !222, file: !81, line: 856, baseType: !62, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !222, file: !81, line: 857, baseType: !62, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !222, file: !81, line: 858, baseType: !62, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !222, file: !81, line: 859, baseType: !62, size: 32, offset: 1056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !222, file: !81, line: 860, baseType: !62, size: 32, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !222, file: !81, line: 861, baseType: !62, size: 32, offset: 1120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !222, file: !81, line: 862, baseType: !62, size: 32, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !222, file: !81, line: 863, baseType: !62, size: 32, offset: 1184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !222, file: !81, line: 864, baseType: !62, size: 32, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !222, file: !81, line: 865, baseType: !62, size: 32, offset: 1248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !222, file: !81, line: 866, baseType: !62, size: 32, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !222, file: !81, line: 867, baseType: !62, size: 32, offset: 1312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !222, file: !81, line: 868, baseType: !30, size: 16, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !222, file: !81, line: 869, baseType: !14, size: 8, offset: 1360)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !222, file: !81, line: 870, baseType: !14, size: 8, offset: 1368)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !222, file: !81, line: 871, baseType: !14, size: 8, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !222, file: !81, line: 872, baseType: !259, size: 160, offset: 1384)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !174, file: !81, line: 900, baseType: !79, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !174, file: !81, line: 901, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !81, line: 663, size: 640, elements: !266)
!266 = !{!267, !275, !288, !297, !306, !319, !333, !345, !357}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !81, line: 664, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !81, line: 567, size: 128, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !81, line: 568, baseType: !12, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !81, line: 568, baseType: !14, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !81, line: 568, baseType: !14, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !81, line: 568, baseType: !30, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !81, line: 568, baseType: !30, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !265, file: !81, line: 665, baseType: !276, size: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !81, line: 593, size: 384, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !81, line: 594, baseType: !12, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !81, line: 594, baseType: !14, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !81, line: 594, baseType: !14, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !81, line: 594, baseType: !30, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !81, line: 594, baseType: !30, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !276, file: !81, line: 594, baseType: !30, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !276, file: !81, line: 595, baseType: !182, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !276, file: !81, line: 596, baseType: !74, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !276, file: !81, line: 597, baseType: !74, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !276, file: !81, line: 598, baseType: !47, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !265, file: !81, line: 666, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !81, line: 573, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !81, line: 574, baseType: !12, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !81, line: 574, baseType: !14, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !81, line: 574, baseType: !14, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !81, line: 574, baseType: !30, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !81, line: 574, baseType: !30, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !289, file: !81, line: 574, baseType: !26, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !265, file: !81, line: 667, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !81, line: 604, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !81, line: 605, baseType: !12, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !81, line: 605, baseType: !14, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !81, line: 605, baseType: !14, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !81, line: 605, baseType: !30, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !81, line: 605, baseType: !30, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !81, line: 605, baseType: !79, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !265, file: !81, line: 668, baseType: !307, size: 448)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !81, line: 608, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !81, line: 609, baseType: !12, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !81, line: 609, baseType: !14, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !81, line: 609, baseType: !14, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !81, line: 609, baseType: !30, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !81, line: 609, baseType: !30, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !307, file: !81, line: 609, baseType: !62, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !307, file: !81, line: 610, baseType: !182, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !307, file: !81, line: 611, baseType: !74, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !307, file: !81, line: 612, baseType: !74, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !307, file: !81, line: 613, baseType: !62, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !265, file: !81, line: 669, baseType: !320, size: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !81, line: 580, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !81, line: 581, baseType: !12, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !81, line: 581, baseType: !14, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !81, line: 581, baseType: !14, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !81, line: 581, baseType: !30, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !81, line: 581, baseType: !30, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !320, file: !81, line: 581, baseType: !62, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !320, file: !81, line: 582, baseType: !26, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !320, file: !81, line: 583, baseType: !26, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !320, file: !81, line: 584, baseType: !148, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !320, file: !81, line: 585, baseType: !12, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !320, file: !81, line: 586, baseType: !62, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !81, line: 670, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !81, line: 620, size: 320, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !81, line: 621, baseType: !12, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !81, line: 621, baseType: !14, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !81, line: 621, baseType: !14, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !81, line: 621, baseType: !30, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !81, line: 621, baseType: !30, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !334, file: !81, line: 621, baseType: !14, size: 8, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !334, file: !81, line: 622, baseType: !148, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !334, file: !81, line: 623, baseType: !26, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !334, file: !81, line: 624, baseType: !47, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !81, line: 671, baseType: !346, size: 640)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !81, line: 631, size: 640, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !81, line: 632, baseType: !12, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !81, line: 632, baseType: !14, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !81, line: 632, baseType: !14, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !81, line: 632, baseType: !30, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !81, line: 632, baseType: !30, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !346, file: !81, line: 633, baseType: !354, size: 512, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !265, file: !81, line: 672, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !81, line: 654, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !81, line: 655, baseType: !12, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !81, line: 655, baseType: !14, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !81, line: 655, baseType: !14, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !81, line: 655, baseType: !30, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !81, line: 655, baseType: !30, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !358, file: !81, line: 655, baseType: !14, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !81, line: 656, baseType: !79, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !358, file: !81, line: 657, baseType: !26, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !81, line: 658, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !81, line: 645, size: 128, elements: !371)
!371 = !{!372, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !370, file: !81, line: 646, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !101, line: 1052, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !62, !12}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !101, line: 424, baseType: !12)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !81, line: 647, baseType: !12, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !174, file: !81, line: 902, baseType: !182, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !174, file: !81, line: 903, baseType: !62, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !149, file: !150, line: 61, baseType: !62, size: 32, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !149, file: !150, line: 62, baseType: !62, size: 32, offset: 1120)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !149, file: !150, line: 63, baseType: !30, size: 16, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !149, file: !150, line: 64, baseType: !14, size: 8, offset: 1168)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !149, file: !150, line: 66, baseType: !386, size: 2688, offset: 1216)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2688, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 7)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !149, file: !150, line: 67, baseType: !390, size: 3072, offset: 3904)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 3072, elements: !355)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !149, file: !150, line: 68, baseType: !392, size: 576, offset: 6976)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 576, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 9)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !149, file: !150, line: 69, baseType: !112, size: 64, offset: 7552)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !149, file: !150, line: 71, baseType: !74, size: 64, offset: 7616)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !149, file: !150, line: 72, baseType: !112, size: 64, offset: 7680)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !149, file: !150, line: 73, baseType: !264, size: 64, offset: 7744)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !149, file: !150, line: 74, baseType: !79, size: 64, offset: 7808)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !149, file: !150, line: 75, baseType: !26, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !149, file: !150, line: 76, baseType: !79, size: 64, offset: 7936)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !149, file: !150, line: 77, baseType: !182, size: 64, offset: 8000)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !149, file: !150, line: 78, baseType: !26, size: 64, offset: 8064)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !149, file: !150, line: 79, baseType: !79, size: 64, offset: 8128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !149, file: !150, line: 80, baseType: !59, size: 64, offset: 8192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !149, file: !150, line: 81, baseType: !182, size: 64, offset: 8256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !149, file: !150, line: 82, baseType: !408, size: 64, offset: 8320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !81, line: 702, size: 128, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !410, file: !81, line: 706, baseType: !62, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !410, file: !81, line: 707, baseType: !62, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !81, line: 708, baseType: !30, size: 16, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !410, file: !81, line: 709, baseType: !14, size: 8, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !410, file: !81, line: 710, baseType: !14, size: 8, offset: 88)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !81, line: 711, baseType: !14, size: 8, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !149, file: !150, line: 83, baseType: !182, size: 64, offset: 8384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !149, file: !150, line: 84, baseType: !26, size: 64, offset: 8448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !149, file: !150, line: 85, baseType: !264, size: 64, offset: 8512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !149, file: !150, line: 86, baseType: !26, size: 64, offset: 8576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !149, file: !150, line: 87, baseType: !264, size: 64, offset: 8640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !149, file: !150, line: 88, baseType: !182, size: 64, offset: 8704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !149, file: !150, line: 89, baseType: !182, size: 64, offset: 8768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !149, file: !150, line: 90, baseType: !426, size: 64, offset: 8832)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !149, file: !150, line: 91, baseType: !428, size: 64, offset: 8896)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !81, line: 637, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!147, !148, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !149, file: !150, line: 92, baseType: !434, size: 64, offset: 8960)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !81, line: 641, baseType: !144)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !140, file: !6, line: 152, baseType: !26, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !6, line: 155, baseType: !62, size: 32, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !126, file: !6, line: 156, baseType: !100, size: 16, offset: 416)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !126, file: !6, line: 157, baseType: !14, size: 8, offset: 432)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !20, file: !6, line: 375, baseType: !440, size: 576)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !6, line: 123, baseType: !26, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !6, line: 123, baseType: !14, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !6, line: 123, baseType: !14, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !6, line: 123, baseType: !30, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !6, line: 123, baseType: !14, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !440, file: !6, line: 123, baseType: !14, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !440, file: !6, line: 124, baseType: !30, size: 16, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !440, file: !6, line: 125, baseType: !12, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !440, file: !6, line: 126, baseType: !47, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !440, file: !6, line: 127, baseType: !426, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !440, file: !6, line: 128, baseType: !26, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !6, line: 129, baseType: !26, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !6, line: 130, baseType: !79, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !440, file: !6, line: 131, baseType: !14, size: 8, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !20, file: !6, line: 376, baseType: !457, size: 448)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !470}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !6, line: 135, baseType: !26, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !6, line: 135, baseType: !14, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !6, line: 135, baseType: !14, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !6, line: 135, baseType: !30, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !6, line: 135, baseType: !14, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !457, file: !6, line: 135, baseType: !14, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !6, line: 136, baseType: !79, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !6, line: 137, baseType: !26, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !6, line: 138, baseType: !26, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !457, file: !6, line: 139, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !101, line: 129, baseType: !47)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !457, file: !6, line: 140, baseType: !62, size: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !20, file: !6, line: 377, baseType: !472, size: 320)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !6, line: 185, baseType: !26, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !6, line: 185, baseType: !14, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !6, line: 185, baseType: !14, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !6, line: 185, baseType: !30, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !6, line: 185, baseType: !14, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !6, line: 185, baseType: !480, size: 128, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !6, line: 185, baseType: !26, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !20, file: !6, line: 378, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 188, baseType: !26, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 188, baseType: !14, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 188, baseType: !14, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 188, baseType: !30, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 188, baseType: !14, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 189, baseType: !480, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 189, baseType: !26, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !485, file: !6, line: 189, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !81, line: 480, size: 576, elements: !497)
!497 = !{!498, !499, !500, !501, !509, !524, !556, !557, !558, !559, !560, !561}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !81, line: 481, baseType: !79, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !81, line: 482, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !81, line: 483, baseType: !495, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !496, file: !81, line: 484, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !81, line: 497, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !81, line: 498, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !81, line: 499, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !503, file: !81, line: 500, baseType: !495, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !503, file: !81, line: 501, baseType: !62, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !496, file: !81, line: 485, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !81, line: 466, size: 320, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !511, file: !81, line: 467, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !81, line: 459, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !81, line: 460, baseType: !14, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !81, line: 461, baseType: !47, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !511, file: !81, line: 468, baseType: !514, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !511, file: !81, line: 469, baseType: !30, size: 16, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !511, file: !81, line: 470, baseType: !14, size: 8, offset: 272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !511, file: !81, line: 471, baseType: !14, size: 8, offset: 280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !511, file: !81, line: 472, baseType: !14, size: 8, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !511, file: !81, line: 473, baseType: !14, size: 8, offset: 296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !496, file: !81, line: 486, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !81, line: 448, size: 192, elements: !527)
!527 = !{!528, !551, !552, !553, !554, !555}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !526, file: !81, line: 449, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !81, line: 438, size: 64, elements: !530)
!530 = !{!531, !532, !545}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !81, line: 439, baseType: !79, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !81, line: 440, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !81, line: 419, size: 256, elements: !535)
!535 = !{!536, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !81, line: 420, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !101, line: 1049, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!62, !377, !62, !12}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !81, line: 421, baseType: !12, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !81, line: 422, baseType: !79, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !534, file: !81, line: 423, baseType: !14, size: 8, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !534, file: !81, line: 424, baseType: !14, size: 8, offset: 200)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !81, line: 441, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !81, line: 429, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !547, file: !81, line: 430, baseType: !79, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !81, line: 431, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !81, line: 450, baseType: !510, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !81, line: 451, baseType: !14, size: 8, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !526, file: !81, line: 452, baseType: !14, size: 8, offset: 136)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !526, file: !81, line: 453, baseType: !14, size: 8, offset: 144)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !526, file: !81, line: 454, baseType: !14, size: 8, offset: 152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !81, line: 487, baseType: !47, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !496, file: !81, line: 488, baseType: !62, size: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !496, file: !81, line: 489, baseType: !30, size: 16, offset: 480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !496, file: !81, line: 490, baseType: !30, size: 16, offset: 496)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !81, line: 491, baseType: !14, size: 8, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !496, file: !81, line: 492, baseType: !14, size: 8, offset: 520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !20, file: !6, line: 379, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !6, line: 193, baseType: !26, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !6, line: 193, baseType: !14, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !6, line: 193, baseType: !14, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !6, line: 193, baseType: !30, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !6, line: 193, baseType: !14, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !6, line: 193, baseType: !480, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !6, line: 193, baseType: !26, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !563, file: !6, line: 193, baseType: !62, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !563, file: !6, line: 194, baseType: !62, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !20, file: !6, line: 380, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !6, line: 198, baseType: !26, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !6, line: 198, baseType: !14, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !6, line: 198, baseType: !14, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !6, line: 198, baseType: !30, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !6, line: 198, baseType: !14, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !575, file: !6, line: 200, baseType: !14, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !575, file: !6, line: 201, baseType: !14, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !6, line: 202, baseType: !480, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !6, line: 202, baseType: !26, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !575, file: !6, line: 202, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !101, line: 128, baseType: !47)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !20, file: !6, line: 381, baseType: !589, size: 320)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !6, line: 206, baseType: !26, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !6, line: 206, baseType: !14, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !6, line: 206, baseType: !14, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !6, line: 206, baseType: !30, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !6, line: 206, baseType: !14, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !6, line: 206, baseType: !480, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !6, line: 206, baseType: !26, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !20, file: !6, line: 382, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !6, line: 234, baseType: !26, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !6, line: 234, baseType: !30, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !6, line: 234, baseType: !79, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !6, line: 234, baseType: !62, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !6, line: 234, baseType: !62, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !6, line: 234, baseType: !62, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !6, line: 234, baseType: !14, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !6, line: 234, baseType: !26, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !20, file: !6, line: 383, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !6, line: 238, baseType: !26, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !6, line: 238, baseType: !30, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !6, line: 238, baseType: !79, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !6, line: 238, baseType: !62, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !6, line: 238, baseType: !62, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !6, line: 238, baseType: !62, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !6, line: 238, baseType: !14, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !617, file: !6, line: 238, baseType: !30, size: 16, offset: 304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !6, line: 239, baseType: !26, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !617, file: !6, line: 240, baseType: !74, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !617, file: !6, line: 241, baseType: !30, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !617, file: !6, line: 242, baseType: !74, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !20, file: !6, line: 384, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !6, line: 263, baseType: !26, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !6, line: 263, baseType: !30, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !6, line: 263, baseType: !79, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !6, line: 263, baseType: !62, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !6, line: 263, baseType: !62, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !6, line: 263, baseType: !62, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !639, file: !6, line: 263, baseType: !14, size: 8, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !639, file: !6, line: 264, baseType: !26, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !20, file: !6, line: 385, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !6, line: 246, baseType: !26, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !6, line: 246, baseType: !30, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !6, line: 246, baseType: !79, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !6, line: 246, baseType: !62, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !6, line: 246, baseType: !62, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !6, line: 246, baseType: !62, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !6, line: 246, baseType: !14, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !658, file: !6, line: 246, baseType: !26, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !658, file: !6, line: 247, baseType: !26, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !20, file: !6, line: 386, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !6, line: 251, baseType: !26, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !6, line: 251, baseType: !30, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !6, line: 251, baseType: !79, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !6, line: 251, baseType: !62, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !6, line: 251, baseType: !62, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !6, line: 251, baseType: !62, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !6, line: 251, baseType: !14, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !677, file: !6, line: 256, baseType: !26, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !677, file: !6, line: 257, baseType: !26, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !20, file: !6, line: 387, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !6, line: 274, baseType: !26, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !6, line: 274, baseType: !14, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !6, line: 274, baseType: !14, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !6, line: 274, baseType: !30, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !6, line: 274, baseType: !14, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !6, line: 274, baseType: !79, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !696, file: !6, line: 275, baseType: !62, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !6, line: 276, baseType: !373, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !6, line: 277, baseType: !12, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !6, line: 278, baseType: !480, size: 128, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !20, file: !6, line: 388, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !732, !733}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 282, baseType: !26, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 282, baseType: !14, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 282, baseType: !14, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 282, baseType: !30, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 282, baseType: !14, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !709, file: !6, line: 282, baseType: !14, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !709, file: !6, line: 283, baseType: !14, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 284, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !101, line: 1084, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!147, !62, !469, !62, !723, !12, !12}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 285, baseType: !79, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 286, baseType: !12, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !709, file: !6, line: 287, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !101, line: 1102, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!147, !377, !62, !12, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !709, file: !6, line: 288, baseType: !26, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 289, baseType: !26, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !20, file: !6, line: 389, baseType: !735, size: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !6, line: 308, baseType: !26, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !6, line: 308, baseType: !14, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !6, line: 308, baseType: !14, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !6, line: 308, baseType: !30, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !6, line: 308, baseType: !14, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !735, file: !6, line: 308, baseType: !14, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !735, file: !6, line: 309, baseType: !14, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !735, file: !6, line: 310, baseType: !14, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !735, file: !6, line: 311, baseType: !12, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !6, line: 312, baseType: !79, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !735, file: !6, line: 313, baseType: !112, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !735, file: !6, line: 314, baseType: !74, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !735, file: !6, line: 315, baseType: !74, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !6, line: 316, baseType: !62, size: 32, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !20, file: !6, line: 390, baseType: !752, size: 448)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !6, line: 341, baseType: !26, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !6, line: 341, baseType: !14, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !6, line: 341, baseType: !14, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !6, line: 341, baseType: !30, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !6, line: 341, baseType: !14, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !752, file: !6, line: 341, baseType: !79, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !752, file: !6, line: 342, baseType: !79, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !752, file: !6, line: 343, baseType: !12, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !752, file: !6, line: 344, baseType: !74, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !752, file: !6, line: 345, baseType: !62, size: 32, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !6, line: 391, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !6, line: 351, baseType: !26, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !6, line: 351, baseType: !14, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !6, line: 351, baseType: !14, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !6, line: 351, baseType: !30, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !6, line: 351, baseType: !14, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !765, file: !6, line: 351, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !101, line: 1055, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !377, !12}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !765, file: !6, line: 352, baseType: !12, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !20, file: !6, line: 392, baseType: !779, size: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 358, baseType: !26, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 358, baseType: !14, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 358, baseType: !14, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 358, baseType: !30, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 358, baseType: !14, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !6, line: 358, baseType: !26, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !20, file: !6, line: 399, baseType: !80, size: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5, file: !6, line: 435, baseType: !80, size: 384)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !5, file: !6, line: 436, baseType: !183, size: 1600)
!790 = !{i32 7, !"Dwarf Version", i32 4}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 2}
!793 = !{i32 1, !"Code Model", i32 2}
!794 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!795 = distinct !DISubprogram(name: "acpi_ex_do_debug_object", scope: !1, file: !1, line: 40, type: !796, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !26, !62, !62}
!798 = !DILocalVariable(name: "source_desc", arg: 1, scope: !795, file: !1, line: 40, type: !26)
!799 = !DILocation(line: 40, column: 52, scope: !795)
!800 = !DILocalVariable(name: "level", arg: 2, scope: !795, file: !1, line: 41, type: !62)
!801 = !DILocation(line: 41, column: 8, scope: !795)
!802 = !DILocalVariable(name: "index", arg: 3, scope: !795, file: !1, line: 41, type: !62)
!803 = !DILocation(line: 41, column: 19, scope: !795)
!804 = !DILocalVariable(name: "i", scope: !795, file: !1, line: 43, type: !62)
!805 = !DILocation(line: 43, column: 6, scope: !795)
!806 = !DILocalVariable(name: "timer", scope: !795, file: !1, line: 44, type: !62)
!807 = !DILocation(line: 44, column: 6, scope: !795)
!808 = !DILocalVariable(name: "object_desc", scope: !795, file: !1, line: 45, type: !26)
!809 = !DILocation(line: 45, column: 29, scope: !795)
!810 = !DILocalVariable(name: "value", scope: !795, file: !1, line: 46, type: !62)
!811 = !DILocation(line: 46, column: 6, scope: !795)
!812 = !DILocation(line: 52, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !795, file: !1, line: 52, column: 6)
!814 = !DILocation(line: 52, column: 40, scope: !813)
!815 = !DILocation(line: 53, column: 8, scope: !813)
!816 = !DILocation(line: 53, column: 23, scope: !813)
!817 = !DILocation(line: 52, column: 6, scope: !795)
!818 = !DILocation(line: 54, column: 3, scope: !819)
!819 = distinct !DILexicalBlock(scope: !813, file: !1, line: 53, column: 48)
!820 = !DILocation(line: 59, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !795, file: !1, line: 59, column: 6)
!822 = !DILocation(line: 59, column: 18, scope: !821)
!823 = !DILocation(line: 60, column: 7, scope: !821)
!824 = !DILocation(line: 60, column: 45, scope: !821)
!825 = !DILocation(line: 60, column: 72, scope: !821)
!826 = !DILocation(line: 61, column: 7, scope: !821)
!827 = !DILocation(line: 61, column: 20, scope: !821)
!828 = !DILocation(line: 61, column: 27, scope: !821)
!829 = !DILocation(line: 61, column: 32, scope: !821)
!830 = !DILocation(line: 59, column: 6, scope: !795)
!831 = !DILocation(line: 62, column: 8, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 62, column: 7)
!833 = distinct !DILexicalBlock(scope: !821, file: !1, line: 61, column: 54)
!834 = !DILocation(line: 62, column: 21, scope: !832)
!835 = !DILocation(line: 62, column: 28, scope: !832)
!836 = !DILocation(line: 62, column: 35, scope: !832)
!837 = !DILocation(line: 62, column: 41, scope: !832)
!838 = !DILocation(line: 63, column: 9, scope: !832)
!839 = !DILocation(line: 63, column: 22, scope: !832)
!840 = !DILocation(line: 63, column: 29, scope: !832)
!841 = !DILocation(line: 63, column: 8, scope: !832)
!842 = !DILocation(line: 63, column: 37, scope: !832)
!843 = !DILocation(line: 62, column: 7, scope: !833)
!844 = !DILocation(line: 64, column: 4, scope: !845)
!845 = distinct !DILexicalBlock(scope: !832, file: !1, line: 63, column: 47)
!846 = !DILocation(line: 65, column: 4, scope: !845)
!847 = !DILocation(line: 67, column: 2, scope: !833)
!848 = !DILocation(line: 73, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !795, file: !1, line: 73, column: 6)
!850 = !DILocation(line: 73, column: 15, scope: !849)
!851 = !DILocation(line: 73, column: 20, scope: !849)
!852 = !DILocation(line: 73, column: 23, scope: !849)
!853 = !DILocation(line: 73, column: 29, scope: !849)
!854 = !DILocation(line: 73, column: 6, scope: !795)
!855 = !DILocation(line: 74, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 74, column: 7)
!857 = distinct !DILexicalBlock(scope: !849, file: !1, line: 73, column: 36)
!858 = !DILocation(line: 74, column: 7, scope: !857)
!859 = !DILocation(line: 82, column: 18, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !1, line: 74, column: 37)
!861 = !DILocation(line: 82, column: 13, scope: !860)
!862 = !DILocation(line: 82, column: 38, scope: !860)
!863 = !DILocation(line: 82, column: 10, scope: !860)
!864 = !DILocation(line: 83, column: 10, scope: !860)
!865 = !DILocation(line: 85, column: 48, scope: !860)
!866 = !DILocation(line: 86, column: 12, scope: !860)
!867 = !DILocation(line: 85, column: 4, scope: !860)
!868 = !DILocation(line: 87, column: 3, scope: !860)
!869 = !DILocation(line: 88, column: 38, scope: !870)
!870 = distinct !DILexicalBlock(scope: !856, file: !1, line: 87, column: 10)
!871 = !DILocation(line: 88, column: 4, scope: !870)
!872 = !DILocation(line: 90, column: 2, scope: !857)
!873 = !DILocation(line: 94, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !795, file: !1, line: 94, column: 6)
!875 = !DILocation(line: 94, column: 12, scope: !874)
!876 = !DILocation(line: 94, column: 6, scope: !795)
!877 = !DILocation(line: 95, column: 29, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !1, line: 94, column: 17)
!879 = !DILocation(line: 95, column: 35, scope: !878)
!880 = !DILocation(line: 95, column: 3, scope: !878)
!881 = !DILocation(line: 96, column: 2, scope: !878)
!882 = !DILocation(line: 98, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !795, file: !1, line: 98, column: 6)
!884 = !DILocation(line: 98, column: 6, scope: !795)
!885 = !DILocation(line: 99, column: 3, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !1, line: 98, column: 20)
!887 = !DILocation(line: 100, column: 3, scope: !886)
!888 = !DILocation(line: 103, column: 6, scope: !889)
!889 = distinct !DILexicalBlock(scope: !795, file: !1, line: 103, column: 6)
!890 = !DILocation(line: 103, column: 44, scope: !889)
!891 = !DILocation(line: 103, column: 6, scope: !795)
!892 = !DILocation(line: 107, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 107, column: 7)
!894 = distinct !DILexicalBlock(scope: !889, file: !1, line: 103, column: 71)
!895 = !DILocation(line: 107, column: 21, scope: !893)
!896 = !DILocation(line: 107, column: 28, scope: !893)
!897 = !DILocation(line: 107, column: 33, scope: !893)
!898 = !DILocation(line: 107, column: 55, scope: !893)
!899 = !DILocation(line: 108, column: 8, scope: !893)
!900 = !DILocation(line: 108, column: 21, scope: !893)
!901 = !DILocation(line: 108, column: 28, scope: !893)
!902 = !DILocation(line: 108, column: 33, scope: !893)
!903 = !DILocation(line: 107, column: 7, scope: !894)
!904 = !DILocation(line: 111, column: 13, scope: !905)
!905 = distinct !DILexicalBlock(scope: !893, file: !1, line: 108, column: 55)
!906 = !DILocation(line: 110, column: 12, scope: !905)
!907 = !DILocation(line: 109, column: 4, scope: !905)
!908 = !DILocation(line: 112, column: 3, scope: !905)
!909 = !DILocation(line: 114, column: 38, scope: !910)
!910 = distinct !DILexicalBlock(scope: !894, file: !1, line: 114, column: 7)
!911 = !DILocation(line: 114, column: 8, scope: !910)
!912 = !DILocation(line: 114, column: 7, scope: !894)
!913 = !DILocation(line: 116, column: 12, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !1, line: 114, column: 52)
!915 = !DILocation(line: 115, column: 4, scope: !914)
!916 = !DILocation(line: 117, column: 4, scope: !914)
!917 = !DILocation(line: 119, column: 2, scope: !894)
!918 = !DILocation(line: 119, column: 13, scope: !919)
!919 = distinct !DILexicalBlock(scope: !889, file: !1, line: 119, column: 13)
!920 = !DILocation(line: 119, column: 51, scope: !919)
!921 = !DILocation(line: 119, column: 13, scope: !889)
!922 = !DILocation(line: 124, column: 13, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !1, line: 120, column: 28)
!924 = !DILocation(line: 124, column: 27, scope: !923)
!925 = !DILocation(line: 122, column: 33, scope: !923)
!926 = !DILocation(line: 122, column: 11, scope: !923)
!927 = !DILocation(line: 125, column: 11, scope: !923)
!928 = !DILocation(line: 121, column: 3, scope: !923)
!929 = !DILocation(line: 126, column: 3, scope: !923)
!930 = !DILocation(line: 128, column: 3, scope: !931)
!931 = distinct !DILexicalBlock(scope: !919, file: !1, line: 127, column: 9)
!932 = !DILocation(line: 133, column: 10, scope: !795)
!933 = !DILocation(line: 133, column: 23, scope: !795)
!934 = !DILocation(line: 133, column: 30, scope: !795)
!935 = !DILocation(line: 133, column: 2, scope: !795)
!936 = !DILocation(line: 138, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !1, line: 138, column: 7)
!938 = distinct !DILexicalBlock(scope: !795, file: !1, line: 133, column: 36)
!939 = !DILocation(line: 138, column: 35, scope: !937)
!940 = !DILocation(line: 138, column: 7, scope: !938)
!941 = !DILocation(line: 140, column: 17, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !1, line: 138, column: 41)
!943 = !DILocation(line: 140, column: 30, scope: !942)
!944 = !DILocation(line: 140, column: 38, scope: !942)
!945 = !DILocation(line: 140, column: 12, scope: !942)
!946 = !DILocation(line: 139, column: 4, scope: !942)
!947 = !DILocation(line: 141, column: 3, scope: !942)
!948 = !DILocation(line: 143, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !937, file: !1, line: 141, column: 10)
!950 = !DILocation(line: 142, column: 4, scope: !949)
!951 = !DILocation(line: 146, column: 3, scope: !938)
!952 = !DILocation(line: 150, column: 37, scope: !938)
!953 = !DILocation(line: 150, column: 50, scope: !938)
!954 = !DILocation(line: 150, column: 57, scope: !938)
!955 = !DILocation(line: 150, column: 3, scope: !938)
!956 = !DILocation(line: 151, column: 23, scope: !938)
!957 = !DILocation(line: 151, column: 36, scope: !938)
!958 = !DILocation(line: 151, column: 43, scope: !938)
!959 = !DILocation(line: 152, column: 10, scope: !938)
!960 = !DILocation(line: 152, column: 23, scope: !938)
!961 = !DILocation(line: 152, column: 30, scope: !938)
!962 = !DILocation(line: 152, column: 37, scope: !938)
!963 = !DILocation(line: 152, column: 9, scope: !938)
!964 = !DILocation(line: 153, column: 9, scope: !938)
!965 = !DILocation(line: 153, column: 22, scope: !938)
!966 = !DILocation(line: 153, column: 29, scope: !938)
!967 = !DILocation(line: 151, column: 3, scope: !938)
!968 = !DILocation(line: 155, column: 3, scope: !938)
!969 = !DILocation(line: 159, column: 30, scope: !938)
!970 = !DILocation(line: 159, column: 43, scope: !938)
!971 = !DILocation(line: 159, column: 50, scope: !938)
!972 = !DILocation(line: 159, column: 3, scope: !938)
!973 = !DILocation(line: 160, column: 3, scope: !938)
!974 = !DILocation(line: 165, column: 11, scope: !938)
!975 = !DILocation(line: 165, column: 24, scope: !938)
!976 = !DILocation(line: 165, column: 32, scope: !938)
!977 = !DILocation(line: 164, column: 3, scope: !938)
!978 = !DILocation(line: 169, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !938, file: !1, line: 169, column: 3)
!980 = !DILocation(line: 169, column: 8, scope: !979)
!981 = !DILocation(line: 169, column: 15, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !1, line: 169, column: 3)
!983 = !DILocation(line: 169, column: 19, scope: !982)
!984 = !DILocation(line: 169, column: 32, scope: !982)
!985 = !DILocation(line: 169, column: 40, scope: !982)
!986 = !DILocation(line: 169, column: 17, scope: !982)
!987 = !DILocation(line: 169, column: 3, scope: !979)
!988 = !DILocation(line: 170, column: 28, scope: !989)
!989 = distinct !DILexicalBlock(scope: !982, file: !1, line: 169, column: 52)
!990 = !DILocation(line: 170, column: 41, scope: !989)
!991 = !DILocation(line: 171, column: 7, scope: !989)
!992 = !DILocation(line: 171, column: 16, scope: !989)
!993 = !DILocation(line: 171, column: 20, scope: !989)
!994 = !DILocation(line: 171, column: 26, scope: !989)
!995 = !DILocation(line: 171, column: 31, scope: !989)
!996 = !DILocation(line: 171, column: 33, scope: !989)
!997 = !DILocation(line: 170, column: 4, scope: !989)
!998 = !DILocation(line: 172, column: 3, scope: !989)
!999 = !DILocation(line: 169, column: 48, scope: !982)
!1000 = !DILocation(line: 169, column: 3, scope: !982)
!1001 = distinct !{!1001, !987, !1002}
!1002 = !DILocation(line: 172, column: 3, scope: !979)
!1003 = !DILocation(line: 173, column: 3, scope: !938)
!1004 = !DILocation(line: 178, column: 38, scope: !938)
!1005 = !DILocation(line: 178, column: 11, scope: !938)
!1006 = !DILocation(line: 177, column: 3, scope: !938)
!1007 = !DILocation(line: 182, column: 11, scope: !938)
!1008 = !DILocation(line: 182, column: 24, scope: !938)
!1009 = !DILocation(line: 182, column: 34, scope: !938)
!1010 = !DILocation(line: 182, column: 3, scope: !938)
!1011 = !DILocation(line: 185, column: 29, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !938, file: !1, line: 182, column: 41)
!1013 = !DILocation(line: 185, column: 42, scope: !1012)
!1014 = !DILocation(line: 185, column: 52, scope: !1012)
!1015 = !DILocation(line: 185, column: 4, scope: !1012)
!1016 = !DILocation(line: 186, column: 4, scope: !1012)
!1017 = !DILocation(line: 193, column: 12, scope: !1012)
!1018 = !DILocation(line: 193, column: 25, scope: !1012)
!1019 = !DILocation(line: 193, column: 35, scope: !1012)
!1020 = !DILocation(line: 192, column: 4, scope: !1012)
!1021 = !DILocation(line: 194, column: 4, scope: !1012)
!1022 = !DILocation(line: 198, column: 4, scope: !1012)
!1023 = !DILocation(line: 201, column: 3, scope: !938)
!1024 = !DILocation(line: 205, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !938, file: !1, line: 205, column: 7)
!1026 = !DILocation(line: 205, column: 20, scope: !1025)
!1027 = !DILocation(line: 205, column: 30, scope: !1025)
!1028 = !DILocation(line: 205, column: 7, scope: !938)
!1029 = !DILocation(line: 206, column: 8, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 206, column: 8)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 205, column: 36)
!1032 = !DILocation(line: 207, column: 38, scope: !1030)
!1033 = !DILocation(line: 206, column: 8, scope: !1031)
!1034 = !DILocation(line: 211, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 208, column: 30)
!1036 = !DILocation(line: 211, column: 23, scope: !1035)
!1037 = !DILocation(line: 211, column: 33, scope: !1035)
!1038 = !DILocation(line: 209, column: 5, scope: !1035)
!1039 = !DILocation(line: 212, column: 4, scope: !1035)
!1040 = !DILocation(line: 214, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 212, column: 11)
!1042 = !DILocation(line: 214, column: 26, scope: !1041)
!1043 = !DILocation(line: 214, column: 36, scope: !1041)
!1044 = !DILocation(line: 215, column: 14, scope: !1041)
!1045 = !DILocation(line: 215, column: 27, scope: !1041)
!1046 = !DILocation(line: 215, column: 37, scope: !1041)
!1047 = !DILocation(line: 216, column: 13, scope: !1041)
!1048 = !DILocation(line: 216, column: 18, scope: !1041)
!1049 = !DILocation(line: 215, column: 13, scope: !1041)
!1050 = !DILocation(line: 213, column: 5, scope: !1041)
!1051 = !DILocation(line: 218, column: 14, scope: !1041)
!1052 = !DILocation(line: 218, column: 27, scope: !1041)
!1053 = !DILocation(line: 218, column: 37, scope: !1041)
!1054 = !DILocation(line: 218, column: 44, scope: !1041)
!1055 = !DILocation(line: 218, column: 13, scope: !1041)
!1056 = !DILocation(line: 218, column: 5, scope: !1041)
!1057 = !DILocation(line: 223, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 218, column: 50)
!1059 = !DILocation(line: 224, column: 6, scope: !1058)
!1060 = !DILocation(line: 227, column: 6, scope: !1058)
!1061 = !DILocation(line: 228, column: 6, scope: !1058)
!1062 = !DILocation(line: 232, column: 31, scope: !1058)
!1063 = !DILocation(line: 233, column: 10, scope: !1058)
!1064 = !DILocation(line: 234, column: 10, scope: !1058)
!1065 = !DILocation(line: 234, column: 17, scope: !1058)
!1066 = !DILocation(line: 235, column: 9, scope: !1058)
!1067 = !DILocation(line: 235, column: 15, scope: !1058)
!1068 = !DILocation(line: 232, column: 6, scope: !1058)
!1069 = !DILocation(line: 236, column: 6, scope: !1058)
!1070 = !DILocation(line: 239, column: 3, scope: !1031)
!1071 = !DILocation(line: 239, column: 14, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 239, column: 14)
!1073 = !DILocation(line: 239, column: 27, scope: !1072)
!1074 = !DILocation(line: 239, column: 37, scope: !1072)
!1075 = !DILocation(line: 239, column: 14, scope: !1025)
!1076 = !DILocation(line: 240, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 240, column: 8)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 239, column: 45)
!1079 = !DILocation(line: 241, column: 40, scope: !1077)
!1080 = !DILocation(line: 240, column: 8, scope: !1078)
!1081 = !DILocation(line: 246, column: 29, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 242, column: 30)
!1083 = !DILocation(line: 250, column: 18, scope: !1082)
!1084 = !DILocation(line: 250, column: 24, scope: !1082)
!1085 = !DILocation(line: 246, column: 5, scope: !1082)
!1086 = !DILocation(line: 251, column: 4, scope: !1082)
!1087 = !DILocation(line: 252, column: 19, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 251, column: 11)
!1089 = !DILocation(line: 252, column: 32, scope: !1088)
!1090 = !DILocation(line: 252, column: 42, scope: !1088)
!1091 = !DILocation(line: 252, column: 17, scope: !1088)
!1092 = !DILocation(line: 253, column: 13, scope: !1088)
!1093 = !DILocation(line: 253, column: 26, scope: !1088)
!1094 = !DILocation(line: 253, column: 36, scope: !1088)
!1095 = !DILocation(line: 253, column: 11, scope: !1088)
!1096 = !DILocation(line: 255, column: 13, scope: !1088)
!1097 = !DILocation(line: 255, column: 26, scope: !1088)
!1098 = !DILocation(line: 255, column: 33, scope: !1088)
!1099 = !DILocation(line: 255, column: 5, scope: !1088)
!1100 = !DILocation(line: 259, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 255, column: 39)
!1102 = !DILocation(line: 260, column: 15, scope: !1101)
!1103 = !DILocation(line: 260, column: 28, scope: !1101)
!1104 = !DILocation(line: 261, column: 14, scope: !1101)
!1105 = !DILocation(line: 260, column: 14, scope: !1101)
!1106 = !DILocation(line: 258, column: 6, scope: !1101)
!1107 = !DILocation(line: 262, column: 6, scope: !1101)
!1108 = !DILocation(line: 268, column: 11, scope: !1101)
!1109 = !DILocation(line: 269, column: 12, scope: !1101)
!1110 = !DILocation(line: 269, column: 25, scope: !1101)
!1111 = !DILocation(line: 270, column: 11, scope: !1101)
!1112 = !DILocation(line: 269, column: 11, scope: !1101)
!1113 = !DILocation(line: 271, column: 12, scope: !1101)
!1114 = !DILocation(line: 271, column: 25, scope: !1101)
!1115 = !DILocation(line: 272, column: 11, scope: !1101)
!1116 = !DILocation(line: 271, column: 11, scope: !1101)
!1117 = !DILocation(line: 266, column: 6, scope: !1101)
!1118 = !DILocation(line: 273, column: 6, scope: !1101)
!1119 = !DILocation(line: 277, column: 39, scope: !1101)
!1120 = !DILocation(line: 277, column: 6, scope: !1101)
!1121 = !DILocation(line: 278, column: 13, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 278, column: 10)
!1123 = !DILocation(line: 278, column: 26, scope: !1122)
!1124 = !DILocation(line: 278, column: 36, scope: !1122)
!1125 = !DILocation(line: 278, column: 12, scope: !1122)
!1126 = !DILocation(line: 278, column: 11, scope: !1122)
!1127 = !DILocation(line: 278, column: 10, scope: !1101)
!1128 = !DILocation(line: 279, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 278, column: 44)
!1130 = !DILocation(line: 281, column: 6, scope: !1129)
!1131 = !DILocation(line: 283, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 281, column: 13)
!1133 = !DILocation(line: 283, column: 26, scope: !1132)
!1134 = !DILocation(line: 284, column: 12, scope: !1132)
!1135 = !DILocation(line: 283, column: 12, scope: !1132)
!1136 = !DILocation(line: 284, column: 19, scope: !1132)
!1137 = !DILocation(line: 284, column: 25, scope: !1132)
!1138 = !DILocation(line: 282, column: 7, scope: !1132)
!1139 = !DILocation(line: 286, column: 6, scope: !1101)
!1140 = !DILocation(line: 292, column: 11, scope: !1101)
!1141 = !DILocation(line: 292, column: 24, scope: !1101)
!1142 = !DILocation(line: 292, column: 31, scope: !1101)
!1143 = !DILocation(line: 290, column: 6, scope: !1101)
!1144 = !DILocation(line: 293, column: 6, scope: !1101)
!1145 = !DILocation(line: 296, column: 3, scope: !1078)
!1146 = !DILocation(line: 297, column: 3, scope: !938)
!1147 = !DILocation(line: 301, column: 39, scope: !938)
!1148 = !DILocation(line: 301, column: 3, scope: !938)
!1149 = !DILocation(line: 302, column: 3, scope: !938)
!1150 = !DILocation(line: 306, column: 2, scope: !795)
!1151 = !DILocation(line: 307, column: 1, scope: !795)
