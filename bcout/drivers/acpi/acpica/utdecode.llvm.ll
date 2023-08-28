; ModuleID = '../bcout/drivers/acpi/acpica/utdecode.llvm.bc'
source_filename = "drivers/acpi/acpica/utdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@acpi_gbl_ns_properties = dso_local constant [31 x i8] c"\00\00\00\00\00\00\01\00\01\00\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\03\03\01\00\00\00", align 16, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"SystemMemory\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SystemIO\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PCI_Config\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"EmbeddedControl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SMBus\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SystemCMOS\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"PCIBARTarget\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"IPMI\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"GeneralPurposeIo\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"GenericSerialBus\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PCC\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"PlatformRtMechanism\00", align 1
@acpi_gbl_region_types = dso_local global [12 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)], align 16, !dbg !805
@.str.12 = private unnamed_addr constant [18 x i8] c"UserDefinedRegion\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DataTable\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"FunctionalFixedHW\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"InvalidSpaceId\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"InvalidEventID\00", align 1
@acpi_gbl_event_types = internal global [5 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0)], align 16, !dbg !812
@acpi_gbl_bad_type = internal constant [10 x i8] c"UNDEFINED\00", align 1, !dbg !817
@acpi_gbl_ns_type_names = internal global [31 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0)], align 16, !dbg !822
@.str.17 = private unnamed_addr constant [25 x i8] c"[NULL Object Descriptor]\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Invalid object\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"\22\\\22 \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"####\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"NULL OBJECT\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"Not a Descriptor\00", align 1
@acpi_gbl_desc_type_names = internal global [16 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0)], align 16, !dbg !827
@.str.24 = private unnamed_addr constant [12 x i8] c"NULL Object\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"Not an Operand object\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"Not a Reference object\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Unknown Reference class\00", align 1
@acpi_gbl_ref_class_names = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0)], align 16, !dbg !832
@.str.28 = private unnamed_addr constant [17 x i8] c"Invalid Mutex ID\00", align 1
@acpi_gbl_mutex_names = internal global [6 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0)], align 16, !dbg !835
@.str.29 = private unnamed_addr constant [9 x i8] c"PM_Timer\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"GlobalLock\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"PowerButton\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"SleepButton\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"RealTimeClock\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"Untyped\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"Buffer\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Package\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"FieldUnit\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"Event\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Mutex\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Region\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Power\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Thermal\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"BufferField\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"DdbHandle\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"DebugObject\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"RegionField\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"BankField\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"IndexField\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"Reference\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"Alias\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"MethodAlias\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Notify\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"AddrHandler\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"ResourceDesc\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"ResourceFld\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Scope\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"Extra\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"Cached Object\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"State-Generic\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"State-Update\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"State-Package\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"State-Control\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"State-RootParseScope\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"State-ParseScope\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"State-WalkScope\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"State-Result\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"State-Notify\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"State-Thread\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"Tree Walk State\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"Parse Tree Op\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"Operand Object\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"Namespace Node\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"Argument\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"RefOf\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"Named Object\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.86 = private unnamed_addr constant [21 x i8] c"ACPI_MTX_Interpreter\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"ACPI_MTX_Namespace\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Tables\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Events\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Caches\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Memory\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_region_name(i8 zeroext %space_id) #0 !dbg !847 {
entry:
  %retval = alloca i8*, align 8
  %space_id.addr = alloca i8, align 1
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !851, metadata !DIExpression()), !dbg !852
  %0 = load i8, i8* %space_id.addr, align 1, !dbg !853
  %conv = zext i8 %0 to i32, !dbg !853
  %cmp = icmp sge i32 %conv, 128, !dbg !855
  br i1 %cmp, label %if.then, label %if.else, !dbg !856

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8** %retval, align 8, !dbg !857
  br label %return, !dbg !857

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !859
  %conv2 = zext i8 %1 to i32, !dbg !859
  %cmp3 = icmp eq i32 %conv2, 126, !dbg !861
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !862

if.then5:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %retval, align 8, !dbg !863
  br label %return, !dbg !863

if.else6:                                         ; preds = %if.else
  %2 = load i8, i8* %space_id.addr, align 1, !dbg !865
  %conv7 = zext i8 %2 to i32, !dbg !865
  %cmp8 = icmp eq i32 %conv7, 127, !dbg !867
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !868

if.then10:                                        ; preds = %if.else6
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %retval, align 8, !dbg !869
  br label %return, !dbg !869

if.else11:                                        ; preds = %if.else6
  %3 = load i8, i8* %space_id.addr, align 1, !dbg !871
  %conv12 = zext i8 %3 to i32, !dbg !871
  %cmp13 = icmp sge i32 %conv12, 12, !dbg !873
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !874

if.then15:                                        ; preds = %if.else11
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8, !dbg !875
  br label %return, !dbg !875

if.end:                                           ; preds = %if.else11
  br label %if.end16

if.end16:                                         ; preds = %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %4 = load i8, i8* %space_id.addr, align 1, !dbg !877
  %idxprom = zext i8 %4 to i64, !dbg !878
  %arrayidx = getelementptr [12 x i8*], [12 x i8*]* @acpi_gbl_region_types, i64 0, i64 %idxprom, !dbg !878
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !878
  store i8* %5, i8** %retval, align 8, !dbg !879
  br label %return, !dbg !879

return:                                           ; preds = %if.end18, %if.then15, %if.then10, %if.then5, %if.then
  %6 = load i8*, i8** %retval, align 8, !dbg !880
  ret i8* %6, !dbg !880
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_event_name(i32 %event_id) #0 !dbg !881 {
entry:
  %retval = alloca i8*, align 8
  %event_id.addr = alloca i32, align 4
  store i32 %event_id, i32* %event_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_id.addr, metadata !884, metadata !DIExpression()), !dbg !885
  %0 = load i32, i32* %event_id.addr, align 4, !dbg !886
  %cmp = icmp ugt i32 %0, 4, !dbg !888
  br i1 %cmp, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %retval, align 8, !dbg !890
  br label %return, !dbg !890

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %event_id.addr, align 4, !dbg !892
  %idxprom = zext i32 %1 to i64, !dbg !893
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* @acpi_gbl_event_types, i64 0, i64 %idxprom, !dbg !893
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !893
  store i8* %2, i8** %retval, align 8, !dbg !894
  br label %return, !dbg !894

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !895
  ret i8* %3, !dbg !895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_type_name(i32 %type) #0 !dbg !896 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !900, metadata !DIExpression()), !dbg !901
  %0 = load i32, i32* %type.addr, align 4, !dbg !902
  %cmp = icmp ugt i32 %0, 30, !dbg !904
  br i1 %cmp, label %if.then, label %if.end, !dbg !905

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @acpi_gbl_bad_type, i64 0, i64 0), i8** %retval, align 8, !dbg !906
  br label %return, !dbg !906

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !908
  %idxprom = zext i32 %1 to i64, !dbg !909
  %arrayidx = getelementptr [31 x i8*], [31 x i8*]* @acpi_gbl_ns_type_names, i64 0, i64 %idxprom, !dbg !909
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !909
  store i8* %2, i8** %retval, align 8, !dbg !910
  br label %return, !dbg !910

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !911
  ret i8* %3, !dbg !911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %obj_desc) #0 !dbg !912 {
entry:
  %retval = alloca i8*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !917
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !917
  br i1 %tobool, label %if.end, label %if.then, !dbg !919

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8** %retval, align 8, !dbg !920
  br label %return, !dbg !920

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !922
  %2 = bitcast %union.acpi_operand_object* %1 to i8*, !dbg !922
  %3 = bitcast i8* %2 to %union.acpi_descriptor*, !dbg !922
  %common = bitcast %union.acpi_descriptor* %3 to %struct.acpi_common_descriptor*, !dbg !922
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !922
  %4 = load i8, i8* %descriptor_type, align 8, !dbg !922
  %conv = zext i8 %4 to i32, !dbg !922
  %cmp = icmp ne i32 %conv, 14, !dbg !924
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !925

land.lhs.true:                                    ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !926
  %6 = bitcast %union.acpi_operand_object* %5 to i8*, !dbg !926
  %7 = bitcast i8* %6 to %union.acpi_descriptor*, !dbg !926
  %common2 = bitcast %union.acpi_descriptor* %7 to %struct.acpi_common_descriptor*, !dbg !926
  %descriptor_type3 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common2, i32 0, i32 1, !dbg !926
  %8 = load i8, i8* %descriptor_type3, align 8, !dbg !926
  %conv4 = zext i8 %8 to i32, !dbg !926
  %cmp5 = icmp ne i32 %conv4, 15, !dbg !927
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !928

if.then7:                                         ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8** %retval, align 8, !dbg !929
  br label %return, !dbg !929

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !931
  %common9 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !931
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common9, i32 0, i32 2, !dbg !931
  %10 = load i8, i8* %type, align 1, !dbg !931
  %conv10 = zext i8 %10 to i32, !dbg !931
  %call = call i8* @acpi_ut_get_type_name(i32 %conv10) #3, !dbg !931
  store i8* %call, i8** %retval, align 8, !dbg !931
  br label %return, !dbg !931

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %11 = load i8*, i8** %retval, align 8, !dbg !932
  ret i8* %11, !dbg !932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_node_name(i8* %object) #0 !dbg !933 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca i8*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !938, metadata !DIExpression()), !dbg !939
  %0 = load i8*, i8** %object.addr, align 8, !dbg !940
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !941
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !939
  %2 = load i8*, i8** %object.addr, align 8, !dbg !942
  %tobool = icmp ne i8* %2, null, !dbg !942
  br i1 %tobool, label %if.end, label %if.then, !dbg !944

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %retval, align 8, !dbg !945
  br label %return, !dbg !945

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %object.addr, align 8, !dbg !947
  %cmp = icmp eq i8* %3, inttoptr (i64 -1 to i8*), !dbg !949
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !950

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8*, i8** %object.addr, align 8, !dbg !951
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !952
  %6 = bitcast %struct.acpi_namespace_node* %5 to i8*, !dbg !952
  %cmp1 = icmp eq i8* %4, %6, !dbg !953
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !954

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %retval, align 8, !dbg !955
  br label %return, !dbg !955

if.end3:                                          ; preds = %lor.lhs.false
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !957
  %8 = bitcast %struct.acpi_namespace_node* %7 to i8*, !dbg !957
  %9 = bitcast i8* %8 to %union.acpi_descriptor*, !dbg !957
  %common = bitcast %union.acpi_descriptor* %9 to %struct.acpi_common_descriptor*, !dbg !957
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !957
  %10 = load i8, i8* %descriptor_type, align 8, !dbg !957
  %conv = zext i8 %10 to i32, !dbg !957
  %cmp4 = icmp ne i32 %conv, 15, !dbg !959
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !960

if.then6:                                         ; preds = %if.end3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8** %retval, align 8, !dbg !961
  br label %return, !dbg !961

if.end7:                                          ; preds = %if.end3
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !963
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %11, i32 0, i32 4, !dbg !964
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !965
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !963
  call void @acpi_ut_repair_name(i8* %arraydecay) #3, !dbg !966
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !967
  %name8 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 4, !dbg !968
  %ascii9 = bitcast %union.acpi_name_union* %name8 to [4 x i8]*, !dbg !969
  %arraydecay10 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii9, i64 0, i64 0, !dbg !970
  store i8* %arraydecay10, i8** %retval, align 8, !dbg !971
  br label %return, !dbg !971

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !972
  ret i8* %13, !dbg !972
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_repair_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_descriptor_name(i8* %object) #0 !dbg !973 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca i8*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !974, metadata !DIExpression()), !dbg !975
  %0 = load i8*, i8** %object.addr, align 8, !dbg !976
  %tobool = icmp ne i8* %0, null, !dbg !976
  br i1 %tobool, label %if.end, label %if.then, !dbg !978

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %retval, align 8, !dbg !979
  br label %return, !dbg !979

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %object.addr, align 8, !dbg !981
  %2 = bitcast i8* %1 to %union.acpi_descriptor*, !dbg !981
  %common = bitcast %union.acpi_descriptor* %2 to %struct.acpi_common_descriptor*, !dbg !981
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !981
  %3 = load i8, i8* %descriptor_type, align 8, !dbg !981
  %conv = zext i8 %3 to i32, !dbg !981
  %cmp = icmp sgt i32 %conv, 15, !dbg !983
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !984

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8, !dbg !985
  br label %return, !dbg !985

if.end3:                                          ; preds = %if.end
  %4 = load i8*, i8** %object.addr, align 8, !dbg !987
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !987
  %common4 = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !987
  %descriptor_type5 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common4, i32 0, i32 1, !dbg !987
  %6 = load i8, i8* %descriptor_type5, align 8, !dbg !987
  %idxprom = zext i8 %6 to i64, !dbg !988
  %arrayidx = getelementptr [16 x i8*], [16 x i8*]* @acpi_gbl_desc_type_names, i64 0, i64 %idxprom, !dbg !988
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !988
  store i8* %7, i8** %retval, align 8, !dbg !989
  br label %return, !dbg !989

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i8*, i8** %retval, align 8, !dbg !990
  ret i8* %8, !dbg !990
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_reference_name(%union.acpi_operand_object* %object) #0 !dbg !991 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !992, metadata !DIExpression()), !dbg !993
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !994
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !994
  br i1 %tobool, label %if.end, label %if.then, !dbg !996

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8, !dbg !997
  br label %return, !dbg !997

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !999
  %2 = bitcast %union.acpi_operand_object* %1 to i8*, !dbg !999
  %3 = bitcast i8* %2 to %union.acpi_descriptor*, !dbg !999
  %common = bitcast %union.acpi_descriptor* %3 to %struct.acpi_common_descriptor*, !dbg !999
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !999
  %4 = load i8, i8* %descriptor_type, align 8, !dbg !999
  %conv = zext i8 %4 to i32, !dbg !999
  %cmp = icmp ne i32 %conv, 14, !dbg !1001
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1002

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !1003
  br label %return, !dbg !1003

if.end3:                                          ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1005
  %common4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !1007
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 2, !dbg !1008
  %6 = load i8, i8* %type, align 1, !dbg !1008
  %conv5 = zext i8 %6 to i32, !dbg !1005
  %cmp6 = icmp ne i32 %conv5, 20, !dbg !1009
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1010

if.then8:                                         ; preds = %if.end3
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i8** %retval, align 8, !dbg !1011
  br label %return, !dbg !1011

if.end9:                                          ; preds = %if.end3
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1013
  %reference = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_reference*, !dbg !1015
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1016
  %8 = load i8, i8* %class, align 1, !dbg !1016
  %conv10 = zext i8 %8 to i32, !dbg !1013
  %cmp11 = icmp sgt i32 %conv10, 6, !dbg !1017
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !1018

if.then13:                                        ; preds = %if.end9
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8** %retval, align 8, !dbg !1019
  br label %return, !dbg !1019

if.end14:                                         ; preds = %if.end9
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1021
  %reference15 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_reference*, !dbg !1022
  %class16 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference15, i32 0, i32 5, !dbg !1023
  %10 = load i8, i8* %class16, align 1, !dbg !1023
  %idxprom = zext i8 %10 to i64, !dbg !1024
  %arrayidx = getelementptr [7 x i8*], [7 x i8*]* @acpi_gbl_ref_class_names, i64 0, i64 %idxprom, !dbg !1024
  %11 = load i8*, i8** %arrayidx, align 8, !dbg !1024
  store i8* %11, i8** %retval, align 8, !dbg !1025
  br label %return, !dbg !1025

return:                                           ; preds = %if.end14, %if.then13, %if.then8, %if.then2, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !1026
  ret i8* %12, !dbg !1026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ut_get_mutex_name(i32 %mutex_id) #0 !dbg !1027 {
entry:
  %retval = alloca i8*, align 8
  %mutex_id.addr = alloca i32, align 4
  store i32 %mutex_id, i32* %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mutex_id.addr, metadata !1028, metadata !DIExpression()), !dbg !1029
  %0 = load i32, i32* %mutex_id.addr, align 4, !dbg !1030
  %cmp = icmp ugt i32 %0, 5, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end, !dbg !1033

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** %retval, align 8, !dbg !1034
  br label %return, !dbg !1034

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %mutex_id.addr, align 4, !dbg !1036
  %idxprom = zext i32 %1 to i64, !dbg !1037
  %arrayidx = getelementptr [6 x i8*], [6 x i8*]* @acpi_gbl_mutex_names, i64 0, i64 %idxprom, !dbg !1037
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !1037
  store i8* %2, i8** %retval, align 8, !dbg !1038
  br label %return, !dbg !1038

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !1039
  ret i8* %3, !dbg !1039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_valid_object_type(i32 %type) #0 !dbg !1040 {
entry:
  %retval = alloca i8, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  %0 = load i32, i32* %type.addr, align 4, !dbg !1045
  %cmp = icmp ugt i32 %0, 29, !dbg !1047
  br i1 %cmp, label %if.then, label %if.end, !dbg !1048

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !1049
  br label %return, !dbg !1049

if.end:                                           ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !1051
  br label %return, !dbg !1051

return:                                           ; preds = %if.end, %if.then
  %1 = load i8, i8* %retval, align 1, !dbg !1052
  ret i8 %1, !dbg !1052
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!842, !843, !844, !845}
!llvm.ident = !{!846}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_ns_properties", scope: !2, file: !3, line: 22, type: !840, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utdecode.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 321, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!17 = !{!18, !25, !32, !93, !390, !803, !62}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !19, line: 805, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !27)
!27 = !{!28, !34, !801, !802}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !26, file: !6, line: 433, baseType: !29, size: 128)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !30)
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !29, file: !6, line: 428, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !29, file: !6, line: 429, baseType: !20, size: 8, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !26, file: !6, line: 434, baseType: !35, size: 576)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !36)
!36 = !{!37, !49, !65, !79, !115, !129, !138, !452, !469, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !747, !764, !777, !791, !800}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !35, file: !6, line: 368, baseType: !38, size: 128)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !39)
!39 = !{!40, !42, !43, !44, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !6, line: 74, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !6, line: 74, baseType: !20, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !6, line: 74, baseType: !20, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !6, line: 74, baseType: !45, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !6, line: 74, baseType: !20, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !35, file: !6, line: 369, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !6, line: 77, baseType: !41, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !6, line: 77, baseType: !20, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !6, line: 77, baseType: !20, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !6, line: 77, baseType: !45, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !6, line: 77, baseType: !20, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !50, file: !6, line: 77, baseType: !58, size: 24, offset: 104)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !50, file: !6, line: 78, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !64)
!64 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !35, file: !6, line: 370, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !76}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !6, line: 94, baseType: !41, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !6, line: 94, baseType: !20, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !6, line: 94, baseType: !20, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !6, line: 94, baseType: !45, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !6, line: 94, baseType: !20, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !6, line: 94, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !6, line: 94, baseType: !77, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !35, file: !6, line: 371, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !41, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !20, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !20, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !45, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !20, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !77, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !77, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !41, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !20, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !20, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !45, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 327, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 328, baseType: !77, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 329, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !45)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !35, file: !6, line: 372, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !41, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !20, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !20, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !45, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !20, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !77, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !77, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !35, file: !6, line: 373, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !41, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !20, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !20, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !45, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !20, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !32, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !35, file: !6, line: 374, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !449, !450, !451}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 144, baseType: !41, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 144, baseType: !20, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 144, baseType: !20, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 144, baseType: !45, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 144, baseType: !20, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 144, baseType: !20, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 145, baseType: !20, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 146, baseType: !20, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 147, baseType: !41, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 148, baseType: !41, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 149, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 153, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 150, size: 64, elements: !154)
!154 = !{!155, !448}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 151, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !77)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !163, line: 37, size: 9024, elements: !164)
!163 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !394, !395, !396, !397, !398, !402, !404, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !431, !432, !433, !434, !435, !436, !437, !438, !440, !446}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !163, line: 38, baseType: !161, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !163, line: 39, baseType: !20, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !162, file: !163, line: 40, baseType: !20, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !162, file: !163, line: 41, baseType: !45, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !162, file: !163, line: 42, baseType: !20, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !162, file: !163, line: 43, baseType: !20, size: 8, offset: 104)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !162, file: !163, line: 44, baseType: !20, size: 8, offset: 112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !162, file: !163, line: 45, baseType: !114, size: 16, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !162, file: !163, line: 46, baseType: !20, size: 8, offset: 144)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !162, file: !163, line: 47, baseType: !20, size: 8, offset: 152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !162, file: !163, line: 48, baseType: !20, size: 8, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !162, file: !163, line: 49, baseType: !20, size: 8, offset: 168)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !162, file: !163, line: 50, baseType: !20, size: 8, offset: 176)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !162, file: !163, line: 51, baseType: !20, size: 8, offset: 184)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !162, file: !163, line: 52, baseType: !20, size: 8, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !162, file: !163, line: 53, baseType: !20, size: 8, offset: 200)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !163, line: 54, baseType: !88, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !162, file: !163, line: 55, baseType: !77, size: 32, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !162, file: !163, line: 56, baseType: !77, size: 32, offset: 352)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !162, file: !163, line: 57, baseType: !77, size: 32, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !162, file: !163, line: 58, baseType: !77, size: 32, offset: 416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !162, file: !163, line: 60, baseType: !187, size: 640, offset: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 893, size: 640, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !275, !276, !392, !393}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !187, file: !95, line: 894, baseType: !88, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !187, file: !95, line: 895, baseType: !88, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !187, file: !95, line: 896, baseType: !88, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !187, file: !95, line: 897, baseType: !88, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !187, file: !95, line: 898, baseType: !88, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !187, file: !95, line: 899, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 875, size: 1600, elements: !197)
!197 = !{!198, !218, !234}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !196, file: !95, line: 876, baseType: !199, size: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 828, size: 448, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !217}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !95, line: 829, baseType: !195, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !95, line: 829, baseType: !20, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !95, line: 829, baseType: !20, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !95, line: 829, baseType: !45, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !95, line: 829, baseType: !88, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !95, line: 829, baseType: !195, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !95, line: 829, baseType: !93, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !95, line: 829, baseType: !209, size: 64, offset: 320)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 716, size: 64, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !209, file: !95, line: 717, baseType: !62, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !95, line: 718, baseType: !77, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !209, file: !95, line: 719, baseType: !74, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !209, file: !95, line: 720, baseType: !88, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !95, line: 721, baseType: !74, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !209, file: !95, line: 722, baseType: !195, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !95, line: 829, baseType: !20, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !196, file: !95, line: 877, baseType: !219, size: 640)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 835, size: 640, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !95, line: 836, baseType: !195, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !95, line: 836, baseType: !20, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !95, line: 836, baseType: !20, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !95, line: 836, baseType: !45, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !95, line: 836, baseType: !88, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !95, line: 836, baseType: !195, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !95, line: 836, baseType: !93, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !95, line: 836, baseType: !209, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !95, line: 836, baseType: !20, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !219, file: !95, line: 836, baseType: !74, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !219, file: !95, line: 837, baseType: !88, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !219, file: !95, line: 838, baseType: !77, size: 32, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !95, line: 839, baseType: !77, size: 32, offset: 608)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !196, file: !95, line: 878, baseType: !235, size: 1600)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 846, size: 1600, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !95, line: 847, baseType: !195, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !95, line: 847, baseType: !20, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !95, line: 847, baseType: !20, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !235, file: !95, line: 847, baseType: !45, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !95, line: 847, baseType: !88, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !95, line: 847, baseType: !195, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !95, line: 847, baseType: !93, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !235, file: !95, line: 847, baseType: !209, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !235, file: !95, line: 847, baseType: !20, size: 8, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !235, file: !95, line: 847, baseType: !195, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !235, file: !95, line: 848, baseType: !195, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !235, file: !95, line: 849, baseType: !74, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !235, file: !95, line: 850, baseType: !20, size: 8, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !235, file: !95, line: 851, baseType: !74, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !235, file: !95, line: 852, baseType: !74, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !235, file: !95, line: 853, baseType: !74, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !235, file: !95, line: 854, baseType: !107, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !235, file: !95, line: 855, baseType: !77, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !235, file: !95, line: 856, baseType: !77, size: 32, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !235, file: !95, line: 857, baseType: !77, size: 32, offset: 992)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !235, file: !95, line: 858, baseType: !77, size: 32, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !235, file: !95, line: 859, baseType: !77, size: 32, offset: 1056)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !235, file: !95, line: 860, baseType: !77, size: 32, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !235, file: !95, line: 861, baseType: !77, size: 32, offset: 1120)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !235, file: !95, line: 862, baseType: !77, size: 32, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !235, file: !95, line: 863, baseType: !77, size: 32, offset: 1184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !235, file: !95, line: 864, baseType: !77, size: 32, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !235, file: !95, line: 865, baseType: !77, size: 32, offset: 1248)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !235, file: !95, line: 866, baseType: !77, size: 32, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !235, file: !95, line: 867, baseType: !77, size: 32, offset: 1312)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !235, file: !95, line: 868, baseType: !45, size: 16, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !235, file: !95, line: 869, baseType: !20, size: 8, offset: 1360)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !235, file: !95, line: 870, baseType: !20, size: 8, offset: 1368)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !235, file: !95, line: 871, baseType: !20, size: 8, offset: 1376)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !235, file: !95, line: 872, baseType: !272, size: 160, offset: 1384)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 160, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 20)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !187, file: !95, line: 900, baseType: !93, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !187, file: !95, line: 901, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 663, size: 640, elements: !279)
!279 = !{!280, !288, !301, !310, !319, !332, !346, !358, !370}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !278, file: !95, line: 664, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 567, size: 128, elements: !282)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !95, line: 568, baseType: !32, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !95, line: 568, baseType: !20, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !95, line: 568, baseType: !20, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !95, line: 568, baseType: !45, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !95, line: 568, baseType: !45, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !278, file: !95, line: 665, baseType: !289, size: 384)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 593, size: 384, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !95, line: 594, baseType: !32, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !95, line: 594, baseType: !20, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !95, line: 594, baseType: !20, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !95, line: 594, baseType: !45, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !95, line: 594, baseType: !45, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !289, file: !95, line: 594, baseType: !45, size: 16, offset: 112)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !289, file: !95, line: 595, baseType: !195, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !289, file: !95, line: 596, baseType: !88, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !289, file: !95, line: 597, baseType: !88, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !289, file: !95, line: 598, baseType: !62, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !278, file: !95, line: 666, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 573, size: 192, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !95, line: 574, baseType: !32, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !95, line: 574, baseType: !20, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !95, line: 574, baseType: !20, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !95, line: 574, baseType: !45, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !95, line: 574, baseType: !45, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !302, file: !95, line: 574, baseType: !41, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !278, file: !95, line: 667, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 604, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !95, line: 605, baseType: !32, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !95, line: 605, baseType: !20, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !95, line: 605, baseType: !20, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !95, line: 605, baseType: !45, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !95, line: 605, baseType: !45, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !311, file: !95, line: 605, baseType: !93, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !278, file: !95, line: 668, baseType: !320, size: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 608, size: 448, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !95, line: 609, baseType: !32, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !95, line: 609, baseType: !20, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !95, line: 609, baseType: !20, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !95, line: 609, baseType: !45, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !95, line: 609, baseType: !45, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !320, file: !95, line: 609, baseType: !77, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !320, file: !95, line: 610, baseType: !195, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !95, line: 611, baseType: !88, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !320, file: !95, line: 612, baseType: !88, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !320, file: !95, line: 613, baseType: !77, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !278, file: !95, line: 669, baseType: !333, size: 512)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 580, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !95, line: 581, baseType: !32, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !95, line: 581, baseType: !20, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !95, line: 581, baseType: !20, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !95, line: 581, baseType: !45, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !95, line: 581, baseType: !45, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !333, file: !95, line: 581, baseType: !77, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !333, file: !95, line: 582, baseType: !41, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !333, file: !95, line: 583, baseType: !41, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !333, file: !95, line: 584, baseType: !161, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !333, file: !95, line: 585, baseType: !32, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !333, file: !95, line: 586, baseType: !77, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !278, file: !95, line: 670, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 620, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !95, line: 621, baseType: !32, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !95, line: 621, baseType: !20, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !95, line: 621, baseType: !20, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !95, line: 621, baseType: !45, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !95, line: 621, baseType: !45, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !347, file: !95, line: 621, baseType: !20, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !347, file: !95, line: 622, baseType: !161, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !347, file: !95, line: 623, baseType: !41, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !95, line: 624, baseType: !62, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !278, file: !95, line: 671, baseType: !359, size: 640)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 631, size: 640, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !95, line: 632, baseType: !32, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !95, line: 632, baseType: !20, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !95, line: 632, baseType: !20, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !95, line: 632, baseType: !45, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !95, line: 632, baseType: !45, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !359, file: !95, line: 633, baseType: !367, size: 512, offset: 128)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !278, file: !95, line: 672, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 654, size: 320, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !95, line: 655, baseType: !32, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !95, line: 655, baseType: !20, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !95, line: 655, baseType: !20, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !95, line: 655, baseType: !45, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !95, line: 655, baseType: !45, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !371, file: !95, line: 655, baseType: !20, size: 8, offset: 112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !95, line: 656, baseType: !93, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !371, file: !95, line: 657, baseType: !41, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !371, file: !95, line: 658, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 645, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !383, file: !95, line: 646, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390, !77, !32}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !383, file: !95, line: 647, baseType: !32, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !187, file: !95, line: 902, baseType: !195, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !187, file: !95, line: 903, baseType: !77, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !162, file: !163, line: 61, baseType: !77, size: 32, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !162, file: !163, line: 62, baseType: !77, size: 32, offset: 1120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !162, file: !163, line: 63, baseType: !45, size: 16, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !162, file: !163, line: 64, baseType: !20, size: 8, offset: 1168)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !162, file: !163, line: 66, baseType: !399, size: 2688, offset: 1216)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !162, file: !163, line: 67, baseType: !403, size: 3072, offset: 3904)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !162, file: !163, line: 68, baseType: !405, size: 576, offset: 6976)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 576, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 9)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !162, file: !163, line: 69, baseType: !125, size: 64, offset: 7552)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !162, file: !163, line: 71, baseType: !88, size: 64, offset: 7616)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !162, file: !163, line: 72, baseType: !125, size: 64, offset: 7680)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !162, file: !163, line: 73, baseType: !277, size: 64, offset: 7744)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !162, file: !163, line: 74, baseType: !93, size: 64, offset: 7808)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !162, file: !163, line: 75, baseType: !41, size: 64, offset: 7872)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !162, file: !163, line: 76, baseType: !93, size: 64, offset: 7936)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !162, file: !163, line: 77, baseType: !195, size: 64, offset: 8000)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !162, file: !163, line: 78, baseType: !41, size: 64, offset: 8064)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !162, file: !163, line: 79, baseType: !93, size: 64, offset: 8128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !162, file: !163, line: 80, baseType: !74, size: 64, offset: 8192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !162, file: !163, line: 81, baseType: !195, size: 64, offset: 8256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !162, file: !163, line: 82, baseType: !421, size: 64, offset: 8320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 702, size: 128, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !423, file: !95, line: 706, baseType: !77, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !423, file: !95, line: 707, baseType: !77, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !95, line: 708, baseType: !45, size: 16, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !423, file: !95, line: 709, baseType: !20, size: 8, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !423, file: !95, line: 710, baseType: !20, size: 8, offset: 88)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !95, line: 711, baseType: !20, size: 8, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !162, file: !163, line: 83, baseType: !195, size: 64, offset: 8384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !162, file: !163, line: 84, baseType: !41, size: 64, offset: 8448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !162, file: !163, line: 85, baseType: !277, size: 64, offset: 8512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !162, file: !163, line: 86, baseType: !41, size: 64, offset: 8576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !162, file: !163, line: 87, baseType: !277, size: 64, offset: 8640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !162, file: !163, line: 88, baseType: !195, size: 64, offset: 8704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !162, file: !163, line: 89, baseType: !195, size: 64, offset: 8768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !162, file: !163, line: 90, baseType: !439, size: 64, offset: 8832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !162, file: !163, line: 91, baseType: !441, size: 64, offset: 8896)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 637, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!160, !161, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !162, file: !163, line: 92, baseType: !447, size: 64, offset: 8960)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 641, baseType: !157)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 152, baseType: !41, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 155, baseType: !77, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 156, baseType: !114, size: 16, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 157, baseType: !20, size: 8, offset: 432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !35, file: !6, line: 375, baseType: !453, size: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !6, line: 123, baseType: !41, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !6, line: 123, baseType: !45, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 104)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !453, file: !6, line: 124, baseType: !45, size: 16, offset: 112)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !453, file: !6, line: 125, baseType: !32, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !453, file: !6, line: 126, baseType: !62, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !453, file: !6, line: 127, baseType: !439, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !6, line: 128, baseType: !41, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !6, line: 129, baseType: !41, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !453, file: !6, line: 131, baseType: !20, size: 8, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !35, file: !6, line: 376, baseType: !470, size: 448)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !483}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !6, line: 135, baseType: !41, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !6, line: 135, baseType: !45, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 104)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !470, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !6, line: 137, baseType: !41, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !6, line: 138, baseType: !41, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !470, file: !6, line: 139, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !62)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !470, file: !6, line: 140, baseType: !77, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !35, file: !6, line: 377, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 185, baseType: !41, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 185, baseType: !20, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 185, baseType: !20, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 185, baseType: !45, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 185, baseType: !20, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 185, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 185, baseType: !41, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !35, file: !6, line: 378, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 188, baseType: !41, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 188, baseType: !20, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 188, baseType: !20, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 188, baseType: !45, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 188, baseType: !20, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 189, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 189, baseType: !41, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 189, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !95, line: 481, baseType: !93, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !95, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !95, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !95, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !95, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !95, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !95, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !95, line: 501, baseType: !77, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !95, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !95, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !95, line: 460, baseType: !20, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !95, line: 461, baseType: !62, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !95, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !95, line: 469, baseType: !45, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !95, line: 470, baseType: !20, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !95, line: 471, baseType: !20, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !95, line: 472, baseType: !20, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !95, line: 473, baseType: !20, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !95, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !95, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !95, line: 439, baseType: !93, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !95, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !95, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!77, !390, !77, !32}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !95, line: 421, baseType: !32, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !95, line: 423, baseType: !20, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !95, line: 424, baseType: !20, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !95, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !95, line: 430, baseType: !93, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !95, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !95, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !95, line: 451, baseType: !20, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !95, line: 452, baseType: !20, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !95, line: 453, baseType: !20, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !95, line: 454, baseType: !20, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !95, line: 487, baseType: !62, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !95, line: 488, baseType: !77, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !95, line: 489, baseType: !45, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !95, line: 490, baseType: !45, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !95, line: 491, baseType: !20, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !95, line: 492, baseType: !20, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !35, file: !6, line: 379, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 193, baseType: !41, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 193, baseType: !20, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 193, baseType: !20, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 193, baseType: !45, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 193, baseType: !20, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 193, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 193, baseType: !41, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 193, baseType: !77, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 194, baseType: !77, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !35, file: !6, line: 380, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 198, baseType: !41, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 198, baseType: !20, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 198, baseType: !20, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 198, baseType: !45, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 198, baseType: !20, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 200, baseType: !20, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 201, baseType: !20, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 202, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 202, baseType: !41, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 202, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !62)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !35, file: !6, line: 381, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 206, baseType: !41, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 206, baseType: !20, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 206, baseType: !20, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 206, baseType: !45, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 206, baseType: !20, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 206, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 206, baseType: !41, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !35, file: !6, line: 382, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 234, baseType: !41, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 234, baseType: !45, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 234, baseType: !93, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 234, baseType: !77, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 234, baseType: !77, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 234, baseType: !77, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 234, baseType: !20, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 234, baseType: !41, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !35, file: !6, line: 383, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 238, baseType: !41, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 238, baseType: !45, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 238, baseType: !93, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 238, baseType: !77, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 238, baseType: !77, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 238, baseType: !77, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 238, baseType: !20, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 238, baseType: !45, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 239, baseType: !41, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 240, baseType: !88, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 241, baseType: !45, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 242, baseType: !88, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !35, file: !6, line: 384, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 263, baseType: !41, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 263, baseType: !45, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 263, baseType: !93, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 263, baseType: !77, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 263, baseType: !77, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 263, baseType: !77, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 263, baseType: !20, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 264, baseType: !41, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !35, file: !6, line: 385, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 246, baseType: !41, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 246, baseType: !45, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 246, baseType: !93, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 246, baseType: !77, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 246, baseType: !77, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 246, baseType: !77, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 246, baseType: !20, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 246, baseType: !41, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 247, baseType: !41, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !35, file: !6, line: 386, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 251, baseType: !41, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 251, baseType: !45, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 251, baseType: !93, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 251, baseType: !77, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 251, baseType: !77, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 251, baseType: !77, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 251, baseType: !20, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 256, baseType: !41, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 257, baseType: !41, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !35, file: !6, line: 387, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 274, baseType: !41, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 274, baseType: !20, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 274, baseType: !20, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 274, baseType: !45, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 274, baseType: !20, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 274, baseType: !93, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 275, baseType: !77, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 276, baseType: !386, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 277, baseType: !32, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 278, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !35, file: !6, line: 388, baseType: !722, size: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !745, !746}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 282, baseType: !41, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 282, baseType: !20, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 282, baseType: !20, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 282, baseType: !45, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 282, baseType: !20, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 282, baseType: !20, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 283, baseType: !20, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 284, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!160, !77, !482, !77, !736, !32, !32}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 285, baseType: !93, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 286, baseType: !32, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 287, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!160, !390, !77, !32, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 288, baseType: !41, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 289, baseType: !41, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !35, file: !6, line: 389, baseType: !748, size: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !6, line: 308, baseType: !41, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !6, line: 308, baseType: !20, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !6, line: 308, baseType: !20, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !6, line: 308, baseType: !45, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !6, line: 308, baseType: !20, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !748, file: !6, line: 308, baseType: !20, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !748, file: !6, line: 309, baseType: !20, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !748, file: !6, line: 310, baseType: !20, size: 8, offset: 120)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !748, file: !6, line: 311, baseType: !32, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !6, line: 312, baseType: !93, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !748, file: !6, line: 313, baseType: !125, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !748, file: !6, line: 314, baseType: !88, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !748, file: !6, line: 315, baseType: !88, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !748, file: !6, line: 316, baseType: !77, size: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !35, file: !6, line: 390, baseType: !765, size: 448)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !6, line: 341, baseType: !41, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !6, line: 341, baseType: !20, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !6, line: 341, baseType: !20, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !6, line: 341, baseType: !45, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !6, line: 341, baseType: !20, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !765, file: !6, line: 341, baseType: !93, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !765, file: !6, line: 342, baseType: !93, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !765, file: !6, line: 343, baseType: !32, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !765, file: !6, line: 344, baseType: !88, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !765, file: !6, line: 345, baseType: !77, size: 32, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !6, line: 391, baseType: !778, size: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !6, line: 351, baseType: !41, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !6, line: 351, baseType: !20, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !6, line: 351, baseType: !20, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !6, line: 351, baseType: !45, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !6, line: 351, baseType: !20, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !778, file: !6, line: 351, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !390, !32}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !778, file: !6, line: 352, baseType: !32, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !35, file: !6, line: 392, baseType: !792, size: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !6, line: 358, baseType: !41, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !6, line: 358, baseType: !20, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !6, line: 358, baseType: !20, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !6, line: 358, baseType: !45, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !6, line: 358, baseType: !20, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !792, file: !6, line: 358, baseType: !41, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !35, file: !6, line: 399, baseType: !94, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !26, file: !6, line: 435, baseType: !94, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !26, file: !6, line: 436, baseType: !196, size: 1600)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !19, line: 127, baseType: !62)
!804 = !{!0, !805, !812, !817, !822, !827, !832, !835}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "acpi_gbl_region_types", scope: !2, file: !3, line: 70, type: !807, isLocal: false, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 768, elements: !810)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!810 = !{!811}
!811 = !DISubrange(count: 12)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "acpi_gbl_event_types", scope: !2, file: !3, line: 115, type: !814, isLocal: true, isDefinition: true)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 320, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 5)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(name: "acpi_gbl_bad_type", scope: !2, file: !3, line: 154, type: !819, isLocal: true, isDefinition: true)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 80, elements: !820)
!820 = !{!821}
!821 = !DISubrange(count: 10)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "acpi_gbl_ns_type_names", scope: !2, file: !3, line: 158, type: !824, isLocal: true, isDefinition: true)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 1984, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 31)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "acpi_gbl_desc_type_names", scope: !2, file: !3, line: 286, type: !829, isLocal: true, isDefinition: true)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 1024, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 16)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "acpi_gbl_ref_class_names", scope: !2, file: !3, line: 333, type: !834, isLocal: true, isDefinition: true)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 448, elements: !400)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "acpi_gbl_mutex_names", scope: !2, file: !3, line: 379, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 384, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 6)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 248, elements: !825)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!842 = !{i32 7, !"Dwarf Version", i32 4}
!843 = !{i32 2, !"Debug Info Version", i32 3}
!844 = !{i32 1, !"wchar_size", i32 2}
!845 = !{i32 1, !"Code Model", i32 2}
!846 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!847 = distinct !DISubprogram(name: "acpi_ut_get_region_name", scope: !3, file: !3, line: 85, type: !848, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!808, !20}
!850 = !{}
!851 = !DILocalVariable(name: "space_id", arg: 1, scope: !847, file: !3, line: 85, type: !20)
!852 = !DILocation(line: 85, column: 40, scope: !847)
!853 = !DILocation(line: 88, column: 6, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !3, line: 88, column: 6)
!855 = !DILocation(line: 88, column: 15, scope: !854)
!856 = !DILocation(line: 88, column: 6, scope: !847)
!857 = !DILocation(line: 89, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !3, line: 88, column: 42)
!859 = !DILocation(line: 90, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !3, line: 90, column: 13)
!861 = !DILocation(line: 90, column: 22, scope: !860)
!862 = !DILocation(line: 90, column: 13, scope: !854)
!863 = !DILocation(line: 91, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 90, column: 52)
!865 = !DILocation(line: 92, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !860, file: !3, line: 92, column: 13)
!867 = !DILocation(line: 92, column: 22, scope: !866)
!868 = !DILocation(line: 92, column: 13, scope: !860)
!869 = !DILocation(line: 93, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 92, column: 56)
!871 = !DILocation(line: 94, column: 13, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !3, line: 94, column: 13)
!873 = !DILocation(line: 94, column: 22, scope: !872)
!874 = !DILocation(line: 94, column: 13, scope: !866)
!875 = !DILocation(line: 95, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 94, column: 54)
!877 = !DILocation(line: 98, column: 32, scope: !847)
!878 = !DILocation(line: 98, column: 10, scope: !847)
!879 = !DILocation(line: 98, column: 2, scope: !847)
!880 = !DILocation(line: 99, column: 1, scope: !847)
!881 = distinct !DISubprogram(name: "acpi_ut_get_event_name", scope: !3, file: !3, line: 123, type: !882, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!882 = !DISubroutineType(types: !883)
!883 = !{!808, !77}
!884 = !DILocalVariable(name: "event_id", arg: 1, scope: !881, file: !3, line: 123, type: !77)
!885 = !DILocation(line: 123, column: 40, scope: !881)
!886 = !DILocation(line: 126, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !881, file: !3, line: 126, column: 6)
!888 = !DILocation(line: 126, column: 15, scope: !887)
!889 = !DILocation(line: 126, column: 6, scope: !881)
!890 = !DILocation(line: 127, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !3, line: 126, column: 33)
!892 = !DILocation(line: 130, column: 31, scope: !881)
!893 = !DILocation(line: 130, column: 10, scope: !881)
!894 = !DILocation(line: 130, column: 2, scope: !881)
!895 = !DILocation(line: 131, column: 1, scope: !881)
!896 = distinct !DISubprogram(name: "acpi_ut_get_type_name", scope: !3, file: !3, line: 192, type: !897, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!897 = !DISubroutineType(types: !898)
!898 = !{!808, !899}
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 635, baseType: !77)
!900 = !DILocalVariable(name: "type", arg: 1, scope: !896, file: !3, line: 192, type: !899)
!901 = !DILocation(line: 192, column: 52, scope: !896)
!902 = !DILocation(line: 195, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !3, line: 195, column: 6)
!904 = !DILocation(line: 195, column: 11, scope: !903)
!905 = !DILocation(line: 195, column: 6, scope: !896)
!906 = !DILocation(line: 196, column: 3, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 195, column: 32)
!908 = !DILocation(line: 199, column: 33, scope: !896)
!909 = !DILocation(line: 199, column: 10, scope: !896)
!910 = !DILocation(line: 199, column: 2, scope: !896)
!911 = !DILocation(line: 200, column: 1, scope: !896)
!912 = distinct !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !3, file: !3, line: 202, type: !913, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!913 = !DISubroutineType(types: !914)
!914 = !{!808, !41}
!915 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !912, file: !3, line: 202, type: !41)
!916 = !DILocation(line: 202, column: 69, scope: !912)
!917 = !DILocation(line: 206, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !912, file: !3, line: 206, column: 6)
!919 = !DILocation(line: 206, column: 6, scope: !912)
!920 = !DILocation(line: 208, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 206, column: 17)
!922 = !DILocation(line: 213, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !912, file: !3, line: 213, column: 6)
!924 = !DILocation(line: 213, column: 42, scope: !923)
!925 = !DILocation(line: 213, column: 69, scope: !923)
!926 = !DILocation(line: 214, column: 7, scope: !923)
!927 = !DILocation(line: 214, column: 42, scope: !923)
!928 = !DILocation(line: 213, column: 6, scope: !912)
!929 = !DILocation(line: 221, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !923, file: !3, line: 214, column: 68)
!931 = !DILocation(line: 224, column: 2, scope: !912)
!932 = !DILocation(line: 225, column: 1, scope: !912)
!933 = distinct !DISubprogram(name: "acpi_ut_get_node_name", scope: !3, file: !3, line: 239, type: !934, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!934 = !DISubroutineType(types: !935)
!935 = !{!808, !32}
!936 = !DILocalVariable(name: "object", arg: 1, scope: !933, file: !3, line: 239, type: !32)
!937 = !DILocation(line: 239, column: 41, scope: !933)
!938 = !DILocalVariable(name: "node", scope: !933, file: !3, line: 241, type: !93)
!939 = !DILocation(line: 241, column: 30, scope: !933)
!940 = !DILocation(line: 241, column: 67, scope: !933)
!941 = !DILocation(line: 241, column: 37, scope: !933)
!942 = !DILocation(line: 245, column: 7, scope: !943)
!943 = distinct !DILexicalBlock(scope: !933, file: !3, line: 245, column: 6)
!944 = !DILocation(line: 245, column: 6, scope: !933)
!945 = !DILocation(line: 246, column: 3, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !3, line: 245, column: 15)
!947 = !DILocation(line: 251, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !933, file: !3, line: 251, column: 6)
!949 = !DILocation(line: 251, column: 14, scope: !948)
!950 = !DILocation(line: 251, column: 35, scope: !948)
!951 = !DILocation(line: 251, column: 39, scope: !948)
!952 = !DILocation(line: 251, column: 49, scope: !948)
!953 = !DILocation(line: 251, column: 46, scope: !948)
!954 = !DILocation(line: 251, column: 6, scope: !933)
!955 = !DILocation(line: 252, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !948, file: !3, line: 251, column: 70)
!957 = !DILocation(line: 257, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !933, file: !3, line: 257, column: 6)
!959 = !DILocation(line: 257, column: 37, scope: !958)
!960 = !DILocation(line: 257, column: 6, scope: !933)
!961 = !DILocation(line: 258, column: 3, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 257, column: 62)
!963 = !DILocation(line: 265, column: 22, scope: !933)
!964 = !DILocation(line: 265, column: 28, scope: !933)
!965 = !DILocation(line: 265, column: 33, scope: !933)
!966 = !DILocation(line: 265, column: 2, scope: !933)
!967 = !DILocation(line: 269, column: 10, scope: !933)
!968 = !DILocation(line: 269, column: 16, scope: !933)
!969 = !DILocation(line: 269, column: 21, scope: !933)
!970 = !DILocation(line: 269, column: 9, scope: !933)
!971 = !DILocation(line: 269, column: 2, scope: !933)
!972 = !DILocation(line: 270, column: 1, scope: !933)
!973 = distinct !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !3, file: !3, line: 305, type: !934, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!974 = !DILocalVariable(name: "object", arg: 1, scope: !973, file: !3, line: 305, type: !32)
!975 = !DILocation(line: 305, column: 47, scope: !973)
!976 = !DILocation(line: 308, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 308, column: 6)
!978 = !DILocation(line: 308, column: 6, scope: !973)
!979 = !DILocation(line: 309, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 308, column: 15)
!981 = !DILocation(line: 312, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !973, file: !3, line: 312, column: 6)
!983 = !DILocation(line: 312, column: 39, scope: !982)
!984 = !DILocation(line: 312, column: 6, scope: !973)
!985 = !DILocation(line: 313, column: 3, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 312, column: 61)
!987 = !DILocation(line: 316, column: 35, scope: !973)
!988 = !DILocation(line: 316, column: 10, scope: !973)
!989 = !DILocation(line: 316, column: 2, scope: !973)
!990 = !DILocation(line: 317, column: 1, scope: !973)
!991 = distinct !DISubprogram(name: "acpi_ut_get_reference_name", scope: !3, file: !3, line: 343, type: !913, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!992 = !DILocalVariable(name: "object", arg: 1, scope: !991, file: !3, line: 343, type: !41)
!993 = !DILocation(line: 343, column: 67, scope: !991)
!994 = !DILocation(line: 346, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 346, column: 6)
!996 = !DILocation(line: 346, column: 6, scope: !991)
!997 = !DILocation(line: 347, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 346, column: 15)
!999 = !DILocation(line: 350, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !3, line: 350, column: 6)
!1001 = !DILocation(line: 350, column: 39, scope: !1000)
!1002 = !DILocation(line: 350, column: 6, scope: !991)
!1003 = !DILocation(line: 351, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 350, column: 66)
!1005 = !DILocation(line: 354, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !991, file: !3, line: 354, column: 6)
!1007 = !DILocation(line: 354, column: 14, scope: !1006)
!1008 = !DILocation(line: 354, column: 21, scope: !1006)
!1009 = !DILocation(line: 354, column: 26, scope: !1006)
!1010 = !DILocation(line: 354, column: 6, scope: !991)
!1011 = !DILocation(line: 355, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 354, column: 56)
!1013 = !DILocation(line: 358, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !991, file: !3, line: 358, column: 6)
!1015 = !DILocation(line: 358, column: 14, scope: !1014)
!1016 = !DILocation(line: 358, column: 24, scope: !1014)
!1017 = !DILocation(line: 358, column: 30, scope: !1014)
!1018 = !DILocation(line: 358, column: 6, scope: !991)
!1019 = !DILocation(line: 359, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 358, column: 51)
!1021 = !DILocation(line: 362, column: 35, scope: !991)
!1022 = !DILocation(line: 362, column: 43, scope: !991)
!1023 = !DILocation(line: 362, column: 53, scope: !991)
!1024 = !DILocation(line: 362, column: 10, scope: !991)
!1025 = !DILocation(line: 362, column: 2, scope: !991)
!1026 = !DILocation(line: 363, column: 1, scope: !991)
!1027 = distinct !DISubprogram(name: "acpi_ut_get_mutex_name", scope: !3, file: !3, line: 388, type: !882, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!1028 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1027, file: !3, line: 388, type: !77)
!1029 = !DILocation(line: 388, column: 40, scope: !1027)
!1030 = !DILocation(line: 391, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 391, column: 6)
!1032 = !DILocation(line: 391, column: 15, scope: !1031)
!1033 = !DILocation(line: 391, column: 6, scope: !1027)
!1034 = !DILocation(line: 392, column: 3, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 391, column: 33)
!1036 = !DILocation(line: 395, column: 31, scope: !1027)
!1037 = !DILocation(line: 395, column: 10, scope: !1027)
!1038 = !DILocation(line: 395, column: 2, scope: !1027)
!1039 = !DILocation(line: 396, column: 1, scope: !1027)
!1040 = distinct !DISubprogram(name: "acpi_ut_valid_object_type", scope: !3, file: !3, line: 570, type: !1041, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !850)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!20, !899}
!1043 = !DILocalVariable(name: "type", arg: 1, scope: !1040, file: !3, line: 570, type: !899)
!1044 = !DILocation(line: 570, column: 47, scope: !1040)
!1045 = !DILocation(line: 573, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 573, column: 6)
!1047 = !DILocation(line: 573, column: 11, scope: !1046)
!1048 = !DILocation(line: 573, column: 6, scope: !1040)
!1049 = !DILocation(line: 577, column: 3, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 573, column: 34)
!1051 = !DILocation(line: 580, column: 2, scope: !1040)
!1052 = !DILocation(line: 581, column: 1, scope: !1040)
