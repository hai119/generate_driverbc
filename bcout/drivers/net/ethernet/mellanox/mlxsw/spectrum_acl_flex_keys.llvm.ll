; ModuleID = '../bcout/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.llvm.bc'
source_filename = "drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mlxsw_afk_block = type { i16, %struct.mlxsw_afk_element_inst*, i32 }
%struct.mlxsw_afk_element_inst = type { i32, i32, %struct.mlxsw_item, i32, i8 }
%struct.mlxsw_item = type { i16, i16, i16, i8, i8, i8, %union.anon, i8* }
%union.anon = type { i16 }
%struct.mlxsw_afk_ops = type { %struct.mlxsw_afk_block*, i32, void (i8*, i32, i8*)*, void (i8*, i32)* }
%struct.mlxsw_sp2_afk_block_layout = type { i16, %struct.mlxsw_item }

@mlxsw_sp1_afk_blocks = internal constant [12 x %struct.mlxsw_afk_block] [%struct.mlxsw_afk_block { i16 16, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([5 x %struct.mlxsw_afk_element_inst], [5 x %struct.mlxsw_afk_element_inst]* bitcast ([5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_l2_dmac to [5 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 5 }, %struct.mlxsw_afk_block { i16 17, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([5 x %struct.mlxsw_afk_element_inst], [5 x %struct.mlxsw_afk_element_inst]* bitcast ([5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_l2_smac to [5 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 5 }, %struct.mlxsw_afk_block { i16 18, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([3 x %struct.mlxsw_afk_element_inst], [3 x %struct.mlxsw_afk_element_inst]* bitcast ([3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_l2_smac_ex to [3 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 3 }, %struct.mlxsw_afk_block { i16 48, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([3 x %struct.mlxsw_afk_element_inst], [3 x %struct.mlxsw_afk_element_inst]* bitcast ([3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_sip to [3 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 3 }, %struct.mlxsw_afk_block { i16 49, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([3 x %struct.mlxsw_afk_element_inst], [3 x %struct.mlxsw_afk_element_inst]* bitcast ([3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_dip to [3 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 3 }, %struct.mlxsw_afk_block { i16 50, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([5 x %struct.mlxsw_afk_element_inst], [5 x %struct.mlxsw_afk_element_inst]* bitcast ([5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4 to [5 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 5 }, %struct.mlxsw_afk_block { i16 51, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([4 x %struct.mlxsw_afk_element_inst], [4 x %struct.mlxsw_afk_element_inst]* bitcast ([4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_ex to [4 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 4 }, %struct.mlxsw_afk_block { i16 96, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_dip to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 101, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([3 x %struct.mlxsw_afk_element_inst], [3 x %struct.mlxsw_afk_element_inst]* bitcast ([3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_ex1 to [3 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 3 }, %struct.mlxsw_afk_block { i16 98, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_sip to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 99, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_sip_ex to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 176, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_packet_type to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }], align 16, !dbg !0
@mlxsw_sp1_afk_ops = dso_local constant %struct.mlxsw_afk_ops { %struct.mlxsw_afk_block* getelementptr inbounds ([12 x %struct.mlxsw_afk_block], [12 x %struct.mlxsw_afk_block]* @mlxsw_sp1_afk_blocks, i32 0, i32 0), i32 12, void (i8*, i32, i8*)* @mlxsw_sp1_afk_encode_block, void (i8*, i32)* @mlxsw_sp1_afk_clear_block }, align 8, !dbg !48
@mlxsw_sp2_afk_blocks = internal constant [18 x %struct.mlxsw_afk_block] [%struct.mlxsw_afk_block { i16 16, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_mac_0 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 17, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_mac_1 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 18, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_mac_2 to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 19, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([3 x %struct.mlxsw_afk_element_inst], [3 x %struct.mlxsw_afk_element_inst]* bitcast ([3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_mac_3 to [3 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 3 }, %struct.mlxsw_afk_block { i16 20, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([3 x %struct.mlxsw_afk_element_inst], [3 x %struct.mlxsw_afk_element_inst]* bitcast ([3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_mac_4 to [3 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 3 }, %struct.mlxsw_afk_block { i16 21, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_mac_5 to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 56, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_0 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 57, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_1 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 58, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([4 x %struct.mlxsw_afk_element_inst], [4 x %struct.mlxsw_afk_element_inst]* bitcast ([4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_2 to [4 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 4 }, %struct.mlxsw_afk_block { i16 60, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv4_4 to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 64, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_0 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 65, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_1 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 66, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_2 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 67, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_3 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 68, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_4 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 69, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_ipv6_5 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }, %struct.mlxsw_afk_block { i16 144, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([2 x %struct.mlxsw_afk_element_inst], [2 x %struct.mlxsw_afk_element_inst]* bitcast ([2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_l4_0 to [2 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 2 }, %struct.mlxsw_afk_block { i16 146, %struct.mlxsw_afk_element_inst* getelementptr inbounds ([1 x %struct.mlxsw_afk_element_inst], [1 x %struct.mlxsw_afk_element_inst]* bitcast ([1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }]* @mlxsw_sp_afk_element_info_l4_2 to [1 x %struct.mlxsw_afk_element_inst]*), i32 0, i32 0), i32 1 }], align 16, !dbg !147
@mlxsw_sp2_afk_ops = dso_local constant %struct.mlxsw_afk_ops { %struct.mlxsw_afk_block* getelementptr inbounds ([18 x %struct.mlxsw_afk_block], [18 x %struct.mlxsw_afk_block]* @mlxsw_sp2_afk_blocks, i32 0, i32 0), i32 18, void (i8*, i32, i8*)* @mlxsw_sp2_afk_encode_block, void (i8*, i32)* @mlxsw_sp2_afk_clear_block }, align 8, !dbg !106
@.str = private unnamed_addr constant [11 x i8] c"DMAC_32_47\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DMAC_0_31\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PCP\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"VID\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SRC_SYS_PORT\00", align 1
@mlxsw_sp_afk_element_info_l2_dmac = internal global [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 2, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 13, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !108
@.str.6 = private unnamed_addr constant [11 x i8] c"SMAC_32_47\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SMAC_0_31\00", align 1
@mlxsw_sp_afk_element_info_l2_smac = internal global [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 13, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !113
@.str.9 = private unnamed_addr constant [10 x i8] c"ETHERTYPE\00", align 1
@mlxsw_sp_afk_element_info_l2_smac_ex = internal global [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !115
@.str.11 = private unnamed_addr constant [12 x i8] c"SRC_IP_0_31\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"IP_PROTO\00", align 1
@mlxsw_sp_afk_element_info_ipv4_sip = internal global [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !120
@.str.14 = private unnamed_addr constant [12 x i8] c"DST_IP_0_31\00", align 1
@mlxsw_sp_afk_element_info_ipv4_dip = internal global [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !122
@.str.16 = private unnamed_addr constant [7 x i8] c"IP_ECN\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"IP_TTL_\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"IP_DSCP\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"TCP_FLAGS\00", align 1
@mlxsw_sp_afk_element_info_ipv4 = internal global [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 21, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 4, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 20, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 22, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 6, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 19, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 9, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !124
@.str.21 = private unnamed_addr constant [12 x i8] c"SRC_L4_PORT\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"DST_L4_PORT\00", align 1
@mlxsw_sp_afk_element_info_ipv4_ex = internal global [4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 29, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 16, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 15, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !126
@.str.24 = private unnamed_addr constant [13 x i8] c"DST_IP_32_63\00", align 1
@mlxsw_sp_afk_element_info_ipv6_dip = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 13, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !131
@.str.26 = private unnamed_addr constant [14 x i8] c"DST_IP_96_127\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"DST_IP_64_95\00", align 1
@mlxsw_sp_afk_element_info_ipv6_ex1 = internal global [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 11, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 12, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !136
@.str.29 = private unnamed_addr constant [13 x i8] c"SRC_IP_32_63\00", align 1
@mlxsw_sp_afk_element_info_ipv6_sip = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 9, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !138
@.str.31 = private unnamed_addr constant [14 x i8] c"SRC_IP_96_127\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"SRC_IP_64_95\00", align 1
@mlxsw_sp_afk_element_info_ipv6_sip_ex = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 7, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 8, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !140
@mlxsw_sp_afk_element_info_packet_type = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !142
@mlxsw_sp_afk_element_info_mac_0 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 2, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !152
@mlxsw_sp_afk_element_info_mac_1 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !154
@mlxsw_sp_afk_element_info_mac_2 = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !156
@mlxsw_sp_afk_element_info_mac_3 = internal global [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !158
@mlxsw_sp_afk_element_info_mac_4 = internal global [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !160
@mlxsw_sp_afk_element_info_mac_5 = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, i32 -1, i8 1 }], align 16, !dbg !162
@mlxsw_sp_afk_element_info_ipv4_0 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !164
@mlxsw_sp_afk_element_info_ipv4_1 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !166
@mlxsw_sp_afk_element_info_ipv4_2 = internal global [4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 22, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 6, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 21, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 6, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 20, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !168
@.str.44 = private unnamed_addr constant [16 x i8] c"VIRT_ROUTER_0_7\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"VIRT_ROUTER_8_10\00", align 1
@mlxsw_sp_afk_element_info_ipv4_4 = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 24, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 23, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !170
@mlxsw_sp_afk_element_info_ipv6_0 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 13, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !172
@mlxsw_sp_afk_element_info_ipv6_1 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 12, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !174
@mlxsw_sp_afk_element_info_ipv6_2 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 11, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !176
@mlxsw_sp_afk_element_info_ipv6_3 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 9, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !178
@mlxsw_sp_afk_element_info_ipv6_4 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 8, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !180
@mlxsw_sp_afk_element_info_ipv6_5 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 7, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !182
@mlxsw_sp_afk_element_info_l4_0 = internal global [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 16, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0) }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 15, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !184
@mlxsw_sp_afk_element_info_l4_2 = internal global [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }, i32, i8 } { i32 19, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 9, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0) }, i32 0, i8 0 }], align 16, !dbg !186
@.str.55 = private unnamed_addr constant [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@.str.56 = private unnamed_addr constant [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"sp2_afk_block_value\00", align 1
@mlxsw_sp2_afk_block_value_item = internal global { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0) }, align 8, !dbg !188
@.str.59 = private unnamed_addr constant [61 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"block0\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"block1\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"block2\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"block3\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"block4\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"block5\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"block6\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"block7\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"block8\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"block9\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"block10\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"block11\00", align 1
@mlxsw_sp2_afk_blocks_layout = internal constant [12 x { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }] [{ i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 48, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 44, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 4, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 40, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 36, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 12, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 28, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 20, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 24, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 20, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 28, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 12, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 8, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 4, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 4, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0) } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i16 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 12, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0) } }], align 16, !dbg !190

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp1_afk_encode_block(i8* %output, i32 %block_index, i8* %block) #0 !dbg !206 {
entry:
  %output.addr = alloca i8*, align 8
  %block_index.addr = alloca i32, align 4
  %block.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %output_indexed = alloca i8*, align 8
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !210, metadata !DIExpression()), !dbg !211
  store i8* %block, i8** %block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %block.addr, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load i32, i32* %block_index.addr, align 4, !dbg !216
  %mul = mul i32 %0, 16, !dbg !217
  store i32 %mul, i32* %offset, align 4, !dbg !215
  call void @llvm.dbg.declare(metadata i8** %output_indexed, metadata !218, metadata !DIExpression()), !dbg !219
  %1 = load i8*, i8** %output.addr, align 8, !dbg !220
  %2 = load i32, i32* %offset, align 4, !dbg !221
  %idx.ext = zext i32 %2 to i64, !dbg !222
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !222
  store i8* %add.ptr, i8** %output_indexed, align 8, !dbg !219
  %3 = load i8*, i8** %output_indexed, align 8, !dbg !223
  %4 = load i8*, i8** %block.addr, align 8, !dbg !224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 16, i1 false), !dbg !225
  ret void, !dbg !226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp1_afk_clear_block(i8* %output, i32 %block_index) #0 !dbg !227 {
entry:
  %output.addr = alloca i8*, align 8
  %block_index.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %output_indexed = alloca i8*, align 8
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !228, metadata !DIExpression()), !dbg !229
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load i32, i32* %block_index.addr, align 4, !dbg !234
  %mul = mul i32 %0, 16, !dbg !235
  store i32 %mul, i32* %offset, align 4, !dbg !233
  call void @llvm.dbg.declare(metadata i8** %output_indexed, metadata !236, metadata !DIExpression()), !dbg !237
  %1 = load i8*, i8** %output.addr, align 8, !dbg !238
  %2 = load i32, i32* %offset, align 4, !dbg !239
  %idx.ext = zext i32 %2 to i64, !dbg !240
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !240
  store i8* %add.ptr, i8** %output_indexed, align 8, !dbg !237
  %3 = load i8*, i8** %output_indexed, align 8, !dbg !241
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 16, i1 false), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp2_afk_encode_block(i8* %output, i32 %block_index, i8* %block) #0 !dbg !244 {
entry:
  %output.addr = alloca i8*, align 8
  %block_index.addr = alloca i32, align 4
  %block.addr = alloca i8*, align 8
  %block_value = alloca i64, align 8
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !247, metadata !DIExpression()), !dbg !248
  store i8* %block, i8** %block.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %block.addr, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata i64* %block_value, metadata !251, metadata !DIExpression()), !dbg !253
  %0 = load i8*, i8** %block.addr, align 8, !dbg !254
  %call = call i64 @mlxsw_sp2_afk_block_value_get(i8* %0) #6, !dbg !255
  store i64 %call, i64* %block_value, align 8, !dbg !253
  %1 = load i8*, i8** %output.addr, align 8, !dbg !256
  %2 = load i32, i32* %block_index.addr, align 4, !dbg !257
  %3 = load i64, i64* %block_value, align 8, !dbg !258
  call void @__mlxsw_sp2_afk_block_value_set(i8* %1, i32 %2, i64 %3) #6, !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp2_afk_clear_block(i8* %output, i32 %block_index) #0 !dbg !261 {
entry:
  %output.addr = alloca i8*, align 8
  %block_index.addr = alloca i32, align 4
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !262, metadata !DIExpression()), !dbg !263
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i8*, i8** %output.addr, align 8, !dbg !266
  %1 = load i32, i32* %block_index.addr, align 4, !dbg !267
  call void @__mlxsw_sp2_afk_block_value_set(i8* %0, i32 %1, i64 0) #6, !dbg !268
  ret void, !dbg !269
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mlxsw_sp2_afk_block_value_get(i8* %buf) #0 !dbg !270 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !274
  %call = call i64 @__mlxsw_item_get64(i8* %0, %struct.mlxsw_item* bitcast ({ i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* }* @mlxsw_sp2_afk_block_value_item to %struct.mlxsw_item*), i16 zeroext 0) #6, !dbg !274
  ret i64 %call, !dbg !274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__mlxsw_sp2_afk_block_value_set(i8* %output, i32 %block_index, i64 %block_value) #0 !dbg !275 {
entry:
  %output.addr = alloca i8*, align 8
  %block_index.addr = alloca i32, align 4
  %block_value.addr = alloca i64, align 8
  %block_layout = alloca %struct.mlxsw_sp2_afk_block_layout*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !278, metadata !DIExpression()), !dbg !279
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !280, metadata !DIExpression()), !dbg !281
  store i64 %block_value, i64* %block_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %block_value.addr, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata %struct.mlxsw_sp2_afk_block_layout** %block_layout, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !287, metadata !DIExpression()), !dbg !290
  %0 = load i32, i32* %block_index.addr, align 4, !dbg !290
  %cmp = icmp slt i32 %0, 0, !dbg !290
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !290

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %block_index.addr, align 4, !dbg !290
  %conv = sext i32 %1 to i64, !dbg !290
  %cmp1 = icmp uge i64 %conv, 12, !dbg !290
  br label %lor.end, !dbg !290

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %2, true, !dbg !290
  %lnot3 = xor i1 %lnot, true, !dbg !290
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !290
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !290
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !291
  %tobool = icmp ne i32 %3, 0, !dbg !291
  %lnot4 = xor i1 %tobool, true, !dbg !291
  %lnot6 = xor i1 %lnot4, true, !dbg !291
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !291
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !291
  %tobool9 = icmp ne i64 %conv8, 0, !dbg !291
  br i1 %tobool9, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !291

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !293

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !295

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !293

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.59, i64 0, i64 0), i32 287, i32 2305, i64 12) #7, !dbg !297, !srcloc !299
  br label %do.end12, !dbg !297

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #7, !dbg !300, !srcloc !302
  br label %do.body13, !dbg !293

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !303

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !293

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !293

if.end:                                           ; preds = %do.end15, %lor.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !290
  %tobool16 = icmp ne i32 %4, 0, !dbg !290
  %lnot17 = xor i1 %tobool16, true, !dbg !290
  %lnot19 = xor i1 %lnot17, true, !dbg !290
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !290
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !290
  store i64 %conv21, i64* %tmp, align 8, !dbg !291
  %5 = load i64, i64* %tmp, align 8, !dbg !290
  %tobool22 = icmp ne i64 %5, 0, !dbg !305
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !306

if.then23:                                        ; preds = %if.end
  br label %return, !dbg !307

if.end24:                                         ; preds = %if.end
  %6 = load i32, i32* %block_index.addr, align 4, !dbg !308
  %idxprom = sext i32 %6 to i64, !dbg !309
  %arrayidx = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], [12 x %struct.mlxsw_sp2_afk_block_layout]* bitcast ([12 x { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }]* @mlxsw_sp2_afk_blocks_layout to [12 x %struct.mlxsw_sp2_afk_block_layout]*), i64 0, i64 %idxprom, !dbg !309
  store %struct.mlxsw_sp2_afk_block_layout* %arrayidx, %struct.mlxsw_sp2_afk_block_layout** %block_layout, align 8, !dbg !310
  %7 = load i8*, i8** %output.addr, align 8, !dbg !311
  %8 = load %struct.mlxsw_sp2_afk_block_layout*, %struct.mlxsw_sp2_afk_block_layout** %block_layout, align 8, !dbg !312
  %offset = getelementptr inbounds %struct.mlxsw_sp2_afk_block_layout, %struct.mlxsw_sp2_afk_block_layout* %8, i32 0, i32 0, !dbg !313
  %9 = load i16, i16* %offset, align 8, !dbg !313
  %conv25 = zext i16 %9 to i32, !dbg !312
  %idx.ext = sext i32 %conv25 to i64, !dbg !314
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !314
  %10 = load %struct.mlxsw_sp2_afk_block_layout*, %struct.mlxsw_sp2_afk_block_layout** %block_layout, align 8, !dbg !315
  %item = getelementptr inbounds %struct.mlxsw_sp2_afk_block_layout, %struct.mlxsw_sp2_afk_block_layout* %10, i32 0, i32 1, !dbg !316
  %11 = load i64, i64* %block_value.addr, align 8, !dbg !317
  call void @__mlxsw_item_set64(i8* %add.ptr, %struct.mlxsw_item* %item, i16 zeroext 0, i64 %11) #6, !dbg !318
  br label %return, !dbg !319

return:                                           ; preds = %if.end24, %if.then23
  ret void, !dbg !319
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__mlxsw_item_get64(i8* %buf, %struct.mlxsw_item* %item, i16 zeroext %index) #0 !dbg !320 {
entry:
  %buf.addr = alloca i8*, align 8
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %offset = alloca i32, align 4
  %b = alloca i64*, align 8
  %tmp = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !325, metadata !DIExpression()), !dbg !326
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !327, metadata !DIExpression()), !dbg !328
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !333
  %1 = load i16, i16* %index.addr, align 2, !dbg !334
  %call = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 8) #6, !dbg !335
  store i32 %call, i32* %offset, align 4, !dbg !332
  call void @llvm.dbg.declare(metadata i64** %b, metadata !336, metadata !DIExpression()), !dbg !337
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !338
  %3 = bitcast i8* %2 to i64*, !dbg !339
  store i64* %3, i64** %b, align 8, !dbg !337
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !340, metadata !DIExpression()), !dbg !341
  %4 = load i64*, i64** %b, align 8, !dbg !342
  %5 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom = zext i32 %5 to i64, !dbg !342
  %arrayidx = getelementptr i64, i64* %4, i64 %idxprom, !dbg !342
  %6 = load i64, i64* %arrayidx, align 8, !dbg !342
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !342
  br i1 %7, label %cond.true, label %cond.false, !dbg !342

cond.true:                                        ; preds = %entry
  %8 = load i64*, i64** %b, align 8, !dbg !342
  %9 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom1 = zext i32 %9 to i64, !dbg !342
  %arrayidx2 = getelementptr i64, i64* %8, i64 %idxprom1, !dbg !342
  %10 = load i64, i64* %arrayidx2, align 8, !dbg !342
  %and = and i64 %10, 255, !dbg !342
  %shl = shl i64 %and, 56, !dbg !342
  %11 = load i64*, i64** %b, align 8, !dbg !342
  %12 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom3 = zext i32 %12 to i64, !dbg !342
  %arrayidx4 = getelementptr i64, i64* %11, i64 %idxprom3, !dbg !342
  %13 = load i64, i64* %arrayidx4, align 8, !dbg !342
  %and5 = and i64 %13, 65280, !dbg !342
  %shl6 = shl i64 %and5, 40, !dbg !342
  %or = or i64 %shl, %shl6, !dbg !342
  %14 = load i64*, i64** %b, align 8, !dbg !342
  %15 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom7 = zext i32 %15 to i64, !dbg !342
  %arrayidx8 = getelementptr i64, i64* %14, i64 %idxprom7, !dbg !342
  %16 = load i64, i64* %arrayidx8, align 8, !dbg !342
  %and9 = and i64 %16, 16711680, !dbg !342
  %shl10 = shl i64 %and9, 24, !dbg !342
  %or11 = or i64 %or, %shl10, !dbg !342
  %17 = load i64*, i64** %b, align 8, !dbg !342
  %18 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom12 = zext i32 %18 to i64, !dbg !342
  %arrayidx13 = getelementptr i64, i64* %17, i64 %idxprom12, !dbg !342
  %19 = load i64, i64* %arrayidx13, align 8, !dbg !342
  %and14 = and i64 %19, 4278190080, !dbg !342
  %shl15 = shl i64 %and14, 8, !dbg !342
  %or16 = or i64 %or11, %shl15, !dbg !342
  %20 = load i64*, i64** %b, align 8, !dbg !342
  %21 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom17 = zext i32 %21 to i64, !dbg !342
  %arrayidx18 = getelementptr i64, i64* %20, i64 %idxprom17, !dbg !342
  %22 = load i64, i64* %arrayidx18, align 8, !dbg !342
  %and19 = and i64 %22, 1095216660480, !dbg !342
  %shr = lshr i64 %and19, 8, !dbg !342
  %or20 = or i64 %or16, %shr, !dbg !342
  %23 = load i64*, i64** %b, align 8, !dbg !342
  %24 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom21 = zext i32 %24 to i64, !dbg !342
  %arrayidx22 = getelementptr i64, i64* %23, i64 %idxprom21, !dbg !342
  %25 = load i64, i64* %arrayidx22, align 8, !dbg !342
  %and23 = and i64 %25, 280375465082880, !dbg !342
  %shr24 = lshr i64 %and23, 24, !dbg !342
  %or25 = or i64 %or20, %shr24, !dbg !342
  %26 = load i64*, i64** %b, align 8, !dbg !342
  %27 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom26 = zext i32 %27 to i64, !dbg !342
  %arrayidx27 = getelementptr i64, i64* %26, i64 %idxprom26, !dbg !342
  %28 = load i64, i64* %arrayidx27, align 8, !dbg !342
  %and28 = and i64 %28, 71776119061217280, !dbg !342
  %shr29 = lshr i64 %and28, 40, !dbg !342
  %or30 = or i64 %or25, %shr29, !dbg !342
  %29 = load i64*, i64** %b, align 8, !dbg !342
  %30 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom31 = zext i32 %30 to i64, !dbg !342
  %arrayidx32 = getelementptr i64, i64* %29, i64 %idxprom31, !dbg !342
  %31 = load i64, i64* %arrayidx32, align 8, !dbg !342
  %and33 = and i64 %31, -72057594037927936, !dbg !342
  %shr34 = lshr i64 %and33, 56, !dbg !342
  %or35 = or i64 %or30, %shr34, !dbg !342
  br label %cond.end, !dbg !342

cond.false:                                       ; preds = %entry
  %32 = load i64*, i64** %b, align 8, !dbg !342
  %33 = load i32, i32* %offset, align 4, !dbg !342
  %idxprom36 = zext i32 %33 to i64, !dbg !342
  %arrayidx37 = getelementptr i64, i64* %32, i64 %idxprom36, !dbg !342
  %34 = load i64, i64* %arrayidx37, align 8, !dbg !342
  %call38 = call i64 @__fswab64(i64 %34) #8, !dbg !342
  br label %cond.end, !dbg !342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or35, %cond.true ], [ %call38, %cond.false ], !dbg !342
  store i64 %cond, i64* %tmp, align 8, !dbg !343
  %35 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !344
  %shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %35, i32 0, i32 3, !dbg !345
  %36 = load i8, i8* %shift, align 2, !dbg !345
  %conv = zext i8 %36 to i32, !dbg !344
  %37 = load i64, i64* %tmp, align 8, !dbg !346
  %sh_prom = zext i32 %conv to i64, !dbg !346
  %shr39 = lshr i64 %37, %sh_prom, !dbg !346
  store i64 %shr39, i64* %tmp, align 8, !dbg !346
  %38 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !347
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %38, i32 0, i32 6, !dbg !347
  %bits = bitcast %union.anon* %size to i8*, !dbg !347
  %39 = load i8, i8* %bits, align 2, !dbg !347
  %conv40 = zext i8 %39 to i32, !dbg !347
  %sub = sub i32 %conv40, 1, !dbg !347
  %sub41 = sub i32 63, %sub, !dbg !347
  %sh_prom42 = zext i32 %sub41 to i64, !dbg !347
  %shr43 = lshr i64 -1, %sh_prom42, !dbg !347
  %and44 = and i64 -1, %shr43, !dbg !347
  %add = add i64 0, %and44, !dbg !347
  %40 = load i64, i64* %tmp, align 8, !dbg !348
  %and45 = and i64 %40, %add, !dbg !348
  store i64 %and45, i64* %tmp, align 8, !dbg !348
  %41 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !349
  %no_real_shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %41, i32 0, i32 5, !dbg !351
  %42 = load i8, i8* %no_real_shift, align 8, !dbg !351
  %tobool = trunc i8 %42 to i1, !dbg !351
  br i1 %tobool, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %cond.end
  %43 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !353
  %shift46 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %43, i32 0, i32 3, !dbg !354
  %44 = load i8, i8* %shift46, align 2, !dbg !354
  %conv47 = zext i8 %44 to i32, !dbg !353
  %45 = load i64, i64* %tmp, align 8, !dbg !355
  %sh_prom48 = zext i32 %conv47 to i64, !dbg !355
  %shl49 = shl i64 %45, %sh_prom48, !dbg !355
  store i64 %shl49, i64* %tmp, align 8, !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.then, %cond.end
  %46 = load i64, i64* %tmp, align 8, !dbg !357
  ret i64 %46, !dbg !358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mlxsw_item_offset(%struct.mlxsw_item* %item, i16 zeroext %index, i64 %typesize) #0 !dbg !359 {
entry:
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %typesize.addr = alloca i64, align 8
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !367, metadata !DIExpression()), !dbg !368
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !369, metadata !DIExpression()), !dbg !370
  store i64 %typesize, i64* %typesize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %typesize.addr, metadata !371, metadata !DIExpression()), !dbg !372
  br label %do.body, !dbg !373

do.body:                                          ; preds = %entry
  %0 = load i16, i16* %index.addr, align 2, !dbg !374
  %conv = zext i16 %0 to i32, !dbg !374
  %tobool = icmp ne i32 %conv, 0, !dbg !374
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !374

land.rhs:                                         ; preds = %do.body
  %1 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !374
  %step = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %1, i32 0, i32 1, !dbg !374
  %2 = load i16, i16* %step, align 2, !dbg !374
  %tobool1 = icmp ne i16 %2, 0, !dbg !374
  %lnot = xor i1 %tobool1, true, !dbg !374
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %3 = phi i1 [ false, %do.body ], [ %lnot, %land.rhs ], !dbg !377
  %lnot2 = xor i1 %3, true, !dbg !374
  %lnot3 = xor i1 %lnot2, true, !dbg !374
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !374
  %conv4 = sext i32 %lnot.ext to i64, !dbg !374
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !374
  br i1 %tobool5, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %land.end
  br label %do.body6, !dbg !374

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !379

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !381

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !379

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i64 0, i64 0), i32 29, i32 0, i64 12) #7, !dbg !383, !srcloc !385
  br label %do.end9, !dbg !383

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !379

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 640) #7, !dbg !386, !srcloc !389
  unreachable, !dbg !390

do.end11:                                         ; No predecessors!
  br label %do.end12, !dbg !379

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !379

if.end:                                           ; preds = %do.end12, %land.end
  br label %do.end13, !dbg !378

do.end13:                                         ; preds = %if.end
  %4 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !391
  %offset = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %4, i32 0, i32 0, !dbg !393
  %5 = load i16, i16* %offset, align 8, !dbg !393
  %conv14 = zext i16 %5 to i64, !dbg !391
  %6 = load i64, i64* %typesize.addr, align 8, !dbg !394
  %rem = urem i64 %conv14, %6, !dbg !395
  %cmp = icmp ne i64 %rem, 0, !dbg !396
  br i1 %cmp, label %if.then26, label %lor.lhs.false, !dbg !397

lor.lhs.false:                                    ; preds = %do.end13
  %7 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !398
  %step16 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %7, i32 0, i32 1, !dbg !399
  %8 = load i16, i16* %step16, align 2, !dbg !399
  %conv17 = sext i16 %8 to i64, !dbg !398
  %9 = load i64, i64* %typesize.addr, align 8, !dbg !400
  %rem18 = urem i64 %conv17, %9, !dbg !401
  %cmp19 = icmp ne i64 %rem18, 0, !dbg !402
  br i1 %cmp19, label %if.then26, label %lor.lhs.false21, !dbg !403

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %10 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !404
  %in_step_offset = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %10, i32 0, i32 2, !dbg !405
  %11 = load i16, i16* %in_step_offset, align 4, !dbg !405
  %conv22 = zext i16 %11 to i64, !dbg !404
  %12 = load i64, i64* %typesize.addr, align 8, !dbg !406
  %rem23 = urem i64 %conv22, %12, !dbg !407
  %cmp24 = icmp ne i64 %rem23, 0, !dbg !408
  br i1 %cmp24, label %if.then26, label %if.end41, !dbg !409

if.then26:                                        ; preds = %lor.lhs.false21, %lor.lhs.false, %do.end13
  %13 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !410
  %name = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %13, i32 0, i32 7, !dbg !410
  %14 = load i8*, i8** %name, align 8, !dbg !410
  %15 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !410
  %offset27 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %15, i32 0, i32 0, !dbg !410
  %16 = load i16, i16* %offset27, align 8, !dbg !410
  %conv28 = zext i16 %16 to i32, !dbg !410
  %17 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !410
  %step29 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %17, i32 0, i32 1, !dbg !410
  %18 = load i16, i16* %step29, align 2, !dbg !410
  %conv30 = sext i16 %18 to i32, !dbg !410
  %19 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !410
  %in_step_offset31 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %19, i32 0, i32 2, !dbg !410
  %20 = load i16, i16* %in_step_offset31, align 4, !dbg !410
  %conv32 = zext i16 %20 to i32, !dbg !410
  %21 = load i64, i64* %typesize.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.56, i64 0, i64 0), i8* %14, i32 %conv28, i32 %conv30, i32 %conv32, i64 %21) #9, !dbg !410
  br label %do.body33, !dbg !412

do.body33:                                        ; preds = %if.then26
  br label %do.body34, !dbg !413

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !415

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !413

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i64 0, i64 0), i32 36, i32 0, i64 12) #7, !dbg !417, !srcloc !419
  br label %do.end37, !dbg !417

do.end37:                                         ; preds = %do.body36
  br label %do.body38, !dbg !413

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 641) #7, !dbg !420, !srcloc !423
  unreachable, !dbg !424

do.end39:                                         ; No predecessors!
  br label %do.end40, !dbg !413

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !425

if.end41:                                         ; preds = %do.end40, %lor.lhs.false21
  %22 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !426
  %offset42 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %22, i32 0, i32 0, !dbg !427
  %23 = load i16, i16* %offset42, align 8, !dbg !427
  %conv43 = zext i16 %23 to i32, !dbg !426
  %24 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !428
  %step44 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %24, i32 0, i32 1, !dbg !429
  %25 = load i16, i16* %step44, align 2, !dbg !429
  %conv45 = sext i16 %25 to i32, !dbg !428
  %26 = load i16, i16* %index.addr, align 2, !dbg !430
  %conv46 = zext i16 %26 to i32, !dbg !430
  %mul = mul i32 %conv45, %conv46, !dbg !431
  %add = add i32 %conv43, %mul, !dbg !432
  %27 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !433
  %in_step_offset47 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %27, i32 0, i32 2, !dbg !434
  %28 = load i16, i16* %in_step_offset47, align 4, !dbg !434
  %conv48 = zext i16 %28 to i32, !dbg !433
  %add49 = add i32 %add, %conv48, !dbg !435
  %conv50 = sext i32 %add49 to i64, !dbg !436
  %29 = load i64, i64* %typesize.addr, align 8, !dbg !437
  %div = udiv i64 %conv50, %29, !dbg !438
  %conv51 = trunc i64 %div to i32, !dbg !439
  ret i32 %conv51, !dbg !440
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__fswab64(i64 %val) #4 !dbg !441 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load i64, i64* %val.addr, align 8, !dbg !447
  %call = call i64 @__arch_swab64(i64 %0) #8, !dbg !448
  ret i64 %call, !dbg !449
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__arch_swab64(i64 %val) #4 !dbg !450 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i64, i64* %val.addr, align 8, !dbg !454
  %1 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !455, !srcloc !456
  store i64 %1, i64* %val.addr, align 8, !dbg !455
  %2 = load i64, i64* %val.addr, align 8, !dbg !457
  ret i64 %2, !dbg !458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__mlxsw_item_set64(i8* %buf, %struct.mlxsw_item* %item, i16 zeroext %index, i64 %val) #0 !dbg !459 {
entry:
  %buf.addr = alloca i8*, align 8
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %val.addr = alloca i64, align 8
  %offset = alloca i32, align 4
  %b = alloca i64*, align 8
  %mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !462, metadata !DIExpression()), !dbg !463
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !472
  %1 = load i16, i16* %index.addr, align 2, !dbg !473
  %call = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 8) #6, !dbg !474
  store i32 %call, i32* %offset, align 4, !dbg !471
  call void @llvm.dbg.declare(metadata i64** %b, metadata !475, metadata !DIExpression()), !dbg !476
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !477
  %3 = bitcast i8* %2 to i64*, !dbg !478
  store i64* %3, i64** %b, align 8, !dbg !476
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !479, metadata !DIExpression()), !dbg !480
  %4 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !481
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %4, i32 0, i32 6, !dbg !481
  %bits = bitcast %union.anon* %size to i8*, !dbg !481
  %5 = load i8, i8* %bits, align 2, !dbg !481
  %conv = zext i8 %5 to i32, !dbg !481
  %sub = sub i32 %conv, 1, !dbg !481
  %sub1 = sub i32 63, %sub, !dbg !481
  %sh_prom = zext i32 %sub1 to i64, !dbg !481
  %shr = lshr i64 -1, %sh_prom, !dbg !481
  %and = and i64 -1, %shr, !dbg !481
  %add = add i64 0, %and, !dbg !481
  %6 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !482
  %shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %6, i32 0, i32 3, !dbg !483
  %7 = load i8, i8* %shift, align 2, !dbg !483
  %conv2 = zext i8 %7 to i32, !dbg !482
  %sh_prom3 = zext i32 %conv2 to i64, !dbg !484
  %shl = shl i64 %add, %sh_prom3, !dbg !484
  store i64 %shl, i64* %mask, align 8, !dbg !480
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !485, metadata !DIExpression()), !dbg !486
  %8 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !487
  %no_real_shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %8, i32 0, i32 5, !dbg !489
  %9 = load i8, i8* %no_real_shift, align 8, !dbg !489
  %tobool = trunc i8 %9 to i1, !dbg !489
  br i1 %tobool, label %if.end, label %if.then, !dbg !490

if.then:                                          ; preds = %entry
  %10 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !491
  %shift4 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %10, i32 0, i32 3, !dbg !492
  %11 = load i8, i8* %shift4, align 2, !dbg !492
  %conv5 = zext i8 %11 to i32, !dbg !491
  %12 = load i64, i64* %val.addr, align 8, !dbg !493
  %sh_prom6 = zext i32 %conv5 to i64, !dbg !493
  %shl7 = shl i64 %12, %sh_prom6, !dbg !493
  store i64 %shl7, i64* %val.addr, align 8, !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, i64* %mask, align 8, !dbg !495
  %14 = load i64, i64* %val.addr, align 8, !dbg !496
  %and8 = and i64 %14, %13, !dbg !496
  store i64 %and8, i64* %val.addr, align 8, !dbg !496
  %15 = load i64*, i64** %b, align 8, !dbg !497
  %16 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom = zext i32 %16 to i64, !dbg !497
  %arrayidx = getelementptr i64, i64* %15, i64 %idxprom, !dbg !497
  %17 = load i64, i64* %arrayidx, align 8, !dbg !497
  %18 = call i1 @llvm.is.constant.i64(i64 %17), !dbg !497
  br i1 %18, label %cond.true, label %cond.false, !dbg !497

cond.true:                                        ; preds = %if.end
  %19 = load i64*, i64** %b, align 8, !dbg !497
  %20 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom9 = zext i32 %20 to i64, !dbg !497
  %arrayidx10 = getelementptr i64, i64* %19, i64 %idxprom9, !dbg !497
  %21 = load i64, i64* %arrayidx10, align 8, !dbg !497
  %and11 = and i64 %21, 255, !dbg !497
  %shl12 = shl i64 %and11, 56, !dbg !497
  %22 = load i64*, i64** %b, align 8, !dbg !497
  %23 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom13 = zext i32 %23 to i64, !dbg !497
  %arrayidx14 = getelementptr i64, i64* %22, i64 %idxprom13, !dbg !497
  %24 = load i64, i64* %arrayidx14, align 8, !dbg !497
  %and15 = and i64 %24, 65280, !dbg !497
  %shl16 = shl i64 %and15, 40, !dbg !497
  %or = or i64 %shl12, %shl16, !dbg !497
  %25 = load i64*, i64** %b, align 8, !dbg !497
  %26 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom17 = zext i32 %26 to i64, !dbg !497
  %arrayidx18 = getelementptr i64, i64* %25, i64 %idxprom17, !dbg !497
  %27 = load i64, i64* %arrayidx18, align 8, !dbg !497
  %and19 = and i64 %27, 16711680, !dbg !497
  %shl20 = shl i64 %and19, 24, !dbg !497
  %or21 = or i64 %or, %shl20, !dbg !497
  %28 = load i64*, i64** %b, align 8, !dbg !497
  %29 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom22 = zext i32 %29 to i64, !dbg !497
  %arrayidx23 = getelementptr i64, i64* %28, i64 %idxprom22, !dbg !497
  %30 = load i64, i64* %arrayidx23, align 8, !dbg !497
  %and24 = and i64 %30, 4278190080, !dbg !497
  %shl25 = shl i64 %and24, 8, !dbg !497
  %or26 = or i64 %or21, %shl25, !dbg !497
  %31 = load i64*, i64** %b, align 8, !dbg !497
  %32 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom27 = zext i32 %32 to i64, !dbg !497
  %arrayidx28 = getelementptr i64, i64* %31, i64 %idxprom27, !dbg !497
  %33 = load i64, i64* %arrayidx28, align 8, !dbg !497
  %and29 = and i64 %33, 1095216660480, !dbg !497
  %shr30 = lshr i64 %and29, 8, !dbg !497
  %or31 = or i64 %or26, %shr30, !dbg !497
  %34 = load i64*, i64** %b, align 8, !dbg !497
  %35 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom32 = zext i32 %35 to i64, !dbg !497
  %arrayidx33 = getelementptr i64, i64* %34, i64 %idxprom32, !dbg !497
  %36 = load i64, i64* %arrayidx33, align 8, !dbg !497
  %and34 = and i64 %36, 280375465082880, !dbg !497
  %shr35 = lshr i64 %and34, 24, !dbg !497
  %or36 = or i64 %or31, %shr35, !dbg !497
  %37 = load i64*, i64** %b, align 8, !dbg !497
  %38 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom37 = zext i32 %38 to i64, !dbg !497
  %arrayidx38 = getelementptr i64, i64* %37, i64 %idxprom37, !dbg !497
  %39 = load i64, i64* %arrayidx38, align 8, !dbg !497
  %and39 = and i64 %39, 71776119061217280, !dbg !497
  %shr40 = lshr i64 %and39, 40, !dbg !497
  %or41 = or i64 %or36, %shr40, !dbg !497
  %40 = load i64*, i64** %b, align 8, !dbg !497
  %41 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom42 = zext i32 %41 to i64, !dbg !497
  %arrayidx43 = getelementptr i64, i64* %40, i64 %idxprom42, !dbg !497
  %42 = load i64, i64* %arrayidx43, align 8, !dbg !497
  %and44 = and i64 %42, -72057594037927936, !dbg !497
  %shr45 = lshr i64 %and44, 56, !dbg !497
  %or46 = or i64 %or41, %shr45, !dbg !497
  br label %cond.end, !dbg !497

cond.false:                                       ; preds = %if.end
  %43 = load i64*, i64** %b, align 8, !dbg !497
  %44 = load i32, i32* %offset, align 4, !dbg !497
  %idxprom47 = zext i32 %44 to i64, !dbg !497
  %arrayidx48 = getelementptr i64, i64* %43, i64 %idxprom47, !dbg !497
  %45 = load i64, i64* %arrayidx48, align 8, !dbg !497
  %call49 = call i64 @__fswab64(i64 %45) #8, !dbg !497
  br label %cond.end, !dbg !497

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or46, %cond.true ], [ %call49, %cond.false ], !dbg !497
  store i64 %cond, i64* %tmp, align 8, !dbg !498
  %46 = load i64, i64* %mask, align 8, !dbg !499
  %neg = xor i64 %46, -1, !dbg !500
  %47 = load i64, i64* %tmp, align 8, !dbg !501
  %and50 = and i64 %47, %neg, !dbg !501
  store i64 %and50, i64* %tmp, align 8, !dbg !501
  %48 = load i64, i64* %val.addr, align 8, !dbg !502
  %49 = load i64, i64* %tmp, align 8, !dbg !503
  %or51 = or i64 %49, %48, !dbg !503
  store i64 %or51, i64* %tmp, align 8, !dbg !503
  %50 = load i64, i64* %tmp, align 8, !dbg !504
  %51 = call i1 @llvm.is.constant.i64(i64 %50), !dbg !504
  br i1 %51, label %cond.true52, label %cond.false76, !dbg !504

cond.true52:                                      ; preds = %cond.end
  %52 = load i64, i64* %tmp, align 8, !dbg !504
  %and53 = and i64 %52, 255, !dbg !504
  %shl54 = shl i64 %and53, 56, !dbg !504
  %53 = load i64, i64* %tmp, align 8, !dbg !504
  %and55 = and i64 %53, 65280, !dbg !504
  %shl56 = shl i64 %and55, 40, !dbg !504
  %or57 = or i64 %shl54, %shl56, !dbg !504
  %54 = load i64, i64* %tmp, align 8, !dbg !504
  %and58 = and i64 %54, 16711680, !dbg !504
  %shl59 = shl i64 %and58, 24, !dbg !504
  %or60 = or i64 %or57, %shl59, !dbg !504
  %55 = load i64, i64* %tmp, align 8, !dbg !504
  %and61 = and i64 %55, 4278190080, !dbg !504
  %shl62 = shl i64 %and61, 8, !dbg !504
  %or63 = or i64 %or60, %shl62, !dbg !504
  %56 = load i64, i64* %tmp, align 8, !dbg !504
  %and64 = and i64 %56, 1095216660480, !dbg !504
  %shr65 = lshr i64 %and64, 8, !dbg !504
  %or66 = or i64 %or63, %shr65, !dbg !504
  %57 = load i64, i64* %tmp, align 8, !dbg !504
  %and67 = and i64 %57, 280375465082880, !dbg !504
  %shr68 = lshr i64 %and67, 24, !dbg !504
  %or69 = or i64 %or66, %shr68, !dbg !504
  %58 = load i64, i64* %tmp, align 8, !dbg !504
  %and70 = and i64 %58, 71776119061217280, !dbg !504
  %shr71 = lshr i64 %and70, 40, !dbg !504
  %or72 = or i64 %or69, %shr71, !dbg !504
  %59 = load i64, i64* %tmp, align 8, !dbg !504
  %and73 = and i64 %59, -72057594037927936, !dbg !504
  %shr74 = lshr i64 %and73, 56, !dbg !504
  %or75 = or i64 %or72, %shr74, !dbg !504
  br label %cond.end78, !dbg !504

cond.false76:                                     ; preds = %cond.end
  %60 = load i64, i64* %tmp, align 8, !dbg !504
  %call77 = call i64 @__fswab64(i64 %60) #8, !dbg !504
  br label %cond.end78, !dbg !504

cond.end78:                                       ; preds = %cond.false76, %cond.true52
  %cond79 = phi i64 [ %or75, %cond.true52 ], [ %call77, %cond.false76 ], !dbg !504
  %61 = load i64*, i64** %b, align 8, !dbg !505
  %62 = load i32, i32* %offset, align 4, !dbg !506
  %idxprom80 = zext i32 %62 to i64, !dbg !505
  %arrayidx81 = getelementptr i64, i64* %61, i64 %idxprom80, !dbg !505
  store i64 %cond79, i64* %arrayidx81, align 8, !dbg !507
  ret void, !dbg !508
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mlxsw_sp1_afk_blocks", scope: !2, file: !3, line: 84, type: !200, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlxsw_afk_element", file: !6, line: 12, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!9 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SRC_SYS_PORT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DMAC_32_47", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DMAC_0_31", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SMAC_32_47", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SMAC_0_31", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_ETHERTYPE", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_IP_PROTO", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SRC_IP_96_127", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SRC_IP_64_95", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SRC_IP_32_63", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SRC_IP_0_31", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DST_IP_96_127", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DST_IP_64_95", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DST_IP_32_63", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DST_IP_0_31", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_DST_L4_PORT", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_SRC_L4_PORT", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_VID", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_PCP", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_TCP_FLAGS", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_IP_TTL_", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_IP_ECN", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_IP_DSCP", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_MAX", value: 25, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlxsw_afk_element_type", file: !6, line: 41, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_TYPE_U32", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "MLXSW_AFK_ELEMENT_TYPE_BUF", value: 1, isUnsigned: true)
!39 = !{!40, !43, !41, !46}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !42, line: 34, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !44, line: 31, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !106, !0, !108, !113, !115, !120, !122, !124, !126, !131, !136, !138, !140, !142, !147, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "mlxsw_sp1_afk_ops", scope: !2, file: !3, line: 118, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_ops", file: !6, line: 174, size: 256, elements: !52)
!52 = !{!53, !96, !97, !102}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !51, file: !6, line: 175, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_block", file: !6, line: 114, size: 192, elements: !57)
!57 = !{!58, !63, !95}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !56, file: !6, line: 115, baseType: !59, size: 16)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !60, line: 19, baseType: !61)
!60 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !44, line: 24, baseType: !62)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !56, file: !6, line: 116, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_element_inst", file: !6, line: 74, size: 320, elements: !66)
!66 = !{!67, !68, !69, !93, !94}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !65, file: !6, line: 75, baseType: !5, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !6, line: 76, baseType: !35, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !65, file: !6, line: 77, baseType: !70, size: 192, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_item", file: !71, line: 11, size: 192, elements: !72)
!71 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxsw/item.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !76, !77, !79, !80, !84, !89}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !70, file: !71, line: 12, baseType: !62, size: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !70, file: !71, line: 13, baseType: !75, size: 16, offset: 16)
!75 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "in_step_offset", scope: !70, file: !71, line: 14, baseType: !62, size: 16, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !70, file: !71, line: 15, baseType: !78, size: 8, offset: 48)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "element_size", scope: !70, file: !71, line: 16, baseType: !78, size: 8, offset: 56)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "no_real_shift", scope: !70, file: !71, line: 17, baseType: !81, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !82, line: 30, baseType: !83)
!82 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!83 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !70, file: !71, line: 21, baseType: !85, size: 16, offset: 80)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !71, line: 18, size: 16, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !85, file: !71, line: 19, baseType: !78, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !85, file: !71, line: 20, baseType: !62, size: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !71, line: 22, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "u32_key_diff", scope: !65, file: !6, line: 78, baseType: !46, size: 32, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_size_check", scope: !65, file: !6, line: 81, baseType: !81, size: 8, offset: 288)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "instances_count", scope: !56, file: !6, line: 117, baseType: !7, size: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_count", scope: !51, file: !6, line: 176, baseType: !7, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "encode_block", scope: !51, file: !6, line: 177, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !46, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "clear_block", scope: !51, file: !6, line: 178, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !101, !46}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "mlxsw_sp2_afk_ops", scope: !2, file: !3, line: 308, type: !50, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_l2_dmac", scope: !2, file: !3, line: 10, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1600, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 5)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_l2_smac", scope: !2, file: !3, line: 18, type: !110, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_l2_smac_ex", scope: !2, file: !3, line: 26, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 960, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 3)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_sip", scope: !2, file: !3, line: 32, type: !117, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_dip", scope: !2, file: !3, line: 38, type: !117, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4", scope: !2, file: !3, line: 44, type: !110, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_ex", scope: !2, file: !3, line: 52, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1280, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 4)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_dip", scope: !2, file: !3, line: 59, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 640, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_ex1", scope: !2, file: !3, line: 64, type: !117, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_sip", scope: !2, file: !3, line: 70, type: !133, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_sip_ex", scope: !2, file: !3, line: 75, type: !133, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_packet_type", scope: !2, file: !3, line: 80, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 320, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 1)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "mlxsw_sp2_afk_blocks", scope: !2, file: !3, line: 208, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3456, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 18)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_mac_0", scope: !2, file: !3, line: 125, type: !144, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_mac_1", scope: !2, file: !3, line: 129, type: !144, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_mac_2", scope: !2, file: !3, line: 133, type: !133, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_mac_3", scope: !2, file: !3, line: 138, type: !117, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_mac_4", scope: !2, file: !3, line: 144, type: !117, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_mac_5", scope: !2, file: !3, line: 150, type: !133, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_0", scope: !2, file: !3, line: 155, type: !144, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_1", scope: !2, file: !3, line: 159, type: !144, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_2", scope: !2, file: !3, line: 163, type: !128, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv4_4", scope: !2, file: !3, line: 170, type: !133, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_0", scope: !2, file: !3, line: 175, type: !144, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_1", scope: !2, file: !3, line: 179, type: !144, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_2", scope: !2, file: !3, line: 183, type: !144, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_3", scope: !2, file: !3, line: 187, type: !144, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_4", scope: !2, file: !3, line: 191, type: !144, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_ipv6_5", scope: !2, file: !3, line: 195, type: !144, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_l4_0", scope: !2, file: !3, line: 199, type: !133, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "mlxsw_sp_afk_element_info_l4_2", scope: !2, file: !3, line: 204, type: !144, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "mlxsw_sp2_afk_block_value_item", scope: !2, file: !3, line: 239, type: !70, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "mlxsw_sp2_afk_blocks_layout", scope: !2, file: !3, line: 266, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 3072, elements: !198)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_sp2_afk_block_layout", file: !3, line: 251, size: 256, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !194, file: !3, line: 252, baseType: !62, size: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !194, file: !3, line: 253, baseType: !70, size: 192, offset: 64)
!198 = !{!199}
!199 = !DISubrange(count: 12)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2304, elements: !198)
!201 = !{i32 7, !"Dwarf Version", i32 4}
!202 = !{i32 2, !"Debug Info Version", i32 3}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"Code Model", i32 2}
!205 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!206 = distinct !DISubprogram(name: "mlxsw_sp1_afk_encode_block", scope: !3, file: !3, line: 101, type: !99, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!207 = !{}
!208 = !DILocalVariable(name: "output", arg: 1, scope: !206, file: !3, line: 101, type: !101)
!209 = !DILocation(line: 101, column: 46, scope: !206)
!210 = !DILocalVariable(name: "block_index", arg: 2, scope: !206, file: !3, line: 101, type: !46)
!211 = !DILocation(line: 101, column: 58, scope: !206)
!212 = !DILocalVariable(name: "block", arg: 3, scope: !206, file: !3, line: 102, type: !101)
!213 = !DILocation(line: 102, column: 18, scope: !206)
!214 = !DILocalVariable(name: "offset", scope: !206, file: !3, line: 104, type: !7)
!215 = !DILocation(line: 104, column: 15, scope: !206)
!216 = !DILocation(line: 104, column: 24, scope: !206)
!217 = !DILocation(line: 104, column: 36, scope: !206)
!218 = !DILocalVariable(name: "output_indexed", scope: !206, file: !3, line: 105, type: !101)
!219 = !DILocation(line: 105, column: 8, scope: !206)
!220 = !DILocation(line: 105, column: 25, scope: !206)
!221 = !DILocation(line: 105, column: 34, scope: !206)
!222 = !DILocation(line: 105, column: 32, scope: !206)
!223 = !DILocation(line: 107, column: 9, scope: !206)
!224 = !DILocation(line: 107, column: 25, scope: !206)
!225 = !DILocation(line: 107, column: 2, scope: !206)
!226 = !DILocation(line: 108, column: 1, scope: !206)
!227 = distinct !DISubprogram(name: "mlxsw_sp1_afk_clear_block", scope: !3, file: !3, line: 110, type: !104, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!228 = !DILocalVariable(name: "output", arg: 1, scope: !227, file: !3, line: 110, type: !101)
!229 = !DILocation(line: 110, column: 45, scope: !227)
!230 = !DILocalVariable(name: "block_index", arg: 2, scope: !227, file: !3, line: 110, type: !46)
!231 = !DILocation(line: 110, column: 57, scope: !227)
!232 = !DILocalVariable(name: "offset", scope: !227, file: !3, line: 112, type: !7)
!233 = !DILocation(line: 112, column: 15, scope: !227)
!234 = !DILocation(line: 112, column: 24, scope: !227)
!235 = !DILocation(line: 112, column: 36, scope: !227)
!236 = !DILocalVariable(name: "output_indexed", scope: !227, file: !3, line: 113, type: !101)
!237 = !DILocation(line: 113, column: 8, scope: !227)
!238 = !DILocation(line: 113, column: 25, scope: !227)
!239 = !DILocation(line: 113, column: 34, scope: !227)
!240 = !DILocation(line: 113, column: 32, scope: !227)
!241 = !DILocation(line: 115, column: 9, scope: !227)
!242 = !DILocation(line: 115, column: 2, scope: !227)
!243 = !DILocation(line: 116, column: 1, scope: !227)
!244 = distinct !DISubprogram(name: "mlxsw_sp2_afk_encode_block", scope: !3, file: !3, line: 295, type: !99, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!245 = !DILocalVariable(name: "output", arg: 1, scope: !244, file: !3, line: 295, type: !101)
!246 = !DILocation(line: 295, column: 46, scope: !244)
!247 = !DILocalVariable(name: "block_index", arg: 2, scope: !244, file: !3, line: 295, type: !46)
!248 = !DILocation(line: 295, column: 58, scope: !244)
!249 = !DILocalVariable(name: "block", arg: 3, scope: !244, file: !3, line: 296, type: !101)
!250 = !DILocation(line: 296, column: 18, scope: !244)
!251 = !DILocalVariable(name: "block_value", scope: !244, file: !3, line: 298, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !60, line: 23, baseType: !43)
!253 = !DILocation(line: 298, column: 6, scope: !244)
!254 = !DILocation(line: 298, column: 50, scope: !244)
!255 = !DILocation(line: 298, column: 20, scope: !244)
!256 = !DILocation(line: 300, column: 34, scope: !244)
!257 = !DILocation(line: 300, column: 42, scope: !244)
!258 = !DILocation(line: 300, column: 55, scope: !244)
!259 = !DILocation(line: 300, column: 2, scope: !244)
!260 = !DILocation(line: 301, column: 1, scope: !244)
!261 = distinct !DISubprogram(name: "mlxsw_sp2_afk_clear_block", scope: !3, file: !3, line: 303, type: !104, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!262 = !DILocalVariable(name: "output", arg: 1, scope: !261, file: !3, line: 303, type: !101)
!263 = !DILocation(line: 303, column: 45, scope: !261)
!264 = !DILocalVariable(name: "block_index", arg: 2, scope: !261, file: !3, line: 303, type: !46)
!265 = !DILocation(line: 303, column: 57, scope: !261)
!266 = !DILocation(line: 305, column: 34, scope: !261)
!267 = !DILocation(line: 305, column: 42, scope: !261)
!268 = !DILocation(line: 305, column: 2, scope: !261)
!269 = !DILocation(line: 306, column: 1, scope: !261)
!270 = distinct !DISubprogram(name: "mlxsw_sp2_afk_block_value_get", scope: !3, file: !3, line: 239, type: !271, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!271 = !DISubroutineType(types: !272)
!272 = !{!252, !90}
!273 = !DILocalVariable(name: "buf", arg: 1, scope: !270, file: !3, line: 239, type: !90)
!274 = !DILocation(line: 239, column: 1, scope: !270)
!275 = distinct !DISubprogram(name: "__mlxsw_sp2_afk_block_value_set", scope: !3, file: !3, line: 281, type: !276, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !101, !46, !252}
!278 = !DILocalVariable(name: "output", arg: 1, scope: !275, file: !3, line: 281, type: !101)
!279 = !DILocation(line: 281, column: 51, scope: !275)
!280 = !DILocalVariable(name: "block_index", arg: 2, scope: !275, file: !3, line: 281, type: !46)
!281 = !DILocation(line: 281, column: 63, scope: !275)
!282 = !DILocalVariable(name: "block_value", arg: 3, scope: !275, file: !3, line: 282, type: !252)
!283 = !DILocation(line: 282, column: 14, scope: !275)
!284 = !DILocalVariable(name: "block_layout", scope: !275, file: !3, line: 284, type: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!286 = !DILocation(line: 284, column: 43, scope: !275)
!287 = !DILocalVariable(name: "__ret_warn_on", scope: !288, file: !3, line: 286, type: !46)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 286, column: 6)
!289 = distinct !DILexicalBlock(scope: !275, file: !3, line: 286, column: 6)
!290 = !DILocation(line: 286, column: 6, scope: !288)
!291 = !DILocation(line: 286, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 286, column: 6)
!293 = !DILocation(line: 286, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !3, line: 286, column: 6)
!295 = !DILocation(line: 286, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !294, file: !3, line: 286, column: 6)
!297 = !DILocation(line: 286, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 286, column: 6)
!299 = !{i32 -2134867710, i32 -2134867681, i32 -2134867635, i32 -2134867577, i32 -2134867523, i32 -2134867469, i32 -2134867414, i32 -2134867383}
!300 = !DILocation(line: 286, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !3, line: 286, column: 6)
!302 = !{i32 -2134866941, i32 -2134866934, i32 -2134866882, i32 -2134866851, i32 -2134866821}
!303 = !DILocation(line: 286, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !294, file: !3, line: 286, column: 6)
!305 = !DILocation(line: 286, column: 6, scope: !289)
!306 = !DILocation(line: 286, column: 6, scope: !275)
!307 = !DILocation(line: 288, column: 3, scope: !289)
!308 = !DILocation(line: 290, column: 46, scope: !275)
!309 = !DILocation(line: 290, column: 18, scope: !275)
!310 = !DILocation(line: 290, column: 15, scope: !275)
!311 = !DILocation(line: 291, column: 21, scope: !275)
!312 = !DILocation(line: 291, column: 30, scope: !275)
!313 = !DILocation(line: 291, column: 44, scope: !275)
!314 = !DILocation(line: 291, column: 28, scope: !275)
!315 = !DILocation(line: 292, column: 8, scope: !275)
!316 = !DILocation(line: 292, column: 22, scope: !275)
!317 = !DILocation(line: 292, column: 31, scope: !275)
!318 = !DILocation(line: 291, column: 2, scope: !275)
!319 = !DILocation(line: 293, column: 1, scope: !275)
!320 = distinct !DISubprogram(name: "__mlxsw_item_get64", scope: !71, file: !71, line: 145, type: !321, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!321 = !DISubroutineType(types: !322)
!322 = !{!252, !90, !323, !62}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!325 = !DILocalVariable(name: "buf", arg: 1, scope: !320, file: !71, line: 145, type: !90)
!326 = !DILocation(line: 145, column: 50, scope: !320)
!327 = !DILocalVariable(name: "item", arg: 2, scope: !320, file: !71, line: 146, type: !323)
!328 = !DILocation(line: 146, column: 35, scope: !320)
!329 = !DILocalVariable(name: "index", arg: 3, scope: !320, file: !71, line: 147, type: !62)
!330 = !DILocation(line: 147, column: 25, scope: !320)
!331 = !DILocalVariable(name: "offset", scope: !320, file: !71, line: 149, type: !7)
!332 = !DILocation(line: 149, column: 15, scope: !320)
!333 = !DILocation(line: 149, column: 44, scope: !320)
!334 = !DILocation(line: 149, column: 50, scope: !320)
!335 = !DILocation(line: 149, column: 24, scope: !320)
!336 = !DILocalVariable(name: "b", scope: !320, file: !71, line: 150, type: !40)
!337 = !DILocation(line: 150, column: 10, scope: !320)
!338 = !DILocation(line: 150, column: 25, scope: !320)
!339 = !DILocation(line: 150, column: 14, scope: !320)
!340 = !DILocalVariable(name: "tmp", scope: !320, file: !71, line: 151, type: !252)
!341 = !DILocation(line: 151, column: 6, scope: !320)
!342 = !DILocation(line: 153, column: 8, scope: !320)
!343 = !DILocation(line: 153, column: 6, scope: !320)
!344 = !DILocation(line: 154, column: 10, scope: !320)
!345 = !DILocation(line: 154, column: 16, scope: !320)
!346 = !DILocation(line: 154, column: 6, scope: !320)
!347 = !DILocation(line: 155, column: 9, scope: !320)
!348 = !DILocation(line: 155, column: 6, scope: !320)
!349 = !DILocation(line: 156, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !320, file: !71, line: 156, column: 6)
!351 = !DILocation(line: 156, column: 12, scope: !350)
!352 = !DILocation(line: 156, column: 6, scope: !320)
!353 = !DILocation(line: 157, column: 11, scope: !350)
!354 = !DILocation(line: 157, column: 17, scope: !350)
!355 = !DILocation(line: 157, column: 7, scope: !350)
!356 = !DILocation(line: 157, column: 3, scope: !350)
!357 = !DILocation(line: 158, column: 9, scope: !320)
!358 = !DILocation(line: 158, column: 2, scope: !320)
!359 = distinct !DISubprogram(name: "__mlxsw_item_offset", scope: !71, file: !71, line: 26, type: !360, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!360 = !DISubroutineType(types: !361)
!361 = !{!7, !323, !62, !362}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 55, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !364, line: 72, baseType: !365)
!364 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !364, line: 16, baseType: !366)
!366 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!367 = !DILocalVariable(name: "item", arg: 1, scope: !359, file: !71, line: 26, type: !323)
!368 = !DILocation(line: 26, column: 46, scope: !359)
!369 = !DILocalVariable(name: "index", arg: 2, scope: !359, file: !71, line: 26, type: !62)
!370 = !DILocation(line: 26, column: 67, scope: !359)
!371 = !DILocalVariable(name: "typesize", arg: 3, scope: !359, file: !71, line: 27, type: !362)
!372 = !DILocation(line: 27, column: 14, scope: !359)
!373 = !DILocation(line: 29, column: 2, scope: !359)
!374 = !DILocation(line: 29, column: 2, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !71, line: 29, column: 2)
!376 = distinct !DILexicalBlock(scope: !359, file: !71, line: 29, column: 2)
!377 = !DILocation(line: 0, scope: !375)
!378 = !DILocation(line: 29, column: 2, scope: !376)
!379 = !DILocation(line: 29, column: 2, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !71, line: 29, column: 2)
!381 = !DILocation(line: 29, column: 2, scope: !382)
!382 = distinct !DILexicalBlock(scope: !380, file: !71, line: 29, column: 2)
!383 = !DILocation(line: 29, column: 2, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !71, line: 29, column: 2)
!385 = !{i32 -2137185784, i32 -2137185755, i32 -2137185709, i32 -2137185651, i32 -2137185597, i32 -2137185543, i32 -2137185488, i32 -2137185457}
!386 = !DILocation(line: 29, column: 2, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !71, line: 29, column: 2)
!388 = distinct !DILexicalBlock(scope: !380, file: !71, line: 29, column: 2)
!389 = !{i32 -2137184993, i32 -2137184986, i32 -2137184932, i32 -2137184901, i32 -2137184871}
!390 = !DILocation(line: 29, column: 2, scope: !388)
!391 = !DILocation(line: 30, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !359, file: !71, line: 30, column: 6)
!393 = !DILocation(line: 30, column: 12, scope: !392)
!394 = !DILocation(line: 30, column: 21, scope: !392)
!395 = !DILocation(line: 30, column: 19, scope: !392)
!396 = !DILocation(line: 30, column: 30, scope: !392)
!397 = !DILocation(line: 30, column: 35, scope: !392)
!398 = !DILocation(line: 31, column: 6, scope: !392)
!399 = !DILocation(line: 31, column: 12, scope: !392)
!400 = !DILocation(line: 31, column: 19, scope: !392)
!401 = !DILocation(line: 31, column: 17, scope: !392)
!402 = !DILocation(line: 31, column: 28, scope: !392)
!403 = !DILocation(line: 31, column: 33, scope: !392)
!404 = !DILocation(line: 32, column: 6, scope: !392)
!405 = !DILocation(line: 32, column: 12, scope: !392)
!406 = !DILocation(line: 32, column: 29, scope: !392)
!407 = !DILocation(line: 32, column: 27, scope: !392)
!408 = !DILocation(line: 32, column: 38, scope: !392)
!409 = !DILocation(line: 30, column: 6, scope: !359)
!410 = !DILocation(line: 33, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !392, file: !71, line: 32, column: 44)
!412 = !DILocation(line: 36, column: 3, scope: !411)
!413 = !DILocation(line: 36, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !71, line: 36, column: 3)
!415 = !DILocation(line: 36, column: 3, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !71, line: 36, column: 3)
!417 = !DILocation(line: 36, column: 3, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !71, line: 36, column: 3)
!419 = !{i32 -2137184362, i32 -2137184333, i32 -2137184287, i32 -2137184229, i32 -2137184175, i32 -2137184121, i32 -2137184066, i32 -2137184035}
!420 = !DILocation(line: 36, column: 3, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !71, line: 36, column: 3)
!422 = distinct !DILexicalBlock(scope: !414, file: !71, line: 36, column: 3)
!423 = !{i32 -2137183571, i32 -2137183564, i32 -2137183510, i32 -2137183479, i32 -2137183449}
!424 = !DILocation(line: 36, column: 3, scope: !422)
!425 = !DILocation(line: 37, column: 2, scope: !411)
!426 = !DILocation(line: 39, column: 11, scope: !359)
!427 = !DILocation(line: 39, column: 17, scope: !359)
!428 = !DILocation(line: 39, column: 26, scope: !359)
!429 = !DILocation(line: 39, column: 32, scope: !359)
!430 = !DILocation(line: 39, column: 39, scope: !359)
!431 = !DILocation(line: 39, column: 37, scope: !359)
!432 = !DILocation(line: 39, column: 24, scope: !359)
!433 = !DILocation(line: 39, column: 47, scope: !359)
!434 = !DILocation(line: 39, column: 53, scope: !359)
!435 = !DILocation(line: 39, column: 45, scope: !359)
!436 = !DILocation(line: 39, column: 10, scope: !359)
!437 = !DILocation(line: 40, column: 3, scope: !359)
!438 = !DILocation(line: 39, column: 69, scope: !359)
!439 = !DILocation(line: 39, column: 9, scope: !359)
!440 = !DILocation(line: 39, column: 2, scope: !359)
!441 = distinct !DISubprogram(name: "__fswab64", scope: !442, file: !442, line: 66, type: !443, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!442 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!443 = !DISubroutineType(types: !444)
!444 = !{!43, !43}
!445 = !DILocalVariable(name: "val", arg: 1, scope: !441, file: !442, line: 66, type: !43)
!446 = !DILocation(line: 66, column: 57, scope: !441)
!447 = !DILocation(line: 69, column: 23, scope: !441)
!448 = !DILocation(line: 69, column: 9, scope: !441)
!449 = !DILocation(line: 69, column: 2, scope: !441)
!450 = distinct !DISubprogram(name: "__arch_swab64", scope: !451, file: !451, line: 15, type: !443, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!451 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!452 = !DILocalVariable(name: "val", arg: 1, scope: !450, file: !451, line: 15, type: !43)
!453 = !DILocation(line: 15, column: 61, scope: !450)
!454 = !DILocation(line: 31, column: 38, scope: !450)
!455 = !DILocation(line: 31, column: 2, scope: !450)
!456 = !{i32 371800}
!457 = !DILocation(line: 32, column: 9, scope: !450)
!458 = !DILocation(line: 32, column: 2, scope: !450)
!459 = distinct !DISubprogram(name: "__mlxsw_item_set64", scope: !71, file: !71, line: 161, type: !460, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !207)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !101, !323, !62, !252}
!462 = !DILocalVariable(name: "buf", arg: 1, scope: !459, file: !71, line: 161, type: !101)
!463 = !DILocation(line: 161, column: 45, scope: !459)
!464 = !DILocalVariable(name: "item", arg: 2, scope: !459, file: !71, line: 161, type: !323)
!465 = !DILocation(line: 161, column: 75, scope: !459)
!466 = !DILocalVariable(name: "index", arg: 3, scope: !459, file: !71, line: 162, type: !62)
!467 = !DILocation(line: 162, column: 26, scope: !459)
!468 = !DILocalVariable(name: "val", arg: 4, scope: !459, file: !71, line: 162, type: !252)
!469 = !DILocation(line: 162, column: 37, scope: !459)
!470 = !DILocalVariable(name: "offset", scope: !459, file: !71, line: 164, type: !7)
!471 = !DILocation(line: 164, column: 15, scope: !459)
!472 = !DILocation(line: 164, column: 44, scope: !459)
!473 = !DILocation(line: 164, column: 50, scope: !459)
!474 = !DILocation(line: 164, column: 24, scope: !459)
!475 = !DILocalVariable(name: "b", scope: !459, file: !71, line: 165, type: !40)
!476 = !DILocation(line: 165, column: 10, scope: !459)
!477 = !DILocation(line: 165, column: 25, scope: !459)
!478 = !DILocation(line: 165, column: 14, scope: !459)
!479 = !DILocalVariable(name: "mask", scope: !459, file: !71, line: 166, type: !252)
!480 = !DILocation(line: 166, column: 6, scope: !459)
!481 = !DILocation(line: 166, column: 13, scope: !459)
!482 = !DILocation(line: 166, column: 52, scope: !459)
!483 = !DILocation(line: 166, column: 58, scope: !459)
!484 = !DILocation(line: 166, column: 49, scope: !459)
!485 = !DILocalVariable(name: "tmp", scope: !459, file: !71, line: 167, type: !252)
!486 = !DILocation(line: 167, column: 6, scope: !459)
!487 = !DILocation(line: 169, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !459, file: !71, line: 169, column: 6)
!489 = !DILocation(line: 169, column: 13, scope: !488)
!490 = !DILocation(line: 169, column: 6, scope: !459)
!491 = !DILocation(line: 170, column: 11, scope: !488)
!492 = !DILocation(line: 170, column: 17, scope: !488)
!493 = !DILocation(line: 170, column: 7, scope: !488)
!494 = !DILocation(line: 170, column: 3, scope: !488)
!495 = !DILocation(line: 171, column: 9, scope: !459)
!496 = !DILocation(line: 171, column: 6, scope: !459)
!497 = !DILocation(line: 172, column: 8, scope: !459)
!498 = !DILocation(line: 172, column: 6, scope: !459)
!499 = !DILocation(line: 173, column: 10, scope: !459)
!500 = !DILocation(line: 173, column: 9, scope: !459)
!501 = !DILocation(line: 173, column: 6, scope: !459)
!502 = !DILocation(line: 174, column: 9, scope: !459)
!503 = !DILocation(line: 174, column: 6, scope: !459)
!504 = !DILocation(line: 175, column: 14, scope: !459)
!505 = !DILocation(line: 175, column: 2, scope: !459)
!506 = !DILocation(line: 175, column: 4, scope: !459)
!507 = !DILocation(line: 175, column: 12, scope: !459)
!508 = !DILocation(line: 176, column: 1, scope: !459)
