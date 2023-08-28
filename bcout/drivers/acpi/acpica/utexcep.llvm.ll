; ModuleID = '../bcout/drivers/acpi/acpica/utexcep.llvm.bc'
source_filename = "drivers/acpi/acpica/utexcep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_exception_info = type { i8* }

@_acpi_module_name = internal constant [8 x i8] c"utexcep\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Unknown exception code: 0x%8.8X\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"UNKNOWN_STATUS_CODE\00", align 1
@acpi_gbl_exception_names_env = internal constant [36 x %struct.acpi_exception_info] [%struct.acpi_exception_info { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0) }], align 16, !dbg !6
@acpi_gbl_exception_names_pgm = internal constant [10 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }], align 16, !dbg !18
@acpi_gbl_exception_names_tbl = internal constant [6 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i32 0, i32 0) }], align 16, !dbg !23
@acpi_gbl_exception_names_aml = internal constant [38 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.68, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.74, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.78, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.79, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.84, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.85, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i32 0, i32 0) }], align 16, !dbg !28
@acpi_gbl_exception_names_ctrl = internal constant [13 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.99, i32 0, i32 0) }, %struct.acpi_exception_info { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i32 0, i32 0) }], align 16, !dbg !33
@.str.2 = private unnamed_addr constant [6 x i8] c"AE_OK\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"AE_ERROR\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"AE_NO_ACPI_TABLES\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"AE_NO_NAMESPACE\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"AE_NO_MEMORY\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AE_NOT_FOUND\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"AE_NOT_EXIST\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"AE_ALREADY_EXISTS\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"AE_TYPE\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"AE_NULL_OBJECT\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"AE_NULL_ENTRY\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"AE_BUFFER_OVERFLOW\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"AE_STACK_OVERFLOW\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"AE_STACK_UNDERFLOW\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"AE_NOT_IMPLEMENTED\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"AE_SUPPORT\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"AE_LIMIT\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"AE_TIME\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"AE_ACQUIRE_DEADLOCK\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"AE_RELEASE_DEADLOCK\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"AE_NOT_ACQUIRED\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"AE_ALREADY_ACQUIRED\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"AE_NO_HARDWARE_RESPONSE\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"AE_NO_GLOBAL_LOCK\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"AE_ABORT_METHOD\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"AE_SAME_HANDLER\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"AE_NO_HANDLER\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"AE_OWNER_ID_LIMIT\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"AE_NOT_CONFIGURED\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"AE_ACCESS\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"AE_IO_ERROR\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"AE_NUMERIC_OVERFLOW\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"AE_HEX_OVERFLOW\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"AE_DECIMAL_OVERFLOW\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"AE_OCTAL_OVERFLOW\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"AE_END_OF_TABLE\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"AE_BAD_PARAMETER\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"AE_BAD_CHARACTER\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"AE_BAD_PATHNAME\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"AE_BAD_DATA\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"AE_BAD_HEX_CONSTANT\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"AE_BAD_OCTAL_CONSTANT\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"AE_BAD_DECIMAL_CONSTANT\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"AE_MISSING_ARGUMENTS\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"AE_BAD_ADDRESS\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"AE_BAD_SIGNATURE\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"AE_BAD_HEADER\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"AE_BAD_CHECKSUM\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"AE_BAD_VALUE\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"AE_INVALID_TABLE_LENGTH\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"AE_AML_BAD_OPCODE\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"AE_AML_NO_OPERAND\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"AE_AML_OPERAND_TYPE\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"AE_AML_OPERAND_VALUE\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"AE_AML_UNINITIALIZED_LOCAL\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"AE_AML_UNINITIALIZED_ARG\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"AE_AML_UNINITIALIZED_ELEMENT\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"AE_AML_NUMERIC_OVERFLOW\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"AE_AML_REGION_LIMIT\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"AE_AML_BUFFER_LIMIT\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"AE_AML_PACKAGE_LIMIT\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"AE_AML_DIVIDE_BY_ZERO\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"AE_AML_BAD_NAME\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"AE_AML_NAME_NOT_FOUND\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"AE_AML_INTERNAL\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"AE_AML_INVALID_SPACE_ID\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"AE_AML_STRING_LIMIT\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"AE_AML_NO_RETURN_VALUE\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"AE_AML_METHOD_LIMIT\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"AE_AML_NOT_OWNER\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"AE_AML_MUTEX_ORDER\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"AE_AML_MUTEX_NOT_ACQUIRED\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"AE_AML_INVALID_RESOURCE_TYPE\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"AE_AML_INVALID_INDEX\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"AE_AML_REGISTER_LIMIT\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"AE_AML_NO_WHILE\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"AE_AML_ALIGNMENT\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"AE_AML_NO_RESOURCE_END_TAG\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"AE_AML_BAD_RESOURCE_VALUE\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"AE_AML_CIRCULAR_REFERENCE\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"AE_AML_BAD_RESOURCE_LENGTH\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"AE_AML_ILLEGAL_ADDRESS\00", align 1
@.str.84 = private unnamed_addr constant [20 x i8] c"AE_AML_LOOP_TIMEOUT\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"AE_AML_UNINITIALIZED_NODE\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"AE_AML_TARGET_TYPE\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"AE_AML_PROTOCOL\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"AE_AML_BUFFER_LENGTH\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"AE_CTRL_RETURN_VALUE\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"AE_CTRL_PENDING\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"AE_CTRL_TERMINATE\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"AE_CTRL_TRUE\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"AE_CTRL_FALSE\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"AE_CTRL_DEPTH\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"AE_CTRL_END\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"AE_CTRL_TRANSFER\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"AE_CTRL_BREAK\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"AE_CTRL_CONTINUE\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"AE_CTRL_PARSE_CONTINUE\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"AE_CTRL_PARSE_PENDING\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_format_exception(i32 %status) #0 !dbg !47 {
entry:
  %retval = alloca i8*, align 8
  %status.addr = alloca i32, align 4
  %exception = alloca %struct.acpi_exception_info*, align 8
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata %struct.acpi_exception_info** %exception, metadata !60, metadata !DIExpression()), !dbg !62
  %0 = load i32, i32* %status.addr, align 4, !dbg !63
  %call = call %struct.acpi_exception_info* @acpi_ut_validate_exception(i32 %0) #3, !dbg !64
  store %struct.acpi_exception_info* %call, %struct.acpi_exception_info** %exception, align 8, !dbg !65
  %1 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %exception, align 8, !dbg !66
  %tobool = icmp ne %struct.acpi_exception_info* %1, null, !dbg !66
  br i1 %tobool, label %if.end, label %if.then, !dbg !68

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status.addr, align 4, !dbg !69
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %2) #3, !dbg !69
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8, !dbg !71
  br label %return, !dbg !71

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %exception, align 8, !dbg !72
  %name = getelementptr inbounds %struct.acpi_exception_info, %struct.acpi_exception_info* %3, i32 0, i32 0, !dbg !73
  %4 = load i8*, i8** %name, align 8, !dbg !73
  store i8* %4, i8** %retval, align 8, !dbg !74
  br label %return, !dbg !74

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !75
  ret i8* %5, !dbg !75
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_exception_info* @acpi_ut_validate_exception(i32 %status) #0 !dbg !76 {
entry:
  %retval = alloca %struct.acpi_exception_info*, align 8
  %status.addr = alloca i32, align 4
  %sub_status = alloca i32, align 4
  %exception = alloca %struct.acpi_exception_info*, align 8
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %sub_status, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct.acpi_exception_info** %exception, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct.acpi_exception_info* null, %struct.acpi_exception_info** %exception, align 8, !dbg !84
  %0 = load i32, i32* %status.addr, align 4, !dbg !85
  %and = and i32 %0, -61441, !dbg !86
  store i32 %and, i32* %sub_status, align 4, !dbg !87
  %1 = load i32, i32* %status.addr, align 4, !dbg !88
  %and1 = and i32 %1, 61440, !dbg !89
  switch i32 %and1, label %sw.default [
    i32 0, label %sw.bb
    i32 4096, label %sw.bb2
    i32 8192, label %sw.bb8
    i32 12288, label %sw.bb14
    i32 16384, label %sw.bb20
  ], !dbg !90

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %sub_status, align 4, !dbg !91
  %cmp = icmp ule i32 %2, 35, !dbg !94
  br i1 %cmp, label %if.then, label %if.end, !dbg !95

if.then:                                          ; preds = %sw.bb
  %3 = load i32, i32* %sub_status, align 4, !dbg !96
  %idxprom = zext i32 %3 to i64, !dbg !98
  %arrayidx = getelementptr [36 x %struct.acpi_exception_info], [36 x %struct.acpi_exception_info]* @acpi_gbl_exception_names_env, i64 0, i64 %idxprom, !dbg !98
  store %struct.acpi_exception_info* %arrayidx, %struct.acpi_exception_info** %exception, align 8, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !101

sw.bb2:                                           ; preds = %entry
  %4 = load i32, i32* %sub_status, align 4, !dbg !102
  %cmp3 = icmp ule i32 %4, 9, !dbg !104
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !105

if.then4:                                         ; preds = %sw.bb2
  %5 = load i32, i32* %sub_status, align 4, !dbg !106
  %idxprom5 = zext i32 %5 to i64, !dbg !108
  %arrayidx6 = getelementptr [10 x %struct.acpi_exception_info], [10 x %struct.acpi_exception_info]* @acpi_gbl_exception_names_pgm, i64 0, i64 %idxprom5, !dbg !108
  store %struct.acpi_exception_info* %arrayidx6, %struct.acpi_exception_info** %exception, align 8, !dbg !109
  br label %if.end7, !dbg !110

if.end7:                                          ; preds = %if.then4, %sw.bb2
  br label %sw.epilog, !dbg !111

sw.bb8:                                           ; preds = %entry
  %6 = load i32, i32* %sub_status, align 4, !dbg !112
  %cmp9 = icmp ule i32 %6, 5, !dbg !114
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !115

if.then10:                                        ; preds = %sw.bb8
  %7 = load i32, i32* %sub_status, align 4, !dbg !116
  %idxprom11 = zext i32 %7 to i64, !dbg !118
  %arrayidx12 = getelementptr [6 x %struct.acpi_exception_info], [6 x %struct.acpi_exception_info]* @acpi_gbl_exception_names_tbl, i64 0, i64 %idxprom11, !dbg !118
  store %struct.acpi_exception_info* %arrayidx12, %struct.acpi_exception_info** %exception, align 8, !dbg !119
  br label %if.end13, !dbg !120

if.end13:                                         ; preds = %if.then10, %sw.bb8
  br label %sw.epilog, !dbg !121

sw.bb14:                                          ; preds = %entry
  %8 = load i32, i32* %sub_status, align 4, !dbg !122
  %cmp15 = icmp ule i32 %8, 37, !dbg !124
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !125

if.then16:                                        ; preds = %sw.bb14
  %9 = load i32, i32* %sub_status, align 4, !dbg !126
  %idxprom17 = zext i32 %9 to i64, !dbg !128
  %arrayidx18 = getelementptr [38 x %struct.acpi_exception_info], [38 x %struct.acpi_exception_info]* @acpi_gbl_exception_names_aml, i64 0, i64 %idxprom17, !dbg !128
  store %struct.acpi_exception_info* %arrayidx18, %struct.acpi_exception_info** %exception, align 8, !dbg !129
  br label %if.end19, !dbg !130

if.end19:                                         ; preds = %if.then16, %sw.bb14
  br label %sw.epilog, !dbg !131

sw.bb20:                                          ; preds = %entry
  %10 = load i32, i32* %sub_status, align 4, !dbg !132
  %cmp21 = icmp ule i32 %10, 12, !dbg !134
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !135

if.then22:                                        ; preds = %sw.bb20
  %11 = load i32, i32* %sub_status, align 4, !dbg !136
  %idxprom23 = zext i32 %11 to i64, !dbg !138
  %arrayidx24 = getelementptr [13 x %struct.acpi_exception_info], [13 x %struct.acpi_exception_info]* @acpi_gbl_exception_names_ctrl, i64 0, i64 %idxprom23, !dbg !138
  store %struct.acpi_exception_info* %arrayidx24, %struct.acpi_exception_info** %exception, align 8, !dbg !139
  br label %if.end25, !dbg !140

if.end25:                                         ; preds = %if.then22, %sw.bb20
  br label %sw.epilog, !dbg !141

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !142

sw.epilog:                                        ; preds = %sw.default, %if.end25, %if.end19, %if.end13, %if.end7, %if.end
  %12 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %exception, align 8, !dbg !143
  %tobool = icmp ne %struct.acpi_exception_info* %12, null, !dbg !143
  br i1 %tobool, label %lor.lhs.false, label %if.then27, !dbg !145

lor.lhs.false:                                    ; preds = %sw.epilog
  %13 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %exception, align 8, !dbg !146
  %name = getelementptr inbounds %struct.acpi_exception_info, %struct.acpi_exception_info* %13, i32 0, i32 0, !dbg !147
  %14 = load i8*, i8** %name, align 8, !dbg !147
  %tobool26 = icmp ne i8* %14, null, !dbg !146
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !148

if.then27:                                        ; preds = %lor.lhs.false, %sw.epilog
  store %struct.acpi_exception_info* null, %struct.acpi_exception_info** %retval, align 8, !dbg !149
  br label %return, !dbg !149

if.end28:                                         ; preds = %lor.lhs.false
  %15 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %exception, align 8, !dbg !151
  store %struct.acpi_exception_info* %15, %struct.acpi_exception_info** %retval, align 8, !dbg !152
  br label %return, !dbg !152

return:                                           ; preds = %if.end28, %if.then27
  %16 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %retval, align 8, !dbg !153
  ret %struct.acpi_exception_info* %16, !dbg !153
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utexcep.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0, !6, !18, !23, !28, !33}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_env", scope: !2, file: !8, line: 205, type: !9, isLocal: true, isDefinition: true)
!8 = !DIFile(filename: "./include/acpi/acexcep.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2304, elements: !16)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_exception_info", file: !8, line: 40, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !8, line: 41, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17}
!17 = !DISubrange(count: 36)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_pgm", scope: !2, file: !8, line: 257, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 640, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 10)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_tbl", scope: !2, file: !8, line: 276, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 384, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 6)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_aml", scope: !2, file: !8, line: 286, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2432, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 38)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_ctrl", scope: !2, file: !8, line: 359, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 832, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 13)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !40)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!40 = !{!41}
!41 = !DISubrange(count: 8)
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"Code Model", i32 2}
!46 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!47 = distinct !DISubprogram(name: "acpi_format_exception", scope: !3, file: !3, line: 30, type: !48, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !52, line: 421, baseType: !53)
!52 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !54, line: 21, baseType: !55)
!54 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !56, line: 27, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!57 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!58 = !DILocalVariable(name: "status", arg: 1, scope: !47, file: !3, line: 30, type: !51)
!59 = !DILocation(line: 30, column: 47, scope: !47)
!60 = !DILocalVariable(name: "exception", scope: !47, file: !3, line: 32, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!62 = !DILocation(line: 32, column: 36, scope: !47)
!63 = !DILocation(line: 36, column: 41, scope: !47)
!64 = !DILocation(line: 36, column: 14, scope: !47)
!65 = !DILocation(line: 36, column: 12, scope: !47)
!66 = !DILocation(line: 37, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !3, line: 37, column: 6)
!68 = !DILocation(line: 37, column: 6, scope: !47)
!69 = !DILocation(line: 41, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !3, line: 37, column: 18)
!71 = !DILocation(line: 44, column: 3, scope: !70)
!72 = !DILocation(line: 47, column: 10, scope: !47)
!73 = !DILocation(line: 47, column: 21, scope: !47)
!74 = !DILocation(line: 47, column: 2, scope: !47)
!75 = !DILocation(line: 48, column: 1, scope: !47)
!76 = distinct !DISubprogram(name: "acpi_ut_validate_exception", scope: !3, file: !3, line: 65, type: !77, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!77 = !DISubroutineType(types: !78)
!78 = !{!61, !51}
!79 = !DILocalVariable(name: "status", arg: 1, scope: !76, file: !3, line: 65, type: !51)
!80 = !DILocation(line: 65, column: 74, scope: !76)
!81 = !DILocalVariable(name: "sub_status", scope: !76, file: !3, line: 67, type: !53)
!82 = !DILocation(line: 67, column: 6, scope: !76)
!83 = !DILocalVariable(name: "exception", scope: !76, file: !3, line: 68, type: !61)
!84 = !DILocation(line: 68, column: 36, scope: !76)
!85 = !DILocation(line: 75, column: 16, scope: !76)
!86 = !DILocation(line: 75, column: 23, scope: !76)
!87 = !DILocation(line: 75, column: 13, scope: !76)
!88 = !DILocation(line: 77, column: 10, scope: !76)
!89 = !DILocation(line: 77, column: 17, scope: !76)
!90 = !DILocation(line: 77, column: 2, scope: !76)
!91 = !DILocation(line: 80, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 80, column: 7)
!93 = distinct !DILexicalBlock(scope: !76, file: !3, line: 77, column: 33)
!94 = !DILocation(line: 80, column: 18, scope: !92)
!95 = !DILocation(line: 80, column: 7, scope: !93)
!96 = !DILocation(line: 81, column: 46, scope: !97)
!97 = distinct !DILexicalBlock(scope: !92, file: !3, line: 80, column: 38)
!98 = !DILocation(line: 81, column: 17, scope: !97)
!99 = !DILocation(line: 81, column: 14, scope: !97)
!100 = !DILocation(line: 82, column: 3, scope: !97)
!101 = !DILocation(line: 83, column: 3, scope: !93)
!102 = !DILocation(line: 87, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !93, file: !3, line: 87, column: 7)
!104 = !DILocation(line: 87, column: 18, scope: !103)
!105 = !DILocation(line: 87, column: 7, scope: !93)
!106 = !DILocation(line: 88, column: 46, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 87, column: 38)
!108 = !DILocation(line: 88, column: 17, scope: !107)
!109 = !DILocation(line: 88, column: 14, scope: !107)
!110 = !DILocation(line: 89, column: 3, scope: !107)
!111 = !DILocation(line: 90, column: 3, scope: !93)
!112 = !DILocation(line: 94, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !93, file: !3, line: 94, column: 7)
!114 = !DILocation(line: 94, column: 18, scope: !113)
!115 = !DILocation(line: 94, column: 7, scope: !93)
!116 = !DILocation(line: 95, column: 46, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !3, line: 94, column: 38)
!118 = !DILocation(line: 95, column: 17, scope: !117)
!119 = !DILocation(line: 95, column: 14, scope: !117)
!120 = !DILocation(line: 96, column: 3, scope: !117)
!121 = !DILocation(line: 97, column: 3, scope: !93)
!122 = !DILocation(line: 101, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !93, file: !3, line: 101, column: 7)
!124 = !DILocation(line: 101, column: 18, scope: !123)
!125 = !DILocation(line: 101, column: 7, scope: !93)
!126 = !DILocation(line: 102, column: 46, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 101, column: 38)
!128 = !DILocation(line: 102, column: 17, scope: !127)
!129 = !DILocation(line: 102, column: 14, scope: !127)
!130 = !DILocation(line: 103, column: 3, scope: !127)
!131 = !DILocation(line: 104, column: 3, scope: !93)
!132 = !DILocation(line: 108, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !93, file: !3, line: 108, column: 7)
!134 = !DILocation(line: 108, column: 18, scope: !133)
!135 = !DILocation(line: 108, column: 7, scope: !93)
!136 = !DILocation(line: 109, column: 47, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !3, line: 108, column: 39)
!138 = !DILocation(line: 109, column: 17, scope: !137)
!139 = !DILocation(line: 109, column: 14, scope: !137)
!140 = !DILocation(line: 110, column: 3, scope: !137)
!141 = !DILocation(line: 111, column: 3, scope: !93)
!142 = !DILocation(line: 115, column: 3, scope: !93)
!143 = !DILocation(line: 118, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !76, file: !3, line: 118, column: 6)
!145 = !DILocation(line: 118, column: 17, scope: !144)
!146 = !DILocation(line: 118, column: 21, scope: !144)
!147 = !DILocation(line: 118, column: 32, scope: !144)
!148 = !DILocation(line: 118, column: 6, scope: !76)
!149 = !DILocation(line: 119, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !3, line: 118, column: 38)
!151 = !DILocation(line: 122, column: 10, scope: !76)
!152 = !DILocation(line: 122, column: 2, scope: !76)
!153 = !DILocation(line: 123, column: 1, scope: !76)
