; ModuleID = '../bcout/drivers/acpi/acpica/nspredef.llvm.bc'
source_filename = "drivers/acpi/acpica/nspredef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
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
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@acpi_gbl_predefined_methods = dso_local constant [332 x %union.acpi_predefined_info] [%union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC0", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC1", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC2", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC3", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC4", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC5", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC6", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC7", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC8", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AC9", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ADR", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AEI", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL0", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL1", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL2", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL3", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL4", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL5", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL6", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL7", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL8", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_AL9", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALI", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ALT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ART", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\09 \02\02", i16 11, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BBN", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BCL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BCM", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BCT", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BDN", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BFS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BIF", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\09\04", i16 4, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BIX", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0D\02\10\04", i16 4, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BLT", i16 587, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMA", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMC", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BMS", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BQC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BST", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BTH", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BTM", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_BTP", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CBA", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CCA", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CDM", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CID", i16 0, i8 22 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\06\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CLS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CPC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\0A\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CR3", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CRS", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CRT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\05\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CST", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\06\08\01\02", i16 3, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_CWS", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DCK", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DCS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DDC", i16 9, i8 10 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DDN", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DEP", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DGS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DIS", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DLM", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0A \01(", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DMA", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DOD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DOS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0C\08\01\10", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSM", i16 16988, i8 63 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DSW", i16 587, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_DTI", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EC_", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EDL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ0", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ1", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ2", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ3", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJ4", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EJD", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ERR", i16 651, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_EVT", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FDE", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FDI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\10\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FDM", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FIF", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FIT", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FIX", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FPS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\09\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FSL", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_FST", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GAI", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GCP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GHL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GLK", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GPD", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GPE", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GRT", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GSB", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GTF", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GTM", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GTS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_GWS", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HID", i16 0, i8 6 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HMA", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HOT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HPP", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HPX", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\08\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_HRV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_IFT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_INI", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_IRC", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LCK", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LID", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LPD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\09\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LPI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0B\02\03\0E", i16 10, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LSI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LSR", i16 74, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\01\08", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_LSW", i16 1611, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MAT", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MBM", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\08\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MLS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\04\01\08", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MSG", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MSM", i16 4684, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_MTL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NBS", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NCH", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NIC", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NIG", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NIH", i16 25, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_NTT", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OFF", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ON_", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OS_", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OSC", i16 12892, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_OST", i16 1611, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PAI", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PCL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PCT", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\08\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PDC", i16 25, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PDL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PIC", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PIF", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\03\04", i16 3, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PLD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\08\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PMC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\0B\04", i16 3, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PMD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PMM", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PPC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PPE", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR0", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR1", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR2", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PR3", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRE", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01 \01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRS", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRT", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\07\04\02\02", i16 546, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PRW", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\03\02\12\02", i16 32, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS0", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS1", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS2", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PS3", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\05\02\00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSE", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSL", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSR", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\02\06\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PSW", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PTC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\08\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PTP", i16 74, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PTS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PUR", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_PXM", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RDI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\0B\02\01 ", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_REG", i16 74, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_REV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RMV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_ROM", i16 74, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RST", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_RTV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S0_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S1_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S2_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S3_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S4_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S5_", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02\02\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S1D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S2D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S3D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S4D", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S0W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S1W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S2W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S3W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_S4W", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBA", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBI", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\01\08", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBR", i16 587, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\0A", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBT", i16 588, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\0A", i16 1, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SBW", i16 4685, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\0A\01\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SCP", i16 -32759, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SDD", i16 25, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SEG", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SHL", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SLI", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SPD", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SRS", i16 25, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SRT", i16 25, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SRV", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SST", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STA", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STM", i16 1755, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STP", i16 74, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STR", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_STV", i16 74, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SUB", i16 0, i8 4 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SUN", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_SWS", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TC1", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TC2", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TDL", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TFP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TIP", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TIV", i16 9, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TMP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TPC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TPT", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TRT", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04 \02\02", i16 6, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\05\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSN", i16 0, i8 32 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TSS", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\04\02\05\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TST", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TTS", i16 9, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TZD", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\02 \00\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TZM", i16 0, i8 32 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_TZP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UID", i16 0, i8 6 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UPC", i16 0, i8 16 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\04\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UPD", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_UPP", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_VPO", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WAK", i16 9, i8 19 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"\01\02\02\00", i16 0, i8 0 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WDG", i16 0, i8 8 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WED", i16 9, i8 14 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WPC", i16 0, i8 2 }> }, %union.acpi_predefined_info { %struct.acpi_name_info <{ [4 x i8] c"_WPP", i16 0, i8 2 }> }, %union.acpi_predefined_info zeroinitializer], align 16, !dbg !0
@acpi_gbl_disable_auto_repair = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"nspredef\00", align 1, !dbg !803
@.str = private unnamed_addr constant [61 x i8] c"Invalid return type - Found a Namespace node [%4.4s] type %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected return object of type %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Return type mismatch - found %s, expected %s\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Return Package type mismatch at index %u - found %s, expected %s\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Return type mismatch - unexpected reference object type [%s] %2.2X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_check_return_value(%struct.acpi_namespace_node* %node, %struct.acpi_evaluate_info* %info, i32 %user_param_count, i32 %return_status, %union.acpi_operand_object** %return_object_ptr) #0 !dbg !860 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %user_param_count.addr = alloca i32, align 4
  %return_status.addr = alloca i32, align 4
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %predefined = alloca %union.acpi_predefined_info*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !885, metadata !DIExpression()), !dbg !886
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !887, metadata !DIExpression()), !dbg !888
  store i32 %user_param_count, i32* %user_param_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %user_param_count.addr, metadata !889, metadata !DIExpression()), !dbg !890
  store i32 %return_status, i32* %return_status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %return_status.addr, metadata !891, metadata !DIExpression()), !dbg !892
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !893, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.declare(metadata i32* %status, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata %union.acpi_predefined_info** %predefined, metadata !897, metadata !DIExpression()), !dbg !898
  %0 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !899
  %predefined1 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %0, i32 0, i32 6, !dbg !900
  %1 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined1, align 8, !dbg !900
  store %union.acpi_predefined_info* %1, %union.acpi_predefined_info** %predefined, align 8, !dbg !901
  %2 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined, align 8, !dbg !902
  %tobool = icmp ne %union.acpi_predefined_info* %2, null, !dbg !902
  br i1 %tobool, label %if.end, label %if.then, !dbg !904

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !905
  br label %return, !dbg !905

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %return_status.addr, align 4, !dbg !907
  %cmp = icmp ne i32 %3, 0, !dbg !909
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !910

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %return_status.addr, align 4, !dbg !911
  %cmp2 = icmp ne i32 %4, 16385, !dbg !912
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !913

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !914
  br label %return, !dbg !914

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i8, i8* @acpi_gbl_disable_auto_repair, align 1, !dbg !916
  %conv = zext i8 %5 to i32, !dbg !916
  %tobool5 = icmp ne i32 %conv, 0, !dbg !916
  br i1 %tobool5, label %if.then14, label %lor.lhs.false, !dbg !918

lor.lhs.false:                                    ; preds = %if.end4
  %6 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined, align 8, !dbg !919
  %info6 = bitcast %union.acpi_predefined_info* %6 to %struct.acpi_name_info*, !dbg !920
  %expected_btypes = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info6, i32 0, i32 2, !dbg !921
  %7 = load i8, i8* %expected_btypes, align 1, !dbg !921
  %tobool7 = icmp ne i8 %7, 0, !dbg !919
  br i1 %tobool7, label %lor.lhs.false8, label %if.then14, !dbg !922

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %8 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined, align 8, !dbg !923
  %info9 = bitcast %union.acpi_predefined_info* %8 to %struct.acpi_name_info*, !dbg !924
  %expected_btypes10 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info9, i32 0, i32 2, !dbg !925
  %9 = load i8, i8* %expected_btypes10, align 1, !dbg !925
  %conv11 = zext i8 %9 to i32, !dbg !923
  %cmp12 = icmp eq i32 %conv11, 63, !dbg !926
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !927

if.then14:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end4
  store i32 0, i32* %retval, align 4, !dbg !928
  br label %return, !dbg !928

if.end15:                                         ; preds = %lor.lhs.false8
  %10 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !930
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !931
  %12 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %predefined, align 8, !dbg !932
  %info16 = bitcast %union.acpi_predefined_info* %12 to %struct.acpi_name_info*, !dbg !933
  %expected_btypes17 = getelementptr inbounds %struct.acpi_name_info, %struct.acpi_name_info* %info16, i32 0, i32 2, !dbg !934
  %13 = load i8, i8* %expected_btypes17, align 1, !dbg !934
  %conv18 = zext i8 %13 to i32, !dbg !932
  %call = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %10, %union.acpi_operand_object** %11, i32 %conv18, i32 -1) #3, !dbg !935
  store i32 %call, i32* %status, align 4, !dbg !936
  %14 = load i32, i32* %status, align 4, !dbg !937
  %tobool19 = icmp ne i32 %14, 0, !dbg !937
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !939

if.then20:                                        ; preds = %if.end15
  br label %exit, !dbg !940

if.end21:                                         ; preds = %if.end15
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !942
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8, !dbg !944
  %tobool22 = icmp ne %union.acpi_operand_object* %16, null, !dbg !945
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !946

if.then23:                                        ; preds = %if.end21
  br label %exit, !dbg !947

if.end24:                                         ; preds = %if.end21
  %17 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !949
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8, !dbg !951
  %common = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_common*, !dbg !952
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !953
  %19 = load i8, i8* %type, align 1, !dbg !953
  %conv25 = zext i8 %19 to i32, !dbg !954
  %cmp26 = icmp eq i32 %conv25, 4, !dbg !955
  br i1 %cmp26, label %if.then28, label %if.end40, !dbg !956

if.then28:                                        ; preds = %if.end24
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !957
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %20, align 8, !dbg !959
  %22 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !960
  %parent_package = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %22, i32 0, i32 8, !dbg !961
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %parent_package, align 8, !dbg !962
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !963
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !964
  %call29 = call i32 @acpi_ns_check_package(%struct.acpi_evaluate_info* %23, %union.acpi_operand_object** %24) #3, !dbg !965
  store i32 %call29, i32* %status, align 4, !dbg !966
  %25 = load i32, i32* %status, align 4, !dbg !967
  %tobool30 = icmp ne i32 %25, 0, !dbg !967
  br i1 %tobool30, label %if.then31, label %if.end39, !dbg !969

if.then31:                                        ; preds = %if.then28
  %26 = load i32, i32* %status, align 4, !dbg !970
  %cmp32 = icmp ne i32 %26, 12291, !dbg !973
  br i1 %cmp32, label %land.lhs.true34, label %if.end38, !dbg !974

land.lhs.true34:                                  ; preds = %if.then31
  %27 = load i32, i32* %status, align 4, !dbg !975
  %cmp35 = icmp ne i32 %27, 12292, !dbg !976
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !977

if.then37:                                        ; preds = %land.lhs.true34
  br label %exit, !dbg !978

if.end38:                                         ; preds = %land.lhs.true34, %if.then31
  br label %if.end39, !dbg !980

if.end39:                                         ; preds = %if.end38, %if.then28
  br label %if.end40, !dbg !981

if.end40:                                         ; preds = %if.end39, %if.end24
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !982
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !983
  %30 = load i32, i32* %status, align 4, !dbg !984
  %31 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !985
  %call41 = call i32 @acpi_ns_complex_repairs(%struct.acpi_evaluate_info* %28, %struct.acpi_namespace_node* %29, i32 %30, %union.acpi_operand_object** %31) #3, !dbg !986
  store i32 %call41, i32* %status, align 4, !dbg !987
  br label %exit, !dbg !988

exit:                                             ; preds = %if.end40, %if.then37, %if.then23, %if.then20
  call void @llvm.dbg.label(metadata !989), !dbg !990
  %32 = load i32, i32* %status, align 4, !dbg !991
  %tobool42 = icmp ne i32 %32, 0, !dbg !991
  br i1 %tobool42, label %if.then45, label %lor.lhs.false43, !dbg !993

lor.lhs.false43:                                  ; preds = %exit
  %33 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !994
  %return_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %33, i32 0, i32 9, !dbg !995
  %34 = load i32, i32* %return_flags, align 8, !dbg !995
  %and = and i32 %34, 1, !dbg !996
  %tobool44 = icmp ne i32 %and, 0, !dbg !996
  br i1 %tobool44, label %if.then45, label %if.end48, !dbg !997

if.then45:                                        ; preds = %lor.lhs.false43, %exit
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !998
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %35, i32 0, i32 3, !dbg !1000
  %36 = load i16, i16* %flags, align 2, !dbg !1001
  %conv46 = zext i16 %36 to i32, !dbg !1001
  %or = or i32 %conv46, 32, !dbg !1001
  %conv47 = trunc i32 %or to i16, !dbg !1001
  store i16 %conv47, i16* %flags, align 2, !dbg !1001
  br label %if.end48, !dbg !1002

if.end48:                                         ; preds = %if.then45, %lor.lhs.false43
  %37 = load i32, i32* %status, align 4, !dbg !1003
  store i32 %37, i32* %retval, align 4, !dbg !1004
  br label %return, !dbg !1004

return:                                           ; preds = %if.end48, %if.then14, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !1005
  ret i32 %38, !dbg !1005
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object** %return_object_ptr, i32 %expected_btypes, i32 %package_index) #0 !dbg !1006 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %expected_btypes.addr = alloca i32, align 4
  %package_index.addr = alloca i32, align 4
  %return_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %type_buffer = alloca [96 x i8], align 16
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  store %union.acpi_operand_object** %return_object_ptr, %union.acpi_operand_object*** %return_object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object_ptr.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i32 %expected_btypes, i32* %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected_btypes.addr, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i32 %package_index, i32* %package_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %package_index.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object, metadata !1017, metadata !DIExpression()), !dbg !1018
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1019
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !1020
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %return_object, align 8, !dbg !1018
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i32 0, i32* %status, align 4, !dbg !1022
  call void @llvm.dbg.declare(metadata [96 x i8]* %type_buffer, metadata !1023, metadata !DIExpression()), !dbg !1027
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1028
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1028
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1030

land.lhs.true:                                    ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1031
  %4 = bitcast %union.acpi_operand_object* %3 to i8*, !dbg !1031
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !1031
  %common = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !1031
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1031
  %6 = load i8, i8* %descriptor_type, align 8, !dbg !1031
  %conv = zext i8 %6 to i32, !dbg !1031
  %cmp = icmp eq i32 %conv, 15, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end, !dbg !1033

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1034
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %7, i32 0, i32 5, !dbg !1034
  %8 = load i8*, i8** %full_pathname, align 8, !dbg !1034
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1034
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %9, i32 0, i32 12, !dbg !1034
  %10 = load i16, i16* %node_flags, align 2, !dbg !1034
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1034
  %node = bitcast %union.acpi_operand_object* %11 to %struct.acpi_namespace_node*, !dbg !1034
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %node, i32 0, i32 4, !dbg !1034
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1034
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1034
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1034
  %node2 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_namespace_node*, !dbg !1034
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %node2, i32 0, i32 2, !dbg !1034
  %13 = load i8, i8* %type, align 1, !dbg !1034
  %conv3 = zext i8 %13 to i32, !dbg !1034
  %call = call i8* @acpi_ut_get_type_name(i32 %conv3) #3, !dbg !1034
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 201, i8* %8, i16 zeroext %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i8* %call) #3, !dbg !1034
  store i32 12291, i32* %retval, align 4, !dbg !1036
  br label %return, !dbg !1036

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1037
  %call4 = call i32 @acpi_ns_get_bitmapped_type(%union.acpi_operand_object* %14) #3, !dbg !1038
  %15 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1039
  %return_btype = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %15, i32 0, i32 10, !dbg !1040
  store i32 %call4, i32* %return_btype, align 4, !dbg !1041
  %16 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1042
  %return_btype5 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %16, i32 0, i32 10, !dbg !1044
  %17 = load i32, i32* %return_btype5, align 4, !dbg !1044
  %cmp6 = icmp eq i32 %17, 0, !dbg !1045
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1046

if.then8:                                         ; preds = %if.end
  br label %type_error_exit, !dbg !1047

if.end9:                                          ; preds = %if.end
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1049
  %return_btype10 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %18, i32 0, i32 10, !dbg !1051
  %19 = load i32, i32* %return_btype10, align 4, !dbg !1051
  %20 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1052
  %and = and i32 %19, %20, !dbg !1053
  %cmp11 = icmp eq i32 %and, 32, !dbg !1054
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !1055

if.then13:                                        ; preds = %if.end9
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1056
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1058
  %call14 = call i32 @acpi_ns_check_reference(%struct.acpi_evaluate_info* %21, %union.acpi_operand_object* %22) #3, !dbg !1059
  store i32 %call14, i32* %status, align 4, !dbg !1060
  %23 = load i32, i32* %status, align 4, !dbg !1061
  store i32 %23, i32* %retval, align 4, !dbg !1062
  br label %return, !dbg !1062

if.end15:                                         ; preds = %if.end9
  %24 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1063
  %25 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1064
  %26 = load i32, i32* %package_index.addr, align 4, !dbg !1065
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object_ptr.addr, align 8, !dbg !1066
  %call16 = call i32 @acpi_ns_simple_repair(%struct.acpi_evaluate_info* %24, i32 %25, i32 %26, %union.acpi_operand_object** %27) #3, !dbg !1067
  store i32 %call16, i32* %status, align 4, !dbg !1068
  %28 = load i32, i32* %status, align 4, !dbg !1069
  %tobool17 = icmp ne i32 %28, 0, !dbg !1069
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !1071

if.then18:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4, !dbg !1072
  br label %return, !dbg !1072

if.end19:                                         ; preds = %if.end15
  br label %type_error_exit, !dbg !1069

type_error_exit:                                  ; preds = %if.end19, %if.then8
  call void @llvm.dbg.label(metadata !1074), !dbg !1075
  %arraydecay20 = getelementptr inbounds [96 x i8], [96 x i8]* %type_buffer, i64 0, i64 0, !dbg !1076
  %29 = load i32, i32* %expected_btypes.addr, align 4, !dbg !1077
  call void @acpi_ut_get_expected_return_types(i8* %arraydecay20, i32 %29) #3, !dbg !1078
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1079
  %tobool21 = icmp ne %union.acpi_operand_object* %30, null, !dbg !1079
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !1081

if.then22:                                        ; preds = %type_error_exit
  %31 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1082
  %full_pathname23 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %31, i32 0, i32 5, !dbg !1082
  %32 = load i8*, i8** %full_pathname23, align 8, !dbg !1082
  %33 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1082
  %node_flags24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %33, i32 0, i32 12, !dbg !1082
  %34 = load i16, i16* %node_flags24, align 2, !dbg !1082
  %arraydecay25 = getelementptr inbounds [96 x i8], [96 x i8]* %type_buffer, i64 0, i64 0, !dbg !1082
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 247, i8* %32, i16 zeroext %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay25) #3, !dbg !1082
  br label %if.end39, !dbg !1084

if.else:                                          ; preds = %type_error_exit
  %35 = load i32, i32* %package_index.addr, align 4, !dbg !1085
  %cmp26 = icmp eq i32 %35, -1, !dbg !1087
  br i1 %cmp26, label %if.then28, label %if.else33, !dbg !1088

if.then28:                                        ; preds = %if.else
  %36 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1089
  %full_pathname29 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %36, i32 0, i32 5, !dbg !1089
  %37 = load i8*, i8** %full_pathname29, align 8, !dbg !1089
  %38 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1089
  %node_flags30 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %38, i32 0, i32 12, !dbg !1089
  %39 = load i16, i16* %node_flags30, align 2, !dbg !1089
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1089
  %call31 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %40) #3, !dbg !1089
  %arraydecay32 = getelementptr inbounds [96 x i8], [96 x i8]* %type_buffer, i64 0, i64 0, !dbg !1089
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 252, i8* %37, i16 zeroext %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %call31, i8* %arraydecay32) #3, !dbg !1089
  br label %if.end38, !dbg !1091

if.else33:                                        ; preds = %if.else
  %41 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1092
  %full_pathname34 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %41, i32 0, i32 5, !dbg !1092
  %42 = load i8*, i8** %full_pathname34, align 8, !dbg !1092
  %43 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1092
  %node_flags35 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %43, i32 0, i32 12, !dbg !1092
  %44 = load i16, i16* %node_flags35, align 2, !dbg !1092
  %45 = load i32, i32* %package_index.addr, align 4, !dbg !1092
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object, align 8, !dbg !1092
  %call36 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %46) #3, !dbg !1092
  %arraydecay37 = getelementptr inbounds [96 x i8], [96 x i8]* %type_buffer, i64 0, i64 0, !dbg !1092
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 258, i8* %42, i16 zeroext %44, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %45, i8* %call36, i8* %arraydecay37) #3, !dbg !1092
  br label %if.end38

if.end38:                                         ; preds = %if.else33, %if.then28
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then22
  store i32 12291, i32* %retval, align 4, !dbg !1094
  br label %return, !dbg !1094

return:                                           ; preds = %if.end39, %if.then18, %if.then13, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !1095
  ret i32 %47, !dbg !1095
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_check_package(%struct.acpi_evaluate_info*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_complex_repairs(%struct.acpi_evaluate_info*, %struct.acpi_namespace_node*, i32, %union.acpi_operand_object**) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_predefined_warning(i8*, i32, i8*, i16 zeroext, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_get_bitmapped_type(%union.acpi_operand_object* %return_object) #0 !dbg !1096 {
entry:
  %retval = alloca i32, align 4
  %return_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_btype = alloca i32, align 4
  store %union.acpi_operand_object* %return_object, %union.acpi_operand_object** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object.addr, metadata !1099, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.declare(metadata i32* %return_btype, metadata !1101, metadata !DIExpression()), !dbg !1102
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1103
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1103
  br i1 %tobool, label %if.end, label %if.then, !dbg !1105

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !1106
  br label %return, !dbg !1106

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1108
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1109
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1110
  %2 = load i8, i8* %type, align 1, !dbg !1110
  %conv = zext i8 %2 to i32, !dbg !1108
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 20, label %sw.bb4
  ], !dbg !1111

sw.bb:                                            ; preds = %if.end
  store i32 2, i32* %return_btype, align 4, !dbg !1112
  br label %sw.epilog, !dbg !1114

sw.bb1:                                           ; preds = %if.end
  store i32 8, i32* %return_btype, align 4, !dbg !1115
  br label %sw.epilog, !dbg !1116

sw.bb2:                                           ; preds = %if.end
  store i32 4, i32* %return_btype, align 4, !dbg !1117
  br label %sw.epilog, !dbg !1118

sw.bb3:                                           ; preds = %if.end
  store i32 16, i32* %return_btype, align 4, !dbg !1119
  br label %sw.epilog, !dbg !1120

sw.bb4:                                           ; preds = %if.end
  store i32 32, i32* %return_btype, align 4, !dbg !1121
  br label %sw.epilog, !dbg !1122

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %return_btype, align 4, !dbg !1123
  br label %sw.epilog, !dbg !1124

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32, i32* %return_btype, align 4, !dbg !1125
  store i32 %3, i32* %retval, align 4, !dbg !1126
  br label %return, !dbg !1126

return:                                           ; preds = %sw.epilog, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !1127
  ret i32 %4, !dbg !1127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_check_reference(%struct.acpi_evaluate_info* %info, %union.acpi_operand_object* %return_object) #0 !dbg !1128 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_evaluate_info*, align 8
  %return_object.addr = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_evaluate_info* %info, %struct.acpi_evaluate_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_evaluate_info** %info.addr, metadata !1131, metadata !DIExpression()), !dbg !1132
  store %union.acpi_operand_object* %return_object, %union.acpi_operand_object** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_object.addr, metadata !1133, metadata !DIExpression()), !dbg !1134
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1135
  %reference = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_reference*, !dbg !1137
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1138
  %1 = load i8, i8* %class, align 1, !dbg !1138
  %conv = zext i8 %1 to i32, !dbg !1135
  %cmp = icmp eq i32 %conv, 5, !dbg !1139
  br i1 %cmp, label %if.then, label %if.end, !dbg !1140

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1141
  br label %return, !dbg !1141

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1143
  %full_pathname = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %2, i32 0, i32 5, !dbg !1143
  %3 = load i8*, i8** %full_pathname, align 8, !dbg !1143
  %4 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %info.addr, align 8, !dbg !1143
  %node_flags = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %4, i32 0, i32 12, !dbg !1143
  %5 = load i16, i16* %node_flags, align 2, !dbg !1143
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1143
  %call = call i8* @acpi_ut_get_reference_name(%union.acpi_operand_object* %6) #3, !dbg !1143
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_object.addr, align 8, !dbg !1143
  %reference2 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_reference*, !dbg !1143
  %class3 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference2, i32 0, i32 5, !dbg !1143
  %8 = load i8, i8* %class3, align 1, !dbg !1143
  %conv4 = zext i8 %8 to i32, !dbg !1143
  call void (i8*, i32, i8*, i16, i8*, ...) @acpi_ut_predefined_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 299, i8* %3, i16 zeroext %5, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i8* %call, i32 %conv4) #3, !dbg !1143
  store i32 12291, i32* %retval, align 4, !dbg !1144
  br label %return, !dbg !1144

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1145
  ret i32 %9, !dbg !1145
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_simple_repair(%struct.acpi_evaluate_info*, i32, i32, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_get_expected_return_types(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_reference_name(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!855, !856, !857, !858}
!llvm.ident = !{!859}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_predefined_methods", scope: !2, file: !807, line: 187, type: !808, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !802, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nspredef.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !20, !24, !31}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !26)
!26 = !{!27, !36, !800, !801}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !6, line: 433, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !28, file: !6, line: 428, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !6, line: 429, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !6, line: 434, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !38)
!38 = !{!39, !51, !67, !79, !115, !129, !138, !451, !468, !483, !496, !574, !586, !600, !610, !628, !650, !669, !688, !707, !720, !746, !763, !776, !790, !799}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !6, line: 368, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !6, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !6, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !6, line: 369, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !66)
!66 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !6, line: 370, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !6, line: 94, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !6, line: 94, baseType: !47, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !6, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !6, line: 371, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !43, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !47, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !43, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !47, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 327, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 328, baseType: !20, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 329, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !47)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !6, line: 372, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !43, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !47, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !6, line: 373, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !43, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !47, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !31, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !6, line: 374, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !448, !449, !450}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 144, baseType: !43, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 144, baseType: !47, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 144, baseType: !33, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 146, baseType: !33, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 147, baseType: !43, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 148, baseType: !43, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 149, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 153, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 150, size: 64, elements: !154)
!154 = !{!155, !447}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 151, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !33, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !33, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !47, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !33, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !33, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !33, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !114, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !33, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !33, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !33, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !33, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !33, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !33, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !33, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !33, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !88, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !20, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !20, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 893, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !95, line: 894, baseType: !88, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !95, line: 895, baseType: !88, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !95, line: 896, baseType: !88, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !95, line: 897, baseType: !88, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !95, line: 898, baseType: !88, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !95, line: 899, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 875, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !95, line: 876, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 828, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !95, line: 829, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !95, line: 829, baseType: !33, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !95, line: 829, baseType: !33, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !95, line: 829, baseType: !47, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !95, line: 829, baseType: !88, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !95, line: 829, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !95, line: 829, baseType: !93, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !95, line: 829, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 716, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !95, line: 717, baseType: !64, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !95, line: 718, baseType: !20, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !95, line: 719, baseType: !76, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !95, line: 720, baseType: !88, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !95, line: 721, baseType: !76, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !95, line: 722, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !95, line: 829, baseType: !33, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !95, line: 877, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 835, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !95, line: 836, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !95, line: 836, baseType: !33, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !95, line: 836, baseType: !33, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !95, line: 836, baseType: !47, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !95, line: 836, baseType: !88, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !95, line: 836, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !95, line: 836, baseType: !93, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !95, line: 836, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !95, line: 836, baseType: !33, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !95, line: 836, baseType: !76, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !95, line: 837, baseType: !88, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !95, line: 838, baseType: !20, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !95, line: 839, baseType: !20, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !95, line: 878, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 846, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !95, line: 847, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !95, line: 847, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !95, line: 847, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !95, line: 847, baseType: !47, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !95, line: 847, baseType: !88, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !95, line: 847, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !95, line: 847, baseType: !93, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !95, line: 847, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !95, line: 847, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !95, line: 847, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !95, line: 848, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !95, line: 849, baseType: !76, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !95, line: 850, baseType: !33, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !95, line: 851, baseType: !76, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !95, line: 852, baseType: !76, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !95, line: 853, baseType: !76, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !95, line: 854, baseType: !107, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !95, line: 855, baseType: !20, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !95, line: 856, baseType: !20, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !95, line: 857, baseType: !20, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !95, line: 858, baseType: !20, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !95, line: 859, baseType: !20, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !95, line: 860, baseType: !20, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !95, line: 861, baseType: !20, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !95, line: 862, baseType: !20, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !95, line: 863, baseType: !20, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !95, line: 864, baseType: !20, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !95, line: 865, baseType: !20, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !95, line: 866, baseType: !20, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !95, line: 867, baseType: !20, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !95, line: 868, baseType: !47, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !95, line: 869, baseType: !33, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !95, line: 870, baseType: !33, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !95, line: 871, baseType: !33, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !95, line: 872, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !95, line: 900, baseType: !93, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !95, line: 901, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 663, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !95, line: 664, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 567, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !95, line: 568, baseType: !31, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !95, line: 568, baseType: !33, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !95, line: 568, baseType: !33, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !95, line: 568, baseType: !47, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !95, line: 568, baseType: !47, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !95, line: 665, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 593, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !95, line: 594, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !95, line: 594, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !95, line: 594, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !95, line: 594, baseType: !47, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !95, line: 594, baseType: !47, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !95, line: 594, baseType: !47, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !95, line: 595, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !95, line: 596, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !95, line: 597, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !95, line: 598, baseType: !64, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !95, line: 666, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 573, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !95, line: 574, baseType: !31, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !95, line: 574, baseType: !33, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !95, line: 574, baseType: !33, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !95, line: 574, baseType: !47, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !95, line: 574, baseType: !47, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !95, line: 574, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !95, line: 667, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 604, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !95, line: 605, baseType: !31, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !95, line: 605, baseType: !33, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !95, line: 605, baseType: !33, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !95, line: 605, baseType: !47, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !95, line: 605, baseType: !47, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !95, line: 605, baseType: !93, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !95, line: 668, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 608, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !95, line: 609, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !95, line: 609, baseType: !33, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !95, line: 609, baseType: !33, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !95, line: 609, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !95, line: 609, baseType: !47, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !95, line: 609, baseType: !20, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !95, line: 610, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !95, line: 611, baseType: !88, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !95, line: 612, baseType: !88, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !95, line: 613, baseType: !20, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !95, line: 669, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 580, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !95, line: 581, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !95, line: 581, baseType: !33, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !95, line: 581, baseType: !33, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !95, line: 581, baseType: !47, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !95, line: 581, baseType: !47, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !95, line: 581, baseType: !20, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !95, line: 582, baseType: !43, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !95, line: 583, baseType: !43, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !95, line: 584, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !95, line: 585, baseType: !31, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !95, line: 586, baseType: !20, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !95, line: 670, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 620, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !95, line: 621, baseType: !31, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !95, line: 621, baseType: !33, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !95, line: 621, baseType: !33, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !95, line: 621, baseType: !47, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !95, line: 621, baseType: !47, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !95, line: 621, baseType: !33, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !95, line: 622, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !95, line: 623, baseType: !43, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !95, line: 624, baseType: !64, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !95, line: 671, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 631, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !95, line: 632, baseType: !31, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !95, line: 632, baseType: !33, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !95, line: 632, baseType: !33, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !95, line: 632, baseType: !47, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !95, line: 632, baseType: !47, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !95, line: 633, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !95, line: 672, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 654, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !95, line: 655, baseType: !31, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !95, line: 655, baseType: !33, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !95, line: 655, baseType: !33, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !95, line: 655, baseType: !47, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !95, line: 655, baseType: !47, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !95, line: 655, baseType: !33, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !95, line: 656, baseType: !93, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !95, line: 657, baseType: !43, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !95, line: 658, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 645, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !95, line: 646, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !20, !31}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !31)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !95, line: 647, baseType: !31, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !95, line: 902, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !95, line: 903, baseType: !20, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !20, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !20, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !47, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !33, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !125, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !88, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !125, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !93, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !43, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !93, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !43, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !93, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !76, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 702, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !95, line: 706, baseType: !20, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !95, line: 707, baseType: !20, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !95, line: 708, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !95, line: 709, baseType: !33, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !95, line: 710, baseType: !33, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !95, line: 711, baseType: !33, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !43, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !43, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 637, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 641, baseType: !157)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 152, baseType: !43, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 155, baseType: !20, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 156, baseType: !114, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 157, baseType: !33, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !6, line: 375, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !43, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !47, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !47, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !31, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !64, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !43, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !43, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !33, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !6, line: 376, baseType: !469, size: 448)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !47, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !43, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !43, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !6, line: 377, baseType: !484, size: 320)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !6, line: 185, baseType: !43, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !6, line: 185, baseType: !33, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !6, line: 185, baseType: !33, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !6, line: 185, baseType: !47, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !6, line: 185, baseType: !33, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !6, line: 185, baseType: !492, size: 128, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !6, line: 185, baseType: !43, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !6, line: 378, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !6, line: 188, baseType: !43, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !6, line: 188, baseType: !33, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !6, line: 188, baseType: !33, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !6, line: 188, baseType: !47, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !6, line: 188, baseType: !33, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !6, line: 189, baseType: !492, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !6, line: 189, baseType: !43, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !497, file: !6, line: 189, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !509)
!509 = !{!510, !511, !512, !513, !521, !536, !568, !569, !570, !571, !572, !573}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !95, line: 481, baseType: !93, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !95, line: 482, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !95, line: 483, baseType: !507, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !508, file: !95, line: 484, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !95, line: 498, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !95, line: 499, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !515, file: !95, line: 500, baseType: !507, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !515, file: !95, line: 501, baseType: !20, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !508, file: !95, line: 485, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !523, file: !95, line: 467, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !526, file: !95, line: 460, baseType: !33, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !526, file: !95, line: 461, baseType: !64, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !523, file: !95, line: 468, baseType: !526, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !523, file: !95, line: 469, baseType: !47, size: 16, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !523, file: !95, line: 470, baseType: !33, size: 8, offset: 272)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !523, file: !95, line: 471, baseType: !33, size: 8, offset: 280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !523, file: !95, line: 472, baseType: !33, size: 8, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !523, file: !95, line: 473, baseType: !33, size: 8, offset: 296)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !508, file: !95, line: 486, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !539)
!539 = !{!540, !563, !564, !565, !566, !567}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !538, file: !95, line: 449, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !542)
!542 = !{!543, !544, !557}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !541, file: !95, line: 439, baseType: !93, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !541, file: !95, line: 440, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !547)
!547 = !{!548, !553, !554, !555, !556}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !95, line: 420, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!20, !389, !20, !31}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !546, file: !95, line: 421, baseType: !31, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !546, file: !95, line: 423, baseType: !33, size: 8, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !546, file: !95, line: 424, baseType: !33, size: 8, offset: 200)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !541, file: !95, line: 441, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !559, file: !95, line: 430, baseType: !93, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !95, line: 431, baseType: !558, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !538, file: !95, line: 450, baseType: !522, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !95, line: 451, baseType: !33, size: 8, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !538, file: !95, line: 452, baseType: !33, size: 8, offset: 136)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !538, file: !95, line: 453, baseType: !33, size: 8, offset: 144)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !538, file: !95, line: 454, baseType: !33, size: 8, offset: 152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !95, line: 487, baseType: !64, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !508, file: !95, line: 488, baseType: !20, size: 32, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !508, file: !95, line: 489, baseType: !47, size: 16, offset: 480)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !508, file: !95, line: 490, baseType: !47, size: 16, offset: 496)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !95, line: 491, baseType: !33, size: 8, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !508, file: !95, line: 492, baseType: !33, size: 8, offset: 520)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !6, line: 379, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !6, line: 193, baseType: !43, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !6, line: 193, baseType: !33, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !6, line: 193, baseType: !33, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !6, line: 193, baseType: !47, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !6, line: 193, baseType: !33, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !6, line: 193, baseType: !492, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !6, line: 193, baseType: !43, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !575, file: !6, line: 193, baseType: !20, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !575, file: !6, line: 194, baseType: !20, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !6, line: 380, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !6, line: 198, baseType: !43, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !6, line: 198, baseType: !33, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !6, line: 198, baseType: !33, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !6, line: 198, baseType: !47, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !6, line: 198, baseType: !33, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !587, file: !6, line: 200, baseType: !33, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !587, file: !6, line: 201, baseType: !33, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !6, line: 202, baseType: !492, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !6, line: 202, baseType: !43, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !587, file: !6, line: 202, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !6, line: 381, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !6, line: 206, baseType: !43, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !6, line: 206, baseType: !33, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !6, line: 206, baseType: !33, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !6, line: 206, baseType: !47, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !6, line: 206, baseType: !33, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !6, line: 206, baseType: !492, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !6, line: 206, baseType: !43, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !6, line: 382, baseType: !611, size: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !6, line: 234, baseType: !43, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !6, line: 234, baseType: !47, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !6, line: 234, baseType: !93, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !6, line: 234, baseType: !20, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !6, line: 234, baseType: !20, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !6, line: 234, baseType: !20, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !6, line: 234, baseType: !33, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !6, line: 234, baseType: !43, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !6, line: 383, baseType: !629, size: 576)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !6, line: 238, baseType: !43, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !6, line: 238, baseType: !47, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !6, line: 238, baseType: !93, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !6, line: 238, baseType: !20, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !6, line: 238, baseType: !20, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !6, line: 238, baseType: !20, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !6, line: 238, baseType: !33, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !629, file: !6, line: 238, baseType: !47, size: 16, offset: 304)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !629, file: !6, line: 239, baseType: !43, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !629, file: !6, line: 240, baseType: !88, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !629, file: !6, line: 241, baseType: !47, size: 16, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !629, file: !6, line: 242, baseType: !88, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !6, line: 384, baseType: !651, size: 384)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !6, line: 263, baseType: !43, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !6, line: 263, baseType: !47, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !6, line: 263, baseType: !93, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !6, line: 263, baseType: !20, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !6, line: 263, baseType: !20, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !6, line: 263, baseType: !20, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !651, file: !6, line: 263, baseType: !33, size: 8, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !651, file: !6, line: 264, baseType: !43, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !6, line: 385, baseType: !670, size: 448)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !6, line: 246, baseType: !43, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !6, line: 246, baseType: !47, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 104)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 120)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !6, line: 246, baseType: !93, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !670, file: !6, line: 246, baseType: !20, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !670, file: !6, line: 246, baseType: !20, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !6, line: 246, baseType: !20, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !670, file: !6, line: 246, baseType: !33, size: 8, offset: 296)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !670, file: !6, line: 246, baseType: !43, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !670, file: !6, line: 247, baseType: !43, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !6, line: 386, baseType: !689, size: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !6, line: 251, baseType: !43, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !6, line: 251, baseType: !47, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 120)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !6, line: 251, baseType: !93, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !689, file: !6, line: 251, baseType: !20, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !689, file: !6, line: 251, baseType: !20, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !6, line: 251, baseType: !20, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !689, file: !6, line: 251, baseType: !33, size: 8, offset: 296)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !689, file: !6, line: 256, baseType: !43, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !689, file: !6, line: 257, baseType: !43, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !6, line: 387, baseType: !708, size: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !6, line: 274, baseType: !43, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !6, line: 274, baseType: !33, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !6, line: 274, baseType: !33, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !6, line: 274, baseType: !47, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !6, line: 274, baseType: !33, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !6, line: 274, baseType: !93, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !708, file: !6, line: 275, baseType: !20, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !708, file: !6, line: 276, baseType: !385, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !708, file: !6, line: 277, baseType: !31, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !6, line: 278, baseType: !492, size: 128, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !6, line: 388, baseType: !721, size: 512)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !736, !737, !738, !744, !745}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !721, file: !6, line: 282, baseType: !43, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !721, file: !6, line: 282, baseType: !47, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !721, file: !6, line: 282, baseType: !33, size: 8, offset: 104)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !721, file: !6, line: 283, baseType: !33, size: 8, offset: 112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !721, file: !6, line: 284, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!18, !20, !481, !20, !735, !31, !31}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !6, line: 285, baseType: !93, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !721, file: !6, line: 286, baseType: !31, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !721, file: !6, line: 287, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!18, !389, !20, !31, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !721, file: !6, line: 288, baseType: !43, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !6, line: 289, baseType: !43, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !6, line: 389, baseType: !747, size: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !6, line: 308, baseType: !43, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !6, line: 308, baseType: !47, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !747, file: !6, line: 308, baseType: !33, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !747, file: !6, line: 309, baseType: !33, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !747, file: !6, line: 310, baseType: !33, size: 8, offset: 120)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !747, file: !6, line: 311, baseType: !31, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !6, line: 312, baseType: !93, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !747, file: !6, line: 313, baseType: !125, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !747, file: !6, line: 314, baseType: !88, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !747, file: !6, line: 315, baseType: !88, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !6, line: 316, baseType: !20, size: 32, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !6, line: 390, baseType: !764, size: 448)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !6, line: 341, baseType: !43, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !6, line: 341, baseType: !33, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !6, line: 341, baseType: !33, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !6, line: 341, baseType: !47, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !6, line: 341, baseType: !33, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !764, file: !6, line: 341, baseType: !93, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !764, file: !6, line: 342, baseType: !93, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !764, file: !6, line: 343, baseType: !31, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !764, file: !6, line: 344, baseType: !88, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !764, file: !6, line: 345, baseType: !20, size: 32, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !6, line: 391, baseType: !777, size: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !789}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !6, line: 351, baseType: !43, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !6, line: 351, baseType: !33, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !6, line: 351, baseType: !33, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !6, line: 351, baseType: !47, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !6, line: 351, baseType: !33, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !777, file: !6, line: 351, baseType: !785, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !389, !31}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !777, file: !6, line: 352, baseType: !31, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !6, line: 392, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !791, file: !6, line: 358, baseType: !43, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !791, file: !6, line: 358, baseType: !33, size: 8, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !6, line: 358, baseType: !33, size: 8, offset: 72)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !791, file: !6, line: 358, baseType: !47, size: 16, offset: 80)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !6, line: 358, baseType: !33, size: 8, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !6, line: 358, baseType: !43, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !6, line: 399, baseType: !94, size: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !6, line: 435, baseType: !94, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !25, file: !6, line: 436, baseType: !195, size: 1600)
!802 = !{!0, !803}
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !805, isLocal: true, isDefinition: true)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 72, elements: !405)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!807 = !DIFile(filename: "drivers/acpi/acpica/acpredef.h", directory: "/home/lizy2001/genbc/linux")
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 18592, elements: !853)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !95, line: 351, size: 56, elements: !811)
!811 = !{!812, !818, !827, !835, !844}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !810, file: !95, line: 352, baseType: !813, size: 56)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !95, line: 295, size: 56, elements: !814)
!814 = !{!815, !816, !817}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !813, file: !95, line: 296, baseType: !107, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !813, file: !95, line: 297, baseType: !47, size: 16, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !813, file: !95, line: 298, baseType: !33, size: 8, offset: 48)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !810, file: !95, line: 353, baseType: !819, size: 56)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !95, line: 314, size: 56, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !95, line: 315, baseType: !33, size: 8)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !819, file: !95, line: 316, baseType: !33, size: 8, offset: 8)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !819, file: !95, line: 317, baseType: !33, size: 8, offset: 16)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !819, file: !95, line: 318, baseType: !33, size: 8, offset: 24)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !819, file: !95, line: 319, baseType: !33, size: 8, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !819, file: !95, line: 320, baseType: !47, size: 16, offset: 40)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !810, file: !95, line: 354, baseType: !828, size: 56)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !95, line: 325, size: 56, elements: !829)
!829 = !{!830, !831, !832, !834}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !828, file: !95, line: 326, baseType: !33, size: 8)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !828, file: !95, line: 327, baseType: !33, size: 8, offset: 8)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !828, file: !95, line: 328, baseType: !833, size: 32, offset: 16)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !108)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !828, file: !95, line: 329, baseType: !33, size: 8, offset: 48)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !810, file: !95, line: 355, baseType: !836, size: 56)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !95, line: 334, size: 56, elements: !837)
!837 = !{!838, !839, !840, !842, !843}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !95, line: 335, baseType: !33, size: 8)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !836, file: !95, line: 336, baseType: !33, size: 8, offset: 8)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !836, file: !95, line: 337, baseType: !841, size: 16, offset: 16)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !493)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !836, file: !95, line: 338, baseType: !33, size: 8, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !836, file: !95, line: 339, baseType: !47, size: 16, offset: 40)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !810, file: !95, line: 356, baseType: !845, size: 56)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !95, line: 342, size: 56, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !845, file: !95, line: 343, baseType: !33, size: 8)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !845, file: !95, line: 344, baseType: !33, size: 8, offset: 8)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !845, file: !95, line: 345, baseType: !33, size: 8, offset: 16)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !845, file: !95, line: 346, baseType: !33, size: 8, offset: 24)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !845, file: !95, line: 347, baseType: !33, size: 8, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !845, file: !95, line: 348, baseType: !47, size: 16, offset: 40)
!853 = !{!854}
!854 = !DISubrange(count: 332)
!855 = !{i32 7, !"Dwarf Version", i32 4}
!856 = !{i32 2, !"Debug Info Version", i32 3}
!857 = !{i32 1, !"wchar_size", i32 2}
!858 = !{i32 1, !"Code Model", i32 2}
!859 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!860 = distinct !DISubprogram(name: "acpi_ns_check_return_value", scope: !3, file: !3, line: 65, type: !861, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !884)
!861 = !DISubroutineType(types: !862)
!862 = !{!18, !93, !863, !20, !18, !125}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !162, line: 152, size: 704, elements: !865)
!865 = !{!866, !867, !869, !870, !871, !872, !873, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !864, file: !162, line: 155, baseType: !93, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !864, file: !162, line: 156, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !864, file: !162, line: 157, baseType: !125, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !864, file: !162, line: 159, baseType: !93, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !864, file: !162, line: 160, baseType: !43, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !864, file: !162, line: 161, baseType: !76, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !864, file: !162, line: 163, baseType: !874, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !864, file: !162, line: 164, baseType: !43, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !864, file: !162, line: 165, baseType: !43, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !864, file: !162, line: 167, baseType: !20, size: 32, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !864, file: !162, line: 168, baseType: !20, size: 32, offset: 608)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !864, file: !162, line: 169, baseType: !47, size: 16, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !864, file: !162, line: 170, baseType: !47, size: 16, offset: 656)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !864, file: !162, line: 171, baseType: !33, size: 8, offset: 672)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !864, file: !162, line: 172, baseType: !33, size: 8, offset: 680)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !162, line: 173, baseType: !33, size: 8, offset: 688)
!884 = !{}
!885 = !DILocalVariable(name: "node", arg: 1, scope: !860, file: !3, line: 65, type: !93)
!886 = !DILocation(line: 65, column: 56, scope: !860)
!887 = !DILocalVariable(name: "info", arg: 2, scope: !860, file: !3, line: 66, type: !863)
!888 = !DILocation(line: 66, column: 34, scope: !860)
!889 = !DILocalVariable(name: "user_param_count", arg: 3, scope: !860, file: !3, line: 67, type: !20)
!890 = !DILocation(line: 67, column: 11, scope: !860)
!891 = !DILocalVariable(name: "return_status", arg: 4, scope: !860, file: !3, line: 68, type: !18)
!892 = !DILocation(line: 68, column: 19, scope: !860)
!893 = !DILocalVariable(name: "return_object_ptr", arg: 5, scope: !860, file: !3, line: 69, type: !125)
!894 = !DILocation(line: 69, column: 35, scope: !860)
!895 = !DILocalVariable(name: "status", scope: !860, file: !3, line: 71, type: !18)
!896 = !DILocation(line: 71, column: 14, scope: !860)
!897 = !DILocalVariable(name: "predefined", scope: !860, file: !3, line: 72, type: !874)
!898 = !DILocation(line: 72, column: 36, scope: !860)
!899 = !DILocation(line: 76, column: 15, scope: !860)
!900 = !DILocation(line: 76, column: 21, scope: !860)
!901 = !DILocation(line: 76, column: 13, scope: !860)
!902 = !DILocation(line: 77, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !860, file: !3, line: 77, column: 6)
!904 = !DILocation(line: 77, column: 6, scope: !860)
!905 = !DILocation(line: 78, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 77, column: 19)
!907 = !DILocation(line: 85, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !860, file: !3, line: 85, column: 6)
!909 = !DILocation(line: 85, column: 21, scope: !908)
!910 = !DILocation(line: 85, column: 31, scope: !908)
!911 = !DILocation(line: 85, column: 35, scope: !908)
!912 = !DILocation(line: 85, column: 49, scope: !908)
!913 = !DILocation(line: 85, column: 6, scope: !860)
!914 = !DILocation(line: 86, column: 3, scope: !915)
!915 = distinct !DILexicalBlock(scope: !908, file: !3, line: 85, column: 75)
!916 = !DILocation(line: 102, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !860, file: !3, line: 102, column: 6)
!918 = !DILocation(line: 102, column: 35, scope: !917)
!919 = !DILocation(line: 103, column: 8, scope: !917)
!920 = !DILocation(line: 103, column: 20, scope: !917)
!921 = !DILocation(line: 103, column: 25, scope: !917)
!922 = !DILocation(line: 103, column: 42, scope: !917)
!923 = !DILocation(line: 104, column: 7, scope: !917)
!924 = !DILocation(line: 104, column: 19, scope: !917)
!925 = !DILocation(line: 104, column: 24, scope: !917)
!926 = !DILocation(line: 104, column: 40, scope: !917)
!927 = !DILocation(line: 102, column: 6, scope: !860)
!928 = !DILocation(line: 105, column: 3, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !3, line: 104, column: 60)
!930 = !DILocation(line: 112, column: 37, scope: !860)
!931 = !DILocation(line: 112, column: 43, scope: !860)
!932 = !DILocation(line: 113, column: 9, scope: !860)
!933 = !DILocation(line: 113, column: 21, scope: !860)
!934 = !DILocation(line: 113, column: 26, scope: !860)
!935 = !DILocation(line: 112, column: 11, scope: !860)
!936 = !DILocation(line: 112, column: 9, scope: !860)
!937 = !DILocation(line: 115, column: 6, scope: !938)
!938 = distinct !DILexicalBlock(scope: !860, file: !3, line: 115, column: 6)
!939 = !DILocation(line: 115, column: 6, scope: !860)
!940 = !DILocation(line: 116, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 115, column: 28)
!942 = !DILocation(line: 124, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !860, file: !3, line: 124, column: 6)
!944 = !DILocation(line: 124, column: 8, scope: !943)
!945 = !DILocation(line: 124, column: 7, scope: !943)
!946 = !DILocation(line: 124, column: 6, scope: !860)
!947 = !DILocation(line: 125, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !3, line: 124, column: 29)
!949 = !DILocation(line: 132, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !860, file: !3, line: 132, column: 6)
!951 = !DILocation(line: 132, column: 7, scope: !950)
!952 = !DILocation(line: 132, column: 28, scope: !950)
!953 = !DILocation(line: 132, column: 35, scope: !950)
!954 = !DILocation(line: 132, column: 6, scope: !950)
!955 = !DILocation(line: 132, column: 40, scope: !950)
!956 = !DILocation(line: 132, column: 6, scope: !860)
!957 = !DILocation(line: 133, column: 27, scope: !958)
!958 = distinct !DILexicalBlock(scope: !950, file: !3, line: 132, column: 62)
!959 = !DILocation(line: 133, column: 26, scope: !958)
!960 = !DILocation(line: 133, column: 3, scope: !958)
!961 = !DILocation(line: 133, column: 9, scope: !958)
!962 = !DILocation(line: 133, column: 24, scope: !958)
!963 = !DILocation(line: 134, column: 34, scope: !958)
!964 = !DILocation(line: 134, column: 40, scope: !958)
!965 = !DILocation(line: 134, column: 12, scope: !958)
!966 = !DILocation(line: 134, column: 10, scope: !958)
!967 = !DILocation(line: 135, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !958, file: !3, line: 135, column: 7)
!969 = !DILocation(line: 135, column: 7, scope: !958)
!970 = !DILocation(line: 139, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 139, column: 8)
!972 = distinct !DILexicalBlock(scope: !968, file: !3, line: 135, column: 29)
!973 = !DILocation(line: 139, column: 16, scope: !971)
!974 = !DILocation(line: 139, column: 40, scope: !971)
!975 = !DILocation(line: 140, column: 9, scope: !971)
!976 = !DILocation(line: 140, column: 16, scope: !971)
!977 = !DILocation(line: 139, column: 8, scope: !972)
!978 = !DILocation(line: 141, column: 5, scope: !979)
!979 = distinct !DILexicalBlock(scope: !971, file: !3, line: 140, column: 42)
!980 = !DILocation(line: 143, column: 3, scope: !972)
!981 = !DILocation(line: 144, column: 2, scope: !958)
!982 = !DILocation(line: 154, column: 35, scope: !860)
!983 = !DILocation(line: 154, column: 41, scope: !860)
!984 = !DILocation(line: 154, column: 47, scope: !860)
!985 = !DILocation(line: 154, column: 55, scope: !860)
!986 = !DILocation(line: 154, column: 11, scope: !860)
!987 = !DILocation(line: 154, column: 9, scope: !860)
!988 = !DILocation(line: 154, column: 2, scope: !860)
!989 = !DILabel(scope: !860, name: "exit", file: !3, line: 156)
!990 = !DILocation(line: 156, column: 1, scope: !860)
!991 = !DILocation(line: 162, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !860, file: !3, line: 162, column: 6)
!993 = !DILocation(line: 162, column: 27, scope: !992)
!994 = !DILocation(line: 162, column: 31, scope: !992)
!995 = !DILocation(line: 162, column: 37, scope: !992)
!996 = !DILocation(line: 162, column: 50, scope: !992)
!997 = !DILocation(line: 162, column: 6, scope: !860)
!998 = !DILocation(line: 163, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !992, file: !3, line: 162, column: 75)
!1000 = !DILocation(line: 163, column: 9, scope: !999)
!1001 = !DILocation(line: 163, column: 15, scope: !999)
!1002 = !DILocation(line: 164, column: 2, scope: !999)
!1003 = !DILocation(line: 166, column: 10, scope: !860)
!1004 = !DILocation(line: 166, column: 2, scope: !860)
!1005 = !DILocation(line: 167, column: 1, scope: !860)
!1006 = distinct !DISubprogram(name: "acpi_ns_check_object_type", scope: !3, file: !3, line: 189, type: !1007, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !884)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!18, !863, !125, !20, !20}
!1009 = !DILocalVariable(name: "info", arg: 1, scope: !1006, file: !3, line: 189, type: !863)
!1010 = !DILocation(line: 189, column: 54, scope: !1006)
!1011 = !DILocalVariable(name: "return_object_ptr", arg: 2, scope: !1006, file: !3, line: 190, type: !125)
!1012 = !DILocation(line: 190, column: 34, scope: !1006)
!1013 = !DILocalVariable(name: "expected_btypes", arg: 3, scope: !1006, file: !3, line: 191, type: !20)
!1014 = !DILocation(line: 191, column: 10, scope: !1006)
!1015 = !DILocalVariable(name: "package_index", arg: 4, scope: !1006, file: !3, line: 191, type: !20)
!1016 = !DILocation(line: 191, column: 31, scope: !1006)
!1017 = !DILocalVariable(name: "return_object", scope: !1006, file: !3, line: 193, type: !43)
!1018 = !DILocation(line: 193, column: 29, scope: !1006)
!1019 = !DILocation(line: 193, column: 46, scope: !1006)
!1020 = !DILocation(line: 193, column: 45, scope: !1006)
!1021 = !DILocalVariable(name: "status", scope: !1006, file: !3, line: 194, type: !18)
!1022 = !DILocation(line: 194, column: 14, scope: !1006)
!1023 = !DILocalVariable(name: "type_buffer", scope: !1006, file: !3, line: 195, type: !1024)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 768, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 96)
!1027 = !DILocation(line: 195, column: 7, scope: !1006)
!1028 = !DILocation(line: 199, column: 6, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 199, column: 6)
!1030 = !DILocation(line: 199, column: 20, scope: !1029)
!1031 = !DILocation(line: 200, column: 6, scope: !1029)
!1032 = !DILocation(line: 200, column: 46, scope: !1029)
!1033 = !DILocation(line: 199, column: 6, scope: !1006)
!1034 = !DILocation(line: 201, column: 3, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 200, column: 71)
!1036 = !DILocation(line: 207, column: 3, scope: !1035)
!1037 = !DILocation(line: 218, column: 50, scope: !1006)
!1038 = !DILocation(line: 218, column: 23, scope: !1006)
!1039 = !DILocation(line: 218, column: 2, scope: !1006)
!1040 = !DILocation(line: 218, column: 8, scope: !1006)
!1041 = !DILocation(line: 218, column: 21, scope: !1006)
!1042 = !DILocation(line: 219, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 219, column: 6)
!1044 = !DILocation(line: 219, column: 12, scope: !1043)
!1045 = !DILocation(line: 219, column: 25, scope: !1043)
!1046 = !DILocation(line: 219, column: 6, scope: !1006)
!1047 = !DILocation(line: 222, column: 3, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 219, column: 44)
!1049 = !DILocation(line: 227, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 227, column: 6)
!1051 = !DILocation(line: 227, column: 13, scope: !1050)
!1052 = !DILocation(line: 227, column: 28, scope: !1050)
!1053 = !DILocation(line: 227, column: 26, scope: !1050)
!1054 = !DILocation(line: 227, column: 45, scope: !1050)
!1055 = !DILocation(line: 227, column: 6, scope: !1006)
!1056 = !DILocation(line: 228, column: 36, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 227, column: 70)
!1058 = !DILocation(line: 228, column: 42, scope: !1057)
!1059 = !DILocation(line: 228, column: 12, scope: !1057)
!1060 = !DILocation(line: 228, column: 10, scope: !1057)
!1061 = !DILocation(line: 229, column: 11, scope: !1057)
!1062 = !DILocation(line: 229, column: 3, scope: !1057)
!1063 = !DILocation(line: 234, column: 33, scope: !1006)
!1064 = !DILocation(line: 234, column: 39, scope: !1006)
!1065 = !DILocation(line: 235, column: 12, scope: !1006)
!1066 = !DILocation(line: 235, column: 27, scope: !1006)
!1067 = !DILocation(line: 234, column: 11, scope: !1006)
!1068 = !DILocation(line: 234, column: 9, scope: !1006)
!1069 = !DILocation(line: 236, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 236, column: 6)
!1071 = !DILocation(line: 236, column: 6, scope: !1006)
!1072 = !DILocation(line: 237, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 236, column: 28)
!1074 = !DILabel(scope: !1006, name: "type_error_exit", file: !3, line: 240)
!1075 = !DILocation(line: 240, column: 1, scope: !1006)
!1076 = !DILocation(line: 244, column: 36, scope: !1006)
!1077 = !DILocation(line: 244, column: 49, scope: !1006)
!1078 = !DILocation(line: 244, column: 2, scope: !1006)
!1079 = !DILocation(line: 246, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 246, column: 6)
!1081 = !DILocation(line: 246, column: 6, scope: !1006)
!1082 = !DILocation(line: 247, column: 3, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 246, column: 22)
!1084 = !DILocation(line: 251, column: 2, scope: !1083)
!1085 = !DILocation(line: 251, column: 13, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 251, column: 13)
!1087 = !DILocation(line: 251, column: 27, scope: !1086)
!1088 = !DILocation(line: 251, column: 13, scope: !1080)
!1089 = !DILocation(line: 252, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 251, column: 56)
!1091 = !DILocation(line: 257, column: 2, scope: !1090)
!1092 = !DILocation(line: 258, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 257, column: 9)
!1094 = !DILocation(line: 266, column: 2, scope: !1006)
!1095 = !DILocation(line: 267, column: 1, scope: !1006)
!1096 = distinct !DISubprogram(name: "acpi_ns_get_bitmapped_type", scope: !3, file: !3, line: 321, type: !1097, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !884)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!20, !43}
!1099 = !DILocalVariable(name: "return_object", arg: 1, scope: !1096, file: !3, line: 321, type: !43)
!1100 = !DILocation(line: 321, column: 66, scope: !1096)
!1101 = !DILocalVariable(name: "return_btype", scope: !1096, file: !3, line: 323, type: !20)
!1102 = !DILocation(line: 323, column: 6, scope: !1096)
!1103 = !DILocation(line: 325, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 325, column: 6)
!1105 = !DILocation(line: 325, column: 6, scope: !1096)
!1106 = !DILocation(line: 326, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 325, column: 22)
!1108 = !DILocation(line: 331, column: 10, scope: !1096)
!1109 = !DILocation(line: 331, column: 25, scope: !1096)
!1110 = !DILocation(line: 331, column: 32, scope: !1096)
!1111 = !DILocation(line: 331, column: 2, scope: !1096)
!1112 = !DILocation(line: 334, column: 16, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 331, column: 38)
!1114 = !DILocation(line: 335, column: 3, scope: !1113)
!1115 = !DILocation(line: 339, column: 16, scope: !1113)
!1116 = !DILocation(line: 340, column: 3, scope: !1113)
!1117 = !DILocation(line: 344, column: 16, scope: !1113)
!1118 = !DILocation(line: 345, column: 3, scope: !1113)
!1119 = !DILocation(line: 349, column: 16, scope: !1113)
!1120 = !DILocation(line: 350, column: 3, scope: !1113)
!1121 = !DILocation(line: 354, column: 16, scope: !1113)
!1122 = !DILocation(line: 355, column: 3, scope: !1113)
!1123 = !DILocation(line: 361, column: 16, scope: !1113)
!1124 = !DILocation(line: 362, column: 3, scope: !1113)
!1125 = !DILocation(line: 365, column: 10, scope: !1096)
!1126 = !DILocation(line: 365, column: 2, scope: !1096)
!1127 = !DILocation(line: 366, column: 1, scope: !1096)
!1128 = distinct !DISubprogram(name: "acpi_ns_check_reference", scope: !3, file: !3, line: 286, type: !1129, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !884)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!18, !863, !43}
!1131 = !DILocalVariable(name: "info", arg: 1, scope: !1128, file: !3, line: 286, type: !863)
!1132 = !DILocation(line: 286, column: 52, scope: !1128)
!1133 = !DILocalVariable(name: "return_object", arg: 2, scope: !1128, file: !3, line: 287, type: !43)
!1134 = !DILocation(line: 287, column: 31, scope: !1128)
!1135 = !DILocation(line: 295, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 295, column: 6)
!1137 = !DILocation(line: 295, column: 21, scope: !1136)
!1138 = !DILocation(line: 295, column: 31, scope: !1136)
!1139 = !DILocation(line: 295, column: 37, scope: !1136)
!1140 = !DILocation(line: 295, column: 6, scope: !1128)
!1141 = !DILocation(line: 296, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 295, column: 60)
!1143 = !DILocation(line: 299, column: 2, scope: !1128)
!1144 = !DILocation(line: 304, column: 2, scope: !1128)
!1145 = !DILocation(line: 305, column: 1, scope: !1128)
