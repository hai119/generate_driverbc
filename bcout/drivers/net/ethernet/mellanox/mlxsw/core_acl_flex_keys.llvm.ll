; ModuleID = '../bcout/drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.llvm.bc'
source_filename = "drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.mlxsw_afk = type { %struct.list_head, i32, %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_block*, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mlxsw_afk_block = type { i16, %struct.mlxsw_afk_element_inst*, i32 }
%struct.mlxsw_afk_element_inst = type { i32, i32, %struct.mlxsw_item, i32, i8 }
%struct.mlxsw_item = type { i16, i16, i16, i8, i8, i8, %union.anon, i8* }
%union.anon = type { i16 }
%struct.mlxsw_afk_ops = type { %struct.mlxsw_afk_block*, i32, void (i8*, i32, i8*)*, void (i8*, i32)* }
%struct.mlxsw_afk_element_info = type { i32, i32, %struct.mlxsw_item }
%struct.mlxsw_afk_key_info = type { %struct.list_head, i32, i32, [25 x i32], %struct.mlxsw_afk_element_usage, [0 x %struct.mlxsw_afk_block*] }
%struct.mlxsw_afk_element_usage = type { [1 x i64] }
%struct.mlxsw_afk_element_values = type { %struct.mlxsw_afk_element_usage, %struct.anon }
%struct.anon = type { [64 x i8], [64 x i8] }
%struct.mlxsw_afk_picker = type { [0 x %struct.anon.0] }
%struct.anon.0 = type { [1 x i64], i32 }

@.str = private unnamed_addr constant [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SRC_SYS_PORT\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DMAC_32_47\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DMAC_0_31\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SMAC_32_47\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"SMAC_0_31\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ETHERTYPE\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"IP_PROTO\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"SRC_IP_96_127\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SRC_IP_64_95\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"SRC_IP_32_63\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"SRC_IP_0_31\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"DST_IP_96_127\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"DST_IP_64_95\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"DST_IP_32_63\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"DST_IP_0_31\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"DST_L4_PORT\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"SRC_L4_PORT\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"VID\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"PCP\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"TCP_FLAGS\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"IP_TTL_\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"IP_ECN\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"IP_DSCP\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"VIRT_ROUTER_8_10\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"VIRT_ROUTER_0_7\00", align 1
@mlxsw_afk_element_infos = internal constant [25 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 2, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 7, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 8, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 36, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 9, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 44, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 11, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 12, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 52, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 13, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 60, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 15, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 16, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 20, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 16, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 16, i16 0, i16 0, i8 20, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 19, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 16, i16 0, i16 0, i8 23, i8 0, i8 0, i8 undef, { i8, i8 } { i8 9, i8 undef }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 20, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 21, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 24, i16 0, i16 0, i8 9, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 22, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 24, i16 0, i16 0, i8 11, i8 0, i8 0, i8 undef, { i8, i8 } { i8 6, i8 undef }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 23, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 24, i16 0, i16 0, i8 17, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0) } }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } } { i32 24, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } { i16 24, i16 0, i16 0, i8 20, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) } }], align 16, !dbg !0
@.str.28 = private unnamed_addr constant [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@.str.29 = private unnamed_addr constant [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxsw_afk* @mlxsw_afk_create(i32 %max_blocks, %struct.mlxsw_afk_ops* %ops) #0 !dbg !154 {
entry:
  %retval = alloca %struct.mlxsw_afk*, align 8
  %max_blocks.addr = alloca i32, align 4
  %ops.addr = alloca %struct.mlxsw_afk_ops*, align 8
  %mlxsw_afk = alloca %struct.mlxsw_afk*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %max_blocks, i32* %max_blocks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_blocks.addr, metadata !181, metadata !DIExpression()), !dbg !182
  store %struct.mlxsw_afk_ops* %ops, %struct.mlxsw_afk_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_ops** %ops.addr, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk, metadata !185, metadata !DIExpression()), !dbg !186
  %call = call i8* @kzalloc(i64 48, i32 3264) #8, !dbg !187
  %0 = bitcast i8* %call to %struct.mlxsw_afk*, !dbg !187
  store %struct.mlxsw_afk* %0, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !188
  %1 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !189
  %tobool = icmp ne %struct.mlxsw_afk* %1, null, !dbg !189
  br i1 %tobool, label %if.end, label %if.then, !dbg !191

if.then:                                          ; preds = %entry
  store %struct.mlxsw_afk* null, %struct.mlxsw_afk** %retval, align 8, !dbg !192
  br label %return, !dbg !192

if.end:                                           ; preds = %entry
  %2 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !193
  %key_info_list = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %2, i32 0, i32 0, !dbg !194
  call void @INIT_LIST_HEAD(%struct.list_head* %key_info_list) #8, !dbg !195
  %3 = load i32, i32* %max_blocks.addr, align 4, !dbg !196
  %4 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !197
  %max_blocks1 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %4, i32 0, i32 1, !dbg !198
  store i32 %3, i32* %max_blocks1, align 8, !dbg !199
  %5 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %ops.addr, align 8, !dbg !200
  %6 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !201
  %ops2 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %6, i32 0, i32 2, !dbg !202
  store %struct.mlxsw_afk_ops* %5, %struct.mlxsw_afk_ops** %ops2, align 8, !dbg !203
  %7 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %ops.addr, align 8, !dbg !204
  %blocks = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %7, i32 0, i32 0, !dbg !205
  %8 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %blocks, align 8, !dbg !205
  %9 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !206
  %blocks3 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %9, i32 0, i32 3, !dbg !207
  store %struct.mlxsw_afk_block* %8, %struct.mlxsw_afk_block** %blocks3, align 8, !dbg !208
  %10 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %ops.addr, align 8, !dbg !209
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %10, i32 0, i32 1, !dbg !210
  %11 = load i32, i32* %blocks_count, align 8, !dbg !210
  %12 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !211
  %blocks_count4 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %12, i32 0, i32 4, !dbg !212
  store i32 %11, i32* %blocks_count4, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !214, metadata !DIExpression()), !dbg !216
  %13 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !216
  %call5 = call zeroext i1 @mlxsw_afk_blocks_check(%struct.mlxsw_afk* %13) #8, !dbg !216
  %lnot = xor i1 %call5, true, !dbg !216
  %lnot6 = xor i1 %lnot, true, !dbg !216
  %lnot7 = xor i1 %lnot6, true, !dbg !216
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !216
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !216
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !217
  %tobool8 = icmp ne i32 %14, 0, !dbg !217
  %lnot9 = xor i1 %tobool8, true, !dbg !217
  %lnot11 = xor i1 %lnot9, true, !dbg !217
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !217
  %conv = sext i32 %lnot.ext12 to i64, !dbg !217
  %tobool13 = icmp ne i64 %conv, 0, !dbg !217
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !216

if.then14:                                        ; preds = %if.end
  br label %do.body, !dbg !217

do.body:                                          ; preds = %if.then14
  br label %do.body15, !dbg !219

do.body15:                                        ; preds = %do.body
  br label %do.end, !dbg !221

do.end:                                           ; preds = %do.body15
  br label %do.body16, !dbg !219

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 92, i32 2305, i64 12) #9, !dbg !223, !srcloc !225
  br label %do.end17, !dbg !223

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 93) #9, !dbg !226, !srcloc !228
  br label %do.body18, !dbg !219

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !229

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !219

do.end20:                                         ; preds = %do.end19
  br label %if.end21, !dbg !219

if.end21:                                         ; preds = %do.end20, %if.end
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !216
  %tobool22 = icmp ne i32 %15, 0, !dbg !216
  %lnot23 = xor i1 %tobool22, true, !dbg !216
  %lnot25 = xor i1 %lnot23, true, !dbg !216
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !216
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !216
  store i64 %conv27, i64* %tmp, align 8, !dbg !217
  %16 = load i64, i64* %tmp, align 8, !dbg !216
  %17 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk, align 8, !dbg !231
  store %struct.mlxsw_afk* %17, %struct.mlxsw_afk** %retval, align 8, !dbg !232
  br label %return, !dbg !232

return:                                           ; preds = %if.end21, %if.then
  %18 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %retval, align 8, !dbg !233
  ret %struct.mlxsw_afk* %18, !dbg !233
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !234 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !237, metadata !DIExpression()), !dbg !244
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !250, metadata !DIExpression()), !dbg !251
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !252, metadata !DIExpression()), !dbg !253
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !254, metadata !DIExpression()), !dbg !255
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !256, metadata !DIExpression()), !dbg !260
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !262, metadata !DIExpression()), !dbg !266
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !268, metadata !DIExpression()), !dbg !272
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !277, metadata !DIExpression()), !dbg !278
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !279, metadata !DIExpression()), !dbg !280
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !281, metadata !DIExpression()), !dbg !282
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !283, metadata !DIExpression()), !dbg !284
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !285, metadata !DIExpression()), !dbg !286
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !287, metadata !DIExpression()), !dbg !288
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !289, metadata !DIExpression()), !dbg !290
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !291, metadata !DIExpression()), !dbg !292
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !293, metadata !DIExpression()), !dbg !294
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = load i64, i64* %size.addr, align 8, !dbg !297
  %1 = load i32, i32* %flags.addr, align 4, !dbg !298
  %or = or i32 %1, 256, !dbg !299
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !300
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !301
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !302

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !303
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !304
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !305

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !306
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !307
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !308
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !309
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !286
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !310
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !311
  %10 = load i32, i32* %order.i.i, align 4, !dbg !312
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !313
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !314
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !315
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !316
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !316
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !316
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !316
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !316
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !317
  br label %kmalloc.exit, !dbg !317

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !318
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !319
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !319
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !321

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !322
  br label %kmalloc_index.exit.i, !dbg !322

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !323
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !325
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !326

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !327
  br label %kmalloc_index.exit.i, !dbg !327

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !328
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !330
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !331

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !332
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !333
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !334

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !335
  br label %kmalloc_index.exit.i, !dbg !335

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !336
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !338
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !339

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !340
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !341
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !342

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !343
  br label %kmalloc_index.exit.i, !dbg !343

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !344
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !346
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !347

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !348
  br label %kmalloc_index.exit.i, !dbg !348

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !349
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !351
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !352

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !353
  br label %kmalloc_index.exit.i, !dbg !353

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !354
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !356
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !357

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !358
  br label %kmalloc_index.exit.i, !dbg !358

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !359
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !361
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !362

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !363
  br label %kmalloc_index.exit.i, !dbg !363

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !364
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !366
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !367

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !368
  br label %kmalloc_index.exit.i, !dbg !368

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !369
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !371
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !372

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !373
  br label %kmalloc_index.exit.i, !dbg !373

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !374
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !376
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !377

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !378
  br label %kmalloc_index.exit.i, !dbg !378

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !379
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !381
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !382

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !383
  br label %kmalloc_index.exit.i, !dbg !383

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !384
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !386
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !387

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !388
  br label %kmalloc_index.exit.i, !dbg !388

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !389
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !391
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !392

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !393
  br label %kmalloc_index.exit.i, !dbg !393

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !394
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !396
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !397

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !398
  br label %kmalloc_index.exit.i, !dbg !398

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !399
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !401
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !402

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !403
  br label %kmalloc_index.exit.i, !dbg !403

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !404
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !406
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !407

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !408
  br label %kmalloc_index.exit.i, !dbg !408

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !409
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !411
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !412

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !413
  br label %kmalloc_index.exit.i, !dbg !413

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !414
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !416
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !417

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !418
  br label %kmalloc_index.exit.i, !dbg !418

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !419
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !421
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !422

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !423
  br label %kmalloc_index.exit.i, !dbg !423

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !424
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !426
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !427

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !428
  br label %kmalloc_index.exit.i, !dbg !428

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !429
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !431
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !432

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !433
  br label %kmalloc_index.exit.i, !dbg !433

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !434
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !436
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !437

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !438
  br label %kmalloc_index.exit.i, !dbg !438

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !439
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !441
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !442

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !443
  br label %kmalloc_index.exit.i, !dbg !443

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !444
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !446
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !447

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !448
  br label %kmalloc_index.exit.i, !dbg !448

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !449
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !451
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !452

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !453
  br label %kmalloc_index.exit.i, !dbg !453

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !454
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !456
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !457

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !458
  br label %kmalloc_index.exit.i, !dbg !458

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !459
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !461
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !462

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !463
  br label %kmalloc_index.exit.i, !dbg !463

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !464, !srcloc !467
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !468, !srcloc !471
  unreachable, !dbg !472

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !473
  store i32 %45, i32* %index.i, align 4, !dbg !474
  %46 = load i32, i32* %index.i, align 4, !dbg !475
  %tobool.i = icmp ne i32 %46, 0, !dbg !475
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !477

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !478
  br label %kmalloc.exit, !dbg !478

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !479
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !480
  %and.i.i = and i32 %48, 17, !dbg !480
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !480
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !480
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !480
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !480
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !482

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !483
  br label %kmalloc_type.exit.i, !dbg !483

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !484
  %and2.i.i = and i32 %49, 1, !dbg !485
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !484
  %50 = zext i1 %tobool3.i.i to i64, !dbg !484
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !484
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !486
  br label %kmalloc_type.exit.i, !dbg !486

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !487
  %idxprom.i = zext i32 %51 to i64, !dbg !488
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !488
  %52 = load i32, i32* %index.i, align 4, !dbg !489
  %idxprom6.i = zext i32 %52 to i64, !dbg !488
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !488
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !488
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !490
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !491
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !492
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !493
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !494
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !494
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !494
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !494
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !494
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !255
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !495
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !496
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !497
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !498
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !499
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !500
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !501
  store i8* %62, i8** %retval.i, align 8, !dbg !502
  br label %kmalloc.exit, !dbg !502

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !503
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !504
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !505
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !505
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !505
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !505
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !505
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !506
  br label %kmalloc.exit, !dbg !506

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !507
  ret i8* %65, !dbg !508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !509 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !513, metadata !DIExpression()), !dbg !514
  br label %do.body, !dbg !515

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !516

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !518

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !516

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !520
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !520
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !520
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !520
  br label %do.end3, !dbg !520

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !516

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !522
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !523
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !524
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !525
  ret void, !dbg !526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxsw_afk_blocks_check(%struct.mlxsw_afk* %mlxsw_afk) #0 !dbg !527 {
entry:
  %retval = alloca i1, align 1
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block = alloca %struct.mlxsw_afk_block*, align 8
  %elinfo = alloca %struct.mlxsw_afk_element_info*, align 8
  %elinst = alloca %struct.mlxsw_afk_element_inst*, align 8
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i32* %i, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i32* %j, metadata !534, metadata !DIExpression()), !dbg !535
  store i32 0, i32* %i, align 4, !dbg !536
  br label %for.cond, !dbg !538

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, i32* %i, align 4, !dbg !539
  %1 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !541
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %1, i32 0, i32 4, !dbg !542
  %2 = load i32, i32* %blocks_count, align 8, !dbg !542
  %cmp = icmp ult i32 %0, %2, !dbg !543
  br i1 %cmp, label %for.body, label %for.end18, !dbg !544

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_block** %block, metadata !545, metadata !DIExpression()), !dbg !547
  %3 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !548
  %blocks = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %3, i32 0, i32 3, !dbg !549
  %4 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %blocks, align 8, !dbg !549
  %5 = load i32, i32* %i, align 4, !dbg !550
  %idxprom = sext i32 %5 to i64, !dbg !548
  %arrayidx = getelementptr %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %4, i64 %idxprom, !dbg !548
  store %struct.mlxsw_afk_block* %arrayidx, %struct.mlxsw_afk_block** %block, align 8, !dbg !547
  store i32 0, i32* %j, align 4, !dbg !551
  br label %for.cond1, !dbg !553

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !554
  %7 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block, align 8, !dbg !556
  %instances_count = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %7, i32 0, i32 2, !dbg !557
  %8 = load i32, i32* %instances_count, align 8, !dbg !557
  %cmp2 = icmp ult i32 %6, %8, !dbg !558
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !559

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_info** %elinfo, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_inst** %elinst, metadata !564, metadata !DIExpression()), !dbg !565
  %9 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block, align 8, !dbg !566
  %instances = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %9, i32 0, i32 1, !dbg !567
  %10 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %instances, align 8, !dbg !567
  %11 = load i32, i32* %j, align 4, !dbg !568
  %idxprom4 = sext i32 %11 to i64, !dbg !566
  %arrayidx5 = getelementptr %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %10, i64 %idxprom4, !dbg !566
  store %struct.mlxsw_afk_element_inst* %arrayidx5, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !569
  %12 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !570
  %element = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %12, i32 0, i32 0, !dbg !571
  %13 = load i32, i32* %element, align 8, !dbg !571
  %idxprom6 = zext i32 %13 to i64, !dbg !572
  %arrayidx7 = getelementptr [25 x %struct.mlxsw_afk_element_info], [25 x %struct.mlxsw_afk_element_info]* bitcast ([25 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }]* @mlxsw_afk_element_infos to [25 x %struct.mlxsw_afk_element_info]*), i64 0, i64 %idxprom6, !dbg !572
  store %struct.mlxsw_afk_element_info* %arrayidx7, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !573
  %14 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !574
  %type = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %14, i32 0, i32 1, !dbg !576
  %15 = load i32, i32* %type, align 4, !dbg !576
  %16 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !577
  %type8 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %16, i32 0, i32 1, !dbg !578
  %17 = load i32, i32* %type8, align 4, !dbg !578
  %cmp9 = icmp ne i32 %15, %17, !dbg !579
  br i1 %cmp9, label %if.then, label %lor.lhs.false, !dbg !580

lor.lhs.false:                                    ; preds = %for.body3
  %18 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !581
  %avoid_size_check = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %18, i32 0, i32 4, !dbg !582
  %19 = load i8, i8* %avoid_size_check, align 4, !dbg !582
  %tobool = trunc i8 %19 to i1, !dbg !582
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !583

land.lhs.true:                                    ; preds = %lor.lhs.false
  %20 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !584
  %item = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %20, i32 0, i32 2, !dbg !585
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %item, i32 0, i32 6, !dbg !586
  %bits = bitcast %union.anon* %size to i8*, !dbg !587
  %21 = load i8, i8* %bits, align 2, !dbg !587
  %conv = zext i8 %21 to i32, !dbg !584
  %22 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !588
  %item10 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %22, i32 0, i32 2, !dbg !589
  %size11 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %item10, i32 0, i32 6, !dbg !590
  %bits12 = bitcast %union.anon* %size11 to i8*, !dbg !591
  %23 = load i8, i8* %bits12, align 2, !dbg !591
  %conv13 = zext i8 %23 to i32, !dbg !588
  %cmp14 = icmp ne i32 %conv, %conv13, !dbg !592
  br i1 %cmp14, label %if.then, label %if.end, !dbg !593

if.then:                                          ; preds = %land.lhs.true, %for.body3
  store i1 false, i1* %retval, align 1, !dbg !594
  br label %return, !dbg !594

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc, !dbg !595

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4, !dbg !596
  %inc = add i32 %24, 1, !dbg !596
  store i32 %inc, i32* %j, align 4, !dbg !596
  br label %for.cond1, !dbg !597, !llvm.loop !598

for.end:                                          ; preds = %for.cond1
  br label %for.inc16, !dbg !600

for.inc16:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4, !dbg !601
  %inc17 = add i32 %25, 1, !dbg !601
  store i32 %inc17, i32* %i, align 4, !dbg !601
  br label %for.cond, !dbg !602, !llvm.loop !603

for.end18:                                        ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !605
  br label %return, !dbg !605

return:                                           ; preds = %for.end18, %if.then
  %26 = load i1, i1* %retval, align 1, !dbg !606
  ret i1 %26, !dbg !606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxsw_afk_destroy(%struct.mlxsw_afk* %mlxsw_afk) #0 !dbg !607 {
entry:
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !612, metadata !DIExpression()), !dbg !614
  %0 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !614
  %key_info_list = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %0, i32 0, i32 0, !dbg !614
  %call = call i32 @list_empty(%struct.list_head* %key_info_list) #8, !dbg !614
  %tobool = icmp ne i32 %call, 0, !dbg !614
  %lnot = xor i1 %tobool, true, !dbg !614
  %lnot1 = xor i1 %lnot, true, !dbg !614
  %lnot2 = xor i1 %lnot1, true, !dbg !614
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !614
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !614
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !615
  %tobool3 = icmp ne i32 %1, 0, !dbg !615
  %lnot4 = xor i1 %tobool3, true, !dbg !615
  %lnot6 = xor i1 %lnot4, true, !dbg !615
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !615
  %conv = sext i32 %lnot.ext7 to i64, !dbg !615
  %tobool8 = icmp ne i64 %conv, 0, !dbg !615
  br i1 %tobool8, label %if.then, label %if.end, !dbg !614

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !615

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !617

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !619

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !617

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 99, i32 2305, i64 12) #9, !dbg !621, !srcloc !623
  br label %do.end11, !dbg !621

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 94) #9, !dbg !624, !srcloc !626
  br label %do.body12, !dbg !617

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !627

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !617

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !617

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !614
  %tobool15 = icmp ne i32 %2, 0, !dbg !614
  %lnot16 = xor i1 %tobool15, true, !dbg !614
  %lnot18 = xor i1 %lnot16, true, !dbg !614
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !614
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !614
  store i64 %conv20, i64* %tmp, align 8, !dbg !615
  %3 = load i64, i64* %tmp, align 8, !dbg !614
  %4 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !629
  %5 = bitcast %struct.mlxsw_afk* %4 to i8*, !dbg !629
  call void @kfree(i8* %5) #8, !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !632 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !637, metadata !DIExpression()), !dbg !638
  br label %do.body, !dbg !639

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !641

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !639
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !639
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !639
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !641
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !639
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !643
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !644
  %conv = zext i1 %cmp to i32, !dbg !644
  ret i32 %conv, !dbg !645
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_get(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_element_usage* %elusage) #0 !dbg !646 {
entry:
  %retval = alloca %struct.mlxsw_afk_key_info*, align 8
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %key_info = alloca %struct.mlxsw_afk_key_info*, align 8
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !650, metadata !DIExpression()), !dbg !651
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info, metadata !654, metadata !DIExpression()), !dbg !655
  %0 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !656
  %1 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !657
  %call = call %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_find(%struct.mlxsw_afk* %0, %struct.mlxsw_afk_element_usage* %1) #8, !dbg !658
  store %struct.mlxsw_afk_key_info* %call, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !659
  %2 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !660
  %tobool = icmp ne %struct.mlxsw_afk_key_info* %2, null, !dbg !660
  br i1 %tobool, label %if.then, label %if.end, !dbg !662

if.then:                                          ; preds = %entry
  %3 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !663
  %ref_count = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %3, i32 0, i32 1, !dbg !665
  %4 = load i32, i32* %ref_count, align 8, !dbg !666
  %inc = add i32 %4, 1, !dbg !666
  store i32 %inc, i32* %ref_count, align 8, !dbg !666
  %5 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !667
  store %struct.mlxsw_afk_key_info* %5, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !668
  br label %return, !dbg !668

if.end:                                           ; preds = %entry
  %6 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !669
  %7 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !670
  %call1 = call %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_create(%struct.mlxsw_afk* %6, %struct.mlxsw_afk_element_usage* %7) #8, !dbg !671
  store %struct.mlxsw_afk_key_info* %call1, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !672
  br label %return, !dbg !672

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !673
  ret %struct.mlxsw_afk_key_info* %8, !dbg !673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_find(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_element_usage* %elusage) #0 !dbg !674 {
entry:
  %retval = alloca %struct.mlxsw_afk_key_info*, align 8
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %key_info = alloca %struct.mlxsw_afk_key_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mlxsw_afk_key_info*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.mlxsw_afk_key_info*, align 8
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !675, metadata !DIExpression()), !dbg !676
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !681, metadata !DIExpression()), !dbg !684
  %0 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !684
  %key_info_list = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %0, i32 0, i32 0, !dbg !684
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %key_info_list, i32 0, i32 0, !dbg !684
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !684
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !684
  store i8* %2, i8** %__mptr, align 8, !dbg !684
  br label %do.body, !dbg !684

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !685

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !684
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !684
  %4 = bitcast i8* %add.ptr to %struct.mlxsw_afk_key_info*, !dbg !684
  store %struct.mlxsw_afk_key_info* %4, %struct.mlxsw_afk_key_info** %tmp, align 8, !dbg !685
  %5 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %tmp, align 8, !dbg !684
  store %struct.mlxsw_afk_key_info* %5, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !687
  br label %for.cond, !dbg !687

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !688
  %list = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %6, i32 0, i32 0, !dbg !688
  %7 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !688
  %key_info_list1 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %7, i32 0, i32 0, !dbg !688
  %cmp = icmp eq %struct.list_head* %list, %key_info_list1, !dbg !688
  %lnot = xor i1 %cmp, true, !dbg !688
  br i1 %lnot, label %for.body, label %for.end, !dbg !687

for.body:                                         ; preds = %for.cond
  %8 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !690
  %9 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !693
  %call = call zeroext i1 @mlxsw_afk_key_info_elements_eq(%struct.mlxsw_afk_key_info* %8, %struct.mlxsw_afk_element_usage* %9) #8, !dbg !694
  br i1 %call, label %if.then, label %if.end, !dbg !695

if.then:                                          ; preds = %for.body
  %10 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !696
  store %struct.mlxsw_afk_key_info* %10, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !697
  br label %return, !dbg !697

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !698

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !699, metadata !DIExpression()), !dbg !701
  %11 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !701
  %list3 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %11, i32 0, i32 0, !dbg !701
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %list3, i32 0, i32 0, !dbg !701
  %12 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !701
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !701
  store i8* %13, i8** %__mptr2, align 8, !dbg !701
  br label %do.body5, !dbg !701

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !702

do.end6:                                          ; preds = %do.body5
  %14 = load i8*, i8** %__mptr2, align 8, !dbg !701
  %add.ptr8 = getelementptr i8, i8* %14, i64 0, !dbg !701
  %15 = bitcast i8* %add.ptr8 to %struct.mlxsw_afk_key_info*, !dbg !701
  store %struct.mlxsw_afk_key_info* %15, %struct.mlxsw_afk_key_info** %tmp7, align 8, !dbg !702
  %16 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %tmp7, align 8, !dbg !701
  store %struct.mlxsw_afk_key_info* %16, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !688
  br label %for.cond, !dbg !688, !llvm.loop !704

for.end:                                          ; preds = %for.cond
  store %struct.mlxsw_afk_key_info* null, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !706
  br label %return, !dbg !706

return:                                           ; preds = %for.end, %if.then
  %17 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !707
  ret %struct.mlxsw_afk_key_info* %17, !dbg !707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxsw_afk_key_info* @mlxsw_afk_key_info_create(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_element_usage* %elusage) #0 !dbg !708 {
entry:
  %retval = alloca %struct.mlxsw_afk_key_info*, align 8
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %key_info = alloca %struct.mlxsw_afk_key_info*, align 8
  %err = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !711, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info, metadata !713, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.declare(metadata i32* %err, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !717
  %max_blocks = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %0, i32 0, i32 1, !dbg !717
  %1 = load i32, i32* %max_blocks, align 8, !dbg !717
  %conv = zext i32 %1 to i64, !dbg !717
  %call = call i64 @__ab_c_size(i64 %conv, i64 8, i64 136) #8, !dbg !717
  %call1 = call i8* @kzalloc(i64 %call, i32 3264) #8, !dbg !718
  %2 = bitcast i8* %call1 to %struct.mlxsw_afk_key_info*, !dbg !718
  store %struct.mlxsw_afk_key_info* %2, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !719
  %3 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !720
  %tobool = icmp ne %struct.mlxsw_afk_key_info* %3, null, !dbg !720
  br i1 %tobool, label %if.end, label %if.then, !dbg !722

if.then:                                          ; preds = %entry
  %call2 = call i8* @ERR_PTR(i64 -12) #8, !dbg !723
  %4 = bitcast i8* %call2 to %struct.mlxsw_afk_key_info*, !dbg !723
  store %struct.mlxsw_afk_key_info* %4, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !724
  br label %return, !dbg !724

if.end:                                           ; preds = %entry
  %5 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !725
  %6 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !726
  %7 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !727
  %call3 = call i32 @mlxsw_afk_picker(%struct.mlxsw_afk* %5, %struct.mlxsw_afk_key_info* %6, %struct.mlxsw_afk_element_usage* %7) #8, !dbg !728
  store i32 %call3, i32* %err, align 4, !dbg !729
  %8 = load i32, i32* %err, align 4, !dbg !730
  %tobool4 = icmp ne i32 %8, 0, !dbg !730
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !732

if.then5:                                         ; preds = %if.end
  br label %err_picker, !dbg !733

if.end6:                                          ; preds = %if.end
  %9 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !734
  %list = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %9, i32 0, i32 0, !dbg !735
  %10 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !736
  %key_info_list = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %10, i32 0, i32 0, !dbg !737
  call void @list_add(%struct.list_head* %list, %struct.list_head* %key_info_list) #8, !dbg !738
  %11 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !739
  %ref_count = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %11, i32 0, i32 1, !dbg !740
  store i32 1, i32* %ref_count, align 8, !dbg !741
  %12 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !742
  store %struct.mlxsw_afk_key_info* %12, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !743
  br label %return, !dbg !743

err_picker:                                       ; preds = %if.then5
  call void @llvm.dbg.label(metadata !744), !dbg !745
  %13 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info, align 8, !dbg !746
  %14 = bitcast %struct.mlxsw_afk_key_info* %13 to i8*, !dbg !746
  call void @kfree(i8* %14) #8, !dbg !747
  %15 = load i32, i32* %err, align 4, !dbg !748
  %conv7 = sext i32 %15 to i64, !dbg !748
  %call8 = call i8* @ERR_PTR(i64 %conv7) #8, !dbg !749
  %16 = bitcast i8* %call8 to %struct.mlxsw_afk_key_info*, !dbg !749
  store %struct.mlxsw_afk_key_info* %16, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !750
  br label %return, !dbg !750

return:                                           ; preds = %err_picker, %if.end6, %if.then
  %17 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %retval, align 8, !dbg !751
  ret %struct.mlxsw_afk_key_info* %17, !dbg !751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxsw_afk_key_info_put(%struct.mlxsw_afk_key_info* %key_info) #0 !dbg !752 {
entry:
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !757
  %ref_count = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %0, i32 0, i32 1, !dbg !759
  %1 = load i32, i32* %ref_count, align 8, !dbg !760
  %dec = add i32 %1, -1, !dbg !760
  store i32 %dec, i32* %ref_count, align 8, !dbg !760
  %tobool = icmp ne i32 %dec, 0, !dbg !760
  br i1 %tobool, label %if.then, label %if.end, !dbg !761

if.then:                                          ; preds = %entry
  br label %return, !dbg !762

if.end:                                           ; preds = %entry
  %2 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !763
  call void @mlxsw_afk_key_info_destroy(%struct.mlxsw_afk_key_info* %2) #8, !dbg !764
  br label %return, !dbg !765

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_afk_key_info_destroy(%struct.mlxsw_afk_key_info* %key_info) #0 !dbg !766 {
entry:
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !767, metadata !DIExpression()), !dbg !768
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !769
  %list = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %0, i32 0, i32 0, !dbg !770
  call void @list_del(%struct.list_head* %list) #8, !dbg !771
  %1 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !772
  %2 = bitcast %struct.mlxsw_afk_key_info* %1 to i8*, !dbg !772
  call void @kfree(i8* %2) #8, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @mlxsw_afk_key_info_subset(%struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_element_usage* %elusage) #0 !dbg !775 {
entry:
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !778, metadata !DIExpression()), !dbg !779
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !780, metadata !DIExpression()), !dbg !781
  %0 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !782
  %1 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !783
  %elusage1 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %1, i32 0, i32 4, !dbg !784
  %call = call zeroext i1 @mlxsw_afk_element_usage_subset(%struct.mlxsw_afk_element_usage* %0, %struct.mlxsw_afk_element_usage* %elusage1) #8, !dbg !785
  ret i1 %call, !dbg !786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxsw_afk_element_usage_subset(%struct.mlxsw_afk_element_usage* %elusage_small, %struct.mlxsw_afk_element_usage* %elusage_big) #0 !dbg !787 {
entry:
  %retval = alloca i1, align 1
  %elusage_small.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %elusage_big.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %i = alloca i32, align 4
  store %struct.mlxsw_afk_element_usage* %elusage_small, %struct.mlxsw_afk_element_usage** %elusage_small.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage_small.addr, metadata !790, metadata !DIExpression()), !dbg !791
  store %struct.mlxsw_afk_element_usage* %elusage_big, %struct.mlxsw_afk_element_usage** %elusage_big.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage_big.addr, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata i32* %i, metadata !794, metadata !DIExpression()), !dbg !795
  store i32 0, i32* %i, align 4, !dbg !796
  br label %for.cond, !dbg !798

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !799
  %cmp = icmp slt i32 %0, 25, !dbg !801
  br i1 %cmp, label %for.body, label %for.end, !dbg !802

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !803
  %conv = sext i32 %1 to i64, !dbg !803
  %2 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage_small.addr, align 8, !dbg !805
  %usage = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %2, i32 0, i32 0, !dbg !806
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %usage, i64 0, i64 0, !dbg !805
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #8, !dbg !807
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !808

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !809
  %conv2 = sext i32 %3 to i64, !dbg !809
  %4 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage_big.addr, align 8, !dbg !810
  %usage3 = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %4, i32 0, i32 0, !dbg !811
  %arraydecay4 = getelementptr inbounds [1 x i64], [1 x i64]* %usage3, i64 0, i64 0, !dbg !810
  %call5 = call zeroext i1 @test_bit(i64 %conv2, i64* %arraydecay4) #8, !dbg !812
  br i1 %call5, label %if.end, label %if.then, !dbg !813

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !814
  br label %return, !dbg !814

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !815

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !816
  %inc = add i32 %5, 1, !dbg !816
  store i32 %inc, i32* %i, align 4, !dbg !816
  br label %for.cond, !dbg !817, !llvm.loop !818

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !820
  br label %return, !dbg !820

return:                                           ; preds = %for.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !821
  ret i1 %6, !dbg !821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i16 @mlxsw_afk_key_info_block_encoding_get(%struct.mlxsw_afk_key_info* %key_info, i32 %block_index) #0 !dbg !822 {
entry:
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %block_index.addr = alloca i32, align 4
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !827, metadata !DIExpression()), !dbg !828
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !829, metadata !DIExpression()), !dbg !830
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !831
  %blocks = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %0, i32 0, i32 5, !dbg !832
  %1 = load i32, i32* %block_index.addr, align 4, !dbg !833
  %idxprom = sext i32 %1 to i64, !dbg !831
  %arrayidx = getelementptr [0 x %struct.mlxsw_afk_block*], [0 x %struct.mlxsw_afk_block*]* %blocks, i64 0, i64 %idxprom, !dbg !831
  %2 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %arrayidx, align 8, !dbg !831
  %encoding = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %2, i32 0, i32 0, !dbg !834
  %3 = load i16, i16* %encoding, align 8, !dbg !834
  ret i16 %3, !dbg !835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mlxsw_afk_key_info_blocks_count_get(%struct.mlxsw_afk_key_info* %key_info) #0 !dbg !836 {
entry:
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !839, metadata !DIExpression()), !dbg !840
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !841
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %0, i32 0, i32 2, !dbg !842
  %1 = load i32, i32* %blocks_count, align 4, !dbg !842
  ret i32 %1, !dbg !843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxsw_afk_values_add_u32(%struct.mlxsw_afk_element_values* %values, i32 %element, i32 %key_value, i32 %mask_value) #0 !dbg !844 {
entry:
  %values.addr = alloca %struct.mlxsw_afk_element_values*, align 8
  %element.addr = alloca i32, align 4
  %key_value.addr = alloca i32, align 4
  %mask_value.addr = alloca i32, align 4
  %elinfo = alloca %struct.mlxsw_afk_element_info*, align 8
  %storage_item = alloca %struct.mlxsw_item*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.mlxsw_afk_element_values* %values, %struct.mlxsw_afk_element_values** %values.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_values** %values.addr, metadata !860, metadata !DIExpression()), !dbg !861
  store i32 %element, i32* %element.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element.addr, metadata !862, metadata !DIExpression()), !dbg !863
  store i32 %key_value, i32* %key_value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %key_value.addr, metadata !864, metadata !DIExpression()), !dbg !865
  store i32 %mask_value, i32* %mask_value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask_value.addr, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_info** %elinfo, metadata !868, metadata !DIExpression()), !dbg !869
  %0 = load i32, i32* %element.addr, align 4, !dbg !870
  %idxprom = zext i32 %0 to i64, !dbg !871
  %arrayidx = getelementptr [25 x %struct.mlxsw_afk_element_info], [25 x %struct.mlxsw_afk_element_info]* bitcast ([25 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }]* @mlxsw_afk_element_infos to [25 x %struct.mlxsw_afk_element_info]*), i64 0, i64 %idxprom, !dbg !871
  store %struct.mlxsw_afk_element_info* %arrayidx, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !869
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %storage_item, metadata !872, metadata !DIExpression()), !dbg !875
  %1 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !876
  %item = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %1, i32 0, i32 2, !dbg !877
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %storage_item, align 8, !dbg !875
  %2 = load i32, i32* %mask_value.addr, align 4, !dbg !878
  %tobool = icmp ne i32 %2, 0, !dbg !878
  br i1 %tobool, label %if.end, label %if.then, !dbg !880

if.then:                                          ; preds = %entry
  br label %return, !dbg !881

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !882, metadata !DIExpression()), !dbg !885
  %3 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !885
  %type = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %3, i32 0, i32 1, !dbg !885
  %4 = load i32, i32* %type, align 4, !dbg !885
  %cmp = icmp ne i32 %4, 0, !dbg !885
  %lnot = xor i1 %cmp, true, !dbg !885
  %lnot1 = xor i1 %lnot, true, !dbg !885
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !885
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !885
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !886
  %tobool2 = icmp ne i32 %5, 0, !dbg !886
  %lnot3 = xor i1 %tobool2, true, !dbg !886
  %lnot5 = xor i1 %lnot3, true, !dbg !886
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !886
  %conv = sext i32 %lnot.ext6 to i64, !dbg !886
  %tobool7 = icmp ne i64 %conv, 0, !dbg !886
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !885

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !886

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !888

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !890

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !888

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 394, i32 2305, i64 12) #9, !dbg !892, !srcloc !894
  br label %do.end11, !dbg !892

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 99) #9, !dbg !895, !srcloc !897
  br label %do.body12, !dbg !888

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !898

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !888

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !888

if.end15:                                         ; preds = %do.end14, %if.end
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !885
  %tobool16 = icmp ne i32 %6, 0, !dbg !885
  %lnot17 = xor i1 %tobool16, true, !dbg !885
  %lnot19 = xor i1 %lnot17, true, !dbg !885
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !885
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !885
  store i64 %conv21, i64* %tmp, align 8, !dbg !886
  %7 = load i64, i64* %tmp, align 8, !dbg !885
  %tobool22 = icmp ne i64 %7, 0, !dbg !900
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !901

if.then23:                                        ; preds = %if.end15
  br label %return, !dbg !902

if.end24:                                         ; preds = %if.end15
  %8 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !903
  %storage = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %8, i32 0, i32 1, !dbg !904
  %key = getelementptr inbounds %struct.anon, %struct.anon* %storage, i32 0, i32 0, !dbg !905
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0, !dbg !903
  %9 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item, align 8, !dbg !906
  %10 = load i32, i32* %key_value.addr, align 4, !dbg !907
  call void @__mlxsw_item_set32(i8* %arraydecay, %struct.mlxsw_item* %9, i16 zeroext 0, i32 %10) #8, !dbg !908
  %11 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !909
  %storage25 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %11, i32 0, i32 1, !dbg !910
  %mask = getelementptr inbounds %struct.anon, %struct.anon* %storage25, i32 0, i32 1, !dbg !911
  %arraydecay26 = getelementptr inbounds [64 x i8], [64 x i8]* %mask, i64 0, i64 0, !dbg !909
  %12 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item, align 8, !dbg !912
  %13 = load i32, i32* %mask_value.addr, align 4, !dbg !913
  call void @__mlxsw_item_set32(i8* %arraydecay26, %struct.mlxsw_item* %12, i16 zeroext 0, i32 %13) #8, !dbg !914
  %14 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !915
  %elusage = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %14, i32 0, i32 0, !dbg !916
  %15 = load i32, i32* %element.addr, align 4, !dbg !917
  call void @mlxsw_afk_element_usage_add(%struct.mlxsw_afk_element_usage* %elusage, i32 %15) #8, !dbg !918
  br label %return, !dbg !919

return:                                           ; preds = %if.end24, %if.then23, %if.then
  ret void, !dbg !919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__mlxsw_item_set32(i8* %buf, %struct.mlxsw_item* %item, i16 zeroext %index, i32 %val) #0 !dbg !920 {
entry:
  %buf.addr = alloca i8*, align 8
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %val.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %b = alloca i32*, align 8
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !923, metadata !DIExpression()), !dbg !924
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !931, metadata !DIExpression()), !dbg !932
  %0 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !933
  %1 = load i16, i16* %index.addr, align 2, !dbg !934
  %call = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 4) #8, !dbg !935
  store i32 %call, i32* %offset, align 4, !dbg !932
  call void @llvm.dbg.declare(metadata i32** %b, metadata !936, metadata !DIExpression()), !dbg !937
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !938
  %3 = bitcast i8* %2 to i32*, !dbg !939
  store i32* %3, i32** %b, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !940, metadata !DIExpression()), !dbg !941
  %4 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !942
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %4, i32 0, i32 6, !dbg !942
  %bits = bitcast %union.anon* %size to i8*, !dbg !942
  %5 = load i8, i8* %bits, align 2, !dbg !942
  %conv = zext i8 %5 to i32, !dbg !942
  %sub = sub i32 %conv, 1, !dbg !942
  %sub1 = sub i32 63, %sub, !dbg !942
  %sh_prom = zext i32 %sub1 to i64, !dbg !942
  %shr = lshr i64 -1, %sh_prom, !dbg !942
  %and = and i64 -1, %shr, !dbg !942
  %add = add i64 0, %and, !dbg !942
  %6 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !943
  %shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %6, i32 0, i32 3, !dbg !944
  %7 = load i8, i8* %shift, align 2, !dbg !944
  %conv2 = zext i8 %7 to i32, !dbg !943
  %sh_prom3 = zext i32 %conv2 to i64, !dbg !945
  %shl = shl i64 %add, %sh_prom3, !dbg !945
  %conv4 = trunc i64 %shl to i32, !dbg !942
  store i32 %conv4, i32* %mask, align 4, !dbg !941
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !946, metadata !DIExpression()), !dbg !947
  %8 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !948
  %no_real_shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %8, i32 0, i32 5, !dbg !950
  %9 = load i8, i8* %no_real_shift, align 8, !dbg !950
  %tobool = trunc i8 %9 to i1, !dbg !950
  br i1 %tobool, label %if.end, label %if.then, !dbg !951

if.then:                                          ; preds = %entry
  %10 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !952
  %shift5 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %10, i32 0, i32 3, !dbg !953
  %11 = load i8, i8* %shift5, align 2, !dbg !953
  %conv6 = zext i8 %11 to i32, !dbg !952
  %12 = load i32, i32* %val.addr, align 4, !dbg !954
  %shl7 = shl i32 %12, %conv6, !dbg !954
  store i32 %shl7, i32* %val.addr, align 4, !dbg !954
  br label %if.end, !dbg !955

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %mask, align 4, !dbg !956
  %14 = load i32, i32* %val.addr, align 4, !dbg !957
  %and8 = and i32 %14, %13, !dbg !957
  store i32 %and8, i32* %val.addr, align 4, !dbg !957
  %15 = load i32*, i32** %b, align 8, !dbg !958
  %16 = load i32, i32* %offset, align 4, !dbg !958
  %idxprom = zext i32 %16 to i64, !dbg !958
  %arrayidx = getelementptr i32, i32* %15, i64 %idxprom, !dbg !958
  %17 = load i32, i32* %arrayidx, align 4, !dbg !958
  %18 = call i1 @llvm.is.constant.i32(i32 %17), !dbg !958
  br i1 %18, label %cond.true, label %cond.false, !dbg !958

cond.true:                                        ; preds = %if.end
  %19 = load i32*, i32** %b, align 8, !dbg !958
  %20 = load i32, i32* %offset, align 4, !dbg !958
  %idxprom9 = zext i32 %20 to i64, !dbg !958
  %arrayidx10 = getelementptr i32, i32* %19, i64 %idxprom9, !dbg !958
  %21 = load i32, i32* %arrayidx10, align 4, !dbg !958
  %and11 = and i32 %21, 255, !dbg !958
  %shl12 = shl i32 %and11, 24, !dbg !958
  %22 = load i32*, i32** %b, align 8, !dbg !958
  %23 = load i32, i32* %offset, align 4, !dbg !958
  %idxprom13 = zext i32 %23 to i64, !dbg !958
  %arrayidx14 = getelementptr i32, i32* %22, i64 %idxprom13, !dbg !958
  %24 = load i32, i32* %arrayidx14, align 4, !dbg !958
  %and15 = and i32 %24, 65280, !dbg !958
  %shl16 = shl i32 %and15, 8, !dbg !958
  %or = or i32 %shl12, %shl16, !dbg !958
  %25 = load i32*, i32** %b, align 8, !dbg !958
  %26 = load i32, i32* %offset, align 4, !dbg !958
  %idxprom17 = zext i32 %26 to i64, !dbg !958
  %arrayidx18 = getelementptr i32, i32* %25, i64 %idxprom17, !dbg !958
  %27 = load i32, i32* %arrayidx18, align 4, !dbg !958
  %and19 = and i32 %27, 16711680, !dbg !958
  %shr20 = lshr i32 %and19, 8, !dbg !958
  %or21 = or i32 %or, %shr20, !dbg !958
  %28 = load i32*, i32** %b, align 8, !dbg !958
  %29 = load i32, i32* %offset, align 4, !dbg !958
  %idxprom22 = zext i32 %29 to i64, !dbg !958
  %arrayidx23 = getelementptr i32, i32* %28, i64 %idxprom22, !dbg !958
  %30 = load i32, i32* %arrayidx23, align 4, !dbg !958
  %and24 = and i32 %30, -16777216, !dbg !958
  %shr25 = lshr i32 %and24, 24, !dbg !958
  %or26 = or i32 %or21, %shr25, !dbg !958
  br label %cond.end, !dbg !958

cond.false:                                       ; preds = %if.end
  %31 = load i32*, i32** %b, align 8, !dbg !958
  %32 = load i32, i32* %offset, align 4, !dbg !958
  %idxprom27 = zext i32 %32 to i64, !dbg !958
  %arrayidx28 = getelementptr i32, i32* %31, i64 %idxprom27, !dbg !958
  %33 = load i32, i32* %arrayidx28, align 4, !dbg !958
  %call29 = call i32 @__fswab32(i32 %33) #10, !dbg !958
  br label %cond.end, !dbg !958

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or26, %cond.true ], [ %call29, %cond.false ], !dbg !958
  store i32 %cond, i32* %tmp, align 4, !dbg !959
  %34 = load i32, i32* %mask, align 4, !dbg !960
  %neg = xor i32 %34, -1, !dbg !961
  %35 = load i32, i32* %tmp, align 4, !dbg !962
  %and30 = and i32 %35, %neg, !dbg !962
  store i32 %and30, i32* %tmp, align 4, !dbg !962
  %36 = load i32, i32* %val.addr, align 4, !dbg !963
  %37 = load i32, i32* %tmp, align 4, !dbg !964
  %or31 = or i32 %37, %36, !dbg !964
  store i32 %or31, i32* %tmp, align 4, !dbg !964
  %38 = load i32, i32* %tmp, align 4, !dbg !965
  %39 = call i1 @llvm.is.constant.i32(i32 %38), !dbg !965
  br i1 %39, label %cond.true32, label %cond.false44, !dbg !965

cond.true32:                                      ; preds = %cond.end
  %40 = load i32, i32* %tmp, align 4, !dbg !965
  %and33 = and i32 %40, 255, !dbg !965
  %shl34 = shl i32 %and33, 24, !dbg !965
  %41 = load i32, i32* %tmp, align 4, !dbg !965
  %and35 = and i32 %41, 65280, !dbg !965
  %shl36 = shl i32 %and35, 8, !dbg !965
  %or37 = or i32 %shl34, %shl36, !dbg !965
  %42 = load i32, i32* %tmp, align 4, !dbg !965
  %and38 = and i32 %42, 16711680, !dbg !965
  %shr39 = lshr i32 %and38, 8, !dbg !965
  %or40 = or i32 %or37, %shr39, !dbg !965
  %43 = load i32, i32* %tmp, align 4, !dbg !965
  %and41 = and i32 %43, -16777216, !dbg !965
  %shr42 = lshr i32 %and41, 24, !dbg !965
  %or43 = or i32 %or40, %shr42, !dbg !965
  br label %cond.end46, !dbg !965

cond.false44:                                     ; preds = %cond.end
  %44 = load i32, i32* %tmp, align 4, !dbg !965
  %call45 = call i32 @__fswab32(i32 %44) #10, !dbg !965
  br label %cond.end46, !dbg !965

cond.end46:                                       ; preds = %cond.false44, %cond.true32
  %cond47 = phi i32 [ %or43, %cond.true32 ], [ %call45, %cond.false44 ], !dbg !965
  %45 = load i32*, i32** %b, align 8, !dbg !966
  %46 = load i32, i32* %offset, align 4, !dbg !967
  %idxprom48 = zext i32 %46 to i64, !dbg !966
  %arrayidx49 = getelementptr i32, i32* %45, i64 %idxprom48, !dbg !966
  store i32 %cond47, i32* %arrayidx49, align 4, !dbg !968
  ret void, !dbg !969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_afk_element_usage_add(%struct.mlxsw_afk_element_usage* %elusage, i32 %element) #0 !dbg !970 {
entry:
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %element.addr = alloca i32, align 4
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !973, metadata !DIExpression()), !dbg !974
  store i32 %element, i32* %element.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element.addr, metadata !975, metadata !DIExpression()), !dbg !976
  %0 = load i32, i32* %element.addr, align 4, !dbg !977
  %conv = zext i32 %0 to i64, !dbg !977
  %1 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !978
  %usage = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %1, i32 0, i32 0, !dbg !979
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %usage, i64 0, i64 0, !dbg !978
  call void @__set_bit(i64 %conv, i64* %arraydecay) #8, !dbg !980
  ret void, !dbg !981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxsw_afk_values_add_buf(%struct.mlxsw_afk_element_values* %values, i32 %element, i8* %key_value, i8* %mask_value, i32 %len) #0 !dbg !982 {
entry:
  %values.addr = alloca %struct.mlxsw_afk_element_values*, align 8
  %element.addr = alloca i32, align 4
  %key_value.addr = alloca i8*, align 8
  %mask_value.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %elinfo = alloca %struct.mlxsw_afk_element_info*, align 8
  %storage_item = alloca %struct.mlxsw_item*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on25 = alloca i32, align 4
  %tmp51 = alloca i64, align 8
  store %struct.mlxsw_afk_element_values* %values, %struct.mlxsw_afk_element_values** %values.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_values** %values.addr, metadata !985, metadata !DIExpression()), !dbg !986
  store i32 %element, i32* %element.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element.addr, metadata !987, metadata !DIExpression()), !dbg !988
  store i8* %key_value, i8** %key_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key_value.addr, metadata !989, metadata !DIExpression()), !dbg !990
  store i8* %mask_value, i8** %mask_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mask_value.addr, metadata !991, metadata !DIExpression()), !dbg !992
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !993, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_info** %elinfo, metadata !995, metadata !DIExpression()), !dbg !996
  %0 = load i32, i32* %element.addr, align 4, !dbg !997
  %idxprom = zext i32 %0 to i64, !dbg !998
  %arrayidx = getelementptr [25 x %struct.mlxsw_afk_element_info], [25 x %struct.mlxsw_afk_element_info]* bitcast ([25 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }]* @mlxsw_afk_element_infos to [25 x %struct.mlxsw_afk_element_info]*), i64 0, i64 %idxprom, !dbg !998
  store %struct.mlxsw_afk_element_info* %arrayidx, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !996
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %storage_item, metadata !999, metadata !DIExpression()), !dbg !1000
  %1 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !1001
  %item = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %1, i32 0, i32 2, !dbg !1002
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %storage_item, align 8, !dbg !1000
  %2 = load i8*, i8** %mask_value.addr, align 8, !dbg !1003
  %3 = load i32, i32* %len.addr, align 4, !dbg !1005
  %conv = zext i32 %3 to i64, !dbg !1005
  %call = call i8* @memchr_inv(i8* %2, i32 0, i64 %conv) #8, !dbg !1006
  %tobool = icmp ne i8* %call, null, !dbg !1006
  br i1 %tobool, label %if.end, label %if.then, !dbg !1007

if.then:                                          ; preds = %entry
  br label %return, !dbg !1008

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1009, metadata !DIExpression()), !dbg !1012
  %4 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !1012
  %type = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %4, i32 0, i32 1, !dbg !1012
  %5 = load i32, i32* %type, align 4, !dbg !1012
  %cmp = icmp ne i32 %5, 1, !dbg !1012
  %lnot = xor i1 %cmp, true, !dbg !1012
  %lnot2 = xor i1 %lnot, true, !dbg !1012
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1012
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !1012
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !1013
  %tobool3 = icmp ne i32 %6, 0, !dbg !1013
  %lnot4 = xor i1 %tobool3, true, !dbg !1013
  %lnot6 = xor i1 %lnot4, true, !dbg !1013
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1013
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1013
  %tobool9 = icmp ne i64 %conv8, 0, !dbg !1013
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !1012

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !1013

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !1015

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !1017

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !1015

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 413, i32 2305, i64 12) #9, !dbg !1019, !srcloc !1021
  br label %do.end13, !dbg !1019

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 100) #9, !dbg !1022, !srcloc !1024
  br label %do.body14, !dbg !1015

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1025

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !1015

do.end16:                                         ; preds = %do.end15
  br label %if.end17, !dbg !1015

if.end17:                                         ; preds = %do.end16, %if.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !1012
  %tobool18 = icmp ne i32 %7, 0, !dbg !1012
  %lnot19 = xor i1 %tobool18, true, !dbg !1012
  %lnot21 = xor i1 %lnot19, true, !dbg !1012
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1012
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1012
  store i64 %conv23, i64* %tmp, align 8, !dbg !1013
  %8 = load i64, i64* %tmp, align 8, !dbg !1012
  %tobool24 = icmp ne i64 %8, 0, !dbg !1027
  br i1 %tobool24, label %if.then59, label %lor.lhs.false, !dbg !1028

lor.lhs.false:                                    ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on25, metadata !1029, metadata !DIExpression()), !dbg !1031
  %9 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !1031
  %item26 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %9, i32 0, i32 2, !dbg !1031
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %item26, i32 0, i32 6, !dbg !1031
  %bytes = bitcast %union.anon* %size to i16*, !dbg !1031
  %10 = load i16, i16* %bytes, align 2, !dbg !1031
  %conv27 = zext i16 %10 to i32, !dbg !1031
  %11 = load i32, i32* %len.addr, align 4, !dbg !1031
  %cmp28 = icmp ne i32 %conv27, %11, !dbg !1031
  %lnot30 = xor i1 %cmp28, true, !dbg !1031
  %lnot32 = xor i1 %lnot30, true, !dbg !1031
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !1031
  store i32 %lnot.ext33, i32* %__ret_warn_on25, align 4, !dbg !1031
  %12 = load i32, i32* %__ret_warn_on25, align 4, !dbg !1032
  %tobool34 = icmp ne i32 %12, 0, !dbg !1032
  %lnot35 = xor i1 %tobool34, true, !dbg !1032
  %lnot37 = xor i1 %lnot35, true, !dbg !1032
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !1032
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !1032
  %tobool40 = icmp ne i64 %conv39, 0, !dbg !1032
  br i1 %tobool40, label %if.then41, label %if.end50, !dbg !1031

if.then41:                                        ; preds = %lor.lhs.false
  br label %do.body42, !dbg !1032

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !1034

do.body43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1036

do.end44:                                         ; preds = %do.body43
  br label %do.body45, !dbg !1034

do.body45:                                        ; preds = %do.end44
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 414, i32 2305, i64 12) #9, !dbg !1038, !srcloc !1040
  br label %do.end46, !dbg !1038

do.end46:                                         ; preds = %do.body45
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 101) #9, !dbg !1041, !srcloc !1043
  br label %do.body47, !dbg !1034

do.body47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !1044

do.end48:                                         ; preds = %do.body47
  br label %do.end49, !dbg !1034

do.end49:                                         ; preds = %do.end48
  br label %if.end50, !dbg !1034

if.end50:                                         ; preds = %do.end49, %lor.lhs.false
  %13 = load i32, i32* %__ret_warn_on25, align 4, !dbg !1031
  %tobool52 = icmp ne i32 %13, 0, !dbg !1031
  %lnot53 = xor i1 %tobool52, true, !dbg !1031
  %lnot55 = xor i1 %lnot53, true, !dbg !1031
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !1031
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !1031
  store i64 %conv57, i64* %tmp51, align 8, !dbg !1032
  %14 = load i64, i64* %tmp51, align 8, !dbg !1031
  %tobool58 = icmp ne i64 %14, 0, !dbg !1046
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !1047

if.then59:                                        ; preds = %if.end50, %if.end17
  br label %return, !dbg !1048

if.end60:                                         ; preds = %if.end50
  %15 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1049
  %storage = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %15, i32 0, i32 1, !dbg !1050
  %key = getelementptr inbounds %struct.anon, %struct.anon* %storage, i32 0, i32 0, !dbg !1051
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %key, i64 0, i64 0, !dbg !1049
  %16 = load i8*, i8** %key_value.addr, align 8, !dbg !1052
  %17 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item, align 8, !dbg !1053
  call void @__mlxsw_item_memcpy_to(i8* %arraydecay, i8* %16, %struct.mlxsw_item* %17, i16 zeroext 0) #8, !dbg !1054
  %18 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1055
  %storage61 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %18, i32 0, i32 1, !dbg !1056
  %mask = getelementptr inbounds %struct.anon, %struct.anon* %storage61, i32 0, i32 1, !dbg !1057
  %arraydecay62 = getelementptr inbounds [64 x i8], [64 x i8]* %mask, i64 0, i64 0, !dbg !1055
  %19 = load i8*, i8** %mask_value.addr, align 8, !dbg !1058
  %20 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item, align 8, !dbg !1059
  call void @__mlxsw_item_memcpy_to(i8* %arraydecay62, i8* %19, %struct.mlxsw_item* %20, i16 zeroext 0) #8, !dbg !1060
  %21 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1061
  %elusage = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %21, i32 0, i32 0, !dbg !1062
  %22 = load i32, i32* %element.addr, align 4, !dbg !1063
  call void @mlxsw_afk_element_usage_add(%struct.mlxsw_afk_element_usage* %elusage, i32 %22) #8, !dbg !1064
  br label %return, !dbg !1065

return:                                           ; preds = %if.end60, %if.then59, %if.then
  ret void, !dbg !1065
}

; Function Attrs: noredzone
declare dso_local i8* @memchr_inv(i8*, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__mlxsw_item_memcpy_to(i8* %buf, i8* %src, %struct.mlxsw_item* %item, i16 zeroext %index) #0 !dbg !1066 {
entry:
  %buf.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %offset = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !1077, metadata !DIExpression()), !dbg !1078
  %0 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !1079
  %1 = load i16, i16* %index.addr, align 2, !dbg !1080
  %call = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 1) #8, !dbg !1081
  store i32 %call, i32* %offset, align 4, !dbg !1078
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !1082
  %3 = load i32, i32* %offset, align 4, !dbg !1083
  %idxprom = zext i32 %3 to i64, !dbg !1082
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !1082
  %4 = load i8*, i8** %src.addr, align 8, !dbg !1084
  %5 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !1085
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %5, i32 0, i32 6, !dbg !1086
  %bytes = bitcast %union.anon* %size to i16*, !dbg !1087
  %6 = load i16, i16* %bytes, align 2, !dbg !1087
  %conv = zext i16 %6 to i64, !dbg !1085
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx, i8* align 1 %4, i64 %conv, i1 false), !dbg !1088
  ret void, !dbg !1089
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxsw_afk_encode(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_element_values* %values, i8* %key, i8* %mask) #0 !dbg !1090 {
entry:
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %values.addr = alloca %struct.mlxsw_afk_element_values*, align 8
  %key.addr = alloca i8*, align 8
  %mask.addr = alloca i8*, align 8
  %blocks_count = alloca i32, align 4
  %block_mask = alloca [16 x i8], align 16
  %block_key = alloca [16 x i8], align 16
  %elinst = alloca %struct.mlxsw_afk_element_inst*, align 8
  %element = alloca i32, align 4
  %block_index = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1093, metadata !DIExpression()), !dbg !1094
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !1095, metadata !DIExpression()), !dbg !1096
  store %struct.mlxsw_afk_element_values* %values, %struct.mlxsw_afk_element_values** %values.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_values** %values.addr, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !1099, metadata !DIExpression()), !dbg !1100
  store i8* %mask, i8** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mask.addr, metadata !1101, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata i32* %blocks_count, metadata !1103, metadata !DIExpression()), !dbg !1104
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1105
  %call = call i32 @mlxsw_afk_key_info_blocks_count_get(%struct.mlxsw_afk_key_info* %0) #8, !dbg !1106
  store i32 %call, i32* %blocks_count, align 4, !dbg !1104
  call void @llvm.dbg.declare(metadata [16 x i8]* %block_mask, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata [16 x i8]* %block_key, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_inst** %elinst, metadata !1114, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %element, metadata !1118, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.declare(metadata i32* %block_index, metadata !1120, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i32 0, i32* %i, align 4, !dbg !1124
  br label %for.cond, !dbg !1126

for.cond:                                         ; preds = %for.inc28, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1127
  %2 = load i32, i32* %blocks_count, align 4, !dbg !1129
  %cmp = icmp ult i32 %1, %2, !dbg !1130
  br i1 %cmp, label %for.body, label %for.end29, !dbg !1131

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %block_key, i64 0, i64 0, !dbg !1132
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 16, i1 false), !dbg !1132
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %block_mask, i64 0, i64 0, !dbg !1134
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay1, i8 0, i64 16, i1 false), !dbg !1134
  %3 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1135
  %elusage = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %3, i32 0, i32 0, !dbg !1135
  %usage = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %elusage, i32 0, i32 0, !dbg !1135
  %arraydecay2 = getelementptr inbounds [1 x i64], [1 x i64]* %usage, i64 0, i64 0, !dbg !1135
  %call3 = call i64 @find_first_bit(i64* %arraydecay2, i64 25) #8, !dbg !1135
  %conv = trunc i64 %call3 to i32, !dbg !1135
  store i32 %conv, i32* %element, align 4, !dbg !1135
  br label %for.cond4, !dbg !1135

for.cond4:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %element, align 4, !dbg !1137
  %cmp5 = icmp ult i32 %4, 25, !dbg !1137
  br i1 %cmp5, label %for.body7, label %for.end, !dbg !1135

for.body7:                                        ; preds = %for.cond4
  %5 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1139
  %6 = load i32, i32* %element, align 4, !dbg !1141
  %call8 = call %struct.mlxsw_afk_element_inst* @mlxsw_afk_key_info_elinst_get(%struct.mlxsw_afk_key_info* %5, i32 %6, i32* %block_index) #8, !dbg !1142
  store %struct.mlxsw_afk_element_inst* %call8, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1143
  %7 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1144
  %tobool = icmp ne %struct.mlxsw_afk_element_inst* %7, null, !dbg !1144
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1146

lor.lhs.false:                                    ; preds = %for.body7
  %8 = load i32, i32* %block_index, align 4, !dbg !1147
  %9 = load i32, i32* %i, align 4, !dbg !1148
  %cmp9 = icmp ne i32 %8, %9, !dbg !1149
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1150

if.then:                                          ; preds = %lor.lhs.false, %for.body7
  br label %for.inc, !dbg !1151

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1152
  %arraydecay11 = getelementptr inbounds [16 x i8], [16 x i8]* %block_key, i64 0, i64 0, !dbg !1153
  %11 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1154
  %storage = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %11, i32 0, i32 1, !dbg !1155
  %key12 = getelementptr inbounds %struct.anon, %struct.anon* %storage, i32 0, i32 0, !dbg !1156
  %arraydecay13 = getelementptr inbounds [64 x i8], [64 x i8]* %key12, i64 0, i64 0, !dbg !1154
  %12 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1157
  %u32_key_diff = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %12, i32 0, i32 3, !dbg !1158
  %13 = load i32, i32* %u32_key_diff, align 8, !dbg !1158
  call void @mlxsw_sp_afk_encode_one(%struct.mlxsw_afk_element_inst* %10, i8* %arraydecay11, i8* %arraydecay13, i32 %13) #8, !dbg !1159
  %14 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1160
  %arraydecay14 = getelementptr inbounds [16 x i8], [16 x i8]* %block_mask, i64 0, i64 0, !dbg !1161
  %15 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1162
  %storage15 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %15, i32 0, i32 1, !dbg !1163
  %mask16 = getelementptr inbounds %struct.anon, %struct.anon* %storage15, i32 0, i32 1, !dbg !1164
  %arraydecay17 = getelementptr inbounds [64 x i8], [64 x i8]* %mask16, i64 0, i64 0, !dbg !1162
  call void @mlxsw_sp_afk_encode_one(%struct.mlxsw_afk_element_inst* %14, i8* %arraydecay14, i8* %arraydecay17, i32 0) #8, !dbg !1165
  br label %for.inc, !dbg !1166

for.inc:                                          ; preds = %if.end, %if.then
  %16 = load %struct.mlxsw_afk_element_values*, %struct.mlxsw_afk_element_values** %values.addr, align 8, !dbg !1137
  %elusage18 = getelementptr inbounds %struct.mlxsw_afk_element_values, %struct.mlxsw_afk_element_values* %16, i32 0, i32 0, !dbg !1137
  %usage19 = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %elusage18, i32 0, i32 0, !dbg !1137
  %arraydecay20 = getelementptr inbounds [1 x i64], [1 x i64]* %usage19, i64 0, i64 0, !dbg !1137
  %17 = load i32, i32* %element, align 4, !dbg !1137
  %add = add i32 %17, 1, !dbg !1137
  %conv21 = zext i32 %add to i64, !dbg !1137
  %call22 = call i64 @find_next_bit(i64* %arraydecay20, i64 25, i64 %conv21) #8, !dbg !1137
  %conv23 = trunc i64 %call22 to i32, !dbg !1137
  store i32 %conv23, i32* %element, align 4, !dbg !1137
  br label %for.cond4, !dbg !1137, !llvm.loop !1167

for.end:                                          ; preds = %for.cond4
  %18 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1169
  %ops = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %18, i32 0, i32 2, !dbg !1170
  %19 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %ops, align 8, !dbg !1170
  %encode_block = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %19, i32 0, i32 2, !dbg !1171
  %20 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %encode_block, align 8, !dbg !1171
  %21 = load i8*, i8** %key.addr, align 8, !dbg !1172
  %22 = load i32, i32* %i, align 4, !dbg !1173
  %arraydecay24 = getelementptr inbounds [16 x i8], [16 x i8]* %block_key, i64 0, i64 0, !dbg !1174
  call void %20(i8* %21, i32 %22, i8* %arraydecay24) #8, !dbg !1169
  %23 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1175
  %ops25 = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %23, i32 0, i32 2, !dbg !1176
  %24 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %ops25, align 8, !dbg !1176
  %encode_block26 = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %24, i32 0, i32 2, !dbg !1177
  %25 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %encode_block26, align 8, !dbg !1177
  %26 = load i8*, i8** %mask.addr, align 8, !dbg !1178
  %27 = load i32, i32* %i, align 4, !dbg !1179
  %arraydecay27 = getelementptr inbounds [16 x i8], [16 x i8]* %block_mask, i64 0, i64 0, !dbg !1180
  call void %25(i8* %26, i32 %27, i8* %arraydecay27) #8, !dbg !1175
  br label %for.inc28, !dbg !1181

for.inc28:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4, !dbg !1182
  %inc = add i32 %28, 1, !dbg !1182
  store i32 %inc, i32* %i, align 4, !dbg !1182
  br label %for.cond, !dbg !1183, !llvm.loop !1184

for.end29:                                        ; preds = %for.cond
  ret void, !dbg !1186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxsw_afk_element_inst* @mlxsw_afk_key_info_elinst_get(%struct.mlxsw_afk_key_info* %key_info, i32 %element, i32* %p_block_index) #0 !dbg !1187 {
entry:
  %retval = alloca %struct.mlxsw_afk_element_inst*, align 8
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %element.addr = alloca i32, align 4
  %p_block_index.addr = alloca i32*, align 8
  %elinst = alloca %struct.mlxsw_afk_element_inst*, align 8
  %block = alloca %struct.mlxsw_afk_block*, align 8
  %block_index = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on27 = alloca i32, align 4
  %tmp52 = alloca i64, align 8
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  store i32 %element, i32* %element.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  store i32* %p_block_index, i32** %p_block_index.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_block_index.addr, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_inst** %elinst, metadata !1197, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_block** %block, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata i32* %block_index, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !1203, metadata !DIExpression()), !dbg !1206
  %0 = load i32, i32* %element.addr, align 4, !dbg !1206
  %conv = zext i32 %0 to i64, !dbg !1206
  %1 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1206
  %elusage = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %1, i32 0, i32 4, !dbg !1206
  %usage = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %elusage, i32 0, i32 0, !dbg !1206
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %usage, i64 0, i64 0, !dbg !1206
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #8, !dbg !1206
  %lnot = xor i1 %call, true, !dbg !1206
  %lnot1 = xor i1 %lnot, true, !dbg !1206
  %lnot2 = xor i1 %lnot1, true, !dbg !1206
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1206
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !1206
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !1207
  %tobool = icmp ne i32 %2, 0, !dbg !1207
  %lnot3 = xor i1 %tobool, true, !dbg !1207
  %lnot5 = xor i1 %lnot3, true, !dbg !1207
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1207
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !1207
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !1207
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1206

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1207

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1209

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !1211

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !1209

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 356, i32 2305, i64 12) #9, !dbg !1213, !srcloc !1215
  br label %do.end11, !dbg !1213

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 97) #9, !dbg !1216, !srcloc !1218
  br label %do.body12, !dbg !1209

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !1219

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !1209

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !1209

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !1206
  %tobool15 = icmp ne i32 %3, 0, !dbg !1206
  %lnot16 = xor i1 %tobool15, true, !dbg !1206
  %lnot18 = xor i1 %lnot16, true, !dbg !1206
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !1206
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !1206
  store i64 %conv20, i64* %tmp, align 8, !dbg !1207
  %4 = load i64, i64* %tmp, align 8, !dbg !1206
  %tobool21 = icmp ne i64 %4, 0, !dbg !1221
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1222

if.then22:                                        ; preds = %if.end
  store %struct.mlxsw_afk_element_inst* null, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !1223
  br label %return, !dbg !1223

if.end23:                                         ; preds = %if.end
  %5 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1224
  %element_to_block = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %5, i32 0, i32 3, !dbg !1225
  %6 = load i32, i32* %element.addr, align 4, !dbg !1226
  %idxprom = zext i32 %6 to i64, !dbg !1224
  %arrayidx = getelementptr [25 x i32], [25 x i32]* %element_to_block, i64 0, i64 %idxprom, !dbg !1224
  %7 = load i32, i32* %arrayidx, align 4, !dbg !1224
  store i32 %7, i32* %block_index, align 4, !dbg !1227
  %8 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1228
  %blocks = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %8, i32 0, i32 5, !dbg !1229
  %9 = load i32, i32* %block_index, align 4, !dbg !1230
  %idxprom24 = sext i32 %9 to i64, !dbg !1228
  %arrayidx25 = getelementptr [0 x %struct.mlxsw_afk_block*], [0 x %struct.mlxsw_afk_block*]* %blocks, i64 0, i64 %idxprom24, !dbg !1228
  %10 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %arrayidx25, align 8, !dbg !1228
  store %struct.mlxsw_afk_block* %10, %struct.mlxsw_afk_block** %block, align 8, !dbg !1231
  %11 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block, align 8, !dbg !1232
  %12 = load i32, i32* %element.addr, align 4, !dbg !1233
  %call26 = call %struct.mlxsw_afk_element_inst* @mlxsw_afk_block_elinst_get(%struct.mlxsw_afk_block* %11, i32 %12) #8, !dbg !1234
  store %struct.mlxsw_afk_element_inst* %call26, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1235
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on27, metadata !1236, metadata !DIExpression()), !dbg !1239
  %13 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1239
  %tobool28 = icmp ne %struct.mlxsw_afk_element_inst* %13, null, !dbg !1239
  %lnot29 = xor i1 %tobool28, true, !dbg !1239
  %lnot31 = xor i1 %lnot29, true, !dbg !1239
  %lnot33 = xor i1 %lnot31, true, !dbg !1239
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !1239
  store i32 %lnot.ext34, i32* %__ret_warn_on27, align 4, !dbg !1239
  %14 = load i32, i32* %__ret_warn_on27, align 4, !dbg !1240
  %tobool35 = icmp ne i32 %14, 0, !dbg !1240
  %lnot36 = xor i1 %tobool35, true, !dbg !1240
  %lnot38 = xor i1 %lnot36, true, !dbg !1240
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !1240
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !1240
  %tobool41 = icmp ne i64 %conv40, 0, !dbg !1240
  br i1 %tobool41, label %if.then42, label %if.end51, !dbg !1239

if.then42:                                        ; preds = %if.end23
  br label %do.body43, !dbg !1240

do.body43:                                        ; preds = %if.then42
  br label %do.body44, !dbg !1242

do.body44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !1244

do.end45:                                         ; preds = %do.body44
  br label %do.body46, !dbg !1242

do.body46:                                        ; preds = %do.end45
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 362, i32 2305, i64 12) #9, !dbg !1246, !srcloc !1248
  br label %do.end47, !dbg !1246

do.end47:                                         ; preds = %do.body46
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 98) #9, !dbg !1249, !srcloc !1251
  br label %do.body48, !dbg !1242

do.body48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !1252

do.end49:                                         ; preds = %do.body48
  br label %do.end50, !dbg !1242

do.end50:                                         ; preds = %do.end49
  br label %if.end51, !dbg !1242

if.end51:                                         ; preds = %do.end50, %if.end23
  %15 = load i32, i32* %__ret_warn_on27, align 4, !dbg !1239
  %tobool53 = icmp ne i32 %15, 0, !dbg !1239
  %lnot54 = xor i1 %tobool53, true, !dbg !1239
  %lnot56 = xor i1 %lnot54, true, !dbg !1239
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !1239
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !1239
  store i64 %conv58, i64* %tmp52, align 8, !dbg !1240
  %16 = load i64, i64* %tmp52, align 8, !dbg !1239
  %tobool59 = icmp ne i64 %16, 0, !dbg !1254
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !1255

if.then60:                                        ; preds = %if.end51
  store %struct.mlxsw_afk_element_inst* null, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !1256
  br label %return, !dbg !1256

if.end61:                                         ; preds = %if.end51
  %17 = load i32, i32* %block_index, align 4, !dbg !1257
  %18 = load i32*, i32** %p_block_index.addr, align 8, !dbg !1258
  store i32 %17, i32* %18, align 4, !dbg !1259
  %19 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1260
  store %struct.mlxsw_afk_element_inst* %19, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !1261
  br label %return, !dbg !1261

return:                                           ; preds = %if.end61, %if.then60, %if.then22
  %20 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !1262
  ret %struct.mlxsw_afk_element_inst* %20, !dbg !1262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp_afk_encode_one(%struct.mlxsw_afk_element_inst* %elinst, i8* %output, i8* %storage, i32 %u32_diff) #0 !dbg !1263 {
entry:
  %elinst.addr = alloca %struct.mlxsw_afk_element_inst*, align 8
  %output.addr = alloca i8*, align 8
  %storage.addr = alloca i8*, align 8
  %u32_diff.addr = alloca i32, align 4
  %output_item = alloca %struct.mlxsw_item*, align 8
  %elinfo = alloca %struct.mlxsw_afk_element_info*, align 8
  %storage_item = alloca %struct.mlxsw_item*, align 8
  store %struct.mlxsw_afk_element_inst* %elinst, %struct.mlxsw_afk_element_inst** %elinst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_inst** %elinst.addr, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !1268, metadata !DIExpression()), !dbg !1269
  store i8* %storage, i8** %storage.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %storage.addr, metadata !1270, metadata !DIExpression()), !dbg !1271
  store i32 %u32_diff, i32* %u32_diff.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %u32_diff.addr, metadata !1272, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %output_item, metadata !1274, metadata !DIExpression()), !dbg !1275
  %0 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst.addr, align 8, !dbg !1276
  %item = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %0, i32 0, i32 2, !dbg !1277
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %output_item, align 8, !dbg !1275
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_info** %elinfo, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %storage_item, metadata !1280, metadata !DIExpression()), !dbg !1281
  %1 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst.addr, align 8, !dbg !1282
  %element = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %1, i32 0, i32 0, !dbg !1283
  %2 = load i32, i32* %element, align 8, !dbg !1283
  %idxprom = zext i32 %2 to i64, !dbg !1284
  %arrayidx = getelementptr [25 x %struct.mlxsw_afk_element_info], [25 x %struct.mlxsw_afk_element_info]* bitcast ([25 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, i8* } }]* @mlxsw_afk_element_infos to [25 x %struct.mlxsw_afk_element_info]*), i64 0, i64 %idxprom, !dbg !1284
  store %struct.mlxsw_afk_element_info* %arrayidx, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !1285
  %3 = load %struct.mlxsw_afk_element_info*, %struct.mlxsw_afk_element_info** %elinfo, align 8, !dbg !1286
  %item1 = getelementptr inbounds %struct.mlxsw_afk_element_info, %struct.mlxsw_afk_element_info* %3, i32 0, i32 2, !dbg !1287
  store %struct.mlxsw_item* %item1, %struct.mlxsw_item** %storage_item, align 8, !dbg !1288
  %4 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst.addr, align 8, !dbg !1289
  %type = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %4, i32 0, i32 1, !dbg !1291
  %5 = load i32, i32* %type, align 4, !dbg !1291
  %cmp = icmp eq i32 %5, 0, !dbg !1292
  br i1 %cmp, label %if.then, label %if.else, !dbg !1293

if.then:                                          ; preds = %entry
  %6 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item, align 8, !dbg !1294
  %7 = load %struct.mlxsw_item*, %struct.mlxsw_item** %output_item, align 8, !dbg !1295
  %8 = load i8*, i8** %storage.addr, align 8, !dbg !1296
  %9 = load i8*, i8** %output.addr, align 8, !dbg !1297
  %10 = load i32, i32* %u32_diff.addr, align 4, !dbg !1298
  call void @mlxsw_sp_afk_encode_u32(%struct.mlxsw_item* %6, %struct.mlxsw_item* %7, i8* %8, i8* %9, i32 %10) #8, !dbg !1299
  br label %if.end5, !dbg !1299

if.else:                                          ; preds = %entry
  %11 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst.addr, align 8, !dbg !1300
  %type2 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %11, i32 0, i32 1, !dbg !1302
  %12 = load i32, i32* %type2, align 4, !dbg !1302
  %cmp3 = icmp eq i32 %12, 1, !dbg !1303
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1304

if.then4:                                         ; preds = %if.else
  %13 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item, align 8, !dbg !1305
  %14 = load %struct.mlxsw_item*, %struct.mlxsw_item** %output_item, align 8, !dbg !1306
  %15 = load i8*, i8** %storage.addr, align 8, !dbg !1307
  %16 = load i8*, i8** %output.addr, align 8, !dbg !1308
  call void @mlxsw_sp_afk_encode_buf(%struct.mlxsw_item* %13, %struct.mlxsw_item* %14, i8* %15, i8* %16) #8, !dbg !1309
  br label %if.end, !dbg !1309

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !1310
}

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mlxsw_afk_clear(%struct.mlxsw_afk* %mlxsw_afk, i8* %key, i32 %block_start, i32 %block_end) #0 !dbg !1311 {
entry:
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %key.addr = alloca i8*, align 8
  %block_start.addr = alloca i32, align 4
  %block_end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i32 %block_start, i32* %block_start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_start.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i32 %block_end, i32* %block_end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_end.addr, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1322, metadata !DIExpression()), !dbg !1323
  %0 = load i32, i32* %block_start.addr, align 4, !dbg !1324
  store i32 %0, i32* %i, align 4, !dbg !1326
  br label %for.cond, !dbg !1327

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1328
  %2 = load i32, i32* %block_end.addr, align 4, !dbg !1330
  %cmp = icmp sle i32 %1, %2, !dbg !1331
  br i1 %cmp, label %for.body, label %for.end, !dbg !1332

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1333
  %ops = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %3, i32 0, i32 2, !dbg !1334
  %4 = load %struct.mlxsw_afk_ops*, %struct.mlxsw_afk_ops** %ops, align 8, !dbg !1334
  %clear_block = getelementptr inbounds %struct.mlxsw_afk_ops, %struct.mlxsw_afk_ops* %4, i32 0, i32 3, !dbg !1335
  %5 = load void (i8*, i32)*, void (i8*, i32)** %clear_block, align 8, !dbg !1335
  %6 = load i8*, i8** %key.addr, align 8, !dbg !1336
  %7 = load i32, i32* %i, align 4, !dbg !1337
  call void %5(i8* %6, i32 %7) #8, !dbg !1333
  br label %for.inc, !dbg !1333

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !1338
  %inc = add i32 %8, 1, !dbg !1338
  store i32 %inc, i32* %i, align 4, !dbg !1338
  br label %for.cond, !dbg !1339, !llvm.loop !1340

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1342
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !1343 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1347, metadata !DIExpression()), !dbg !1354
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1356, metadata !DIExpression()), !dbg !1357
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1358, metadata !DIExpression()), !dbg !1359
  %0 = load i64, i64* %size.addr, align 8, !dbg !1360
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1362
  br i1 %1, label %if.then, label %if.end447, !dbg !1363

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1364
  %tobool = icmp ne i64 %2, 0, !dbg !1364
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1367

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1368
  br label %return, !dbg !1368

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1369
  %cmp = icmp ult i64 %3, 4096, !dbg !1371
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1372

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1373
  br label %return, !dbg !1373

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub = sub i64 %4, 1, !dbg !1374
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1374
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1374

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub4 = sub i64 %6, 1, !dbg !1374
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1374
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1374

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub6 = sub i64 %8, 1, !dbg !1374
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1374
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1374

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1374

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub9 = sub i64 %9, 1, !dbg !1374
  %and = and i64 %sub9, -9223372036854775808, !dbg !1374
  %tobool10 = icmp ne i64 %and, 0, !dbg !1374
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1374

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1374

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub13 = sub i64 %10, 1, !dbg !1374
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1374
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1374
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1374

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1374

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub18 = sub i64 %11, 1, !dbg !1374
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1374
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1374
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1374

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1374

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub23 = sub i64 %12, 1, !dbg !1374
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1374
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1374
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1374

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1374

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub28 = sub i64 %13, 1, !dbg !1374
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1374
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1374
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1374

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1374

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub33 = sub i64 %14, 1, !dbg !1374
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1374
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1374
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1374

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1374

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub38 = sub i64 %15, 1, !dbg !1374
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1374
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1374
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1374

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1374

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub43 = sub i64 %16, 1, !dbg !1374
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1374
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1374
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1374

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1374

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub48 = sub i64 %17, 1, !dbg !1374
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1374
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1374
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1374

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1374

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub53 = sub i64 %18, 1, !dbg !1374
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1374
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1374
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1374

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1374

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub58 = sub i64 %19, 1, !dbg !1374
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1374
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1374
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1374

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1374

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub63 = sub i64 %20, 1, !dbg !1374
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1374
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1374
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1374

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1374

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub68 = sub i64 %21, 1, !dbg !1374
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1374
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1374
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1374

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1374

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub73 = sub i64 %22, 1, !dbg !1374
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1374
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1374
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1374

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1374

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub78 = sub i64 %23, 1, !dbg !1374
  %and79 = and i64 %sub78, 562949953421312, !dbg !1374
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1374
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1374

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1374

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub83 = sub i64 %24, 1, !dbg !1374
  %and84 = and i64 %sub83, 281474976710656, !dbg !1374
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1374
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1374

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1374

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub88 = sub i64 %25, 1, !dbg !1374
  %and89 = and i64 %sub88, 140737488355328, !dbg !1374
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1374
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1374

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1374

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub93 = sub i64 %26, 1, !dbg !1374
  %and94 = and i64 %sub93, 70368744177664, !dbg !1374
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1374
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1374

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1374

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub98 = sub i64 %27, 1, !dbg !1374
  %and99 = and i64 %sub98, 35184372088832, !dbg !1374
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1374
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1374

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1374

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub103 = sub i64 %28, 1, !dbg !1374
  %and104 = and i64 %sub103, 17592186044416, !dbg !1374
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1374
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1374

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1374

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub108 = sub i64 %29, 1, !dbg !1374
  %and109 = and i64 %sub108, 8796093022208, !dbg !1374
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1374
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1374

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1374

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub113 = sub i64 %30, 1, !dbg !1374
  %and114 = and i64 %sub113, 4398046511104, !dbg !1374
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1374
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1374

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1374

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub118 = sub i64 %31, 1, !dbg !1374
  %and119 = and i64 %sub118, 2199023255552, !dbg !1374
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1374
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1374

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1374

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub123 = sub i64 %32, 1, !dbg !1374
  %and124 = and i64 %sub123, 1099511627776, !dbg !1374
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1374
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1374

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1374

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub128 = sub i64 %33, 1, !dbg !1374
  %and129 = and i64 %sub128, 549755813888, !dbg !1374
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1374
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1374

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1374

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub133 = sub i64 %34, 1, !dbg !1374
  %and134 = and i64 %sub133, 274877906944, !dbg !1374
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1374
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1374

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1374

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub138 = sub i64 %35, 1, !dbg !1374
  %and139 = and i64 %sub138, 137438953472, !dbg !1374
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1374
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1374

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1374

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub143 = sub i64 %36, 1, !dbg !1374
  %and144 = and i64 %sub143, 68719476736, !dbg !1374
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1374
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1374

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1374

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub148 = sub i64 %37, 1, !dbg !1374
  %and149 = and i64 %sub148, 34359738368, !dbg !1374
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1374
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1374

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1374

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub153 = sub i64 %38, 1, !dbg !1374
  %and154 = and i64 %sub153, 17179869184, !dbg !1374
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1374
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1374

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1374

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub158 = sub i64 %39, 1, !dbg !1374
  %and159 = and i64 %sub158, 8589934592, !dbg !1374
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1374
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1374

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1374

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub163 = sub i64 %40, 1, !dbg !1374
  %and164 = and i64 %sub163, 4294967296, !dbg !1374
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1374
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1374

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1374

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub168 = sub i64 %41, 1, !dbg !1374
  %and169 = and i64 %sub168, 2147483648, !dbg !1374
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1374
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1374

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1374

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub173 = sub i64 %42, 1, !dbg !1374
  %and174 = and i64 %sub173, 1073741824, !dbg !1374
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1374
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1374

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1374

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub178 = sub i64 %43, 1, !dbg !1374
  %and179 = and i64 %sub178, 536870912, !dbg !1374
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1374
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1374

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1374

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub183 = sub i64 %44, 1, !dbg !1374
  %and184 = and i64 %sub183, 268435456, !dbg !1374
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1374
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1374

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1374

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub188 = sub i64 %45, 1, !dbg !1374
  %and189 = and i64 %sub188, 134217728, !dbg !1374
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1374
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1374

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1374

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub193 = sub i64 %46, 1, !dbg !1374
  %and194 = and i64 %sub193, 67108864, !dbg !1374
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1374
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1374

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1374

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub198 = sub i64 %47, 1, !dbg !1374
  %and199 = and i64 %sub198, 33554432, !dbg !1374
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1374
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1374

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1374

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub203 = sub i64 %48, 1, !dbg !1374
  %and204 = and i64 %sub203, 16777216, !dbg !1374
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1374
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1374

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1374

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub208 = sub i64 %49, 1, !dbg !1374
  %and209 = and i64 %sub208, 8388608, !dbg !1374
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1374
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1374

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1374

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub213 = sub i64 %50, 1, !dbg !1374
  %and214 = and i64 %sub213, 4194304, !dbg !1374
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1374
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1374

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1374

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub218 = sub i64 %51, 1, !dbg !1374
  %and219 = and i64 %sub218, 2097152, !dbg !1374
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1374
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1374

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1374

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub223 = sub i64 %52, 1, !dbg !1374
  %and224 = and i64 %sub223, 1048576, !dbg !1374
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1374
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1374

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1374

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub228 = sub i64 %53, 1, !dbg !1374
  %and229 = and i64 %sub228, 524288, !dbg !1374
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1374
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1374

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1374

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub233 = sub i64 %54, 1, !dbg !1374
  %and234 = and i64 %sub233, 262144, !dbg !1374
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1374
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1374

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1374

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub238 = sub i64 %55, 1, !dbg !1374
  %and239 = and i64 %sub238, 131072, !dbg !1374
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1374
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1374

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1374

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub243 = sub i64 %56, 1, !dbg !1374
  %and244 = and i64 %sub243, 65536, !dbg !1374
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1374
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1374

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1374

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub248 = sub i64 %57, 1, !dbg !1374
  %and249 = and i64 %sub248, 32768, !dbg !1374
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1374
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1374

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1374

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub253 = sub i64 %58, 1, !dbg !1374
  %and254 = and i64 %sub253, 16384, !dbg !1374
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1374
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1374

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1374

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub258 = sub i64 %59, 1, !dbg !1374
  %and259 = and i64 %sub258, 8192, !dbg !1374
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1374
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1374

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1374

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub263 = sub i64 %60, 1, !dbg !1374
  %and264 = and i64 %sub263, 4096, !dbg !1374
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1374
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1374

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1374

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub268 = sub i64 %61, 1, !dbg !1374
  %and269 = and i64 %sub268, 2048, !dbg !1374
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1374
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1374

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1374

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub273 = sub i64 %62, 1, !dbg !1374
  %and274 = and i64 %sub273, 1024, !dbg !1374
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1374
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1374

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1374

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub278 = sub i64 %63, 1, !dbg !1374
  %and279 = and i64 %sub278, 512, !dbg !1374
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1374
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1374

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1374

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub283 = sub i64 %64, 1, !dbg !1374
  %and284 = and i64 %sub283, 256, !dbg !1374
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1374
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1374

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1374

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub288 = sub i64 %65, 1, !dbg !1374
  %and289 = and i64 %sub288, 128, !dbg !1374
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1374
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1374

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1374

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub293 = sub i64 %66, 1, !dbg !1374
  %and294 = and i64 %sub293, 64, !dbg !1374
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1374
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1374

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1374

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub298 = sub i64 %67, 1, !dbg !1374
  %and299 = and i64 %sub298, 32, !dbg !1374
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1374
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1374

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1374

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub303 = sub i64 %68, 1, !dbg !1374
  %and304 = and i64 %sub303, 16, !dbg !1374
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1374
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1374

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1374

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub308 = sub i64 %69, 1, !dbg !1374
  %and309 = and i64 %sub308, 8, !dbg !1374
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1374
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1374

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1374

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub313 = sub i64 %70, 1, !dbg !1374
  %and314 = and i64 %sub313, 4, !dbg !1374
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1374
  %71 = zext i1 %tobool315 to i64, !dbg !1374
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1374
  br label %cond.end, !dbg !1374

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1374
  br label %cond.end317, !dbg !1374

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1374
  br label %cond.end319, !dbg !1374

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1374
  br label %cond.end321, !dbg !1374

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1374
  br label %cond.end323, !dbg !1374

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1374
  br label %cond.end325, !dbg !1374

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1374
  br label %cond.end327, !dbg !1374

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1374
  br label %cond.end329, !dbg !1374

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1374
  br label %cond.end331, !dbg !1374

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1374
  br label %cond.end333, !dbg !1374

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1374
  br label %cond.end335, !dbg !1374

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1374
  br label %cond.end337, !dbg !1374

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1374
  br label %cond.end339, !dbg !1374

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1374
  br label %cond.end341, !dbg !1374

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1374
  br label %cond.end343, !dbg !1374

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1374
  br label %cond.end345, !dbg !1374

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1374
  br label %cond.end347, !dbg !1374

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1374
  br label %cond.end349, !dbg !1374

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1374
  br label %cond.end351, !dbg !1374

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1374
  br label %cond.end353, !dbg !1374

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1374
  br label %cond.end355, !dbg !1374

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1374
  br label %cond.end357, !dbg !1374

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1374
  br label %cond.end359, !dbg !1374

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1374
  br label %cond.end361, !dbg !1374

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1374
  br label %cond.end363, !dbg !1374

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1374
  br label %cond.end365, !dbg !1374

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1374
  br label %cond.end367, !dbg !1374

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1374
  br label %cond.end369, !dbg !1374

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1374
  br label %cond.end371, !dbg !1374

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1374
  br label %cond.end373, !dbg !1374

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1374
  br label %cond.end375, !dbg !1374

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1374
  br label %cond.end377, !dbg !1374

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1374
  br label %cond.end379, !dbg !1374

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1374
  br label %cond.end381, !dbg !1374

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1374
  br label %cond.end383, !dbg !1374

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1374
  br label %cond.end385, !dbg !1374

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1374
  br label %cond.end387, !dbg !1374

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1374
  br label %cond.end389, !dbg !1374

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1374
  br label %cond.end391, !dbg !1374

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1374
  br label %cond.end393, !dbg !1374

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1374
  br label %cond.end395, !dbg !1374

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1374
  br label %cond.end397, !dbg !1374

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1374
  br label %cond.end399, !dbg !1374

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1374
  br label %cond.end401, !dbg !1374

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1374
  br label %cond.end403, !dbg !1374

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1374
  br label %cond.end405, !dbg !1374

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1374
  br label %cond.end407, !dbg !1374

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1374
  br label %cond.end409, !dbg !1374

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1374
  br label %cond.end411, !dbg !1374

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1374
  br label %cond.end413, !dbg !1374

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1374
  br label %cond.end415, !dbg !1374

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1374
  br label %cond.end417, !dbg !1374

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1374
  br label %cond.end419, !dbg !1374

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1374
  br label %cond.end421, !dbg !1374

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1374
  br label %cond.end423, !dbg !1374

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1374
  br label %cond.end425, !dbg !1374

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1374
  br label %cond.end427, !dbg !1374

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1374
  br label %cond.end429, !dbg !1374

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1374
  br label %cond.end431, !dbg !1374

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1374
  br label %cond.end433, !dbg !1374

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1374
  br label %cond.end435, !dbg !1374

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1374
  br label %cond.end437, !dbg !1374

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1374
  br label %cond.end440, !dbg !1374

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1374

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1374
  br label %cond.end444, !dbg !1374

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1374
  %sub443 = sub i64 %72, 1, !dbg !1374
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !1374
  br label %cond.end444, !dbg !1374

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1374
  %sub446 = sub i32 %cond445, 12, !dbg !1375
  %add = add i32 %sub446, 1, !dbg !1376
  store i32 %add, i32* %retval, align 4, !dbg !1377
  br label %return, !dbg !1377

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1378
  %dec = add i64 %73, -1, !dbg !1378
  store i64 %dec, i64* %size.addr, align 8, !dbg !1378
  %74 = load i64, i64* %size.addr, align 8, !dbg !1379
  %shr = lshr i64 %74, 12, !dbg !1379
  store i64 %shr, i64* %size.addr, align 8, !dbg !1379
  %75 = load i64, i64* %size.addr, align 8, !dbg !1380
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1357
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1381
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1382
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !1381, !srcloc !1383
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1381
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1384
  %add.i = add i32 %79, 1, !dbg !1385
  store i32 %add.i, i32* %retval, align 4, !dbg !1386
  br label %return, !dbg !1386

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1387
  ret i32 %80, !dbg !1387
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !1388 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1347, metadata !DIExpression()), !dbg !1393
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1356, metadata !DIExpression()), !dbg !1395
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1396, metadata !DIExpression()), !dbg !1397
  %0 = load i64, i64* %n.addr, align 8, !dbg !1398
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1395
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1399
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1400
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !1399, !srcloc !1383
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1399
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1401
  %add.i = add i32 %4, 1, !dbg !1402
  %sub = sub i32 %add.i, 1, !dbg !1403
  ret i32 %sub, !dbg !1404
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1405 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1415, metadata !DIExpression()), !dbg !1416
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1417, metadata !DIExpression()), !dbg !1418
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1419
  ret i8* %0, !dbg !1420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mlxsw_afk_key_info_elements_eq(%struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_element_usage* %elusage) #0 !dbg !1421 {
entry:
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !1424, metadata !DIExpression()), !dbg !1425
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1426
  %elusage1 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %0, i32 0, i32 4, !dbg !1427
  %1 = bitcast %struct.mlxsw_afk_element_usage* %elusage1 to i8*, !dbg !1428
  %2 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !1429
  %3 = bitcast %struct.mlxsw_afk_element_usage* %2 to i8*, !dbg !1429
  %call = call i32 @memcmp(i8* %1, i8* %3, i64 8) #8, !dbg !1430
  %cmp = icmp eq i32 %call, 0, !dbg !1431
  ret i1 %cmp, !dbg !1432
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #0 !dbg !1433 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !1437, metadata !DIExpression()), !dbg !1438
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !1439, metadata !DIExpression()), !dbg !1440
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !1441, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !1445, metadata !DIExpression()), !dbg !1448
  %0 = load i64, i64* %a.addr, align 8, !dbg !1448
  store i64 %0, i64* %__a, align 8, !dbg !1448
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !1449, metadata !DIExpression()), !dbg !1448
  %1 = load i64, i64* %b.addr, align 8, !dbg !1448
  store i64 %1, i64* %__b, align 8, !dbg !1448
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !1450, metadata !DIExpression()), !dbg !1448
  store i64* %bytes, i64** %__d, align 8, !dbg !1448
  %cmp = icmp eq i64* %__a, %__b, !dbg !1448
  %conv = zext i1 %cmp to i32, !dbg !1448
  %2 = load i64*, i64** %__d, align 8, !dbg !1448
  %cmp1 = icmp eq i64* %__a, %2, !dbg !1448
  %conv2 = zext i1 %cmp1 to i32, !dbg !1448
  %3 = load i64, i64* %__a, align 8, !dbg !1448
  %4 = load i64, i64* %__b, align 8, !dbg !1448
  %5 = load i64*, i64** %__d, align 8, !dbg !1448
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !1448
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !1448
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !1448
  store i64 %8, i64* %5, align 8, !dbg !1448
  %frombool = zext i1 %7 to i8, !dbg !1448
  store i8 %frombool, i8* %tmp, align 1, !dbg !1448
  %9 = load i8, i8* %tmp, align 1, !dbg !1448
  %tobool = trunc i8 %9 to i1, !dbg !1448
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !1452
  br i1 %call, label %if.then, label %if.end, !dbg !1453

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !1454
  br label %return, !dbg !1454

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !1455, metadata !DIExpression()), !dbg !1458
  %10 = load i64, i64* %bytes, align 8, !dbg !1458
  store i64 %10, i64* %__a3, align 8, !dbg !1458
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !1459, metadata !DIExpression()), !dbg !1458
  %11 = load i64, i64* %c.addr, align 8, !dbg !1458
  store i64 %11, i64* %__b4, align 8, !dbg !1458
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !1460, metadata !DIExpression()), !dbg !1458
  store i64* %bytes, i64** %__d5, align 8, !dbg !1458
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !1458
  %conv7 = zext i1 %cmp6 to i32, !dbg !1458
  %12 = load i64*, i64** %__d5, align 8, !dbg !1458
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !1458
  %conv9 = zext i1 %cmp8 to i32, !dbg !1458
  %13 = load i64, i64* %__a3, align 8, !dbg !1458
  %14 = load i64, i64* %__b4, align 8, !dbg !1458
  %15 = load i64*, i64** %__d5, align 8, !dbg !1458
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !1458
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !1458
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !1458
  store i64 %18, i64* %15, align 8, !dbg !1458
  %frombool11 = zext i1 %17 to i8, !dbg !1458
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !1458
  %19 = load i8, i8* %tmp10, align 1, !dbg !1458
  %tobool12 = trunc i8 %19 to i1, !dbg !1458
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #8, !dbg !1461
  br i1 %call13, label %if.then14, label %if.end15, !dbg !1462

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !1463
  br label %return, !dbg !1463

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !1464
  store i64 %20, i64* %retval, align 8, !dbg !1465
  br label %return, !dbg !1465

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !1466
  ret i64 %21, !dbg !1466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !1467 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  %0 = load i64, i64* %error.addr, align 8, !dbg !1473
  %1 = inttoptr i64 %0 to i8*, !dbg !1474
  ret i8* %1, !dbg !1475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mlxsw_afk_picker(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_element_usage* %elusage) #0 !dbg !1476 {
entry:
  %retval = alloca i32, align 4
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %elusage.addr = alloca %struct.mlxsw_afk_element_usage*, align 8
  %picker = alloca %struct.mlxsw_afk_picker*, align 8
  %element = alloca i32, align 4
  %alloc_size = alloca i64, align 8
  %err = alloca i32, align 4
  %block_index = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !1481, metadata !DIExpression()), !dbg !1482
  store %struct.mlxsw_afk_element_usage* %elusage, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_usage** %elusage.addr, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_picker** %picker, metadata !1485, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.declare(metadata i32* %element, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata i64* %alloc_size, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1502, metadata !DIExpression()), !dbg !1503
  %0 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1504
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %0, i32 0, i32 4, !dbg !1505
  %1 = load i32, i32* %blocks_count, align 8, !dbg !1505
  %conv = zext i32 %1 to i64, !dbg !1504
  %mul = mul i64 16, %conv, !dbg !1506
  store i64 %mul, i64* %alloc_size, align 8, !dbg !1507
  %2 = load i64, i64* %alloc_size, align 8, !dbg !1508
  %call = call i8* @kzalloc(i64 %2, i32 3264) #8, !dbg !1509
  %3 = bitcast i8* %call to %struct.mlxsw_afk_picker*, !dbg !1509
  store %struct.mlxsw_afk_picker* %3, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1510
  %4 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1511
  %tobool = icmp ne %struct.mlxsw_afk_picker* %4, null, !dbg !1511
  br i1 %tobool, label %if.end, label %if.then, !dbg !1513

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !1514
  br label %return, !dbg !1514

if.end:                                           ; preds = %entry
  %5 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !1515
  %usage = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %5, i32 0, i32 0, !dbg !1515
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %usage, i64 0, i64 0, !dbg !1515
  %call1 = call i64 @find_first_bit(i64* %arraydecay, i64 25) #8, !dbg !1515
  %conv2 = trunc i64 %call1 to i32, !dbg !1515
  store i32 %conv2, i32* %element, align 4, !dbg !1515
  br label %for.cond, !dbg !1515

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %element, align 4, !dbg !1517
  %cmp = icmp ult i32 %6, 25, !dbg !1517
  br i1 %cmp, label %for.body, label %for.end, !dbg !1515

for.body:                                         ; preds = %for.cond
  %7 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1519
  %8 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1520
  %9 = load i32, i32* %element, align 4, !dbg !1521
  call void @mlxsw_afk_picker_count_hits(%struct.mlxsw_afk* %7, %struct.mlxsw_afk_picker* %8, i32 %9) #8, !dbg !1522
  br label %for.inc, !dbg !1522

for.inc:                                          ; preds = %for.body
  %10 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !1517
  %usage4 = getelementptr inbounds %struct.mlxsw_afk_element_usage, %struct.mlxsw_afk_element_usage* %10, i32 0, i32 0, !dbg !1517
  %arraydecay5 = getelementptr inbounds [1 x i64], [1 x i64]* %usage4, i64 0, i64 0, !dbg !1517
  %11 = load i32, i32* %element, align 4, !dbg !1517
  %add = add i32 %11, 1, !dbg !1517
  %conv6 = zext i32 %add to i64, !dbg !1517
  %call7 = call i64 @find_next_bit(i64* %arraydecay5, i64 25, i64 %conv6) #8, !dbg !1517
  %conv8 = trunc i64 %call7 to i32, !dbg !1517
  store i32 %conv8, i32* %element, align 4, !dbg !1517
  br label %for.cond, !dbg !1517, !llvm.loop !1523

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !1525

do.body:                                          ; preds = %do.cond, %for.end
  call void @llvm.dbg.declare(metadata i32* %block_index, metadata !1526, metadata !DIExpression()), !dbg !1528
  %12 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1529
  %13 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1530
  %call9 = call i32 @mlxsw_afk_picker_most_hits_get(%struct.mlxsw_afk* %12, %struct.mlxsw_afk_picker* %13) #8, !dbg !1531
  store i32 %call9, i32* %block_index, align 4, !dbg !1532
  %14 = load i32, i32* %block_index, align 4, !dbg !1533
  %cmp10 = icmp slt i32 %14, 0, !dbg !1535
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1536

if.then12:                                        ; preds = %do.body
  %15 = load i32, i32* %block_index, align 4, !dbg !1537
  store i32 %15, i32* %err, align 4, !dbg !1539
  br label %out, !dbg !1540

if.end13:                                         ; preds = %do.body
  %16 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1541
  %17 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1542
  %18 = load i32, i32* %block_index, align 4, !dbg !1543
  %19 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1544
  %call14 = call i32 @mlxsw_afk_picker_key_info_add(%struct.mlxsw_afk* %16, %struct.mlxsw_afk_picker* %17, i32 %18, %struct.mlxsw_afk_key_info* %19) #8, !dbg !1545
  store i32 %call14, i32* %err, align 4, !dbg !1546
  %20 = load i32, i32* %err, align 4, !dbg !1547
  %tobool15 = icmp ne i32 %20, 0, !dbg !1547
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1549

if.then16:                                        ; preds = %if.end13
  br label %out, !dbg !1550

if.end17:                                         ; preds = %if.end13
  %21 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1551
  %22 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1552
  %23 = load i32, i32* %block_index, align 4, !dbg !1553
  call void @mlxsw_afk_picker_subtract_hits(%struct.mlxsw_afk* %21, %struct.mlxsw_afk_picker* %22, i32 %23) #8, !dbg !1554
  br label %do.cond, !dbg !1555

do.cond:                                          ; preds = %if.end17
  %24 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1556
  %25 = load %struct.mlxsw_afk_element_usage*, %struct.mlxsw_afk_element_usage** %elusage.addr, align 8, !dbg !1557
  %call18 = call zeroext i1 @mlxsw_afk_key_info_elements_eq(%struct.mlxsw_afk_key_info* %24, %struct.mlxsw_afk_element_usage* %25) #8, !dbg !1558
  %lnot = xor i1 %call18, true, !dbg !1559
  br i1 %lnot, label %do.body, label %do.end, !dbg !1555, !llvm.loop !1560

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %err, align 4, !dbg !1562
  br label %out, !dbg !1563

out:                                              ; preds = %do.end, %if.then16, %if.then12
  call void @llvm.dbg.label(metadata !1564), !dbg !1565
  %26 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker, align 8, !dbg !1566
  %27 = bitcast %struct.mlxsw_afk_picker* %26 to i8*, !dbg !1566
  call void @kfree(i8* %27) #8, !dbg !1567
  %28 = load i32, i32* %err, align 4, !dbg !1568
  store i32 %28, i32* %retval, align 4, !dbg !1569
  br label %return, !dbg !1569

return:                                           ; preds = %out, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !1570
  ret i32 %29, !dbg !1570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !1571 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1574, metadata !DIExpression()), !dbg !1575
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !1576, metadata !DIExpression()), !dbg !1577
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1578
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1579
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !1580
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !1581
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1581
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !1582
  ret void, !dbg !1583
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !1584 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !1587, metadata !DIExpression()), !dbg !1588
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !1589
  %tobool = trunc i8 %0 to i1, !dbg !1589
  %lnot = xor i1 %tobool, true, !dbg !1589
  %lnot1 = xor i1 %lnot, true, !dbg !1589
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1589
  %conv = sext i32 %lnot.ext to i64, !dbg !1589
  %tobool2 = icmp ne i64 %conv, 0, !dbg !1589
  ret i1 %tobool2, !dbg !1590
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_afk_picker_count_hits(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_picker* %picker, i32 %element) #0 !dbg !1591 {
entry:
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %picker.addr = alloca %struct.mlxsw_afk_picker*, align 8
  %element.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %block = alloca %struct.mlxsw_afk_block*, align 8
  %elinst = alloca %struct.mlxsw_afk_element_inst*, align 8
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  store %struct.mlxsw_afk_picker* %picker, %struct.mlxsw_afk_picker** %picker.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_picker** %picker.addr, metadata !1596, metadata !DIExpression()), !dbg !1597
  store i32 %element, i32* %element.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element.addr, metadata !1598, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1600, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i32 0, i32* %i, align 4, !dbg !1604
  br label %for.cond, !dbg !1606

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1607
  %1 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1609
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %1, i32 0, i32 4, !dbg !1610
  %2 = load i32, i32* %blocks_count, align 8, !dbg !1610
  %cmp = icmp ult i32 %0, %2, !dbg !1611
  br i1 %cmp, label %for.body, label %for.end17, !dbg !1612

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_block** %block, metadata !1613, metadata !DIExpression()), !dbg !1615
  %3 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1616
  %blocks = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %3, i32 0, i32 3, !dbg !1617
  %4 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %blocks, align 8, !dbg !1617
  %5 = load i32, i32* %i, align 4, !dbg !1618
  %idxprom = sext i32 %5 to i64, !dbg !1616
  %arrayidx = getelementptr %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %4, i64 %idxprom, !dbg !1616
  store %struct.mlxsw_afk_block* %arrayidx, %struct.mlxsw_afk_block** %block, align 8, !dbg !1615
  store i32 0, i32* %j, align 4, !dbg !1619
  br label %for.cond1, !dbg !1621

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !dbg !1622
  %7 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block, align 8, !dbg !1624
  %instances_count = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %7, i32 0, i32 2, !dbg !1625
  %8 = load i32, i32* %instances_count, align 8, !dbg !1625
  %cmp2 = icmp ult i32 %6, %8, !dbg !1626
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1627

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_inst** %elinst, metadata !1628, metadata !DIExpression()), !dbg !1630
  %9 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block, align 8, !dbg !1631
  %instances = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %9, i32 0, i32 1, !dbg !1632
  %10 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %instances, align 8, !dbg !1632
  %11 = load i32, i32* %j, align 4, !dbg !1633
  %idxprom4 = sext i32 %11 to i64, !dbg !1631
  %arrayidx5 = getelementptr %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %10, i64 %idxprom4, !dbg !1631
  store %struct.mlxsw_afk_element_inst* %arrayidx5, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1634
  %12 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !1635
  %element6 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %12, i32 0, i32 0, !dbg !1637
  %13 = load i32, i32* %element6, align 8, !dbg !1637
  %14 = load i32, i32* %element.addr, align 4, !dbg !1638
  %cmp7 = icmp eq i32 %13, %14, !dbg !1639
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1640

if.then:                                          ; preds = %for.body3
  %15 = load i32, i32* %element.addr, align 4, !dbg !1641
  %conv = zext i32 %15 to i64, !dbg !1641
  %16 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1643
  %hits = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %16, i32 0, i32 0, !dbg !1644
  %17 = load i32, i32* %i, align 4, !dbg !1645
  %idxprom8 = sext i32 %17 to i64, !dbg !1643
  %arrayidx9 = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits, i64 0, i64 %idxprom8, !dbg !1643
  %element10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx9, i32 0, i32 0, !dbg !1646
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %element10, i64 0, i64 0, !dbg !1643
  call void @__set_bit(i64 %conv, i64* %arraydecay) #8, !dbg !1647
  %18 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1648
  %hits11 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %18, i32 0, i32 0, !dbg !1649
  %19 = load i32, i32* %i, align 4, !dbg !1650
  %idxprom12 = sext i32 %19 to i64, !dbg !1648
  %arrayidx13 = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits11, i64 0, i64 %idxprom12, !dbg !1648
  %total = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx13, i32 0, i32 1, !dbg !1651
  %20 = load i32, i32* %total, align 8, !dbg !1652
  %inc = add i32 %20, 1, !dbg !1652
  store i32 %inc, i32* %total, align 8, !dbg !1652
  br label %if.end, !dbg !1653

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc, !dbg !1654

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4, !dbg !1655
  %inc14 = add i32 %21, 1, !dbg !1655
  store i32 %inc14, i32* %j, align 4, !dbg !1655
  br label %for.cond1, !dbg !1656, !llvm.loop !1657

for.end:                                          ; preds = %for.cond1
  br label %for.inc15, !dbg !1659

for.inc15:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !dbg !1660
  %inc16 = add i32 %22, 1, !dbg !1660
  store i32 %inc16, i32* %i, align 4, !dbg !1660
  br label %for.cond, !dbg !1661, !llvm.loop !1662

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !1664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mlxsw_afk_picker_most_hits_get(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_picker* %picker) #0 !dbg !1665 {
entry:
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %picker.addr = alloca %struct.mlxsw_afk_picker*, align 8
  %most_index = alloca i32, align 4
  %most_hits = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1668, metadata !DIExpression()), !dbg !1669
  store %struct.mlxsw_afk_picker* %picker, %struct.mlxsw_afk_picker** %picker.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_picker** %picker.addr, metadata !1670, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.declare(metadata i32* %most_index, metadata !1672, metadata !DIExpression()), !dbg !1673
  store i32 -22, i32* %most_index, align 4, !dbg !1673
  call void @llvm.dbg.declare(metadata i32* %most_hits, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i32 0, i32* %most_hits, align 4, !dbg !1675
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1676, metadata !DIExpression()), !dbg !1677
  store i32 0, i32* %i, align 4, !dbg !1678
  br label %for.cond, !dbg !1680

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1681
  %1 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1683
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %1, i32 0, i32 4, !dbg !1684
  %2 = load i32, i32* %blocks_count, align 8, !dbg !1684
  %cmp = icmp ult i32 %0, %2, !dbg !1685
  br i1 %cmp, label %for.body, label %for.end, !dbg !1686

for.body:                                         ; preds = %for.cond
  %3 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1687
  %hits = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %3, i32 0, i32 0, !dbg !1690
  %4 = load i32, i32* %i, align 4, !dbg !1691
  %idxprom = sext i32 %4 to i64, !dbg !1687
  %arrayidx = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits, i64 0, i64 %idxprom, !dbg !1687
  %total = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 1, !dbg !1692
  %5 = load i32, i32* %total, align 8, !dbg !1692
  %6 = load i32, i32* %most_hits, align 4, !dbg !1693
  %cmp1 = icmp ugt i32 %5, %6, !dbg !1694
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1695

if.then:                                          ; preds = %for.body
  %7 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1696
  %hits2 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %7, i32 0, i32 0, !dbg !1698
  %8 = load i32, i32* %i, align 4, !dbg !1699
  %idxprom3 = sext i32 %8 to i64, !dbg !1696
  %arrayidx4 = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits2, i64 0, i64 %idxprom3, !dbg !1696
  %total5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx4, i32 0, i32 1, !dbg !1700
  %9 = load i32, i32* %total5, align 8, !dbg !1700
  store i32 %9, i32* %most_hits, align 4, !dbg !1701
  %10 = load i32, i32* %i, align 4, !dbg !1702
  store i32 %10, i32* %most_index, align 4, !dbg !1703
  br label %if.end, !dbg !1704

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1705

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !dbg !1706
  %inc = add i32 %11, 1, !dbg !1706
  store i32 %inc, i32* %i, align 4, !dbg !1706
  br label %for.cond, !dbg !1707, !llvm.loop !1708

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %most_index, align 4, !dbg !1710
  ret i32 %12, !dbg !1711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mlxsw_afk_picker_key_info_add(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_picker* %picker, i32 %block_index, %struct.mlxsw_afk_key_info* %key_info) #0 !dbg !1712 {
entry:
  %retval = alloca i32, align 4
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %picker.addr = alloca %struct.mlxsw_afk_picker*, align 8
  %block_index.addr = alloca i32, align 4
  %key_info.addr = alloca %struct.mlxsw_afk_key_info*, align 8
  %element = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1715, metadata !DIExpression()), !dbg !1716
  store %struct.mlxsw_afk_picker* %picker, %struct.mlxsw_afk_picker** %picker.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_picker** %picker.addr, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !1719, metadata !DIExpression()), !dbg !1720
  store %struct.mlxsw_afk_key_info* %key_info, %struct.mlxsw_afk_key_info** %key_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_key_info** %key_info.addr, metadata !1721, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.declare(metadata i32* %element, metadata !1723, metadata !DIExpression()), !dbg !1724
  %0 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1725
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %0, i32 0, i32 2, !dbg !1727
  %1 = load i32, i32* %blocks_count, align 4, !dbg !1727
  %2 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1728
  %max_blocks = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %2, i32 0, i32 1, !dbg !1729
  %3 = load i32, i32* %max_blocks, align 8, !dbg !1729
  %cmp = icmp eq i32 %1, %3, !dbg !1730
  br i1 %cmp, label %if.then, label %if.end, !dbg !1731

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !1732
  br label %return, !dbg !1732

if.end:                                           ; preds = %entry
  %4 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1733
  %hits = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %4, i32 0, i32 0, !dbg !1733
  %5 = load i32, i32* %block_index.addr, align 4, !dbg !1733
  %idxprom = sext i32 %5 to i64, !dbg !1733
  %arrayidx = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits, i64 0, i64 %idxprom, !dbg !1733
  %element1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !1733
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %element1, i64 0, i64 0, !dbg !1733
  %call = call i64 @find_first_bit(i64* %arraydecay, i64 25) #8, !dbg !1733
  %conv = trunc i64 %call to i32, !dbg !1733
  store i32 %conv, i32* %element, align 4, !dbg !1733
  br label %for.cond, !dbg !1733

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %element, align 4, !dbg !1735
  %cmp2 = icmp ult i32 %6, 25, !dbg !1735
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1733

for.body:                                         ; preds = %for.cond
  %7 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1737
  %blocks_count4 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %7, i32 0, i32 2, !dbg !1739
  %8 = load i32, i32* %blocks_count4, align 4, !dbg !1739
  %9 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1740
  %element_to_block = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %9, i32 0, i32 3, !dbg !1741
  %10 = load i32, i32* %element, align 4, !dbg !1742
  %idxprom5 = zext i32 %10 to i64, !dbg !1740
  %arrayidx6 = getelementptr [25 x i32], [25 x i32]* %element_to_block, i64 0, i64 %idxprom5, !dbg !1740
  store i32 %8, i32* %arrayidx6, align 4, !dbg !1743
  %11 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1744
  %elusage = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %11, i32 0, i32 4, !dbg !1745
  %12 = load i32, i32* %element, align 4, !dbg !1746
  call void @mlxsw_afk_element_usage_add(%struct.mlxsw_afk_element_usage* %elusage, i32 %12) #8, !dbg !1747
  br label %for.inc, !dbg !1748

for.inc:                                          ; preds = %for.body
  %13 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1735
  %hits7 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %13, i32 0, i32 0, !dbg !1735
  %14 = load i32, i32* %block_index.addr, align 4, !dbg !1735
  %idxprom8 = sext i32 %14 to i64, !dbg !1735
  %arrayidx9 = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits7, i64 0, i64 %idxprom8, !dbg !1735
  %element10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx9, i32 0, i32 0, !dbg !1735
  %arraydecay11 = getelementptr inbounds [1 x i64], [1 x i64]* %element10, i64 0, i64 0, !dbg !1735
  %15 = load i32, i32* %element, align 4, !dbg !1735
  %add = add i32 %15, 1, !dbg !1735
  %conv12 = zext i32 %add to i64, !dbg !1735
  %call13 = call i64 @find_next_bit(i64* %arraydecay11, i64 25, i64 %conv12) #8, !dbg !1735
  %conv14 = trunc i64 %call13 to i32, !dbg !1735
  store i32 %conv14, i32* %element, align 4, !dbg !1735
  br label %for.cond, !dbg !1735, !llvm.loop !1749

for.end:                                          ; preds = %for.cond
  %16 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1751
  %blocks = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %16, i32 0, i32 3, !dbg !1752
  %17 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %blocks, align 8, !dbg !1752
  %18 = load i32, i32* %block_index.addr, align 4, !dbg !1753
  %idxprom15 = sext i32 %18 to i64, !dbg !1751
  %arrayidx16 = getelementptr %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %17, i64 %idxprom15, !dbg !1751
  %19 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1754
  %blocks17 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %19, i32 0, i32 5, !dbg !1755
  %20 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1756
  %blocks_count18 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %20, i32 0, i32 2, !dbg !1757
  %21 = load i32, i32* %blocks_count18, align 4, !dbg !1757
  %idxprom19 = zext i32 %21 to i64, !dbg !1754
  %arrayidx20 = getelementptr [0 x %struct.mlxsw_afk_block*], [0 x %struct.mlxsw_afk_block*]* %blocks17, i64 0, i64 %idxprom19, !dbg !1754
  store %struct.mlxsw_afk_block* %arrayidx16, %struct.mlxsw_afk_block** %arrayidx20, align 8, !dbg !1758
  %22 = load %struct.mlxsw_afk_key_info*, %struct.mlxsw_afk_key_info** %key_info.addr, align 8, !dbg !1759
  %blocks_count21 = getelementptr inbounds %struct.mlxsw_afk_key_info, %struct.mlxsw_afk_key_info* %22, i32 0, i32 2, !dbg !1760
  %23 = load i32, i32* %blocks_count21, align 4, !dbg !1761
  %inc = add i32 %23, 1, !dbg !1761
  store i32 %inc, i32* %blocks_count21, align 4, !dbg !1761
  store i32 0, i32* %retval, align 4, !dbg !1762
  br label %return, !dbg !1762

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !1763
  ret i32 %24, !dbg !1763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_afk_picker_subtract_hits(%struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk_picker* %picker, i32 %block_index) #0 !dbg !1764 {
entry:
  %mlxsw_afk.addr = alloca %struct.mlxsw_afk*, align 8
  %picker.addr = alloca %struct.mlxsw_afk_picker*, align 8
  %block_index.addr = alloca i32, align 4
  %hits_element = alloca [1 x i64], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.mlxsw_afk* %mlxsw_afk, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk** %mlxsw_afk.addr, metadata !1767, metadata !DIExpression()), !dbg !1768
  store %struct.mlxsw_afk_picker* %picker, %struct.mlxsw_afk_picker** %picker.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_picker** %picker.addr, metadata !1769, metadata !DIExpression()), !dbg !1770
  store i32 %block_index, i32* %block_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %block_index.addr, metadata !1771, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.declare(metadata [1 x i64]* %hits_element, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1775, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1777, metadata !DIExpression()), !dbg !1778
  %0 = bitcast [1 x i64]* %hits_element to i8*, !dbg !1779
  %1 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1780
  %hits = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %1, i32 0, i32 0, !dbg !1781
  %2 = load i32, i32* %block_index.addr, align 4, !dbg !1782
  %idxprom = sext i32 %2 to i64, !dbg !1780
  %arrayidx = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits, i64 0, i64 %idxprom, !dbg !1780
  %element = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !1783
  %3 = bitcast [1 x i64]* %element to i8*, !dbg !1779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %3, i64 8, i1 false), !dbg !1779
  store i32 0, i32* %i, align 4, !dbg !1784
  br label %for.cond, !dbg !1786

for.cond:                                         ; preds = %for.inc19, %entry
  %4 = load i32, i32* %i, align 4, !dbg !1787
  %5 = load %struct.mlxsw_afk*, %struct.mlxsw_afk** %mlxsw_afk.addr, align 8, !dbg !1789
  %blocks_count = getelementptr inbounds %struct.mlxsw_afk, %struct.mlxsw_afk* %5, i32 0, i32 4, !dbg !1790
  %6 = load i32, i32* %blocks_count, align 8, !dbg !1790
  %cmp = icmp ult i32 %4, %6, !dbg !1791
  br i1 %cmp, label %for.body, label %for.end20, !dbg !1792

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %hits_element, i64 0, i64 0, !dbg !1793
  %call = call i64 @find_first_bit(i64* %arraydecay, i64 25) #8, !dbg !1793
  %conv = trunc i64 %call to i32, !dbg !1793
  store i32 %conv, i32* %j, align 4, !dbg !1793
  br label %for.cond1, !dbg !1793

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !dbg !1796
  %cmp2 = icmp slt i32 %7, 25, !dbg !1796
  br i1 %cmp2, label %for.body4, label %for.end, !dbg !1793

for.body4:                                        ; preds = %for.cond1
  %8 = load i32, i32* %j, align 4, !dbg !1798
  %conv5 = sext i32 %8 to i64, !dbg !1798
  %9 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1801
  %hits6 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %9, i32 0, i32 0, !dbg !1802
  %10 = load i32, i32* %i, align 4, !dbg !1803
  %idxprom7 = sext i32 %10 to i64, !dbg !1801
  %arrayidx8 = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits6, i64 0, i64 %idxprom7, !dbg !1801
  %element9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx8, i32 0, i32 0, !dbg !1804
  %arraydecay10 = getelementptr inbounds [1 x i64], [1 x i64]* %element9, i64 0, i64 0, !dbg !1801
  %call11 = call zeroext i1 @__test_and_clear_bit(i64 %conv5, i64* %arraydecay10) #8, !dbg !1805
  br i1 %call11, label %if.then, label %if.end, !dbg !1806

if.then:                                          ; preds = %for.body4
  %11 = load %struct.mlxsw_afk_picker*, %struct.mlxsw_afk_picker** %picker.addr, align 8, !dbg !1807
  %hits12 = getelementptr inbounds %struct.mlxsw_afk_picker, %struct.mlxsw_afk_picker* %11, i32 0, i32 0, !dbg !1808
  %12 = load i32, i32* %i, align 4, !dbg !1809
  %idxprom13 = sext i32 %12 to i64, !dbg !1807
  %arrayidx14 = getelementptr [0 x %struct.anon.0], [0 x %struct.anon.0]* %hits12, i64 0, i64 %idxprom13, !dbg !1807
  %total = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx14, i32 0, i32 1, !dbg !1810
  %13 = load i32, i32* %total, align 8, !dbg !1811
  %dec = add i32 %13, -1, !dbg !1811
  store i32 %dec, i32* %total, align 8, !dbg !1811
  br label %if.end, !dbg !1807

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc, !dbg !1812

for.inc:                                          ; preds = %if.end
  %arraydecay15 = getelementptr inbounds [1 x i64], [1 x i64]* %hits_element, i64 0, i64 0, !dbg !1796
  %14 = load i32, i32* %j, align 4, !dbg !1796
  %add = add i32 %14, 1, !dbg !1796
  %conv16 = sext i32 %add to i64, !dbg !1796
  %call17 = call i64 @find_next_bit(i64* %arraydecay15, i64 25, i64 %conv16) #8, !dbg !1796
  %conv18 = trunc i64 %call17 to i32, !dbg !1796
  store i32 %conv18, i32* %j, align 4, !dbg !1796
  br label %for.cond1, !dbg !1796, !llvm.loop !1813

for.end:                                          ; preds = %for.cond1
  br label %for.inc19, !dbg !1815

for.inc19:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4, !dbg !1816
  %inc = add i32 %15, 1, !dbg !1816
  store i32 %inc, i32* %i, align 4, !dbg !1816
  br label %for.cond, !dbg !1817, !llvm.loop !1818

for.end20:                                        ; preds = %for.cond
  ret void, !dbg !1820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !1821 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1827, metadata !DIExpression()), !dbg !1829
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1831, metadata !DIExpression()), !dbg !1832
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1833, metadata !DIExpression()), !dbg !1841
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1843, metadata !DIExpression()), !dbg !1844
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1845, metadata !DIExpression()), !dbg !1846
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1847, metadata !DIExpression()), !dbg !1848
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1849
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1850
  %div = sdiv i64 %1, 64, !dbg !1850
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1851
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1849
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1852
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1853
  %conv.i = trunc i64 %4 to i32, !dbg !1853
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !1854
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1855
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1855
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !1855
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1856
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1857
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !1858
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !1859
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #9, !dbg !1860, !srcloc !1861
  ret void, !dbg !1862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !1863 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1867, metadata !DIExpression()), !dbg !1868
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1869, metadata !DIExpression()), !dbg !1870
  ret i1 true, !dbg !1871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !1872 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1876, metadata !DIExpression()), !dbg !1877
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1878, metadata !DIExpression()), !dbg !1879
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1880, metadata !DIExpression()), !dbg !1881
  ret void, !dbg !1882
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !1883 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1886, metadata !DIExpression()), !dbg !1888
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1890, metadata !DIExpression()), !dbg !1891
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !1892, metadata !DIExpression()), !dbg !1893
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1894, metadata !DIExpression()), !dbg !1895
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1896, metadata !DIExpression()), !dbg !1897
  %0 = load i64, i64* %nr.addr, align 8, !dbg !1898
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !1899
  call void @__instrument_read_write_bitop(i64 %0, i64* %1) #8, !dbg !1900
  %2 = load i64, i64* %nr.addr, align 8, !dbg !1901
  %3 = load i64*, i64** %addr.addr, align 8, !dbg !1902
  store i64 %2, i64* %nr.addr.i, align 8
  store i64* %3, i64** %addr.addr.i, align 8
  %4 = load i64*, i64** %addr.addr.i, align 8, !dbg !1903
  %5 = load i64, i64* %nr.addr.i, align 8, !dbg !1904
  %6 = call i8 asm sideeffect " btrq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %4, i64 %5) #9, !dbg !1905, !srcloc !1906
  store i8 %6, i8* %oldbit.i, align 1, !dbg !1905
  %7 = load i8, i8* %oldbit.i, align 1, !dbg !1907
  %tobool.i = trunc i8 %7 to i1, !dbg !1907
  ret i1 %tobool.i, !dbg !1908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__instrument_read_write_bitop(i64 %nr, i64* %addr) #0 !dbg !1909 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !1910, metadata !DIExpression()), !dbg !1912
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !1916, metadata !DIExpression()), !dbg !1917
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1918, metadata !DIExpression()), !dbg !1919
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1920, metadata !DIExpression()), !dbg !1921
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1922
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1923
  %div = sdiv i64 %1, 64, !dbg !1923
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1924
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1922
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1925
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1926
  %conv.i = trunc i64 %4 to i32, !dbg !1926
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !1927
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1928
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1928
  call void @kcsan_check_access(i8* %5, i64 %6, i32 3) #11, !dbg !1928
  ret void, !dbg !1929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1930 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1933, metadata !DIExpression()), !dbg !1934
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1935, metadata !DIExpression()), !dbg !1936
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1937, metadata !DIExpression()), !dbg !1938
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1939
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1941
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1942
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !1943
  br i1 %call, label %if.end, label %if.then, !dbg !1944

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1945

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1946
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1947
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !1948
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !1949
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !1950
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1951
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !1952
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !1953
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1954
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1955
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !1956
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !1957
  br label %do.body, !dbg !1958

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1959

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1961

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1959

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !1963
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !1963
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !1963
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !1963
  br label %do.end7, !dbg !1963

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1959

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !1966 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !1969, metadata !DIExpression()), !dbg !1970
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !1971, metadata !DIExpression()), !dbg !1972
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !1973, metadata !DIExpression()), !dbg !1974
  ret i1 true, !dbg !1975
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !1976 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1977, metadata !DIExpression()), !dbg !1978
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1979
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !1980
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1981
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !1982
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !1983
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1984
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !1985
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !1986
  ret void, !dbg !1987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !1988 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !1989, metadata !DIExpression()), !dbg !1990
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1991
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !1993
  br i1 %call, label %if.end, label %if.then, !dbg !1994

if.then:                                          ; preds = %entry
  br label %return, !dbg !1995

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1996
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !1997
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !1997
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !1998
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !1999
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !1999
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !2000
  br label %return, !dbg !2001

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !2002 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2005, metadata !DIExpression()), !dbg !2006
  ret i1 true, !dbg !2007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2008 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2009, metadata !DIExpression()), !dbg !2010
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2011, metadata !DIExpression()), !dbg !2012
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2013
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2014
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2015
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !2016
  br label %do.body, !dbg !2017

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2018

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2020

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2018

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2022
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2022
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2022
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !2022
  br label %do.end5, !dbg !2022

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2018

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2025 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2030, metadata !DIExpression()), !dbg !2032
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2034, metadata !DIExpression()), !dbg !2035
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2036, metadata !DIExpression()), !dbg !2037
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2038, metadata !DIExpression()), !dbg !2040
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2042, metadata !DIExpression()), !dbg !2043
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2044, metadata !DIExpression()), !dbg !2046
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2048, metadata !DIExpression()), !dbg !2049
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2050, metadata !DIExpression()), !dbg !2051
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2052, metadata !DIExpression()), !dbg !2053
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2054
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2055
  %div = sdiv i64 %1, 64, !dbg !2055
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2056
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2054
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2057
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2058
  %conv.i = trunc i64 %4 to i32, !dbg !2058
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !2059
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2060
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2060
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !2060
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2061
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2061
  br i1 %8, label %cond.true, label %cond.false, !dbg !2061

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2061
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2061
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2062
  %and.i = and i64 %11, 63, !dbg !2063
  %shl.i = shl i64 1, %and.i, !dbg !2064
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2065
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2066
  %shr.i = ashr i64 %13, 6, !dbg !2067
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2065
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2065
  %and1.i = and i64 %shl.i, %14, !dbg !2068
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2069
  %conv = zext i1 %cmp.i to i32, !dbg !2061
  br label %cond.end, !dbg !2061

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2061
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2061
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2070
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2071
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !2072, !srcloc !2073
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2072
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2074
  %tobool.i = trunc i8 %20 to i1, !dbg !2074
  %conv2 = zext i1 %tobool.i to i32, !dbg !2061
  br label %cond.end, !dbg !2061

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2061
  %tobool = icmp ne i32 %cond, 0, !dbg !2061
  ret i1 %tobool, !dbg !2075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !2076 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2077, metadata !DIExpression()), !dbg !2078
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2079, metadata !DIExpression()), !dbg !2080
  ret i1 true, !dbg !2081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mlxsw_item_offset(%struct.mlxsw_item* %item, i16 zeroext %index, i64 %typesize) #0 !dbg !2082 {
entry:
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %typesize.addr = alloca i64, align 8
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !2085, metadata !DIExpression()), !dbg !2086
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !2087, metadata !DIExpression()), !dbg !2088
  store i64 %typesize, i64* %typesize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %typesize.addr, metadata !2089, metadata !DIExpression()), !dbg !2090
  br label %do.body, !dbg !2091

do.body:                                          ; preds = %entry
  %0 = load i16, i16* %index.addr, align 2, !dbg !2092
  %conv = zext i16 %0 to i32, !dbg !2092
  %tobool = icmp ne i32 %conv, 0, !dbg !2092
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2092

land.rhs:                                         ; preds = %do.body
  %1 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2092
  %step = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %1, i32 0, i32 1, !dbg !2092
  %2 = load i16, i16* %step, align 2, !dbg !2092
  %tobool1 = icmp ne i16 %2, 0, !dbg !2092
  %lnot = xor i1 %tobool1, true, !dbg !2092
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %3 = phi i1 [ false, %do.body ], [ %lnot, %land.rhs ], !dbg !2095
  %lnot2 = xor i1 %3, true, !dbg !2092
  %lnot3 = xor i1 %lnot2, true, !dbg !2092
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2092
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2092
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2092
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2096

if.then:                                          ; preds = %land.end
  br label %do.body6, !dbg !2092

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !2097

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !2099

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !2097

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 29, i32 0, i64 12) #9, !dbg !2101, !srcloc !2103
  br label %do.end9, !dbg !2101

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !2097

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 89) #9, !dbg !2104, !srcloc !2107
  unreachable, !dbg !2108

do.end11:                                         ; No predecessors!
  br label %do.end12, !dbg !2097

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !2097

if.end:                                           ; preds = %do.end12, %land.end
  br label %do.end13, !dbg !2096

do.end13:                                         ; preds = %if.end
  %4 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2109
  %offset = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %4, i32 0, i32 0, !dbg !2111
  %5 = load i16, i16* %offset, align 8, !dbg !2111
  %conv14 = zext i16 %5 to i64, !dbg !2109
  %6 = load i64, i64* %typesize.addr, align 8, !dbg !2112
  %rem = urem i64 %conv14, %6, !dbg !2113
  %cmp = icmp ne i64 %rem, 0, !dbg !2114
  br i1 %cmp, label %if.then26, label %lor.lhs.false, !dbg !2115

lor.lhs.false:                                    ; preds = %do.end13
  %7 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2116
  %step16 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %7, i32 0, i32 1, !dbg !2117
  %8 = load i16, i16* %step16, align 2, !dbg !2117
  %conv17 = sext i16 %8 to i64, !dbg !2116
  %9 = load i64, i64* %typesize.addr, align 8, !dbg !2118
  %rem18 = urem i64 %conv17, %9, !dbg !2119
  %cmp19 = icmp ne i64 %rem18, 0, !dbg !2120
  br i1 %cmp19, label %if.then26, label %lor.lhs.false21, !dbg !2121

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %10 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2122
  %in_step_offset = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %10, i32 0, i32 2, !dbg !2123
  %11 = load i16, i16* %in_step_offset, align 4, !dbg !2123
  %conv22 = zext i16 %11 to i64, !dbg !2122
  %12 = load i64, i64* %typesize.addr, align 8, !dbg !2124
  %rem23 = urem i64 %conv22, %12, !dbg !2125
  %cmp24 = icmp ne i64 %rem23, 0, !dbg !2126
  br i1 %cmp24, label %if.then26, label %if.end41, !dbg !2127

if.then26:                                        ; preds = %lor.lhs.false21, %lor.lhs.false, %do.end13
  %13 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2128
  %name = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %13, i32 0, i32 7, !dbg !2128
  %14 = load i8*, i8** %name, align 8, !dbg !2128
  %15 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2128
  %offset27 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %15, i32 0, i32 0, !dbg !2128
  %16 = load i16, i16* %offset27, align 8, !dbg !2128
  %conv28 = zext i16 %16 to i32, !dbg !2128
  %17 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2128
  %step29 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %17, i32 0, i32 1, !dbg !2128
  %18 = load i16, i16* %step29, align 2, !dbg !2128
  %conv30 = sext i16 %18 to i32, !dbg !2128
  %19 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2128
  %in_step_offset31 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %19, i32 0, i32 2, !dbg !2128
  %20 = load i16, i16* %in_step_offset31, align 4, !dbg !2128
  %conv32 = zext i16 %20 to i32, !dbg !2128
  %21 = load i64, i64* %typesize.addr, align 8, !dbg !2128
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.29, i64 0, i64 0), i8* %14, i32 %conv28, i32 %conv30, i32 %conv32, i64 %21) #13, !dbg !2128
  br label %do.body33, !dbg !2130

do.body33:                                        ; preds = %if.then26
  br label %do.body34, !dbg !2131

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !2133

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !2131

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 36, i32 0, i64 12) #9, !dbg !2135, !srcloc !2137
  br label %do.end37, !dbg !2135

do.end37:                                         ; preds = %do.body36
  br label %do.body38, !dbg !2131

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 90) #9, !dbg !2138, !srcloc !2141
  unreachable, !dbg !2142

do.end39:                                         ; No predecessors!
  br label %do.end40, !dbg !2131

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !2143

if.end41:                                         ; preds = %do.end40, %lor.lhs.false21
  %22 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2144
  %offset42 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %22, i32 0, i32 0, !dbg !2145
  %23 = load i16, i16* %offset42, align 8, !dbg !2145
  %conv43 = zext i16 %23 to i32, !dbg !2144
  %24 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2146
  %step44 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %24, i32 0, i32 1, !dbg !2147
  %25 = load i16, i16* %step44, align 2, !dbg !2147
  %conv45 = sext i16 %25 to i32, !dbg !2146
  %26 = load i16, i16* %index.addr, align 2, !dbg !2148
  %conv46 = zext i16 %26 to i32, !dbg !2148
  %mul = mul i32 %conv45, %conv46, !dbg !2149
  %add = add i32 %conv43, %mul, !dbg !2150
  %27 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2151
  %in_step_offset47 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %27, i32 0, i32 2, !dbg !2152
  %28 = load i16, i16* %in_step_offset47, align 4, !dbg !2152
  %conv48 = zext i16 %28 to i32, !dbg !2151
  %add49 = add i32 %add, %conv48, !dbg !2153
  %conv50 = sext i32 %add49 to i64, !dbg !2154
  %29 = load i64, i64* %typesize.addr, align 8, !dbg !2155
  %div = udiv i64 %conv50, %29, !dbg !2156
  %conv51 = trunc i64 %div to i32, !dbg !2157
  ret i32 %conv51, !dbg !2158
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !2159 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2163, metadata !DIExpression()), !dbg !2164
  %0 = load i32, i32* %val.addr, align 4, !dbg !2165
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !2166
  ret i32 %call, !dbg !2167
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !2168 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2170, metadata !DIExpression()), !dbg !2171
  %0 = load i32, i32* %val.addr, align 4, !dbg !2172
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !2173, !srcloc !2174
  store i32 %1, i32* %val.addr, align 4, !dbg !2173
  %2 = load i32, i32* %val.addr, align 4, !dbg !2175
  ret i32 %2, !dbg !2176
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mlxsw_afk_element_inst* @mlxsw_afk_block_elinst_get(%struct.mlxsw_afk_block* %block, i32 %element) #0 !dbg !2177 {
entry:
  %retval = alloca %struct.mlxsw_afk_element_inst*, align 8
  %block.addr = alloca %struct.mlxsw_afk_block*, align 8
  %element.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %elinst = alloca %struct.mlxsw_afk_element_inst*, align 8
  store %struct.mlxsw_afk_block* %block, %struct.mlxsw_afk_block** %block.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_block** %block.addr, metadata !2180, metadata !DIExpression()), !dbg !2181
  store i32 %element, i32* %element.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %element.addr, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2184, metadata !DIExpression()), !dbg !2185
  store i32 0, i32* %i, align 4, !dbg !2186
  br label %for.cond, !dbg !2188

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2189
  %1 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block.addr, align 8, !dbg !2191
  %instances_count = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %1, i32 0, i32 2, !dbg !2192
  %2 = load i32, i32* %instances_count, align 8, !dbg !2192
  %cmp = icmp ult i32 %0, %2, !dbg !2193
  br i1 %cmp, label %for.body, label %for.end, !dbg !2194

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.mlxsw_afk_element_inst** %elinst, metadata !2195, metadata !DIExpression()), !dbg !2197
  %3 = load %struct.mlxsw_afk_block*, %struct.mlxsw_afk_block** %block.addr, align 8, !dbg !2198
  %instances = getelementptr inbounds %struct.mlxsw_afk_block, %struct.mlxsw_afk_block* %3, i32 0, i32 1, !dbg !2199
  %4 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %instances, align 8, !dbg !2199
  %5 = load i32, i32* %i, align 4, !dbg !2200
  %idxprom = sext i32 %5 to i64, !dbg !2198
  %arrayidx = getelementptr %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %4, i64 %idxprom, !dbg !2198
  store %struct.mlxsw_afk_element_inst* %arrayidx, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !2201
  %6 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !2202
  %element1 = getelementptr inbounds %struct.mlxsw_afk_element_inst, %struct.mlxsw_afk_element_inst* %6, i32 0, i32 0, !dbg !2204
  %7 = load i32, i32* %element1, align 8, !dbg !2204
  %8 = load i32, i32* %element.addr, align 4, !dbg !2205
  %cmp2 = icmp eq i32 %7, %8, !dbg !2206
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2207

if.then:                                          ; preds = %for.body
  %9 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %elinst, align 8, !dbg !2208
  store %struct.mlxsw_afk_element_inst* %9, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !2209
  br label %return, !dbg !2209

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2210

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !2211
  %inc = add i32 %10, 1, !dbg !2211
  store i32 %inc, i32* %i, align 4, !dbg !2211
  br label %for.cond, !dbg !2212, !llvm.loop !2213

for.end:                                          ; preds = %for.cond
  store %struct.mlxsw_afk_element_inst* null, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !2215
  br label %return, !dbg !2215

return:                                           ; preds = %for.end, %if.then
  %11 = load %struct.mlxsw_afk_element_inst*, %struct.mlxsw_afk_element_inst** %retval, align 8, !dbg !2216
  ret %struct.mlxsw_afk_element_inst* %11, !dbg !2216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp_afk_encode_u32(%struct.mlxsw_item* %storage_item, %struct.mlxsw_item* %output_item, i8* %storage, i8* %output, i32 %diff) #0 !dbg !2217 {
entry:
  %storage_item.addr = alloca %struct.mlxsw_item*, align 8
  %output_item.addr = alloca %struct.mlxsw_item*, align 8
  %storage.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %diff.addr = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.mlxsw_item* %storage_item, %struct.mlxsw_item** %storage_item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %storage_item.addr, metadata !2220, metadata !DIExpression()), !dbg !2221
  store %struct.mlxsw_item* %output_item, %struct.mlxsw_item** %output_item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %output_item.addr, metadata !2222, metadata !DIExpression()), !dbg !2223
  store i8* %storage, i8** %storage.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %storage.addr, metadata !2224, metadata !DIExpression()), !dbg !2225
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !2226, metadata !DIExpression()), !dbg !2227
  store i32 %diff, i32* %diff.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %diff.addr, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.declare(metadata i32* %value, metadata !2230, metadata !DIExpression()), !dbg !2231
  %0 = load i8*, i8** %storage.addr, align 8, !dbg !2232
  %1 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item.addr, align 8, !dbg !2233
  %call = call i32 @__mlxsw_item_get32(i8* %0, %struct.mlxsw_item* %1, i16 zeroext 0) #8, !dbg !2234
  store i32 %call, i32* %value, align 4, !dbg !2235
  %2 = load i8*, i8** %output.addr, align 8, !dbg !2236
  %3 = load %struct.mlxsw_item*, %struct.mlxsw_item** %output_item.addr, align 8, !dbg !2237
  %4 = load i32, i32* %value, align 4, !dbg !2238
  %5 = load i32, i32* %diff.addr, align 4, !dbg !2239
  %add = add i32 %4, %5, !dbg !2240
  call void @__mlxsw_item_set32(i8* %2, %struct.mlxsw_item* %3, i16 zeroext 0, i32 %add) #8, !dbg !2241
  ret void, !dbg !2242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mlxsw_sp_afk_encode_buf(%struct.mlxsw_item* %storage_item, %struct.mlxsw_item* %output_item, i8* %storage, i8* %output) #0 !dbg !2243 {
entry:
  %storage_item.addr = alloca %struct.mlxsw_item*, align 8
  %output_item.addr = alloca %struct.mlxsw_item*, align 8
  %storage.addr = alloca i8*, align 8
  %output.addr = alloca i8*, align 8
  %storage_data = alloca i8*, align 8
  %output_data = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.mlxsw_item* %storage_item, %struct.mlxsw_item** %storage_item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %storage_item.addr, metadata !2246, metadata !DIExpression()), !dbg !2247
  store %struct.mlxsw_item* %output_item, %struct.mlxsw_item** %output_item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %output_item.addr, metadata !2248, metadata !DIExpression()), !dbg !2249
  store i8* %storage, i8** %storage.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %storage.addr, metadata !2250, metadata !DIExpression()), !dbg !2251
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.declare(metadata i8** %storage_data, metadata !2254, metadata !DIExpression()), !dbg !2255
  %0 = load i8*, i8** %storage.addr, align 8, !dbg !2256
  %1 = load %struct.mlxsw_item*, %struct.mlxsw_item** %storage_item.addr, align 8, !dbg !2257
  %call = call i8* @__mlxsw_item_data(i8* %0, %struct.mlxsw_item* %1, i16 zeroext 0) #8, !dbg !2258
  store i8* %call, i8** %storage_data, align 8, !dbg !2255
  call void @llvm.dbg.declare(metadata i8** %output_data, metadata !2259, metadata !DIExpression()), !dbg !2260
  %2 = load i8*, i8** %output.addr, align 8, !dbg !2261
  %3 = load %struct.mlxsw_item*, %struct.mlxsw_item** %output_item.addr, align 8, !dbg !2262
  %call1 = call i8* @__mlxsw_item_data(i8* %2, %struct.mlxsw_item* %3, i16 zeroext 0) #8, !dbg !2263
  store i8* %call1, i8** %output_data, align 8, !dbg !2260
  call void @llvm.dbg.declare(metadata i64* %len, metadata !2264, metadata !DIExpression()), !dbg !2265
  %4 = load %struct.mlxsw_item*, %struct.mlxsw_item** %output_item.addr, align 8, !dbg !2266
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %4, i32 0, i32 6, !dbg !2267
  %bytes = bitcast %union.anon* %size to i16*, !dbg !2268
  %5 = load i16, i16* %bytes, align 2, !dbg !2268
  %conv = zext i16 %5 to i64, !dbg !2266
  store i64 %conv, i64* %len, align 8, !dbg !2265
  %6 = load i8*, i8** %output_data, align 8, !dbg !2269
  %7 = load i8*, i8** %storage_data, align 8, !dbg !2270
  %8 = load i64, i64* %len, align 8, !dbg !2271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %7, i64 %8, i1 false), !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mlxsw_item_get32(i8* %buf, %struct.mlxsw_item* %item, i16 zeroext %index) #0 !dbg !2274 {
entry:
  %buf.addr = alloca i8*, align 8
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %offset = alloca i32, align 4
  %b = alloca i32*, align 8
  %tmp = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2277, metadata !DIExpression()), !dbg !2278
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !2279, metadata !DIExpression()), !dbg !2280
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !2281, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2283, metadata !DIExpression()), !dbg !2284
  %0 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2285
  %1 = load i16, i16* %index.addr, align 2, !dbg !2286
  %call = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 4) #8, !dbg !2287
  store i32 %call, i32* %offset, align 4, !dbg !2284
  call void @llvm.dbg.declare(metadata i32** %b, metadata !2288, metadata !DIExpression()), !dbg !2289
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2290
  %3 = bitcast i8* %2 to i32*, !dbg !2291
  store i32* %3, i32** %b, align 8, !dbg !2289
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !2292, metadata !DIExpression()), !dbg !2293
  %4 = load i32*, i32** %b, align 8, !dbg !2294
  %5 = load i32, i32* %offset, align 4, !dbg !2294
  %idxprom = zext i32 %5 to i64, !dbg !2294
  %arrayidx = getelementptr i32, i32* %4, i64 %idxprom, !dbg !2294
  %6 = load i32, i32* %arrayidx, align 4, !dbg !2294
  %7 = call i1 @llvm.is.constant.i32(i32 %6), !dbg !2294
  br i1 %7, label %cond.true, label %cond.false, !dbg !2294

cond.true:                                        ; preds = %entry
  %8 = load i32*, i32** %b, align 8, !dbg !2294
  %9 = load i32, i32* %offset, align 4, !dbg !2294
  %idxprom1 = zext i32 %9 to i64, !dbg !2294
  %arrayidx2 = getelementptr i32, i32* %8, i64 %idxprom1, !dbg !2294
  %10 = load i32, i32* %arrayidx2, align 4, !dbg !2294
  %and = and i32 %10, 255, !dbg !2294
  %shl = shl i32 %and, 24, !dbg !2294
  %11 = load i32*, i32** %b, align 8, !dbg !2294
  %12 = load i32, i32* %offset, align 4, !dbg !2294
  %idxprom3 = zext i32 %12 to i64, !dbg !2294
  %arrayidx4 = getelementptr i32, i32* %11, i64 %idxprom3, !dbg !2294
  %13 = load i32, i32* %arrayidx4, align 4, !dbg !2294
  %and5 = and i32 %13, 65280, !dbg !2294
  %shl6 = shl i32 %and5, 8, !dbg !2294
  %or = or i32 %shl, %shl6, !dbg !2294
  %14 = load i32*, i32** %b, align 8, !dbg !2294
  %15 = load i32, i32* %offset, align 4, !dbg !2294
  %idxprom7 = zext i32 %15 to i64, !dbg !2294
  %arrayidx8 = getelementptr i32, i32* %14, i64 %idxprom7, !dbg !2294
  %16 = load i32, i32* %arrayidx8, align 4, !dbg !2294
  %and9 = and i32 %16, 16711680, !dbg !2294
  %shr = lshr i32 %and9, 8, !dbg !2294
  %or10 = or i32 %or, %shr, !dbg !2294
  %17 = load i32*, i32** %b, align 8, !dbg !2294
  %18 = load i32, i32* %offset, align 4, !dbg !2294
  %idxprom11 = zext i32 %18 to i64, !dbg !2294
  %arrayidx12 = getelementptr i32, i32* %17, i64 %idxprom11, !dbg !2294
  %19 = load i32, i32* %arrayidx12, align 4, !dbg !2294
  %and13 = and i32 %19, -16777216, !dbg !2294
  %shr14 = lshr i32 %and13, 24, !dbg !2294
  %or15 = or i32 %or10, %shr14, !dbg !2294
  br label %cond.end, !dbg !2294

cond.false:                                       ; preds = %entry
  %20 = load i32*, i32** %b, align 8, !dbg !2294
  %21 = load i32, i32* %offset, align 4, !dbg !2294
  %idxprom16 = zext i32 %21 to i64, !dbg !2294
  %arrayidx17 = getelementptr i32, i32* %20, i64 %idxprom16, !dbg !2294
  %22 = load i32, i32* %arrayidx17, align 4, !dbg !2294
  %call18 = call i32 @__fswab32(i32 %22) #10, !dbg !2294
  br label %cond.end, !dbg !2294

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or15, %cond.true ], [ %call18, %cond.false ], !dbg !2294
  store i32 %cond, i32* %tmp, align 4, !dbg !2295
  %23 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2296
  %shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %23, i32 0, i32 3, !dbg !2297
  %24 = load i8, i8* %shift, align 2, !dbg !2297
  %conv = zext i8 %24 to i32, !dbg !2296
  %25 = load i32, i32* %tmp, align 4, !dbg !2298
  %shr19 = lshr i32 %25, %conv, !dbg !2298
  store i32 %shr19, i32* %tmp, align 4, !dbg !2298
  %26 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2299
  %size = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %26, i32 0, i32 6, !dbg !2299
  %bits = bitcast %union.anon* %size to i8*, !dbg !2299
  %27 = load i8, i8* %bits, align 2, !dbg !2299
  %conv20 = zext i8 %27 to i32, !dbg !2299
  %sub = sub i32 %conv20, 1, !dbg !2299
  %sub21 = sub i32 63, %sub, !dbg !2299
  %sh_prom = zext i32 %sub21 to i64, !dbg !2299
  %shr22 = lshr i64 -1, %sh_prom, !dbg !2299
  %and23 = and i64 -1, %shr22, !dbg !2299
  %add = add i64 0, %and23, !dbg !2299
  %28 = load i32, i32* %tmp, align 4, !dbg !2300
  %conv24 = zext i32 %28 to i64, !dbg !2300
  %and25 = and i64 %conv24, %add, !dbg !2300
  %conv26 = trunc i64 %and25 to i32, !dbg !2300
  store i32 %conv26, i32* %tmp, align 4, !dbg !2300
  %29 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2301
  %no_real_shift = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %29, i32 0, i32 5, !dbg !2303
  %30 = load i8, i8* %no_real_shift, align 8, !dbg !2303
  %tobool = trunc i8 %30 to i1, !dbg !2303
  br i1 %tobool, label %if.then, label %if.end, !dbg !2304

if.then:                                          ; preds = %cond.end
  %31 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2305
  %shift27 = getelementptr inbounds %struct.mlxsw_item, %struct.mlxsw_item* %31, i32 0, i32 3, !dbg !2306
  %32 = load i8, i8* %shift27, align 2, !dbg !2306
  %conv28 = zext i8 %32 to i32, !dbg !2305
  %33 = load i32, i32* %tmp, align 4, !dbg !2307
  %shl29 = shl i32 %33, %conv28, !dbg !2307
  store i32 %shl29, i32* %tmp, align 4, !dbg !2307
  br label %if.end, !dbg !2308

if.end:                                           ; preds = %if.then, %cond.end
  %34 = load i32, i32* %tmp, align 4, !dbg !2309
  ret i32 %34, !dbg !2310
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @__mlxsw_item_data(i8* %buf, %struct.mlxsw_item* %item, i16 zeroext %index) #0 !dbg !2311 {
entry:
  %buf.addr = alloca i8*, align 8
  %item.addr = alloca %struct.mlxsw_item*, align 8
  %index.addr = alloca i16, align 2
  %offset = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2314, metadata !DIExpression()), !dbg !2315
  store %struct.mlxsw_item* %item, %struct.mlxsw_item** %item.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlxsw_item** %item.addr, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i16 %index, i16* %index.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %index.addr, metadata !2318, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2320, metadata !DIExpression()), !dbg !2321
  %0 = load %struct.mlxsw_item*, %struct.mlxsw_item** %item.addr, align 8, !dbg !2322
  %1 = load i16, i16* %index.addr, align 2, !dbg !2323
  %call = call i32 @__mlxsw_item_offset(%struct.mlxsw_item* %0, i16 zeroext %1, i64 1) #8, !dbg !2324
  store i32 %call, i32* %offset, align 4, !dbg !2321
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2325
  %3 = load i32, i32* %offset, align 4, !dbg !2326
  %idxprom = zext i32 %3 to i64, !dbg !2325
  %arrayidx = getelementptr i8, i8* %2, i64 %idxprom, !dbg !2325
  ret i8* %arrayidx, !dbg !2327
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mlxsw_afk_element_infos", scope: !2, file: !3, line: 19, type: !142, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxsw/core_acl_flex_keys.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !35, !39, !46}
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
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !40, line: 305, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 10, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!51 = !{!52, !54, !55, !62, !64, !72, !129, !133, !136, !137, !140, !138}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !53, line: 148, baseType: !7)
!53 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !53, line: 178, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !58, file: !53, line: 179, baseType: !57, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !58, file: !53, line: 179, baseType: !57, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_key_info", file: !3, line: 104, size: 1088, elements: !66)
!66 = !{!67, !68, !69, !70, !75, !83}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !65, file: !3, line: 105, baseType: !58, size: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !65, file: !3, line: 106, baseType: !7, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_count", scope: !65, file: !3, line: 107, baseType: !7, size: 32, offset: 160)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "element_to_block", scope: !65, file: !3, line: 108, baseType: !71, size: 800, offset: 192)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 800, elements: !73)
!72 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!73 = !{!74}
!74 = !DISubrange(count: 25)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "elusage", scope: !65, file: !3, line: 111, baseType: !76, size: 64, offset: 1024)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_element_usage", file: !6, line: 127, size: 64, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !76, file: !6, line: 128, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !81)
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !65, file: !3, line: 112, baseType: !84, offset: 1088)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, elements: !127)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_block", file: !6, line: 114, size: 192, elements: !88)
!88 = !{!89, !95, !126}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !87, file: !6, line: 115, baseType: !90, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !91, line: 19, baseType: !92)
!91 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !93, line: 24, baseType: !94)
!93 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!94 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "instances", scope: !87, file: !6, line: 116, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_element_inst", file: !6, line: 74, size: 320, elements: !98)
!98 = !{!99, !100, !101, !124, !125}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !97, file: !6, line: 75, baseType: !5, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !6, line: 76, baseType: !35, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !97, file: !6, line: 77, baseType: !102, size: 192, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_item", file: !103, line: 11, size: 192, elements: !104)
!103 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlxsw/item.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !108, !109, !111, !112, !115, !120}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !102, file: !103, line: 12, baseType: !94, size: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !102, file: !103, line: 13, baseType: !107, size: 16, offset: 16)
!107 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "in_step_offset", scope: !102, file: !103, line: 14, baseType: !94, size: 16, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !102, file: !103, line: 15, baseType: !110, size: 8, offset: 48)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "element_size", scope: !102, file: !103, line: 16, baseType: !110, size: 8, offset: 56)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "no_real_shift", scope: !102, file: !103, line: 17, baseType: !113, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !53, line: 30, baseType: !114)
!114 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !102, file: !103, line: 21, baseType: !116, size: 16, offset: 80)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !103, line: 18, size: 16, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !116, file: !103, line: 19, baseType: !110, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !116, file: !103, line: 20, baseType: !94, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 22, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "u32_key_diff", scope: !97, file: !6, line: 78, baseType: !72, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_size_check", scope: !97, file: !6, line: 81, baseType: !113, size: 8, offset: 288)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "instances_count", scope: !87, file: !6, line: 117, baseType: !7, size: 32, offset: 128)
!127 = !{!128}
!128 = !DISubrange(count: -1)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 55, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !131, line: 72, baseType: !132)
!131 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !131, line: 16, baseType: !80)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!135 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !139, line: 32, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !93, line: 27, baseType: !7)
!141 = !{!0}
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 6400, elements: !73)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_element_info", file: !6, line: 46, size: 256, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !144, file: !6, line: 47, baseType: !5, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !144, file: !6, line: 48, baseType: !35, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !144, file: !6, line: 49, baseType: !102, size: 192, offset: 64)
!149 = !{i32 7, !"Dwarf Version", i32 4}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"Code Model", i32 2}
!153 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!154 = distinct !DISubprogram(name: "mlxsw_afk_create", scope: !3, file: !3, line: 79, type: !155, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!155 = !DISubroutineType(types: !156)
!156 = !{!157, !7, !163}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk", file: !3, line: 47, size: 384, elements: !159)
!159 = !{!160, !161, !162, !178, !179}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "key_info_list", scope: !158, file: !3, line: 48, baseType: !58, size: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "max_blocks", scope: !158, file: !3, line: 49, baseType: !7, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !158, file: !3, line: 50, baseType: !163, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_ops", file: !6, line: 174, size: 256, elements: !166)
!166 = !{!167, !168, !169, !174}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !165, file: !6, line: 175, baseType: !85, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_count", scope: !165, file: !6, line: 176, baseType: !7, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "encode_block", scope: !165, file: !6, line: 177, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173, !72, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "clear_block", scope: !165, file: !6, line: 178, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !173, !72}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !158, file: !3, line: 51, baseType: !85, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_count", scope: !158, file: !3, line: 52, baseType: !7, size: 32, offset: 320)
!180 = !{}
!181 = !DILocalVariable(name: "max_blocks", arg: 1, scope: !154, file: !3, line: 79, type: !7)
!182 = !DILocation(line: 79, column: 49, scope: !154)
!183 = !DILocalVariable(name: "ops", arg: 2, scope: !154, file: !3, line: 80, type: !163)
!184 = !DILocation(line: 80, column: 36, scope: !154)
!185 = !DILocalVariable(name: "mlxsw_afk", scope: !154, file: !3, line: 82, type: !157)
!186 = !DILocation(line: 82, column: 20, scope: !154)
!187 = !DILocation(line: 84, column: 14, scope: !154)
!188 = !DILocation(line: 84, column: 12, scope: !154)
!189 = !DILocation(line: 85, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !154, file: !3, line: 85, column: 6)
!191 = !DILocation(line: 85, column: 6, scope: !154)
!192 = !DILocation(line: 86, column: 3, scope: !190)
!193 = !DILocation(line: 87, column: 18, scope: !154)
!194 = !DILocation(line: 87, column: 29, scope: !154)
!195 = !DILocation(line: 87, column: 2, scope: !154)
!196 = !DILocation(line: 88, column: 26, scope: !154)
!197 = !DILocation(line: 88, column: 2, scope: !154)
!198 = !DILocation(line: 88, column: 13, scope: !154)
!199 = !DILocation(line: 88, column: 24, scope: !154)
!200 = !DILocation(line: 89, column: 19, scope: !154)
!201 = !DILocation(line: 89, column: 2, scope: !154)
!202 = !DILocation(line: 89, column: 13, scope: !154)
!203 = !DILocation(line: 89, column: 17, scope: !154)
!204 = !DILocation(line: 90, column: 22, scope: !154)
!205 = !DILocation(line: 90, column: 27, scope: !154)
!206 = !DILocation(line: 90, column: 2, scope: !154)
!207 = !DILocation(line: 90, column: 13, scope: !154)
!208 = !DILocation(line: 90, column: 20, scope: !154)
!209 = !DILocation(line: 91, column: 28, scope: !154)
!210 = !DILocation(line: 91, column: 33, scope: !154)
!211 = !DILocation(line: 91, column: 2, scope: !154)
!212 = !DILocation(line: 91, column: 13, scope: !154)
!213 = !DILocation(line: 91, column: 26, scope: !154)
!214 = !DILocalVariable(name: "__ret_warn_on", scope: !215, file: !3, line: 92, type: !72)
!215 = distinct !DILexicalBlock(scope: !154, file: !3, line: 92, column: 2)
!216 = !DILocation(line: 92, column: 2, scope: !215)
!217 = !DILocation(line: 92, column: 2, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !3, line: 92, column: 2)
!219 = !DILocation(line: 92, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !218, file: !3, line: 92, column: 2)
!221 = !DILocation(line: 92, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !3, line: 92, column: 2)
!223 = !DILocation(line: 92, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 92, column: 2)
!225 = !{i32 -2144573085, i32 -2144573056, i32 -2144573010, i32 -2144572952, i32 -2144572898, i32 -2144572844, i32 -2144572789, i32 -2144572758}
!226 = !DILocation(line: 92, column: 2, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !3, line: 92, column: 2)
!228 = !{i32 -2144572321, i32 -2144572314, i32 -2144572262, i32 -2144572231, i32 -2144572201}
!229 = !DILocation(line: 92, column: 2, scope: !230)
!230 = distinct !DILexicalBlock(scope: !220, file: !3, line: 92, column: 2)
!231 = !DILocation(line: 93, column: 9, scope: !154)
!232 = !DILocation(line: 93, column: 2, scope: !154)
!233 = !DILocation(line: 94, column: 1, scope: !154)
!234 = distinct !DISubprogram(name: "kzalloc", scope: !40, file: !40, line: 662, type: !235, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!235 = !DISubroutineType(types: !236)
!236 = !{!54, !129, !52}
!237 = !DILocalVariable(name: "s", arg: 1, scope: !238, file: !40, line: 445, type: !241)
!238 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !40, file: !40, line: 445, type: !239, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!239 = !DISubroutineType(types: !240)
!240 = !{!54, !241, !52, !129}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !243, line: 117, flags: DIFlagFwdDecl)
!243 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = !DILocation(line: 445, column: 72, scope: !238, inlinedAt: !245)
!245 = distinct !DILocation(line: 552, column: 10, scope: !246, inlinedAt: !249)
!246 = distinct !DILexicalBlock(scope: !247, file: !40, line: 540, column: 34)
!247 = distinct !DILexicalBlock(scope: !248, file: !40, line: 540, column: 6)
!248 = distinct !DISubprogram(name: "kmalloc", scope: !40, file: !40, line: 538, type: !235, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!249 = distinct !DILocation(line: 664, column: 9, scope: !234)
!250 = !DILocalVariable(name: "flags", arg: 2, scope: !238, file: !40, line: 446, type: !52)
!251 = !DILocation(line: 446, column: 9, scope: !238, inlinedAt: !245)
!252 = !DILocalVariable(name: "size", arg: 3, scope: !238, file: !40, line: 446, type: !129)
!253 = !DILocation(line: 446, column: 23, scope: !238, inlinedAt: !245)
!254 = !DILocalVariable(name: "ret", scope: !238, file: !40, line: 448, type: !54)
!255 = !DILocation(line: 448, column: 8, scope: !238, inlinedAt: !245)
!256 = !DILocalVariable(name: "flags", arg: 1, scope: !257, file: !40, line: 318, type: !52)
!257 = distinct !DISubprogram(name: "kmalloc_type", scope: !40, file: !40, line: 318, type: !258, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!258 = !DISubroutineType(types: !259)
!259 = !{!39, !52}
!260 = !DILocation(line: 318, column: 67, scope: !257, inlinedAt: !261)
!261 = distinct !DILocation(line: 553, column: 20, scope: !246, inlinedAt: !249)
!262 = !DILocalVariable(name: "size", arg: 1, scope: !263, file: !40, line: 346, type: !129)
!263 = distinct !DISubprogram(name: "kmalloc_index", scope: !40, file: !40, line: 346, type: !264, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!264 = !DISubroutineType(types: !265)
!265 = !{!7, !129}
!266 = !DILocation(line: 346, column: 58, scope: !263, inlinedAt: !267)
!267 = distinct !DILocation(line: 547, column: 11, scope: !246, inlinedAt: !249)
!268 = !DILocalVariable(name: "size", arg: 1, scope: !269, file: !40, line: 472, type: !129)
!269 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !40, file: !40, line: 472, type: !270, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!270 = !DISubroutineType(types: !271)
!271 = !{!54, !129, !52, !7}
!272 = !DILocation(line: 472, column: 28, scope: !269, inlinedAt: !273)
!273 = distinct !DILocation(line: 481, column: 9, scope: !274, inlinedAt: !275)
!274 = distinct !DISubprogram(name: "kmalloc_large", scope: !40, file: !40, line: 478, type: !235, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!275 = distinct !DILocation(line: 545, column: 11, scope: !276, inlinedAt: !249)
!276 = distinct !DILexicalBlock(scope: !246, file: !40, line: 544, column: 7)
!277 = !DILocalVariable(name: "flags", arg: 2, scope: !269, file: !40, line: 472, type: !52)
!278 = !DILocation(line: 472, column: 40, scope: !269, inlinedAt: !273)
!279 = !DILocalVariable(name: "order", arg: 3, scope: !269, file: !40, line: 472, type: !7)
!280 = !DILocation(line: 472, column: 60, scope: !269, inlinedAt: !273)
!281 = !DILocalVariable(name: "size", arg: 1, scope: !274, file: !40, line: 478, type: !129)
!282 = !DILocation(line: 478, column: 51, scope: !274, inlinedAt: !275)
!283 = !DILocalVariable(name: "flags", arg: 2, scope: !274, file: !40, line: 478, type: !52)
!284 = !DILocation(line: 478, column: 63, scope: !274, inlinedAt: !275)
!285 = !DILocalVariable(name: "order", scope: !274, file: !40, line: 480, type: !7)
!286 = !DILocation(line: 480, column: 15, scope: !274, inlinedAt: !275)
!287 = !DILocalVariable(name: "size", arg: 1, scope: !248, file: !40, line: 538, type: !129)
!288 = !DILocation(line: 538, column: 45, scope: !248, inlinedAt: !249)
!289 = !DILocalVariable(name: "flags", arg: 2, scope: !248, file: !40, line: 538, type: !52)
!290 = !DILocation(line: 538, column: 57, scope: !248, inlinedAt: !249)
!291 = !DILocalVariable(name: "index", scope: !246, file: !40, line: 542, type: !7)
!292 = !DILocation(line: 542, column: 16, scope: !246, inlinedAt: !249)
!293 = !DILocalVariable(name: "size", arg: 1, scope: !234, file: !40, line: 662, type: !129)
!294 = !DILocation(line: 662, column: 36, scope: !234)
!295 = !DILocalVariable(name: "flags", arg: 2, scope: !234, file: !40, line: 662, type: !52)
!296 = !DILocation(line: 662, column: 48, scope: !234)
!297 = !DILocation(line: 664, column: 17, scope: !234)
!298 = !DILocation(line: 664, column: 23, scope: !234)
!299 = !DILocation(line: 664, column: 29, scope: !234)
!300 = !DILocation(line: 540, column: 27, scope: !247, inlinedAt: !249)
!301 = !DILocation(line: 540, column: 6, scope: !247, inlinedAt: !249)
!302 = !DILocation(line: 540, column: 6, scope: !248, inlinedAt: !249)
!303 = !DILocation(line: 544, column: 7, scope: !276, inlinedAt: !249)
!304 = !DILocation(line: 544, column: 12, scope: !276, inlinedAt: !249)
!305 = !DILocation(line: 544, column: 7, scope: !246, inlinedAt: !249)
!306 = !DILocation(line: 545, column: 25, scope: !276, inlinedAt: !249)
!307 = !DILocation(line: 545, column: 31, scope: !276, inlinedAt: !249)
!308 = !DILocation(line: 480, column: 33, scope: !274, inlinedAt: !275)
!309 = !DILocation(line: 480, column: 23, scope: !274, inlinedAt: !275)
!310 = !DILocation(line: 481, column: 29, scope: !274, inlinedAt: !275)
!311 = !DILocation(line: 481, column: 35, scope: !274, inlinedAt: !275)
!312 = !DILocation(line: 481, column: 42, scope: !274, inlinedAt: !275)
!313 = !DILocation(line: 474, column: 23, scope: !269, inlinedAt: !273)
!314 = !DILocation(line: 474, column: 29, scope: !269, inlinedAt: !273)
!315 = !DILocation(line: 474, column: 36, scope: !269, inlinedAt: !273)
!316 = !DILocation(line: 474, column: 9, scope: !269, inlinedAt: !273)
!317 = !DILocation(line: 545, column: 4, scope: !276, inlinedAt: !249)
!318 = !DILocation(line: 547, column: 25, scope: !246, inlinedAt: !249)
!319 = !DILocation(line: 348, column: 7, scope: !320, inlinedAt: !267)
!320 = distinct !DILexicalBlock(scope: !263, file: !40, line: 348, column: 6)
!321 = !DILocation(line: 348, column: 6, scope: !263, inlinedAt: !267)
!322 = !DILocation(line: 349, column: 3, scope: !320, inlinedAt: !267)
!323 = !DILocation(line: 351, column: 6, scope: !324, inlinedAt: !267)
!324 = distinct !DILexicalBlock(scope: !263, file: !40, line: 351, column: 6)
!325 = !DILocation(line: 351, column: 11, scope: !324, inlinedAt: !267)
!326 = !DILocation(line: 351, column: 6, scope: !263, inlinedAt: !267)
!327 = !DILocation(line: 352, column: 3, scope: !324, inlinedAt: !267)
!328 = !DILocation(line: 354, column: 32, scope: !329, inlinedAt: !267)
!329 = distinct !DILexicalBlock(scope: !263, file: !40, line: 354, column: 6)
!330 = !DILocation(line: 354, column: 37, scope: !329, inlinedAt: !267)
!331 = !DILocation(line: 354, column: 42, scope: !329, inlinedAt: !267)
!332 = !DILocation(line: 354, column: 45, scope: !329, inlinedAt: !267)
!333 = !DILocation(line: 354, column: 50, scope: !329, inlinedAt: !267)
!334 = !DILocation(line: 354, column: 6, scope: !263, inlinedAt: !267)
!335 = !DILocation(line: 355, column: 3, scope: !329, inlinedAt: !267)
!336 = !DILocation(line: 356, column: 32, scope: !337, inlinedAt: !267)
!337 = distinct !DILexicalBlock(scope: !263, file: !40, line: 356, column: 6)
!338 = !DILocation(line: 356, column: 37, scope: !337, inlinedAt: !267)
!339 = !DILocation(line: 356, column: 43, scope: !337, inlinedAt: !267)
!340 = !DILocation(line: 356, column: 46, scope: !337, inlinedAt: !267)
!341 = !DILocation(line: 356, column: 51, scope: !337, inlinedAt: !267)
!342 = !DILocation(line: 356, column: 6, scope: !263, inlinedAt: !267)
!343 = !DILocation(line: 357, column: 3, scope: !337, inlinedAt: !267)
!344 = !DILocation(line: 358, column: 6, scope: !345, inlinedAt: !267)
!345 = distinct !DILexicalBlock(scope: !263, file: !40, line: 358, column: 6)
!346 = !DILocation(line: 358, column: 11, scope: !345, inlinedAt: !267)
!347 = !DILocation(line: 358, column: 6, scope: !263, inlinedAt: !267)
!348 = !DILocation(line: 358, column: 26, scope: !345, inlinedAt: !267)
!349 = !DILocation(line: 359, column: 6, scope: !350, inlinedAt: !267)
!350 = distinct !DILexicalBlock(scope: !263, file: !40, line: 359, column: 6)
!351 = !DILocation(line: 359, column: 11, scope: !350, inlinedAt: !267)
!352 = !DILocation(line: 359, column: 6, scope: !263, inlinedAt: !267)
!353 = !DILocation(line: 359, column: 26, scope: !350, inlinedAt: !267)
!354 = !DILocation(line: 360, column: 6, scope: !355, inlinedAt: !267)
!355 = distinct !DILexicalBlock(scope: !263, file: !40, line: 360, column: 6)
!356 = !DILocation(line: 360, column: 11, scope: !355, inlinedAt: !267)
!357 = !DILocation(line: 360, column: 6, scope: !263, inlinedAt: !267)
!358 = !DILocation(line: 360, column: 26, scope: !355, inlinedAt: !267)
!359 = !DILocation(line: 361, column: 6, scope: !360, inlinedAt: !267)
!360 = distinct !DILexicalBlock(scope: !263, file: !40, line: 361, column: 6)
!361 = !DILocation(line: 361, column: 11, scope: !360, inlinedAt: !267)
!362 = !DILocation(line: 361, column: 6, scope: !263, inlinedAt: !267)
!363 = !DILocation(line: 361, column: 26, scope: !360, inlinedAt: !267)
!364 = !DILocation(line: 362, column: 6, scope: !365, inlinedAt: !267)
!365 = distinct !DILexicalBlock(scope: !263, file: !40, line: 362, column: 6)
!366 = !DILocation(line: 362, column: 11, scope: !365, inlinedAt: !267)
!367 = !DILocation(line: 362, column: 6, scope: !263, inlinedAt: !267)
!368 = !DILocation(line: 362, column: 26, scope: !365, inlinedAt: !267)
!369 = !DILocation(line: 363, column: 6, scope: !370, inlinedAt: !267)
!370 = distinct !DILexicalBlock(scope: !263, file: !40, line: 363, column: 6)
!371 = !DILocation(line: 363, column: 11, scope: !370, inlinedAt: !267)
!372 = !DILocation(line: 363, column: 6, scope: !263, inlinedAt: !267)
!373 = !DILocation(line: 363, column: 26, scope: !370, inlinedAt: !267)
!374 = !DILocation(line: 364, column: 6, scope: !375, inlinedAt: !267)
!375 = distinct !DILexicalBlock(scope: !263, file: !40, line: 364, column: 6)
!376 = !DILocation(line: 364, column: 11, scope: !375, inlinedAt: !267)
!377 = !DILocation(line: 364, column: 6, scope: !263, inlinedAt: !267)
!378 = !DILocation(line: 364, column: 26, scope: !375, inlinedAt: !267)
!379 = !DILocation(line: 365, column: 6, scope: !380, inlinedAt: !267)
!380 = distinct !DILexicalBlock(scope: !263, file: !40, line: 365, column: 6)
!381 = !DILocation(line: 365, column: 11, scope: !380, inlinedAt: !267)
!382 = !DILocation(line: 365, column: 6, scope: !263, inlinedAt: !267)
!383 = !DILocation(line: 365, column: 26, scope: !380, inlinedAt: !267)
!384 = !DILocation(line: 366, column: 6, scope: !385, inlinedAt: !267)
!385 = distinct !DILexicalBlock(scope: !263, file: !40, line: 366, column: 6)
!386 = !DILocation(line: 366, column: 11, scope: !385, inlinedAt: !267)
!387 = !DILocation(line: 366, column: 6, scope: !263, inlinedAt: !267)
!388 = !DILocation(line: 366, column: 26, scope: !385, inlinedAt: !267)
!389 = !DILocation(line: 367, column: 6, scope: !390, inlinedAt: !267)
!390 = distinct !DILexicalBlock(scope: !263, file: !40, line: 367, column: 6)
!391 = !DILocation(line: 367, column: 11, scope: !390, inlinedAt: !267)
!392 = !DILocation(line: 367, column: 6, scope: !263, inlinedAt: !267)
!393 = !DILocation(line: 367, column: 26, scope: !390, inlinedAt: !267)
!394 = !DILocation(line: 368, column: 6, scope: !395, inlinedAt: !267)
!395 = distinct !DILexicalBlock(scope: !263, file: !40, line: 368, column: 6)
!396 = !DILocation(line: 368, column: 11, scope: !395, inlinedAt: !267)
!397 = !DILocation(line: 368, column: 6, scope: !263, inlinedAt: !267)
!398 = !DILocation(line: 368, column: 26, scope: !395, inlinedAt: !267)
!399 = !DILocation(line: 369, column: 6, scope: !400, inlinedAt: !267)
!400 = distinct !DILexicalBlock(scope: !263, file: !40, line: 369, column: 6)
!401 = !DILocation(line: 369, column: 11, scope: !400, inlinedAt: !267)
!402 = !DILocation(line: 369, column: 6, scope: !263, inlinedAt: !267)
!403 = !DILocation(line: 369, column: 26, scope: !400, inlinedAt: !267)
!404 = !DILocation(line: 370, column: 6, scope: !405, inlinedAt: !267)
!405 = distinct !DILexicalBlock(scope: !263, file: !40, line: 370, column: 6)
!406 = !DILocation(line: 370, column: 11, scope: !405, inlinedAt: !267)
!407 = !DILocation(line: 370, column: 6, scope: !263, inlinedAt: !267)
!408 = !DILocation(line: 370, column: 26, scope: !405, inlinedAt: !267)
!409 = !DILocation(line: 371, column: 6, scope: !410, inlinedAt: !267)
!410 = distinct !DILexicalBlock(scope: !263, file: !40, line: 371, column: 6)
!411 = !DILocation(line: 371, column: 11, scope: !410, inlinedAt: !267)
!412 = !DILocation(line: 371, column: 6, scope: !263, inlinedAt: !267)
!413 = !DILocation(line: 371, column: 26, scope: !410, inlinedAt: !267)
!414 = !DILocation(line: 372, column: 6, scope: !415, inlinedAt: !267)
!415 = distinct !DILexicalBlock(scope: !263, file: !40, line: 372, column: 6)
!416 = !DILocation(line: 372, column: 11, scope: !415, inlinedAt: !267)
!417 = !DILocation(line: 372, column: 6, scope: !263, inlinedAt: !267)
!418 = !DILocation(line: 372, column: 26, scope: !415, inlinedAt: !267)
!419 = !DILocation(line: 373, column: 6, scope: !420, inlinedAt: !267)
!420 = distinct !DILexicalBlock(scope: !263, file: !40, line: 373, column: 6)
!421 = !DILocation(line: 373, column: 11, scope: !420, inlinedAt: !267)
!422 = !DILocation(line: 373, column: 6, scope: !263, inlinedAt: !267)
!423 = !DILocation(line: 373, column: 26, scope: !420, inlinedAt: !267)
!424 = !DILocation(line: 374, column: 6, scope: !425, inlinedAt: !267)
!425 = distinct !DILexicalBlock(scope: !263, file: !40, line: 374, column: 6)
!426 = !DILocation(line: 374, column: 11, scope: !425, inlinedAt: !267)
!427 = !DILocation(line: 374, column: 6, scope: !263, inlinedAt: !267)
!428 = !DILocation(line: 374, column: 26, scope: !425, inlinedAt: !267)
!429 = !DILocation(line: 375, column: 6, scope: !430, inlinedAt: !267)
!430 = distinct !DILexicalBlock(scope: !263, file: !40, line: 375, column: 6)
!431 = !DILocation(line: 375, column: 11, scope: !430, inlinedAt: !267)
!432 = !DILocation(line: 375, column: 6, scope: !263, inlinedAt: !267)
!433 = !DILocation(line: 375, column: 27, scope: !430, inlinedAt: !267)
!434 = !DILocation(line: 376, column: 6, scope: !435, inlinedAt: !267)
!435 = distinct !DILexicalBlock(scope: !263, file: !40, line: 376, column: 6)
!436 = !DILocation(line: 376, column: 11, scope: !435, inlinedAt: !267)
!437 = !DILocation(line: 376, column: 6, scope: !263, inlinedAt: !267)
!438 = !DILocation(line: 376, column: 32, scope: !435, inlinedAt: !267)
!439 = !DILocation(line: 377, column: 6, scope: !440, inlinedAt: !267)
!440 = distinct !DILexicalBlock(scope: !263, file: !40, line: 377, column: 6)
!441 = !DILocation(line: 377, column: 11, scope: !440, inlinedAt: !267)
!442 = !DILocation(line: 377, column: 6, scope: !263, inlinedAt: !267)
!443 = !DILocation(line: 377, column: 32, scope: !440, inlinedAt: !267)
!444 = !DILocation(line: 378, column: 6, scope: !445, inlinedAt: !267)
!445 = distinct !DILexicalBlock(scope: !263, file: !40, line: 378, column: 6)
!446 = !DILocation(line: 378, column: 11, scope: !445, inlinedAt: !267)
!447 = !DILocation(line: 378, column: 6, scope: !263, inlinedAt: !267)
!448 = !DILocation(line: 378, column: 32, scope: !445, inlinedAt: !267)
!449 = !DILocation(line: 379, column: 6, scope: !450, inlinedAt: !267)
!450 = distinct !DILexicalBlock(scope: !263, file: !40, line: 379, column: 6)
!451 = !DILocation(line: 379, column: 11, scope: !450, inlinedAt: !267)
!452 = !DILocation(line: 379, column: 6, scope: !263, inlinedAt: !267)
!453 = !DILocation(line: 379, column: 33, scope: !450, inlinedAt: !267)
!454 = !DILocation(line: 380, column: 6, scope: !455, inlinedAt: !267)
!455 = distinct !DILexicalBlock(scope: !263, file: !40, line: 380, column: 6)
!456 = !DILocation(line: 380, column: 11, scope: !455, inlinedAt: !267)
!457 = !DILocation(line: 380, column: 6, scope: !263, inlinedAt: !267)
!458 = !DILocation(line: 380, column: 33, scope: !455, inlinedAt: !267)
!459 = !DILocation(line: 381, column: 6, scope: !460, inlinedAt: !267)
!460 = distinct !DILexicalBlock(scope: !263, file: !40, line: 381, column: 6)
!461 = !DILocation(line: 381, column: 11, scope: !460, inlinedAt: !267)
!462 = !DILocation(line: 381, column: 6, scope: !263, inlinedAt: !267)
!463 = !DILocation(line: 381, column: 33, scope: !460, inlinedAt: !267)
!464 = !DILocation(line: 382, column: 2, scope: !465, inlinedAt: !267)
!465 = distinct !DILexicalBlock(scope: !466, file: !40, line: 382, column: 2)
!466 = distinct !DILexicalBlock(scope: !263, file: !40, line: 382, column: 2)
!467 = !{i32 -2144640296, i32 -2144640267, i32 -2144640221, i32 -2144640163, i32 -2144640109, i32 -2144640055, i32 -2144640000, i32 -2144639969}
!468 = !DILocation(line: 382, column: 2, scope: !469, inlinedAt: !267)
!469 = distinct !DILexicalBlock(scope: !470, file: !40, line: 382, column: 2)
!470 = distinct !DILexicalBlock(scope: !466, file: !40, line: 382, column: 2)
!471 = !{i32 -2144639526, i32 -2144639519, i32 -2144639465, i32 -2144639434, i32 -2144639404}
!472 = !DILocation(line: 382, column: 2, scope: !470, inlinedAt: !267)
!473 = !DILocation(line: 386, column: 1, scope: !263, inlinedAt: !267)
!474 = !DILocation(line: 547, column: 9, scope: !246, inlinedAt: !249)
!475 = !DILocation(line: 549, column: 8, scope: !476, inlinedAt: !249)
!476 = distinct !DILexicalBlock(scope: !246, file: !40, line: 549, column: 7)
!477 = !DILocation(line: 549, column: 7, scope: !246, inlinedAt: !249)
!478 = !DILocation(line: 550, column: 4, scope: !476, inlinedAt: !249)
!479 = !DILocation(line: 553, column: 33, scope: !246, inlinedAt: !249)
!480 = !DILocation(line: 325, column: 6, scope: !481, inlinedAt: !261)
!481 = distinct !DILexicalBlock(scope: !257, file: !40, line: 325, column: 6)
!482 = !DILocation(line: 325, column: 6, scope: !257, inlinedAt: !261)
!483 = !DILocation(line: 326, column: 3, scope: !481, inlinedAt: !261)
!484 = !DILocation(line: 332, column: 9, scope: !257, inlinedAt: !261)
!485 = !DILocation(line: 332, column: 15, scope: !257, inlinedAt: !261)
!486 = !DILocation(line: 332, column: 2, scope: !257, inlinedAt: !261)
!487 = !DILocation(line: 336, column: 1, scope: !257, inlinedAt: !261)
!488 = !DILocation(line: 553, column: 5, scope: !246, inlinedAt: !249)
!489 = !DILocation(line: 553, column: 41, scope: !246, inlinedAt: !249)
!490 = !DILocation(line: 554, column: 5, scope: !246, inlinedAt: !249)
!491 = !DILocation(line: 554, column: 12, scope: !246, inlinedAt: !249)
!492 = !DILocation(line: 448, column: 31, scope: !238, inlinedAt: !245)
!493 = !DILocation(line: 448, column: 34, scope: !238, inlinedAt: !245)
!494 = !DILocation(line: 448, column: 14, scope: !238, inlinedAt: !245)
!495 = !DILocation(line: 450, column: 22, scope: !238, inlinedAt: !245)
!496 = !DILocation(line: 450, column: 25, scope: !238, inlinedAt: !245)
!497 = !DILocation(line: 450, column: 30, scope: !238, inlinedAt: !245)
!498 = !DILocation(line: 450, column: 36, scope: !238, inlinedAt: !245)
!499 = !DILocation(line: 450, column: 8, scope: !238, inlinedAt: !245)
!500 = !DILocation(line: 450, column: 6, scope: !238, inlinedAt: !245)
!501 = !DILocation(line: 451, column: 9, scope: !238, inlinedAt: !245)
!502 = !DILocation(line: 552, column: 3, scope: !246, inlinedAt: !249)
!503 = !DILocation(line: 557, column: 19, scope: !248, inlinedAt: !249)
!504 = !DILocation(line: 557, column: 25, scope: !248, inlinedAt: !249)
!505 = !DILocation(line: 557, column: 9, scope: !248, inlinedAt: !249)
!506 = !DILocation(line: 557, column: 2, scope: !248, inlinedAt: !249)
!507 = !DILocation(line: 558, column: 1, scope: !248, inlinedAt: !249)
!508 = !DILocation(line: 664, column: 2, scope: !234)
!509 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !510, file: !510, line: 33, type: !511, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!510 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!511 = !DISubroutineType(types: !512)
!512 = !{null, !57}
!513 = !DILocalVariable(name: "list", arg: 1, scope: !509, file: !510, line: 33, type: !57)
!514 = !DILocation(line: 33, column: 53, scope: !509)
!515 = !DILocation(line: 35, column: 2, scope: !509)
!516 = !DILocation(line: 35, column: 2, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !510, line: 35, column: 2)
!518 = !DILocation(line: 35, column: 2, scope: !519)
!519 = distinct !DILexicalBlock(scope: !517, file: !510, line: 35, column: 2)
!520 = !DILocation(line: 35, column: 2, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !510, line: 35, column: 2)
!522 = !DILocation(line: 36, column: 15, scope: !509)
!523 = !DILocation(line: 36, column: 2, scope: !509)
!524 = !DILocation(line: 36, column: 8, scope: !509)
!525 = !DILocation(line: 36, column: 13, scope: !509)
!526 = !DILocation(line: 37, column: 1, scope: !509)
!527 = distinct !DISubprogram(name: "mlxsw_afk_blocks_check", scope: !3, file: !3, line: 55, type: !528, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!528 = !DISubroutineType(types: !529)
!529 = !{!113, !157}
!530 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !527, file: !3, line: 55, type: !157)
!531 = !DILocation(line: 55, column: 54, scope: !527)
!532 = !DILocalVariable(name: "i", scope: !527, file: !3, line: 57, type: !72)
!533 = !DILocation(line: 57, column: 6, scope: !527)
!534 = !DILocalVariable(name: "j", scope: !527, file: !3, line: 58, type: !72)
!535 = !DILocation(line: 58, column: 6, scope: !527)
!536 = !DILocation(line: 60, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !527, file: !3, line: 60, column: 2)
!538 = !DILocation(line: 60, column: 7, scope: !537)
!539 = !DILocation(line: 60, column: 14, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !3, line: 60, column: 2)
!541 = !DILocation(line: 60, column: 18, scope: !540)
!542 = !DILocation(line: 60, column: 29, scope: !540)
!543 = !DILocation(line: 60, column: 16, scope: !540)
!544 = !DILocation(line: 60, column: 2, scope: !537)
!545 = !DILocalVariable(name: "block", scope: !546, file: !3, line: 61, type: !85)
!546 = distinct !DILexicalBlock(scope: !540, file: !3, line: 60, column: 48)
!547 = !DILocation(line: 61, column: 33, scope: !546)
!548 = !DILocation(line: 61, column: 42, scope: !546)
!549 = !DILocation(line: 61, column: 53, scope: !546)
!550 = !DILocation(line: 61, column: 60, scope: !546)
!551 = !DILocation(line: 63, column: 10, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !3, line: 63, column: 3)
!553 = !DILocation(line: 63, column: 8, scope: !552)
!554 = !DILocation(line: 63, column: 15, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 63, column: 3)
!556 = !DILocation(line: 63, column: 19, scope: !555)
!557 = !DILocation(line: 63, column: 26, scope: !555)
!558 = !DILocation(line: 63, column: 17, scope: !555)
!559 = !DILocation(line: 63, column: 3, scope: !552)
!560 = !DILocalVariable(name: "elinfo", scope: !561, file: !3, line: 64, type: !562)
!561 = distinct !DILexicalBlock(scope: !555, file: !3, line: 63, column: 48)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!563 = !DILocation(line: 64, column: 41, scope: !561)
!564 = !DILocalVariable(name: "elinst", scope: !561, file: !3, line: 65, type: !96)
!565 = !DILocation(line: 65, column: 35, scope: !561)
!566 = !DILocation(line: 67, column: 14, scope: !561)
!567 = !DILocation(line: 67, column: 21, scope: !561)
!568 = !DILocation(line: 67, column: 31, scope: !561)
!569 = !DILocation(line: 67, column: 11, scope: !561)
!570 = !DILocation(line: 68, column: 38, scope: !561)
!571 = !DILocation(line: 68, column: 46, scope: !561)
!572 = !DILocation(line: 68, column: 14, scope: !561)
!573 = !DILocation(line: 68, column: 11, scope: !561)
!574 = !DILocation(line: 69, column: 8, scope: !575)
!575 = distinct !DILexicalBlock(scope: !561, file: !3, line: 69, column: 8)
!576 = !DILocation(line: 69, column: 16, scope: !575)
!577 = !DILocation(line: 69, column: 24, scope: !575)
!578 = !DILocation(line: 69, column: 32, scope: !575)
!579 = !DILocation(line: 69, column: 21, scope: !575)
!580 = !DILocation(line: 69, column: 37, scope: !575)
!581 = !DILocation(line: 70, column: 10, scope: !575)
!582 = !DILocation(line: 70, column: 18, scope: !575)
!583 = !DILocation(line: 70, column: 35, scope: !575)
!584 = !DILocation(line: 71, column: 9, scope: !575)
!585 = !DILocation(line: 71, column: 17, scope: !575)
!586 = !DILocation(line: 71, column: 22, scope: !575)
!587 = !DILocation(line: 71, column: 27, scope: !575)
!588 = !DILocation(line: 72, column: 9, scope: !575)
!589 = !DILocation(line: 72, column: 17, scope: !575)
!590 = !DILocation(line: 72, column: 22, scope: !575)
!591 = !DILocation(line: 72, column: 27, scope: !575)
!592 = !DILocation(line: 71, column: 32, scope: !575)
!593 = !DILocation(line: 69, column: 8, scope: !561)
!594 = !DILocation(line: 73, column: 5, scope: !575)
!595 = !DILocation(line: 74, column: 3, scope: !561)
!596 = !DILocation(line: 63, column: 44, scope: !555)
!597 = !DILocation(line: 63, column: 3, scope: !555)
!598 = distinct !{!598, !559, !599}
!599 = !DILocation(line: 74, column: 3, scope: !552)
!600 = !DILocation(line: 75, column: 2, scope: !546)
!601 = !DILocation(line: 60, column: 44, scope: !540)
!602 = !DILocation(line: 60, column: 2, scope: !540)
!603 = distinct !{!603, !544, !604}
!604 = !DILocation(line: 75, column: 2, scope: !537)
!605 = !DILocation(line: 76, column: 2, scope: !527)
!606 = !DILocation(line: 77, column: 1, scope: !527)
!607 = distinct !DISubprogram(name: "mlxsw_afk_destroy", scope: !3, file: !3, line: 97, type: !608, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !157}
!610 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !607, file: !3, line: 97, type: !157)
!611 = !DILocation(line: 97, column: 42, scope: !607)
!612 = !DILocalVariable(name: "__ret_warn_on", scope: !613, file: !3, line: 99, type: !72)
!613 = distinct !DILexicalBlock(scope: !607, file: !3, line: 99, column: 2)
!614 = !DILocation(line: 99, column: 2, scope: !613)
!615 = !DILocation(line: 99, column: 2, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !3, line: 99, column: 2)
!617 = !DILocation(line: 99, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !616, file: !3, line: 99, column: 2)
!619 = !DILocation(line: 99, column: 2, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !3, line: 99, column: 2)
!621 = !DILocation(line: 99, column: 2, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 99, column: 2)
!623 = !{i32 -2144571501, i32 -2144571472, i32 -2144571426, i32 -2144571368, i32 -2144571314, i32 -2144571260, i32 -2144571205, i32 -2144571174}
!624 = !DILocation(line: 99, column: 2, scope: !625)
!625 = distinct !DILexicalBlock(scope: !618, file: !3, line: 99, column: 2)
!626 = !{i32 -2144570737, i32 -2144570730, i32 -2144570678, i32 -2144570647, i32 -2144570617}
!627 = !DILocation(line: 99, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !618, file: !3, line: 99, column: 2)
!629 = !DILocation(line: 100, column: 8, scope: !607)
!630 = !DILocation(line: 100, column: 2, scope: !607)
!631 = !DILocation(line: 101, column: 1, scope: !607)
!632 = distinct !DISubprogram(name: "list_empty", scope: !510, file: !510, line: 280, type: !633, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!633 = !DISubroutineType(types: !634)
!634 = !{!72, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!637 = !DILocalVariable(name: "head", arg: 1, scope: !632, file: !510, line: 280, type: !635)
!638 = !DILocation(line: 280, column: 54, scope: !632)
!639 = !DILocation(line: 282, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !510, line: 282, column: 9)
!641 = !DILocation(line: 282, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !510, line: 282, column: 9)
!643 = !DILocation(line: 282, column: 34, scope: !632)
!644 = !DILocation(line: 282, column: 31, scope: !632)
!645 = !DILocation(line: 282, column: 2, scope: !632)
!646 = distinct !DISubprogram(name: "mlxsw_afk_key_info_get", scope: !3, file: !3, line: 302, type: !647, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!647 = !DISubroutineType(types: !648)
!648 = !{!64, !157, !649}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!650 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !646, file: !3, line: 302, type: !157)
!651 = !DILocation(line: 302, column: 42, scope: !646)
!652 = !DILocalVariable(name: "elusage", arg: 2, scope: !646, file: !3, line: 303, type: !649)
!653 = !DILocation(line: 303, column: 42, scope: !646)
!654 = !DILocalVariable(name: "key_info", scope: !646, file: !3, line: 305, type: !64)
!655 = !DILocation(line: 305, column: 29, scope: !646)
!656 = !DILocation(line: 307, column: 37, scope: !646)
!657 = !DILocation(line: 307, column: 48, scope: !646)
!658 = !DILocation(line: 307, column: 13, scope: !646)
!659 = !DILocation(line: 307, column: 11, scope: !646)
!660 = !DILocation(line: 308, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !646, file: !3, line: 308, column: 6)
!662 = !DILocation(line: 308, column: 6, scope: !646)
!663 = !DILocation(line: 309, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 308, column: 16)
!665 = !DILocation(line: 309, column: 13, scope: !664)
!666 = !DILocation(line: 309, column: 22, scope: !664)
!667 = !DILocation(line: 310, column: 10, scope: !664)
!668 = !DILocation(line: 310, column: 3, scope: !664)
!669 = !DILocation(line: 312, column: 35, scope: !646)
!670 = !DILocation(line: 312, column: 46, scope: !646)
!671 = !DILocation(line: 312, column: 9, scope: !646)
!672 = !DILocation(line: 312, column: 2, scope: !646)
!673 = !DILocation(line: 313, column: 1, scope: !646)
!674 = distinct !DISubprogram(name: "mlxsw_afk_key_info_find", scope: !3, file: !3, line: 123, type: !647, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!675 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !674, file: !3, line: 123, type: !157)
!676 = !DILocation(line: 123, column: 43, scope: !674)
!677 = !DILocalVariable(name: "elusage", arg: 2, scope: !674, file: !3, line: 124, type: !649)
!678 = !DILocation(line: 124, column: 36, scope: !674)
!679 = !DILocalVariable(name: "key_info", scope: !674, file: !3, line: 126, type: !64)
!680 = !DILocation(line: 126, column: 29, scope: !674)
!681 = !DILocalVariable(name: "__mptr", scope: !682, file: !3, line: 128, type: !54)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 128, column: 2)
!683 = distinct !DILexicalBlock(scope: !674, file: !3, line: 128, column: 2)
!684 = !DILocation(line: 128, column: 2, scope: !682)
!685 = !DILocation(line: 128, column: 2, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !3, line: 128, column: 2)
!687 = !DILocation(line: 128, column: 2, scope: !683)
!688 = !DILocation(line: 128, column: 2, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !3, line: 128, column: 2)
!690 = !DILocation(line: 129, column: 38, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 129, column: 7)
!692 = distinct !DILexicalBlock(scope: !689, file: !3, line: 128, column: 65)
!693 = !DILocation(line: 129, column: 48, scope: !691)
!694 = !DILocation(line: 129, column: 7, scope: !691)
!695 = !DILocation(line: 129, column: 7, scope: !692)
!696 = !DILocation(line: 130, column: 11, scope: !691)
!697 = !DILocation(line: 130, column: 4, scope: !691)
!698 = !DILocation(line: 131, column: 2, scope: !692)
!699 = !DILocalVariable(name: "__mptr", scope: !700, file: !3, line: 128, type: !54)
!700 = distinct !DILexicalBlock(scope: !689, file: !3, line: 128, column: 2)
!701 = !DILocation(line: 128, column: 2, scope: !700)
!702 = !DILocation(line: 128, column: 2, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 128, column: 2)
!704 = distinct !{!704, !687, !705}
!705 = !DILocation(line: 131, column: 2, scope: !683)
!706 = !DILocation(line: 132, column: 2, scope: !674)
!707 = !DILocation(line: 133, column: 1, scope: !674)
!708 = distinct !DISubprogram(name: "mlxsw_afk_key_info_create", scope: !3, file: !3, line: 273, type: !647, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!709 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !708, file: !3, line: 273, type: !157)
!710 = !DILocation(line: 273, column: 45, scope: !708)
!711 = !DILocalVariable(name: "elusage", arg: 2, scope: !708, file: !3, line: 274, type: !649)
!712 = !DILocation(line: 274, column: 38, scope: !708)
!713 = !DILocalVariable(name: "key_info", scope: !708, file: !3, line: 276, type: !64)
!714 = !DILocation(line: 276, column: 29, scope: !708)
!715 = !DILocalVariable(name: "err", scope: !708, file: !3, line: 277, type: !72)
!716 = !DILocation(line: 277, column: 6, scope: !708)
!717 = !DILocation(line: 279, column: 21, scope: !708)
!718 = !DILocation(line: 279, column: 13, scope: !708)
!719 = !DILocation(line: 279, column: 11, scope: !708)
!720 = !DILocation(line: 281, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !708, file: !3, line: 281, column: 6)
!722 = !DILocation(line: 281, column: 6, scope: !708)
!723 = !DILocation(line: 282, column: 10, scope: !721)
!724 = !DILocation(line: 282, column: 3, scope: !721)
!725 = !DILocation(line: 283, column: 25, scope: !708)
!726 = !DILocation(line: 283, column: 36, scope: !708)
!727 = !DILocation(line: 283, column: 46, scope: !708)
!728 = !DILocation(line: 283, column: 8, scope: !708)
!729 = !DILocation(line: 283, column: 6, scope: !708)
!730 = !DILocation(line: 284, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !708, file: !3, line: 284, column: 6)
!732 = !DILocation(line: 284, column: 6, scope: !708)
!733 = !DILocation(line: 285, column: 3, scope: !731)
!734 = !DILocation(line: 286, column: 12, scope: !708)
!735 = !DILocation(line: 286, column: 22, scope: !708)
!736 = !DILocation(line: 286, column: 29, scope: !708)
!737 = !DILocation(line: 286, column: 40, scope: !708)
!738 = !DILocation(line: 286, column: 2, scope: !708)
!739 = !DILocation(line: 287, column: 2, scope: !708)
!740 = !DILocation(line: 287, column: 12, scope: !708)
!741 = !DILocation(line: 287, column: 22, scope: !708)
!742 = !DILocation(line: 288, column: 9, scope: !708)
!743 = !DILocation(line: 288, column: 2, scope: !708)
!744 = !DILabel(scope: !708, name: "err_picker", file: !3, line: 290)
!745 = !DILocation(line: 290, column: 1, scope: !708)
!746 = !DILocation(line: 291, column: 8, scope: !708)
!747 = !DILocation(line: 291, column: 2, scope: !708)
!748 = !DILocation(line: 292, column: 17, scope: !708)
!749 = !DILocation(line: 292, column: 9, scope: !708)
!750 = !DILocation(line: 292, column: 2, scope: !708)
!751 = !DILocation(line: 293, column: 1, scope: !708)
!752 = distinct !DISubprogram(name: "mlxsw_afk_key_info_put", scope: !3, file: !3, line: 316, type: !753, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !64}
!755 = !DILocalVariable(name: "key_info", arg: 1, scope: !752, file: !3, line: 316, type: !64)
!756 = !DILocation(line: 316, column: 56, scope: !752)
!757 = !DILocation(line: 318, column: 8, scope: !758)
!758 = distinct !DILexicalBlock(scope: !752, file: !3, line: 318, column: 6)
!759 = !DILocation(line: 318, column: 18, scope: !758)
!760 = !DILocation(line: 318, column: 6, scope: !758)
!761 = !DILocation(line: 318, column: 6, scope: !752)
!762 = !DILocation(line: 319, column: 3, scope: !758)
!763 = !DILocation(line: 320, column: 29, scope: !752)
!764 = !DILocation(line: 320, column: 2, scope: !752)
!765 = !DILocation(line: 321, column: 1, scope: !752)
!766 = distinct !DISubprogram(name: "mlxsw_afk_key_info_destroy", scope: !3, file: !3, line: 295, type: !753, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!767 = !DILocalVariable(name: "key_info", arg: 1, scope: !766, file: !3, line: 295, type: !64)
!768 = !DILocation(line: 295, column: 67, scope: !766)
!769 = !DILocation(line: 297, column: 12, scope: !766)
!770 = !DILocation(line: 297, column: 22, scope: !766)
!771 = !DILocation(line: 297, column: 2, scope: !766)
!772 = !DILocation(line: 298, column: 8, scope: !766)
!773 = !DILocation(line: 298, column: 2, scope: !766)
!774 = !DILocation(line: 299, column: 1, scope: !766)
!775 = distinct !DISubprogram(name: "mlxsw_afk_key_info_subset", scope: !3, file: !3, line: 324, type: !776, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!776 = !DISubroutineType(types: !777)
!777 = !{!113, !64, !649}
!778 = !DILocalVariable(name: "key_info", arg: 1, scope: !775, file: !3, line: 324, type: !64)
!779 = !DILocation(line: 324, column: 59, scope: !775)
!780 = !DILocalVariable(name: "elusage", arg: 2, scope: !775, file: !3, line: 325, type: !649)
!781 = !DILocation(line: 325, column: 43, scope: !775)
!782 = !DILocation(line: 327, column: 40, scope: !775)
!783 = !DILocation(line: 327, column: 50, scope: !775)
!784 = !DILocation(line: 327, column: 60, scope: !775)
!785 = !DILocation(line: 327, column: 9, scope: !775)
!786 = !DILocation(line: 327, column: 2, scope: !775)
!787 = distinct !DISubprogram(name: "mlxsw_afk_element_usage_subset", scope: !6, file: !6, line: 160, type: !788, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!788 = !DISubroutineType(types: !789)
!789 = !{!113, !649, !649}
!790 = !DILocalVariable(name: "elusage_small", arg: 1, scope: !787, file: !6, line: 160, type: !649)
!791 = !DILocation(line: 160, column: 64, scope: !787)
!792 = !DILocalVariable(name: "elusage_big", arg: 2, scope: !787, file: !6, line: 161, type: !649)
!793 = !DILocation(line: 161, column: 43, scope: !787)
!794 = !DILocalVariable(name: "i", scope: !787, file: !6, line: 163, type: !72)
!795 = !DILocation(line: 163, column: 6, scope: !787)
!796 = !DILocation(line: 165, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !787, file: !6, line: 165, column: 2)
!798 = !DILocation(line: 165, column: 7, scope: !797)
!799 = !DILocation(line: 165, column: 14, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !6, line: 165, column: 2)
!801 = !DILocation(line: 165, column: 16, scope: !800)
!802 = !DILocation(line: 165, column: 2, scope: !797)
!803 = !DILocation(line: 166, column: 16, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !6, line: 166, column: 7)
!805 = !DILocation(line: 166, column: 19, scope: !804)
!806 = !DILocation(line: 166, column: 34, scope: !804)
!807 = !DILocation(line: 166, column: 7, scope: !804)
!808 = !DILocation(line: 166, column: 41, scope: !804)
!809 = !DILocation(line: 167, column: 17, scope: !804)
!810 = !DILocation(line: 167, column: 20, scope: !804)
!811 = !DILocation(line: 167, column: 33, scope: !804)
!812 = !DILocation(line: 167, column: 8, scope: !804)
!813 = !DILocation(line: 166, column: 7, scope: !800)
!814 = !DILocation(line: 168, column: 4, scope: !804)
!815 = !DILocation(line: 167, column: 38, scope: !804)
!816 = !DILocation(line: 165, column: 42, scope: !800)
!817 = !DILocation(line: 165, column: 2, scope: !800)
!818 = distinct !{!818, !802, !819}
!819 = !DILocation(line: 168, column: 11, scope: !797)
!820 = !DILocation(line: 169, column: 2, scope: !787)
!821 = !DILocation(line: 170, column: 1, scope: !787)
!822 = distinct !DISubprogram(name: "mlxsw_afk_key_info_block_encoding_get", scope: !3, file: !3, line: 370, type: !823, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!823 = !DISubroutineType(types: !824)
!824 = !{!90, !825, !72}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!827 = !DILocalVariable(name: "key_info", arg: 1, scope: !822, file: !3, line: 370, type: !825)
!828 = !DILocation(line: 370, column: 72, scope: !822)
!829 = !DILocalVariable(name: "block_index", arg: 2, scope: !822, file: !3, line: 371, type: !72)
!830 = !DILocation(line: 371, column: 15, scope: !822)
!831 = !DILocation(line: 373, column: 9, scope: !822)
!832 = !DILocation(line: 373, column: 19, scope: !822)
!833 = !DILocation(line: 373, column: 26, scope: !822)
!834 = !DILocation(line: 373, column: 40, scope: !822)
!835 = !DILocation(line: 373, column: 2, scope: !822)
!836 = distinct !DISubprogram(name: "mlxsw_afk_key_info_blocks_count_get", scope: !3, file: !3, line: 378, type: !837, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!837 = !DISubroutineType(types: !838)
!838 = !{!7, !825}
!839 = !DILocalVariable(name: "key_info", arg: 1, scope: !836, file: !3, line: 378, type: !825)
!840 = !DILocation(line: 378, column: 70, scope: !836)
!841 = !DILocation(line: 380, column: 9, scope: !836)
!842 = !DILocation(line: 380, column: 19, scope: !836)
!843 = !DILocation(line: 380, column: 2, scope: !836)
!844 = distinct !DISubprogram(name: "mlxsw_afk_values_add_u32", scope: !3, file: !3, line: 384, type: !845, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !847, !5, !859, !859}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_element_values", file: !6, line: 200, size: 1088, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "elusage", scope: !848, file: !6, line: 201, baseType: !76, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !848, file: !6, line: 205, baseType: !852, size: 1024, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !6, line: 202, size: 1024, elements: !853)
!853 = !{!854, !858}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !852, file: !6, line: 203, baseType: !855, size: 512)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !852, file: !6, line: 204, baseType: !855, size: 512, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !91, line: 21, baseType: !140)
!860 = !DILocalVariable(name: "values", arg: 1, scope: !844, file: !3, line: 384, type: !847)
!861 = !DILocation(line: 384, column: 64, scope: !844)
!862 = !DILocalVariable(name: "element", arg: 2, scope: !844, file: !3, line: 385, type: !5)
!863 = !DILocation(line: 385, column: 33, scope: !844)
!864 = !DILocalVariable(name: "key_value", arg: 3, scope: !844, file: !3, line: 386, type: !859)
!865 = !DILocation(line: 386, column: 14, scope: !844)
!866 = !DILocalVariable(name: "mask_value", arg: 4, scope: !844, file: !3, line: 386, type: !859)
!867 = !DILocation(line: 386, column: 29, scope: !844)
!868 = !DILocalVariable(name: "elinfo", scope: !844, file: !3, line: 388, type: !562)
!869 = !DILocation(line: 388, column: 39, scope: !844)
!870 = !DILocation(line: 389, column: 30, scope: !844)
!871 = !DILocation(line: 389, column: 6, scope: !844)
!872 = !DILocalVariable(name: "storage_item", scope: !844, file: !3, line: 390, type: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!875 = !DILocation(line: 390, column: 27, scope: !844)
!876 = !DILocation(line: 390, column: 43, scope: !844)
!877 = !DILocation(line: 390, column: 51, scope: !844)
!878 = !DILocation(line: 392, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !844, file: !3, line: 392, column: 6)
!880 = !DILocation(line: 392, column: 6, scope: !844)
!881 = !DILocation(line: 393, column: 3, scope: !879)
!882 = !DILocalVariable(name: "__ret_warn_on", scope: !883, file: !3, line: 394, type: !72)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 394, column: 6)
!884 = distinct !DILexicalBlock(scope: !844, file: !3, line: 394, column: 6)
!885 = !DILocation(line: 394, column: 6, scope: !883)
!886 = !DILocation(line: 394, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 394, column: 6)
!888 = !DILocation(line: 394, column: 6, scope: !889)
!889 = distinct !DILexicalBlock(scope: !887, file: !3, line: 394, column: 6)
!890 = !DILocation(line: 394, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !3, line: 394, column: 6)
!892 = !DILocation(line: 394, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 394, column: 6)
!894 = !{i32 -2144559792, i32 -2144559763, i32 -2144559717, i32 -2144559659, i32 -2144559605, i32 -2144559551, i32 -2144559496, i32 -2144559465}
!895 = !DILocation(line: 394, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !3, line: 394, column: 6)
!897 = !{i32 -2144559027, i32 -2144559020, i32 -2144558968, i32 -2144558937, i32 -2144558907}
!898 = !DILocation(line: 394, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !889, file: !3, line: 394, column: 6)
!900 = !DILocation(line: 394, column: 6, scope: !884)
!901 = !DILocation(line: 394, column: 6, scope: !844)
!902 = !DILocation(line: 395, column: 3, scope: !884)
!903 = !DILocation(line: 396, column: 21, scope: !844)
!904 = !DILocation(line: 396, column: 29, scope: !844)
!905 = !DILocation(line: 396, column: 37, scope: !844)
!906 = !DILocation(line: 396, column: 42, scope: !844)
!907 = !DILocation(line: 396, column: 59, scope: !844)
!908 = !DILocation(line: 396, column: 2, scope: !844)
!909 = !DILocation(line: 397, column: 21, scope: !844)
!910 = !DILocation(line: 397, column: 29, scope: !844)
!911 = !DILocation(line: 397, column: 37, scope: !844)
!912 = !DILocation(line: 397, column: 43, scope: !844)
!913 = !DILocation(line: 397, column: 60, scope: !844)
!914 = !DILocation(line: 397, column: 2, scope: !844)
!915 = !DILocation(line: 398, column: 31, scope: !844)
!916 = !DILocation(line: 398, column: 39, scope: !844)
!917 = !DILocation(line: 398, column: 48, scope: !844)
!918 = !DILocation(line: 398, column: 2, scope: !844)
!919 = !DILocation(line: 399, column: 1, scope: !844)
!920 = distinct !DISubprogram(name: "__mlxsw_item_set32", scope: !103, file: !103, line: 127, type: !921, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !173, !873, !94, !859}
!923 = !DILocalVariable(name: "buf", arg: 1, scope: !920, file: !103, line: 127, type: !173)
!924 = !DILocation(line: 127, column: 45, scope: !920)
!925 = !DILocalVariable(name: "item", arg: 2, scope: !920, file: !103, line: 127, type: !873)
!926 = !DILocation(line: 127, column: 75, scope: !920)
!927 = !DILocalVariable(name: "index", arg: 3, scope: !920, file: !103, line: 128, type: !94)
!928 = !DILocation(line: 128, column: 26, scope: !920)
!929 = !DILocalVariable(name: "val", arg: 4, scope: !920, file: !103, line: 128, type: !859)
!930 = !DILocation(line: 128, column: 37, scope: !920)
!931 = !DILocalVariable(name: "offset", scope: !920, file: !103, line: 130, type: !7)
!932 = !DILocation(line: 130, column: 15, scope: !920)
!933 = !DILocation(line: 130, column: 44, scope: !920)
!934 = !DILocation(line: 130, column: 50, scope: !920)
!935 = !DILocation(line: 130, column: 24, scope: !920)
!936 = !DILocalVariable(name: "b", scope: !920, file: !103, line: 132, type: !137)
!937 = !DILocation(line: 132, column: 10, scope: !920)
!938 = !DILocation(line: 132, column: 25, scope: !920)
!939 = !DILocation(line: 132, column: 14, scope: !920)
!940 = !DILocalVariable(name: "mask", scope: !920, file: !103, line: 133, type: !859)
!941 = !DILocation(line: 133, column: 6, scope: !920)
!942 = !DILocation(line: 133, column: 13, scope: !920)
!943 = !DILocation(line: 133, column: 48, scope: !920)
!944 = !DILocation(line: 133, column: 54, scope: !920)
!945 = !DILocation(line: 133, column: 45, scope: !920)
!946 = !DILocalVariable(name: "tmp", scope: !920, file: !103, line: 134, type: !859)
!947 = !DILocation(line: 134, column: 6, scope: !920)
!948 = !DILocation(line: 136, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !920, file: !103, line: 136, column: 6)
!950 = !DILocation(line: 136, column: 13, scope: !949)
!951 = !DILocation(line: 136, column: 6, scope: !920)
!952 = !DILocation(line: 137, column: 11, scope: !949)
!953 = !DILocation(line: 137, column: 17, scope: !949)
!954 = !DILocation(line: 137, column: 7, scope: !949)
!955 = !DILocation(line: 137, column: 3, scope: !949)
!956 = !DILocation(line: 138, column: 9, scope: !920)
!957 = !DILocation(line: 138, column: 6, scope: !920)
!958 = !DILocation(line: 139, column: 8, scope: !920)
!959 = !DILocation(line: 139, column: 6, scope: !920)
!960 = !DILocation(line: 140, column: 10, scope: !920)
!961 = !DILocation(line: 140, column: 9, scope: !920)
!962 = !DILocation(line: 140, column: 6, scope: !920)
!963 = !DILocation(line: 141, column: 9, scope: !920)
!964 = !DILocation(line: 141, column: 6, scope: !920)
!965 = !DILocation(line: 142, column: 14, scope: !920)
!966 = !DILocation(line: 142, column: 2, scope: !920)
!967 = !DILocation(line: 142, column: 4, scope: !920)
!968 = !DILocation(line: 142, column: 12, scope: !920)
!969 = !DILocation(line: 143, column: 1, scope: !920)
!970 = distinct !DISubprogram(name: "mlxsw_afk_element_usage_add", scope: !6, file: !6, line: 135, type: !971, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !649, !5}
!973 = !DILocalVariable(name: "elusage", arg: 1, scope: !970, file: !6, line: 135, type: !649)
!974 = !DILocation(line: 135, column: 61, scope: !970)
!975 = !DILocalVariable(name: "element", arg: 2, scope: !970, file: !6, line: 136, type: !5)
!976 = !DILocation(line: 136, column: 31, scope: !970)
!977 = !DILocation(line: 138, column: 12, scope: !970)
!978 = !DILocation(line: 138, column: 21, scope: !970)
!979 = !DILocation(line: 138, column: 30, scope: !970)
!980 = !DILocation(line: 138, column: 2, scope: !970)
!981 = !DILocation(line: 139, column: 1, scope: !970)
!982 = distinct !DISubprogram(name: "mlxsw_afk_values_add_buf", scope: !3, file: !3, line: 402, type: !983, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !847, !5, !121, !121, !7}
!985 = !DILocalVariable(name: "values", arg: 1, scope: !982, file: !3, line: 402, type: !847)
!986 = !DILocation(line: 402, column: 64, scope: !982)
!987 = !DILocalVariable(name: "element", arg: 2, scope: !982, file: !3, line: 403, type: !5)
!988 = !DILocation(line: 403, column: 33, scope: !982)
!989 = !DILocalVariable(name: "key_value", arg: 3, scope: !982, file: !3, line: 404, type: !121)
!990 = !DILocation(line: 404, column: 22, scope: !982)
!991 = !DILocalVariable(name: "mask_value", arg: 4, scope: !982, file: !3, line: 404, type: !121)
!992 = !DILocation(line: 404, column: 45, scope: !982)
!993 = !DILocalVariable(name: "len", arg: 5, scope: !982, file: !3, line: 405, type: !7)
!994 = !DILocation(line: 405, column: 23, scope: !982)
!995 = !DILocalVariable(name: "elinfo", scope: !982, file: !3, line: 407, type: !562)
!996 = !DILocation(line: 407, column: 39, scope: !982)
!997 = !DILocation(line: 408, column: 30, scope: !982)
!998 = !DILocation(line: 408, column: 6, scope: !982)
!999 = !DILocalVariable(name: "storage_item", scope: !982, file: !3, line: 409, type: !873)
!1000 = !DILocation(line: 409, column: 27, scope: !982)
!1001 = !DILocation(line: 409, column: 43, scope: !982)
!1002 = !DILocation(line: 409, column: 51, scope: !982)
!1003 = !DILocation(line: 411, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !982, file: !3, line: 411, column: 6)
!1005 = !DILocation(line: 411, column: 33, scope: !1004)
!1006 = !DILocation(line: 411, column: 7, scope: !1004)
!1007 = !DILocation(line: 411, column: 6, scope: !982)
!1008 = !DILocation(line: 412, column: 3, scope: !1004)
!1009 = !DILocalVariable(name: "__ret_warn_on", scope: !1010, file: !3, line: 413, type: !72)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 413, column: 6)
!1011 = distinct !DILexicalBlock(scope: !982, file: !3, line: 413, column: 6)
!1012 = !DILocation(line: 413, column: 6, scope: !1010)
!1013 = !DILocation(line: 413, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 413, column: 6)
!1015 = !DILocation(line: 413, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 413, column: 6)
!1017 = !DILocation(line: 413, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 413, column: 6)
!1019 = !DILocation(line: 413, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 413, column: 6)
!1021 = !{i32 -2144558187, i32 -2144558158, i32 -2144558112, i32 -2144558054, i32 -2144558000, i32 -2144557946, i32 -2144557891, i32 -2144557860}
!1022 = !DILocation(line: 413, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 413, column: 6)
!1024 = !{i32 -2144557422, i32 -2144557415, i32 -2144557363, i32 -2144557332, i32 -2144557302}
!1025 = !DILocation(line: 413, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 413, column: 6)
!1027 = !DILocation(line: 413, column: 6, scope: !1011)
!1028 = !DILocation(line: 413, column: 58, scope: !1011)
!1029 = !DILocalVariable(name: "__ret_warn_on", scope: !1030, file: !3, line: 414, type: !72)
!1030 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 414, column: 6)
!1031 = !DILocation(line: 414, column: 6, scope: !1030)
!1032 = !DILocation(line: 414, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 414, column: 6)
!1034 = !DILocation(line: 414, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 414, column: 6)
!1036 = !DILocation(line: 414, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 414, column: 6)
!1038 = !DILocation(line: 414, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 414, column: 6)
!1040 = !{i32 -2144556700, i32 -2144556671, i32 -2144556625, i32 -2144556567, i32 -2144556513, i32 -2144556459, i32 -2144556404, i32 -2144556373}
!1041 = !DILocation(line: 414, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 414, column: 6)
!1043 = !{i32 -2144555935, i32 -2144555928, i32 -2144555876, i32 -2144555845, i32 -2144555815}
!1044 = !DILocation(line: 414, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 414, column: 6)
!1046 = !DILocation(line: 414, column: 6, scope: !1011)
!1047 = !DILocation(line: 413, column: 6, scope: !982)
!1048 = !DILocation(line: 415, column: 3, scope: !1011)
!1049 = !DILocation(line: 416, column: 25, scope: !982)
!1050 = !DILocation(line: 416, column: 33, scope: !982)
!1051 = !DILocation(line: 416, column: 41, scope: !982)
!1052 = !DILocation(line: 416, column: 46, scope: !982)
!1053 = !DILocation(line: 417, column: 11, scope: !982)
!1054 = !DILocation(line: 416, column: 2, scope: !982)
!1055 = !DILocation(line: 418, column: 25, scope: !982)
!1056 = !DILocation(line: 418, column: 33, scope: !982)
!1057 = !DILocation(line: 418, column: 41, scope: !982)
!1058 = !DILocation(line: 418, column: 47, scope: !982)
!1059 = !DILocation(line: 419, column: 11, scope: !982)
!1060 = !DILocation(line: 418, column: 2, scope: !982)
!1061 = !DILocation(line: 420, column: 31, scope: !982)
!1062 = !DILocation(line: 420, column: 39, scope: !982)
!1063 = !DILocation(line: 420, column: 48, scope: !982)
!1064 = !DILocation(line: 420, column: 2, scope: !982)
!1065 = !DILocation(line: 421, column: 1, scope: !982)
!1066 = distinct !DISubprogram(name: "__mlxsw_item_memcpy_to", scope: !103, file: !103, line: 187, type: !1067, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !173, !121, !873, !94}
!1069 = !DILocalVariable(name: "buf", arg: 1, scope: !1066, file: !103, line: 187, type: !173)
!1070 = !DILocation(line: 187, column: 49, scope: !1066)
!1071 = !DILocalVariable(name: "src", arg: 2, scope: !1066, file: !103, line: 187, type: !121)
!1072 = !DILocation(line: 187, column: 66, scope: !1066)
!1073 = !DILocalVariable(name: "item", arg: 3, scope: !1066, file: !103, line: 188, type: !873)
!1074 = !DILocation(line: 188, column: 33, scope: !1066)
!1075 = !DILocalVariable(name: "index", arg: 4, scope: !1066, file: !103, line: 189, type: !94)
!1076 = !DILocation(line: 189, column: 23, scope: !1066)
!1077 = !DILocalVariable(name: "offset", scope: !1066, file: !103, line: 191, type: !7)
!1078 = !DILocation(line: 191, column: 15, scope: !1066)
!1079 = !DILocation(line: 191, column: 44, scope: !1066)
!1080 = !DILocation(line: 191, column: 50, scope: !1066)
!1081 = !DILocation(line: 191, column: 24, scope: !1066)
!1082 = !DILocation(line: 193, column: 10, scope: !1066)
!1083 = !DILocation(line: 193, column: 14, scope: !1066)
!1084 = !DILocation(line: 193, column: 23, scope: !1066)
!1085 = !DILocation(line: 193, column: 28, scope: !1066)
!1086 = !DILocation(line: 193, column: 34, scope: !1066)
!1087 = !DILocation(line: 193, column: 39, scope: !1066)
!1088 = !DILocation(line: 193, column: 2, scope: !1066)
!1089 = !DILocation(line: 194, column: 1, scope: !1066)
!1090 = distinct !DISubprogram(name: "mlxsw_afk_encode", scope: !3, file: !3, line: 465, type: !1091, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !157, !64, !847, !173, !173}
!1093 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1090, file: !3, line: 465, type: !157)
!1094 = !DILocation(line: 465, column: 41, scope: !1090)
!1095 = !DILocalVariable(name: "key_info", arg: 2, scope: !1090, file: !3, line: 466, type: !64)
!1096 = !DILocation(line: 466, column: 36, scope: !1090)
!1097 = !DILocalVariable(name: "values", arg: 3, scope: !1090, file: !3, line: 467, type: !847)
!1098 = !DILocation(line: 467, column: 42, scope: !1090)
!1099 = !DILocalVariable(name: "key", arg: 4, scope: !1090, file: !3, line: 468, type: !173)
!1100 = !DILocation(line: 468, column: 15, scope: !1090)
!1101 = !DILocalVariable(name: "mask", arg: 5, scope: !1090, file: !3, line: 468, type: !173)
!1102 = !DILocation(line: 468, column: 26, scope: !1090)
!1103 = !DILocalVariable(name: "blocks_count", scope: !1090, file: !3, line: 470, type: !7)
!1104 = !DILocation(line: 470, column: 15, scope: !1090)
!1105 = !DILocation(line: 471, column: 40, scope: !1090)
!1106 = !DILocation(line: 471, column: 4, scope: !1090)
!1107 = !DILocalVariable(name: "block_mask", scope: !1090, file: !3, line: 472, type: !1108)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 16)
!1111 = !DILocation(line: 472, column: 7, scope: !1090)
!1112 = !DILocalVariable(name: "block_key", scope: !1090, file: !3, line: 473, type: !1108)
!1113 = !DILocation(line: 473, column: 7, scope: !1090)
!1114 = !DILocalVariable(name: "elinst", scope: !1090, file: !3, line: 474, type: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!1117 = !DILocation(line: 474, column: 39, scope: !1090)
!1118 = !DILocalVariable(name: "element", scope: !1090, file: !3, line: 475, type: !5)
!1119 = !DILocation(line: 475, column: 25, scope: !1090)
!1120 = !DILocalVariable(name: "block_index", scope: !1090, file: !3, line: 476, type: !72)
!1121 = !DILocation(line: 476, column: 6, scope: !1090)
!1122 = !DILocalVariable(name: "i", scope: !1090, file: !3, line: 476, type: !72)
!1123 = !DILocation(line: 476, column: 19, scope: !1090)
!1124 = !DILocation(line: 478, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 478, column: 2)
!1126 = !DILocation(line: 478, column: 7, scope: !1125)
!1127 = !DILocation(line: 478, column: 14, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 478, column: 2)
!1129 = !DILocation(line: 478, column: 18, scope: !1128)
!1130 = !DILocation(line: 478, column: 16, scope: !1128)
!1131 = !DILocation(line: 478, column: 2, scope: !1125)
!1132 = !DILocation(line: 479, column: 3, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 478, column: 37)
!1134 = !DILocation(line: 480, column: 3, scope: !1133)
!1135 = !DILocation(line: 482, column: 3, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 482, column: 3)
!1137 = !DILocation(line: 482, column: 3, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 482, column: 3)
!1139 = !DILocation(line: 483, column: 43, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 482, column: 63)
!1141 = !DILocation(line: 484, column: 15, scope: !1140)
!1142 = !DILocation(line: 483, column: 13, scope: !1140)
!1143 = !DILocation(line: 483, column: 11, scope: !1140)
!1144 = !DILocation(line: 486, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 486, column: 8)
!1146 = !DILocation(line: 486, column: 16, scope: !1145)
!1147 = !DILocation(line: 486, column: 19, scope: !1145)
!1148 = !DILocation(line: 486, column: 34, scope: !1145)
!1149 = !DILocation(line: 486, column: 31, scope: !1145)
!1150 = !DILocation(line: 486, column: 8, scope: !1140)
!1151 = !DILocation(line: 487, column: 5, scope: !1145)
!1152 = !DILocation(line: 489, column: 28, scope: !1140)
!1153 = !DILocation(line: 489, column: 36, scope: !1140)
!1154 = !DILocation(line: 490, column: 7, scope: !1140)
!1155 = !DILocation(line: 490, column: 15, scope: !1140)
!1156 = !DILocation(line: 490, column: 23, scope: !1140)
!1157 = !DILocation(line: 491, column: 7, scope: !1140)
!1158 = !DILocation(line: 491, column: 15, scope: !1140)
!1159 = !DILocation(line: 489, column: 4, scope: !1140)
!1160 = !DILocation(line: 492, column: 28, scope: !1140)
!1161 = !DILocation(line: 492, column: 36, scope: !1140)
!1162 = !DILocation(line: 493, column: 7, scope: !1140)
!1163 = !DILocation(line: 493, column: 15, scope: !1140)
!1164 = !DILocation(line: 493, column: 23, scope: !1140)
!1165 = !DILocation(line: 492, column: 4, scope: !1140)
!1166 = !DILocation(line: 494, column: 3, scope: !1140)
!1167 = distinct !{!1167, !1135, !1168}
!1168 = !DILocation(line: 494, column: 3, scope: !1136)
!1169 = !DILocation(line: 496, column: 3, scope: !1133)
!1170 = !DILocation(line: 496, column: 14, scope: !1133)
!1171 = !DILocation(line: 496, column: 19, scope: !1133)
!1172 = !DILocation(line: 496, column: 32, scope: !1133)
!1173 = !DILocation(line: 496, column: 37, scope: !1133)
!1174 = !DILocation(line: 496, column: 40, scope: !1133)
!1175 = !DILocation(line: 497, column: 3, scope: !1133)
!1176 = !DILocation(line: 497, column: 14, scope: !1133)
!1177 = !DILocation(line: 497, column: 19, scope: !1133)
!1178 = !DILocation(line: 497, column: 32, scope: !1133)
!1179 = !DILocation(line: 497, column: 38, scope: !1133)
!1180 = !DILocation(line: 497, column: 41, scope: !1133)
!1181 = !DILocation(line: 498, column: 2, scope: !1133)
!1182 = !DILocation(line: 478, column: 33, scope: !1128)
!1183 = !DILocation(line: 478, column: 2, scope: !1128)
!1184 = distinct !{!1184, !1131, !1185}
!1185 = !DILocation(line: 498, column: 2, scope: !1125)
!1186 = !DILocation(line: 499, column: 1, scope: !1090)
!1187 = distinct !DISubprogram(name: "mlxsw_afk_key_info_elinst_get", scope: !3, file: !3, line: 348, type: !1188, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!1115, !64, !5, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1191 = !DILocalVariable(name: "key_info", arg: 1, scope: !1187, file: !3, line: 348, type: !64)
!1192 = !DILocation(line: 348, column: 58, scope: !1187)
!1193 = !DILocalVariable(name: "element", arg: 2, scope: !1187, file: !3, line: 349, type: !5)
!1194 = !DILocation(line: 349, column: 33, scope: !1187)
!1195 = !DILocalVariable(name: "p_block_index", arg: 3, scope: !1187, file: !3, line: 350, type: !1190)
!1196 = !DILocation(line: 350, column: 15, scope: !1187)
!1197 = !DILocalVariable(name: "elinst", scope: !1187, file: !3, line: 352, type: !1115)
!1198 = !DILocation(line: 352, column: 39, scope: !1187)
!1199 = !DILocalVariable(name: "block", scope: !1187, file: !3, line: 353, type: !85)
!1200 = !DILocation(line: 353, column: 32, scope: !1187)
!1201 = !DILocalVariable(name: "block_index", scope: !1187, file: !3, line: 354, type: !72)
!1202 = !DILocation(line: 354, column: 6, scope: !1187)
!1203 = !DILocalVariable(name: "__ret_warn_on", scope: !1204, file: !3, line: 356, type: !72)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 356, column: 6)
!1205 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 356, column: 6)
!1206 = !DILocation(line: 356, column: 6, scope: !1204)
!1207 = !DILocation(line: 356, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 356, column: 6)
!1209 = !DILocation(line: 356, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 356, column: 6)
!1211 = !DILocation(line: 356, column: 6, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 356, column: 6)
!1213 = !DILocation(line: 356, column: 6, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 356, column: 6)
!1215 = !{i32 -2144563039, i32 -2144563010, i32 -2144562964, i32 -2144562906, i32 -2144562852, i32 -2144562798, i32 -2144562743, i32 -2144562712}
!1216 = !DILocation(line: 356, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 356, column: 6)
!1218 = !{i32 -2144562274, i32 -2144562267, i32 -2144562215, i32 -2144562184, i32 -2144562154}
!1219 = !DILocation(line: 356, column: 6, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 356, column: 6)
!1221 = !DILocation(line: 356, column: 6, scope: !1205)
!1222 = !DILocation(line: 356, column: 6, scope: !1187)
!1223 = !DILocation(line: 357, column: 3, scope: !1205)
!1224 = !DILocation(line: 358, column: 16, scope: !1187)
!1225 = !DILocation(line: 358, column: 26, scope: !1187)
!1226 = !DILocation(line: 358, column: 43, scope: !1187)
!1227 = !DILocation(line: 358, column: 14, scope: !1187)
!1228 = !DILocation(line: 359, column: 10, scope: !1187)
!1229 = !DILocation(line: 359, column: 20, scope: !1187)
!1230 = !DILocation(line: 359, column: 27, scope: !1187)
!1231 = !DILocation(line: 359, column: 8, scope: !1187)
!1232 = !DILocation(line: 361, column: 38, scope: !1187)
!1233 = !DILocation(line: 361, column: 45, scope: !1187)
!1234 = !DILocation(line: 361, column: 11, scope: !1187)
!1235 = !DILocation(line: 361, column: 9, scope: !1187)
!1236 = !DILocalVariable(name: "__ret_warn_on", scope: !1237, file: !3, line: 362, type: !72)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 362, column: 6)
!1238 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 362, column: 6)
!1239 = !DILocation(line: 362, column: 6, scope: !1237)
!1240 = !DILocation(line: 362, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 362, column: 6)
!1242 = !DILocation(line: 362, column: 6, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 362, column: 6)
!1244 = !DILocation(line: 362, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 362, column: 6)
!1246 = !DILocation(line: 362, column: 6, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 362, column: 6)
!1248 = !{i32 -2144561564, i32 -2144561535, i32 -2144561489, i32 -2144561431, i32 -2144561377, i32 -2144561323, i32 -2144561268, i32 -2144561237}
!1249 = !DILocation(line: 362, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 362, column: 6)
!1251 = !{i32 -2144560799, i32 -2144560792, i32 -2144560740, i32 -2144560709, i32 -2144560679}
!1252 = !DILocation(line: 362, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 362, column: 6)
!1254 = !DILocation(line: 362, column: 6, scope: !1238)
!1255 = !DILocation(line: 362, column: 6, scope: !1187)
!1256 = !DILocation(line: 363, column: 3, scope: !1238)
!1257 = !DILocation(line: 365, column: 19, scope: !1187)
!1258 = !DILocation(line: 365, column: 3, scope: !1187)
!1259 = !DILocation(line: 365, column: 17, scope: !1187)
!1260 = !DILocation(line: 366, column: 9, scope: !1187)
!1261 = !DILocation(line: 366, column: 2, scope: !1187)
!1262 = !DILocation(line: 367, column: 1, scope: !1187)
!1263 = distinct !DISubprogram(name: "mlxsw_sp_afk_encode_one", scope: !3, file: !3, line: 446, type: !1264, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1115, !173, !173, !72}
!1266 = !DILocalVariable(name: "elinst", arg: 1, scope: !1263, file: !3, line: 446, type: !1115)
!1267 = !DILocation(line: 446, column: 62, scope: !1263)
!1268 = !DILocalVariable(name: "output", arg: 2, scope: !1263, file: !3, line: 447, type: !173)
!1269 = !DILocation(line: 447, column: 10, scope: !1263)
!1270 = !DILocalVariable(name: "storage", arg: 3, scope: !1263, file: !3, line: 447, type: !173)
!1271 = !DILocation(line: 447, column: 24, scope: !1263)
!1272 = !DILocalVariable(name: "u32_diff", arg: 4, scope: !1263, file: !3, line: 447, type: !72)
!1273 = !DILocation(line: 447, column: 37, scope: !1263)
!1274 = !DILocalVariable(name: "output_item", scope: !1263, file: !3, line: 449, type: !873)
!1275 = !DILocation(line: 449, column: 27, scope: !1263)
!1276 = !DILocation(line: 449, column: 42, scope: !1263)
!1277 = !DILocation(line: 449, column: 50, scope: !1263)
!1278 = !DILocalVariable(name: "elinfo", scope: !1263, file: !3, line: 450, type: !562)
!1279 = !DILocation(line: 450, column: 39, scope: !1263)
!1280 = !DILocalVariable(name: "storage_item", scope: !1263, file: !3, line: 451, type: !873)
!1281 = !DILocation(line: 451, column: 27, scope: !1263)
!1282 = !DILocation(line: 453, column: 36, scope: !1263)
!1283 = !DILocation(line: 453, column: 44, scope: !1263)
!1284 = !DILocation(line: 453, column: 12, scope: !1263)
!1285 = !DILocation(line: 453, column: 9, scope: !1263)
!1286 = !DILocation(line: 454, column: 18, scope: !1263)
!1287 = !DILocation(line: 454, column: 26, scope: !1263)
!1288 = !DILocation(line: 454, column: 15, scope: !1263)
!1289 = !DILocation(line: 455, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 455, column: 6)
!1291 = !DILocation(line: 455, column: 14, scope: !1290)
!1292 = !DILocation(line: 455, column: 19, scope: !1290)
!1293 = !DILocation(line: 455, column: 6, scope: !1263)
!1294 = !DILocation(line: 456, column: 27, scope: !1290)
!1295 = !DILocation(line: 456, column: 41, scope: !1290)
!1296 = !DILocation(line: 457, column: 6, scope: !1290)
!1297 = !DILocation(line: 457, column: 15, scope: !1290)
!1298 = !DILocation(line: 457, column: 23, scope: !1290)
!1299 = !DILocation(line: 456, column: 3, scope: !1290)
!1300 = !DILocation(line: 458, column: 11, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 458, column: 11)
!1302 = !DILocation(line: 458, column: 19, scope: !1301)
!1303 = !DILocation(line: 458, column: 24, scope: !1301)
!1304 = !DILocation(line: 458, column: 11, scope: !1290)
!1305 = !DILocation(line: 459, column: 27, scope: !1301)
!1306 = !DILocation(line: 459, column: 41, scope: !1301)
!1307 = !DILocation(line: 460, column: 6, scope: !1301)
!1308 = !DILocation(line: 460, column: 15, scope: !1301)
!1309 = !DILocation(line: 459, column: 3, scope: !1301)
!1310 = !DILocation(line: 461, column: 1, scope: !1263)
!1311 = distinct !DISubprogram(name: "mlxsw_afk_clear", scope: !3, file: !3, line: 502, type: !1312, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !157, !173, !72, !72}
!1314 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1311, file: !3, line: 502, type: !157)
!1315 = !DILocation(line: 502, column: 40, scope: !1311)
!1316 = !DILocalVariable(name: "key", arg: 2, scope: !1311, file: !3, line: 502, type: !173)
!1317 = !DILocation(line: 502, column: 57, scope: !1311)
!1318 = !DILocalVariable(name: "block_start", arg: 3, scope: !1311, file: !3, line: 503, type: !72)
!1319 = !DILocation(line: 503, column: 12, scope: !1311)
!1320 = !DILocalVariable(name: "block_end", arg: 4, scope: !1311, file: !3, line: 503, type: !72)
!1321 = !DILocation(line: 503, column: 29, scope: !1311)
!1322 = !DILocalVariable(name: "i", scope: !1311, file: !3, line: 505, type: !72)
!1323 = !DILocation(line: 505, column: 6, scope: !1311)
!1324 = !DILocation(line: 507, column: 11, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 507, column: 2)
!1326 = !DILocation(line: 507, column: 9, scope: !1325)
!1327 = !DILocation(line: 507, column: 7, scope: !1325)
!1328 = !DILocation(line: 507, column: 24, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 507, column: 2)
!1330 = !DILocation(line: 507, column: 29, scope: !1329)
!1331 = !DILocation(line: 507, column: 26, scope: !1329)
!1332 = !DILocation(line: 507, column: 2, scope: !1325)
!1333 = !DILocation(line: 508, column: 3, scope: !1329)
!1334 = !DILocation(line: 508, column: 14, scope: !1329)
!1335 = !DILocation(line: 508, column: 19, scope: !1329)
!1336 = !DILocation(line: 508, column: 31, scope: !1329)
!1337 = !DILocation(line: 508, column: 36, scope: !1329)
!1338 = !DILocation(line: 507, column: 41, scope: !1329)
!1339 = !DILocation(line: 507, column: 2, scope: !1329)
!1340 = distinct !{!1340, !1332, !1341}
!1341 = !DILocation(line: 508, column: 37, scope: !1325)
!1342 = !DILocation(line: 509, column: 1, scope: !1311)
!1343 = distinct !DISubprogram(name: "get_order", scope: !1344, file: !1344, line: 29, type: !1345, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1344 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!72, !80}
!1347 = !DILocalVariable(name: "x", arg: 1, scope: !1348, file: !1349, line: 366, type: !1352)
!1348 = distinct !DISubprogram(name: "fls64", scope: !1349, file: !1349, line: 366, type: !1350, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1349 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!72, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !93, line: 31, baseType: !1353)
!1353 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1354 = !DILocation(line: 366, column: 40, scope: !1348, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 46, column: 9, scope: !1343)
!1356 = !DILocalVariable(name: "bitpos", scope: !1348, file: !1349, line: 368, type: !72)
!1357 = !DILocation(line: 368, column: 6, scope: !1348, inlinedAt: !1355)
!1358 = !DILocalVariable(name: "size", arg: 1, scope: !1343, file: !1344, line: 29, type: !80)
!1359 = !DILocation(line: 29, column: 63, scope: !1343)
!1360 = !DILocation(line: 31, column: 27, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1343, file: !1344, line: 31, column: 6)
!1362 = !DILocation(line: 31, column: 6, scope: !1361)
!1363 = !DILocation(line: 31, column: 6, scope: !1343)
!1364 = !DILocation(line: 32, column: 8, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1344, line: 32, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !1344, line: 31, column: 34)
!1367 = !DILocation(line: 32, column: 7, scope: !1366)
!1368 = !DILocation(line: 33, column: 4, scope: !1365)
!1369 = !DILocation(line: 35, column: 7, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1366, file: !1344, line: 35, column: 7)
!1371 = !DILocation(line: 35, column: 12, scope: !1370)
!1372 = !DILocation(line: 35, column: 7, scope: !1366)
!1373 = !DILocation(line: 36, column: 4, scope: !1370)
!1374 = !DILocation(line: 38, column: 10, scope: !1366)
!1375 = !DILocation(line: 38, column: 28, scope: !1366)
!1376 = !DILocation(line: 38, column: 41, scope: !1366)
!1377 = !DILocation(line: 38, column: 3, scope: !1366)
!1378 = !DILocation(line: 41, column: 6, scope: !1343)
!1379 = !DILocation(line: 42, column: 7, scope: !1343)
!1380 = !DILocation(line: 46, column: 15, scope: !1343)
!1381 = !DILocation(line: 374, column: 2, scope: !1348, inlinedAt: !1355)
!1382 = !DILocation(line: 376, column: 14, scope: !1348, inlinedAt: !1355)
!1383 = !{i32 253962}
!1384 = !DILocation(line: 377, column: 9, scope: !1348, inlinedAt: !1355)
!1385 = !DILocation(line: 377, column: 16, scope: !1348, inlinedAt: !1355)
!1386 = !DILocation(line: 46, column: 2, scope: !1343)
!1387 = !DILocation(line: 48, column: 1, scope: !1343)
!1388 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1389, file: !1389, line: 30, type: !1390, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1389 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!72, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !91, line: 23, baseType: !1352)
!1393 = !DILocation(line: 366, column: 40, scope: !1348, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 32, column: 9, scope: !1388)
!1395 = !DILocation(line: 368, column: 6, scope: !1348, inlinedAt: !1394)
!1396 = !DILocalVariable(name: "n", arg: 1, scope: !1388, file: !1389, line: 30, type: !1392)
!1397 = !DILocation(line: 30, column: 21, scope: !1388)
!1398 = !DILocation(line: 32, column: 15, scope: !1388)
!1399 = !DILocation(line: 374, column: 2, scope: !1348, inlinedAt: !1394)
!1400 = !DILocation(line: 376, column: 14, scope: !1348, inlinedAt: !1394)
!1401 = !DILocation(line: 377, column: 9, scope: !1348, inlinedAt: !1394)
!1402 = !DILocation(line: 377, column: 16, scope: !1348, inlinedAt: !1394)
!1403 = !DILocation(line: 32, column: 18, scope: !1388)
!1404 = !DILocation(line: 32, column: 2, scope: !1388)
!1405 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1406, file: !1406, line: 137, type: !1407, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1406 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!54, !241, !1409, !129, !52}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1411 = !DILocalVariable(name: "s", arg: 1, scope: !1405, file: !1406, line: 137, type: !241)
!1412 = !DILocation(line: 137, column: 54, scope: !1405)
!1413 = !DILocalVariable(name: "object", arg: 2, scope: !1405, file: !1406, line: 137, type: !1409)
!1414 = !DILocation(line: 137, column: 69, scope: !1405)
!1415 = !DILocalVariable(name: "size", arg: 3, scope: !1405, file: !1406, line: 138, type: !129)
!1416 = !DILocation(line: 138, column: 12, scope: !1405)
!1417 = !DILocalVariable(name: "flags", arg: 4, scope: !1405, file: !1406, line: 138, type: !52)
!1418 = !DILocation(line: 138, column: 24, scope: !1405)
!1419 = !DILocation(line: 140, column: 17, scope: !1405)
!1420 = !DILocation(line: 140, column: 2, scope: !1405)
!1421 = distinct !DISubprogram(name: "mlxsw_afk_key_info_elements_eq", scope: !3, file: !3, line: 116, type: !776, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1422 = !DILocalVariable(name: "key_info", arg: 1, scope: !1421, file: !3, line: 116, type: !64)
!1423 = !DILocation(line: 116, column: 59, scope: !1421)
!1424 = !DILocalVariable(name: "elusage", arg: 2, scope: !1421, file: !3, line: 117, type: !649)
!1425 = !DILocation(line: 117, column: 43, scope: !1421)
!1426 = !DILocation(line: 119, column: 17, scope: !1421)
!1427 = !DILocation(line: 119, column: 27, scope: !1421)
!1428 = !DILocation(line: 119, column: 16, scope: !1421)
!1429 = !DILocation(line: 119, column: 36, scope: !1421)
!1430 = !DILocation(line: 119, column: 9, scope: !1421)
!1431 = !DILocation(line: 119, column: 63, scope: !1421)
!1432 = !DILocation(line: 119, column: 2, scope: !1421)
!1433 = distinct !DISubprogram(name: "__ab_c_size", scope: !1434, file: !1434, line: 301, type: !1435, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1434 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!129, !129, !129, !129}
!1437 = !DILocalVariable(name: "a", arg: 1, scope: !1433, file: !1434, line: 301, type: !129)
!1438 = !DILocation(line: 301, column: 54, scope: !1433)
!1439 = !DILocalVariable(name: "b", arg: 2, scope: !1433, file: !1434, line: 301, type: !129)
!1440 = !DILocation(line: 301, column: 64, scope: !1433)
!1441 = !DILocalVariable(name: "c", arg: 3, scope: !1433, file: !1434, line: 301, type: !129)
!1442 = !DILocation(line: 301, column: 74, scope: !1433)
!1443 = !DILocalVariable(name: "bytes", scope: !1433, file: !1434, line: 303, type: !129)
!1444 = !DILocation(line: 303, column: 9, scope: !1433)
!1445 = !DILocalVariable(name: "__a", scope: !1446, file: !1434, line: 305, type: !129)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !1434, line: 305, column: 6)
!1447 = distinct !DILexicalBlock(scope: !1433, file: !1434, line: 305, column: 6)
!1448 = !DILocation(line: 305, column: 6, scope: !1446)
!1449 = !DILocalVariable(name: "__b", scope: !1446, file: !1434, line: 305, type: !129)
!1450 = !DILocalVariable(name: "__d", scope: !1446, file: !1434, line: 305, type: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1452 = !DILocation(line: 305, column: 6, scope: !1447)
!1453 = !DILocation(line: 305, column: 6, scope: !1433)
!1454 = !DILocation(line: 306, column: 3, scope: !1447)
!1455 = !DILocalVariable(name: "__a", scope: !1456, file: !1434, line: 307, type: !129)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !1434, line: 307, column: 6)
!1457 = distinct !DILexicalBlock(scope: !1433, file: !1434, line: 307, column: 6)
!1458 = !DILocation(line: 307, column: 6, scope: !1456)
!1459 = !DILocalVariable(name: "__b", scope: !1456, file: !1434, line: 307, type: !129)
!1460 = !DILocalVariable(name: "__d", scope: !1456, file: !1434, line: 307, type: !1451)
!1461 = !DILocation(line: 307, column: 6, scope: !1457)
!1462 = !DILocation(line: 307, column: 6, scope: !1433)
!1463 = !DILocation(line: 308, column: 3, scope: !1457)
!1464 = !DILocation(line: 310, column: 9, scope: !1433)
!1465 = !DILocation(line: 310, column: 2, scope: !1433)
!1466 = !DILocation(line: 311, column: 1, scope: !1433)
!1467 = distinct !DISubprogram(name: "ERR_PTR", scope: !1468, file: !1468, line: 24, type: !1469, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1468 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!54, !135}
!1471 = !DILocalVariable(name: "error", arg: 1, scope: !1467, file: !1468, line: 24, type: !135)
!1472 = !DILocation(line: 24, column: 48, scope: !1467)
!1473 = !DILocation(line: 26, column: 18, scope: !1467)
!1474 = !DILocation(line: 26, column: 9, scope: !1467)
!1475 = !DILocation(line: 26, column: 2, scope: !1467)
!1476 = distinct !DISubprogram(name: "mlxsw_afk_picker", scope: !3, file: !3, line: 221, type: !1477, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!72, !157, !64, !649}
!1479 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1476, file: !3, line: 221, type: !157)
!1480 = !DILocation(line: 221, column: 47, scope: !1476)
!1481 = !DILocalVariable(name: "key_info", arg: 2, scope: !1476, file: !3, line: 222, type: !64)
!1482 = !DILocation(line: 222, column: 35, scope: !1476)
!1483 = !DILocalVariable(name: "elusage", arg: 3, scope: !1476, file: !3, line: 223, type: !649)
!1484 = !DILocation(line: 223, column: 40, scope: !1476)
!1485 = !DILocalVariable(name: "picker", scope: !1476, file: !3, line: 225, type: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlxsw_afk_picker", file: !3, line: 135, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "hits", scope: !1487, file: !3, line: 139, baseType: !1490)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1491, elements: !1495)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1487, file: !3, line: 136, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !1491, file: !3, line: 137, baseType: !79, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1491, file: !3, line: 138, baseType: !7, size: 32, offset: 64)
!1495 = !{!1496}
!1496 = !DISubrange(count: 0)
!1497 = !DILocation(line: 225, column: 27, scope: !1476)
!1498 = !DILocalVariable(name: "element", scope: !1476, file: !3, line: 226, type: !5)
!1499 = !DILocation(line: 226, column: 25, scope: !1476)
!1500 = !DILocalVariable(name: "alloc_size", scope: !1476, file: !3, line: 227, type: !129)
!1501 = !DILocation(line: 227, column: 9, scope: !1476)
!1502 = !DILocalVariable(name: "err", scope: !1476, file: !3, line: 228, type: !72)
!1503 = !DILocation(line: 228, column: 6, scope: !1476)
!1504 = !DILocation(line: 230, column: 41, scope: !1476)
!1505 = !DILocation(line: 230, column: 52, scope: !1476)
!1506 = !DILocation(line: 230, column: 39, scope: !1476)
!1507 = !DILocation(line: 230, column: 13, scope: !1476)
!1508 = !DILocation(line: 231, column: 19, scope: !1476)
!1509 = !DILocation(line: 231, column: 11, scope: !1476)
!1510 = !DILocation(line: 231, column: 9, scope: !1476)
!1511 = !DILocation(line: 232, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 232, column: 6)
!1513 = !DILocation(line: 232, column: 6, scope: !1476)
!1514 = !DILocation(line: 233, column: 3, scope: !1512)
!1515 = !DILocation(line: 248, column: 2, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 248, column: 2)
!1517 = !DILocation(line: 248, column: 2, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 248, column: 2)
!1519 = !DILocation(line: 249, column: 31, scope: !1518)
!1520 = !DILocation(line: 249, column: 42, scope: !1518)
!1521 = !DILocation(line: 249, column: 50, scope: !1518)
!1522 = !DILocation(line: 249, column: 3, scope: !1518)
!1523 = distinct !{!1523, !1515, !1524}
!1524 = !DILocation(line: 249, column: 57, scope: !1516)
!1525 = !DILocation(line: 251, column: 2, scope: !1476)
!1526 = !DILocalVariable(name: "block_index", scope: !1527, file: !3, line: 252, type: !72)
!1527 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 251, column: 5)
!1528 = !DILocation(line: 252, column: 7, scope: !1527)
!1529 = !DILocation(line: 254, column: 48, scope: !1527)
!1530 = !DILocation(line: 254, column: 59, scope: !1527)
!1531 = !DILocation(line: 254, column: 17, scope: !1527)
!1532 = !DILocation(line: 254, column: 15, scope: !1527)
!1533 = !DILocation(line: 255, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 255, column: 7)
!1535 = !DILocation(line: 255, column: 19, scope: !1534)
!1536 = !DILocation(line: 255, column: 7, scope: !1527)
!1537 = !DILocation(line: 256, column: 10, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 255, column: 24)
!1539 = !DILocation(line: 256, column: 8, scope: !1538)
!1540 = !DILocation(line: 257, column: 4, scope: !1538)
!1541 = !DILocation(line: 259, column: 39, scope: !1527)
!1542 = !DILocation(line: 259, column: 50, scope: !1527)
!1543 = !DILocation(line: 260, column: 11, scope: !1527)
!1544 = !DILocation(line: 260, column: 24, scope: !1527)
!1545 = !DILocation(line: 259, column: 9, scope: !1527)
!1546 = !DILocation(line: 259, column: 7, scope: !1527)
!1547 = !DILocation(line: 261, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 261, column: 7)
!1549 = !DILocation(line: 261, column: 7, scope: !1527)
!1550 = !DILocation(line: 262, column: 4, scope: !1548)
!1551 = !DILocation(line: 263, column: 34, scope: !1527)
!1552 = !DILocation(line: 263, column: 45, scope: !1527)
!1553 = !DILocation(line: 263, column: 53, scope: !1527)
!1554 = !DILocation(line: 263, column: 3, scope: !1527)
!1555 = !DILocation(line: 264, column: 2, scope: !1527)
!1556 = !DILocation(line: 264, column: 43, scope: !1476)
!1557 = !DILocation(line: 264, column: 53, scope: !1476)
!1558 = !DILocation(line: 264, column: 12, scope: !1476)
!1559 = !DILocation(line: 264, column: 11, scope: !1476)
!1560 = distinct !{!1560, !1525, !1561}
!1561 = !DILocation(line: 264, column: 61, scope: !1476)
!1562 = !DILocation(line: 266, column: 6, scope: !1476)
!1563 = !DILocation(line: 266, column: 2, scope: !1476)
!1564 = !DILabel(scope: !1476, name: "out", file: !3, line: 267)
!1565 = !DILocation(line: 267, column: 1, scope: !1476)
!1566 = !DILocation(line: 268, column: 8, scope: !1476)
!1567 = !DILocation(line: 268, column: 2, scope: !1476)
!1568 = !DILocation(line: 269, column: 9, scope: !1476)
!1569 = !DILocation(line: 269, column: 2, scope: !1476)
!1570 = !DILocation(line: 270, column: 1, scope: !1476)
!1571 = distinct !DISubprogram(name: "list_add", scope: !510, file: !510, line: 84, type: !1572, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !57, !57}
!1574 = !DILocalVariable(name: "new", arg: 1, scope: !1571, file: !510, line: 84, type: !57)
!1575 = !DILocation(line: 84, column: 47, scope: !1571)
!1576 = !DILocalVariable(name: "head", arg: 2, scope: !1571, file: !510, line: 84, type: !57)
!1577 = !DILocation(line: 84, column: 70, scope: !1571)
!1578 = !DILocation(line: 86, column: 13, scope: !1571)
!1579 = !DILocation(line: 86, column: 18, scope: !1571)
!1580 = !DILocation(line: 86, column: 24, scope: !1571)
!1581 = !DILocation(line: 86, column: 30, scope: !1571)
!1582 = !DILocation(line: 86, column: 2, scope: !1571)
!1583 = !DILocation(line: 87, column: 1, scope: !1571)
!1584 = distinct !DISubprogram(name: "__must_check_overflow", scope: !1434, file: !1434, line: 52, type: !1585, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!113, !113}
!1587 = !DILocalVariable(name: "overflow", arg: 1, scope: !1584, file: !1434, line: 52, type: !113)
!1588 = !DILocation(line: 52, column: 60, scope: !1584)
!1589 = !DILocation(line: 54, column: 9, scope: !1584)
!1590 = !DILocation(line: 54, column: 2, scope: !1584)
!1591 = distinct !DISubprogram(name: "mlxsw_afk_picker_count_hits", scope: !3, file: !3, line: 142, type: !1592, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !157, !1486, !5}
!1594 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1591, file: !3, line: 142, type: !157)
!1595 = !DILocation(line: 142, column: 59, scope: !1591)
!1596 = !DILocalVariable(name: "picker", arg: 2, scope: !1591, file: !3, line: 143, type: !1486)
!1597 = !DILocation(line: 143, column: 31, scope: !1591)
!1598 = !DILocalVariable(name: "element", arg: 3, scope: !1591, file: !3, line: 144, type: !5)
!1599 = !DILocation(line: 144, column: 29, scope: !1591)
!1600 = !DILocalVariable(name: "i", scope: !1591, file: !3, line: 146, type: !72)
!1601 = !DILocation(line: 146, column: 6, scope: !1591)
!1602 = !DILocalVariable(name: "j", scope: !1591, file: !3, line: 147, type: !72)
!1603 = !DILocation(line: 147, column: 6, scope: !1591)
!1604 = !DILocation(line: 149, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 149, column: 2)
!1606 = !DILocation(line: 149, column: 7, scope: !1605)
!1607 = !DILocation(line: 149, column: 14, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 149, column: 2)
!1609 = !DILocation(line: 149, column: 18, scope: !1608)
!1610 = !DILocation(line: 149, column: 29, scope: !1608)
!1611 = !DILocation(line: 149, column: 16, scope: !1608)
!1612 = !DILocation(line: 149, column: 2, scope: !1605)
!1613 = !DILocalVariable(name: "block", scope: !1614, file: !3, line: 150, type: !85)
!1614 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 149, column: 48)
!1615 = !DILocation(line: 150, column: 33, scope: !1614)
!1616 = !DILocation(line: 150, column: 42, scope: !1614)
!1617 = !DILocation(line: 150, column: 53, scope: !1614)
!1618 = !DILocation(line: 150, column: 60, scope: !1614)
!1619 = !DILocation(line: 152, column: 10, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 152, column: 3)
!1621 = !DILocation(line: 152, column: 8, scope: !1620)
!1622 = !DILocation(line: 152, column: 15, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 152, column: 3)
!1624 = !DILocation(line: 152, column: 19, scope: !1623)
!1625 = !DILocation(line: 152, column: 26, scope: !1623)
!1626 = !DILocation(line: 152, column: 17, scope: !1623)
!1627 = !DILocation(line: 152, column: 3, scope: !1620)
!1628 = !DILocalVariable(name: "elinst", scope: !1629, file: !3, line: 153, type: !96)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 152, column: 48)
!1630 = !DILocation(line: 153, column: 35, scope: !1629)
!1631 = !DILocation(line: 155, column: 14, scope: !1629)
!1632 = !DILocation(line: 155, column: 21, scope: !1629)
!1633 = !DILocation(line: 155, column: 31, scope: !1629)
!1634 = !DILocation(line: 155, column: 11, scope: !1629)
!1635 = !DILocation(line: 156, column: 8, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 156, column: 8)
!1637 = !DILocation(line: 156, column: 16, scope: !1636)
!1638 = !DILocation(line: 156, column: 27, scope: !1636)
!1639 = !DILocation(line: 156, column: 24, scope: !1636)
!1640 = !DILocation(line: 156, column: 8, scope: !1629)
!1641 = !DILocation(line: 157, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 156, column: 36)
!1643 = !DILocation(line: 157, column: 24, scope: !1642)
!1644 = !DILocation(line: 157, column: 32, scope: !1642)
!1645 = !DILocation(line: 157, column: 37, scope: !1642)
!1646 = !DILocation(line: 157, column: 40, scope: !1642)
!1647 = !DILocation(line: 157, column: 5, scope: !1642)
!1648 = !DILocation(line: 158, column: 5, scope: !1642)
!1649 = !DILocation(line: 158, column: 13, scope: !1642)
!1650 = !DILocation(line: 158, column: 18, scope: !1642)
!1651 = !DILocation(line: 158, column: 21, scope: !1642)
!1652 = !DILocation(line: 158, column: 26, scope: !1642)
!1653 = !DILocation(line: 159, column: 4, scope: !1642)
!1654 = !DILocation(line: 160, column: 3, scope: !1629)
!1655 = !DILocation(line: 152, column: 44, scope: !1623)
!1656 = !DILocation(line: 152, column: 3, scope: !1623)
!1657 = distinct !{!1657, !1627, !1658}
!1658 = !DILocation(line: 160, column: 3, scope: !1620)
!1659 = !DILocation(line: 161, column: 2, scope: !1614)
!1660 = !DILocation(line: 149, column: 44, scope: !1608)
!1661 = !DILocation(line: 149, column: 2, scope: !1608)
!1662 = distinct !{!1662, !1612, !1663}
!1663 = !DILocation(line: 161, column: 2, scope: !1605)
!1664 = !DILocation(line: 162, column: 1, scope: !1591)
!1665 = distinct !DISubprogram(name: "mlxsw_afk_picker_most_hits_get", scope: !3, file: !3, line: 183, type: !1666, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!72, !157, !1486}
!1668 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1665, file: !3, line: 183, type: !157)
!1669 = !DILocation(line: 183, column: 61, scope: !1665)
!1670 = !DILocalVariable(name: "picker", arg: 2, scope: !1665, file: !3, line: 184, type: !1486)
!1671 = !DILocation(line: 184, column: 33, scope: !1665)
!1672 = !DILocalVariable(name: "most_index", scope: !1665, file: !3, line: 186, type: !72)
!1673 = !DILocation(line: 186, column: 6, scope: !1665)
!1674 = !DILocalVariable(name: "most_hits", scope: !1665, file: !3, line: 187, type: !72)
!1675 = !DILocation(line: 187, column: 6, scope: !1665)
!1676 = !DILocalVariable(name: "i", scope: !1665, file: !3, line: 188, type: !72)
!1677 = !DILocation(line: 188, column: 6, scope: !1665)
!1678 = !DILocation(line: 190, column: 9, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 190, column: 2)
!1680 = !DILocation(line: 190, column: 7, scope: !1679)
!1681 = !DILocation(line: 190, column: 14, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 190, column: 2)
!1683 = !DILocation(line: 190, column: 18, scope: !1682)
!1684 = !DILocation(line: 190, column: 29, scope: !1682)
!1685 = !DILocation(line: 190, column: 16, scope: !1682)
!1686 = !DILocation(line: 190, column: 2, scope: !1679)
!1687 = !DILocation(line: 191, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 191, column: 7)
!1689 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 190, column: 48)
!1690 = !DILocation(line: 191, column: 15, scope: !1688)
!1691 = !DILocation(line: 191, column: 20, scope: !1688)
!1692 = !DILocation(line: 191, column: 23, scope: !1688)
!1693 = !DILocation(line: 191, column: 31, scope: !1688)
!1694 = !DILocation(line: 191, column: 29, scope: !1688)
!1695 = !DILocation(line: 191, column: 7, scope: !1689)
!1696 = !DILocation(line: 192, column: 16, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 191, column: 42)
!1698 = !DILocation(line: 192, column: 24, scope: !1697)
!1699 = !DILocation(line: 192, column: 29, scope: !1697)
!1700 = !DILocation(line: 192, column: 32, scope: !1697)
!1701 = !DILocation(line: 192, column: 14, scope: !1697)
!1702 = !DILocation(line: 193, column: 17, scope: !1697)
!1703 = !DILocation(line: 193, column: 15, scope: !1697)
!1704 = !DILocation(line: 194, column: 3, scope: !1697)
!1705 = !DILocation(line: 195, column: 2, scope: !1689)
!1706 = !DILocation(line: 190, column: 44, scope: !1682)
!1707 = !DILocation(line: 190, column: 2, scope: !1682)
!1708 = distinct !{!1708, !1686, !1709}
!1709 = !DILocation(line: 195, column: 2, scope: !1679)
!1710 = !DILocation(line: 196, column: 9, scope: !1665)
!1711 = !DILocation(line: 196, column: 2, scope: !1665)
!1712 = distinct !DISubprogram(name: "mlxsw_afk_picker_key_info_add", scope: !3, file: !3, line: 199, type: !1713, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!72, !157, !1486, !72, !64}
!1715 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1712, file: !3, line: 199, type: !157)
!1716 = !DILocation(line: 199, column: 60, scope: !1712)
!1717 = !DILocalVariable(name: "picker", arg: 2, scope: !1712, file: !3, line: 200, type: !1486)
!1718 = !DILocation(line: 200, column: 32, scope: !1712)
!1719 = !DILocalVariable(name: "block_index", arg: 3, scope: !1712, file: !3, line: 201, type: !72)
!1720 = !DILocation(line: 201, column: 11, scope: !1712)
!1721 = !DILocalVariable(name: "key_info", arg: 4, scope: !1712, file: !3, line: 202, type: !64)
!1722 = !DILocation(line: 202, column: 34, scope: !1712)
!1723 = !DILocalVariable(name: "element", scope: !1712, file: !3, line: 204, type: !5)
!1724 = !DILocation(line: 204, column: 25, scope: !1712)
!1725 = !DILocation(line: 206, column: 6, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 206, column: 6)
!1727 = !DILocation(line: 206, column: 16, scope: !1726)
!1728 = !DILocation(line: 206, column: 32, scope: !1726)
!1729 = !DILocation(line: 206, column: 43, scope: !1726)
!1730 = !DILocation(line: 206, column: 29, scope: !1726)
!1731 = !DILocation(line: 206, column: 6, scope: !1712)
!1732 = !DILocation(line: 207, column: 3, scope: !1726)
!1733 = !DILocation(line: 209, column: 2, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 209, column: 2)
!1735 = !DILocation(line: 209, column: 2, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 209, column: 2)
!1737 = !DILocation(line: 211, column: 41, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 210, column: 28)
!1739 = !DILocation(line: 211, column: 51, scope: !1738)
!1740 = !DILocation(line: 211, column: 3, scope: !1738)
!1741 = !DILocation(line: 211, column: 13, scope: !1738)
!1742 = !DILocation(line: 211, column: 30, scope: !1738)
!1743 = !DILocation(line: 211, column: 39, scope: !1738)
!1744 = !DILocation(line: 212, column: 32, scope: !1738)
!1745 = !DILocation(line: 212, column: 42, scope: !1738)
!1746 = !DILocation(line: 212, column: 51, scope: !1738)
!1747 = !DILocation(line: 212, column: 3, scope: !1738)
!1748 = !DILocation(line: 213, column: 2, scope: !1738)
!1749 = distinct !{!1749, !1733, !1750}
!1750 = !DILocation(line: 213, column: 2, scope: !1734)
!1751 = !DILocation(line: 216, column: 7, scope: !1712)
!1752 = !DILocation(line: 216, column: 18, scope: !1712)
!1753 = !DILocation(line: 216, column: 25, scope: !1712)
!1754 = !DILocation(line: 215, column: 2, scope: !1712)
!1755 = !DILocation(line: 215, column: 12, scope: !1712)
!1756 = !DILocation(line: 215, column: 19, scope: !1712)
!1757 = !DILocation(line: 215, column: 29, scope: !1712)
!1758 = !DILocation(line: 215, column: 43, scope: !1712)
!1759 = !DILocation(line: 217, column: 2, scope: !1712)
!1760 = !DILocation(line: 217, column: 12, scope: !1712)
!1761 = !DILocation(line: 217, column: 24, scope: !1712)
!1762 = !DILocation(line: 218, column: 2, scope: !1712)
!1763 = !DILocation(line: 219, column: 1, scope: !1712)
!1764 = distinct !DISubprogram(name: "mlxsw_afk_picker_subtract_hits", scope: !3, file: !3, line: 164, type: !1765, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !157, !1486, !72}
!1767 = !DILocalVariable(name: "mlxsw_afk", arg: 1, scope: !1764, file: !3, line: 164, type: !157)
!1768 = !DILocation(line: 164, column: 62, scope: !1764)
!1769 = !DILocalVariable(name: "picker", arg: 2, scope: !1764, file: !3, line: 165, type: !1486)
!1770 = !DILocation(line: 165, column: 34, scope: !1764)
!1771 = !DILocalVariable(name: "block_index", arg: 3, scope: !1764, file: !3, line: 166, type: !72)
!1772 = !DILocation(line: 166, column: 13, scope: !1764)
!1773 = !DILocalVariable(name: "hits_element", scope: !1764, file: !3, line: 168, type: !79)
!1774 = !DILocation(line: 168, column: 2, scope: !1764)
!1775 = !DILocalVariable(name: "i", scope: !1764, file: !3, line: 169, type: !72)
!1776 = !DILocation(line: 169, column: 6, scope: !1764)
!1777 = !DILocalVariable(name: "j", scope: !1764, file: !3, line: 170, type: !72)
!1778 = !DILocation(line: 170, column: 6, scope: !1764)
!1779 = !DILocation(line: 172, column: 2, scope: !1764)
!1780 = !DILocation(line: 172, column: 25, scope: !1764)
!1781 = !DILocation(line: 172, column: 33, scope: !1764)
!1782 = !DILocation(line: 172, column: 38, scope: !1764)
!1783 = !DILocation(line: 172, column: 51, scope: !1764)
!1784 = !DILocation(line: 175, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 175, column: 2)
!1786 = !DILocation(line: 175, column: 7, scope: !1785)
!1787 = !DILocation(line: 175, column: 14, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 175, column: 2)
!1789 = !DILocation(line: 175, column: 18, scope: !1788)
!1790 = !DILocation(line: 175, column: 29, scope: !1788)
!1791 = !DILocation(line: 175, column: 16, scope: !1788)
!1792 = !DILocation(line: 175, column: 2, scope: !1785)
!1793 = !DILocation(line: 176, column: 3, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 176, column: 3)
!1795 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 175, column: 48)
!1796 = !DILocation(line: 176, column: 3, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 176, column: 3)
!1798 = !DILocation(line: 177, column: 29, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 177, column: 8)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 176, column: 60)
!1801 = !DILocation(line: 177, column: 32, scope: !1799)
!1802 = !DILocation(line: 177, column: 40, scope: !1799)
!1803 = !DILocation(line: 177, column: 45, scope: !1799)
!1804 = !DILocation(line: 177, column: 48, scope: !1799)
!1805 = !DILocation(line: 177, column: 8, scope: !1799)
!1806 = !DILocation(line: 177, column: 8, scope: !1800)
!1807 = !DILocation(line: 178, column: 5, scope: !1799)
!1808 = !DILocation(line: 178, column: 13, scope: !1799)
!1809 = !DILocation(line: 178, column: 18, scope: !1799)
!1810 = !DILocation(line: 178, column: 21, scope: !1799)
!1811 = !DILocation(line: 178, column: 26, scope: !1799)
!1812 = !DILocation(line: 179, column: 3, scope: !1800)
!1813 = distinct !{!1813, !1793, !1814}
!1814 = !DILocation(line: 179, column: 3, scope: !1794)
!1815 = !DILocation(line: 180, column: 2, scope: !1795)
!1816 = !DILocation(line: 175, column: 44, scope: !1788)
!1817 = !DILocation(line: 175, column: 2, scope: !1788)
!1818 = distinct !{!1818, !1792, !1819}
!1819 = !DILocation(line: 180, column: 2, scope: !1785)
!1820 = !DILocation(line: 181, column: 1, scope: !1764)
!1821 = distinct !DISubprogram(name: "__set_bit", scope: !1822, file: !1822, line: 25, type: !1823, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1822 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !135, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!1827 = !DILocalVariable(name: "nr", arg: 1, scope: !1828, file: !1349, line: 66, type: !135)
!1828 = distinct !DISubprogram(name: "arch___set_bit", scope: !1349, file: !1349, line: 66, type: !1823, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1829 = !DILocation(line: 66, column: 21, scope: !1828, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 28, column: 2, scope: !1821)
!1831 = !DILocalVariable(name: "addr", arg: 2, scope: !1828, file: !1349, line: 66, type: !1825)
!1832 = !DILocation(line: 66, column: 49, scope: !1828, inlinedAt: !1830)
!1833 = !DILocalVariable(name: "v", arg: 1, scope: !1834, file: !1835, line: 39, type: !1838)
!1834 = distinct !DISubprogram(name: "instrument_write", scope: !1835, file: !1835, line: 39, type: !1836, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1835 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838, !129}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1841 = !DILocation(line: 39, column: 67, scope: !1834, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 27, column: 2, scope: !1821)
!1843 = !DILocalVariable(name: "size", arg: 2, scope: !1834, file: !1835, line: 39, type: !129)
!1844 = !DILocation(line: 39, column: 77, scope: !1834, inlinedAt: !1842)
!1845 = !DILocalVariable(name: "nr", arg: 1, scope: !1821, file: !1822, line: 25, type: !135)
!1846 = !DILocation(line: 25, column: 35, scope: !1821)
!1847 = !DILocalVariable(name: "addr", arg: 2, scope: !1821, file: !1822, line: 25, type: !1825)
!1848 = !DILocation(line: 25, column: 63, scope: !1821)
!1849 = !DILocation(line: 27, column: 19, scope: !1821)
!1850 = !DILocation(line: 27, column: 26, scope: !1821)
!1851 = !DILocation(line: 27, column: 24, scope: !1821)
!1852 = !DILocation(line: 41, column: 20, scope: !1834, inlinedAt: !1842)
!1853 = !DILocation(line: 41, column: 23, scope: !1834, inlinedAt: !1842)
!1854 = !DILocation(line: 41, column: 2, scope: !1834, inlinedAt: !1842)
!1855 = !DILocation(line: 42, column: 2, scope: !1834, inlinedAt: !1842)
!1856 = !DILocation(line: 28, column: 17, scope: !1821)
!1857 = !DILocation(line: 28, column: 21, scope: !1821)
!1858 = !DILocation(line: 68, column: 44, scope: !1828, inlinedAt: !1830)
!1859 = !DILocation(line: 68, column: 56, scope: !1828, inlinedAt: !1830)
!1860 = !DILocation(line: 68, column: 2, scope: !1828, inlinedAt: !1830)
!1861 = !{i32 -2147197623}
!1862 = !DILocation(line: 29, column: 1, scope: !1821)
!1863 = distinct !DISubprogram(name: "kasan_check_write", scope: !1864, file: !1864, line: 38, type: !1865, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1864 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!113, !1838, !7}
!1867 = !DILocalVariable(name: "p", arg: 1, scope: !1863, file: !1864, line: 38, type: !1838)
!1868 = !DILocation(line: 38, column: 59, scope: !1863)
!1869 = !DILocalVariable(name: "size", arg: 2, scope: !1863, file: !1864, line: 38, type: !7)
!1870 = !DILocation(line: 38, column: 75, scope: !1863)
!1871 = !DILocation(line: 40, column: 2, scope: !1863)
!1872 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1873, file: !1873, line: 178, type: !1874, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1873 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1838, !129, !72}
!1876 = !DILocalVariable(name: "ptr", arg: 1, scope: !1872, file: !1873, line: 178, type: !1838)
!1877 = !DILocation(line: 178, column: 60, scope: !1872)
!1878 = !DILocalVariable(name: "size", arg: 2, scope: !1872, file: !1873, line: 178, type: !129)
!1879 = !DILocation(line: 178, column: 72, scope: !1872)
!1880 = !DILocalVariable(name: "type", arg: 3, scope: !1872, file: !1873, line: 179, type: !72)
!1881 = !DILocation(line: 179, column: 15, scope: !1872)
!1882 = !DILocation(line: 179, column: 23, scope: !1872)
!1883 = distinct !DISubprogram(name: "__test_and_clear_bit", scope: !1822, file: !1822, line: 107, type: !1884, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!113, !135, !1825}
!1886 = !DILocalVariable(name: "nr", arg: 1, scope: !1887, file: !1349, line: 174, type: !135)
!1887 = distinct !DISubprogram(name: "arch___test_and_clear_bit", scope: !1349, file: !1349, line: 174, type: !1884, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1888 = !DILocation(line: 174, column: 32, scope: !1887, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 110, column: 9, scope: !1883)
!1890 = !DILocalVariable(name: "addr", arg: 2, scope: !1887, file: !1349, line: 174, type: !1825)
!1891 = !DILocation(line: 174, column: 60, scope: !1887, inlinedAt: !1889)
!1892 = !DILocalVariable(name: "oldbit", scope: !1887, file: !1349, line: 176, type: !113)
!1893 = !DILocation(line: 176, column: 7, scope: !1887, inlinedAt: !1889)
!1894 = !DILocalVariable(name: "nr", arg: 1, scope: !1883, file: !1822, line: 107, type: !135)
!1895 = !DILocation(line: 107, column: 46, scope: !1883)
!1896 = !DILocalVariable(name: "addr", arg: 2, scope: !1883, file: !1822, line: 107, type: !1825)
!1897 = !DILocation(line: 107, column: 74, scope: !1883)
!1898 = !DILocation(line: 109, column: 32, scope: !1883)
!1899 = !DILocation(line: 109, column: 36, scope: !1883)
!1900 = !DILocation(line: 109, column: 2, scope: !1883)
!1901 = !DILocation(line: 110, column: 35, scope: !1883)
!1902 = !DILocation(line: 110, column: 39, scope: !1883)
!1903 = !DILocation(line: 181, column: 10, scope: !1887, inlinedAt: !1889)
!1904 = !DILocation(line: 181, column: 22, scope: !1887, inlinedAt: !1889)
!1905 = !DILocation(line: 178, column: 2, scope: !1887, inlinedAt: !1889)
!1906 = !{i32 -2147191401, i32 -2147191338}
!1907 = !DILocation(line: 182, column: 9, scope: !1887, inlinedAt: !1889)
!1908 = !DILocation(line: 110, column: 2, scope: !1883)
!1909 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !1822, file: !1822, line: 61, type: !1823, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1910 = !DILocalVariable(name: "v", arg: 1, scope: !1911, file: !1835, line: 54, type: !1838)
!1911 = distinct !DISubprogram(name: "instrument_read_write", scope: !1835, file: !1835, line: 54, type: !1836, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1912 = !DILocation(line: 54, column: 72, scope: !1911, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 81, column: 3, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !1822, line: 80, column: 9)
!1915 = distinct !DILexicalBlock(scope: !1909, file: !1822, line: 63, column: 6)
!1916 = !DILocalVariable(name: "size", arg: 2, scope: !1911, file: !1835, line: 54, type: !129)
!1917 = !DILocation(line: 54, column: 82, scope: !1911, inlinedAt: !1913)
!1918 = !DILocalVariable(name: "nr", arg: 1, scope: !1909, file: !1822, line: 61, type: !135)
!1919 = !DILocation(line: 61, column: 55, scope: !1909)
!1920 = !DILocalVariable(name: "addr", arg: 2, scope: !1909, file: !1822, line: 61, type: !1825)
!1921 = !DILocation(line: 61, column: 83, scope: !1909)
!1922 = !DILocation(line: 81, column: 25, scope: !1914)
!1923 = !DILocation(line: 81, column: 32, scope: !1914)
!1924 = !DILocation(line: 81, column: 30, scope: !1914)
!1925 = !DILocation(line: 56, column: 20, scope: !1911, inlinedAt: !1913)
!1926 = !DILocation(line: 56, column: 23, scope: !1911, inlinedAt: !1913)
!1927 = !DILocation(line: 56, column: 2, scope: !1911, inlinedAt: !1913)
!1928 = !DILocation(line: 57, column: 2, scope: !1911, inlinedAt: !1913)
!1929 = !DILocation(line: 83, column: 1, scope: !1909)
!1930 = distinct !DISubprogram(name: "__list_add", scope: !510, file: !510, line: 63, type: !1931, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !57, !57, !57}
!1933 = !DILocalVariable(name: "new", arg: 1, scope: !1930, file: !510, line: 63, type: !57)
!1934 = !DILocation(line: 63, column: 49, scope: !1930)
!1935 = !DILocalVariable(name: "prev", arg: 2, scope: !1930, file: !510, line: 64, type: !57)
!1936 = !DILocation(line: 64, column: 28, scope: !1930)
!1937 = !DILocalVariable(name: "next", arg: 3, scope: !1930, file: !510, line: 65, type: !57)
!1938 = !DILocation(line: 65, column: 28, scope: !1930)
!1939 = !DILocation(line: 67, column: 24, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !510, line: 67, column: 6)
!1941 = !DILocation(line: 67, column: 29, scope: !1940)
!1942 = !DILocation(line: 67, column: 35, scope: !1940)
!1943 = !DILocation(line: 67, column: 7, scope: !1940)
!1944 = !DILocation(line: 67, column: 6, scope: !1930)
!1945 = !DILocation(line: 68, column: 3, scope: !1940)
!1946 = !DILocation(line: 70, column: 15, scope: !1930)
!1947 = !DILocation(line: 70, column: 2, scope: !1930)
!1948 = !DILocation(line: 70, column: 8, scope: !1930)
!1949 = !DILocation(line: 70, column: 13, scope: !1930)
!1950 = !DILocation(line: 71, column: 14, scope: !1930)
!1951 = !DILocation(line: 71, column: 2, scope: !1930)
!1952 = !DILocation(line: 71, column: 7, scope: !1930)
!1953 = !DILocation(line: 71, column: 12, scope: !1930)
!1954 = !DILocation(line: 72, column: 14, scope: !1930)
!1955 = !DILocation(line: 72, column: 2, scope: !1930)
!1956 = !DILocation(line: 72, column: 7, scope: !1930)
!1957 = !DILocation(line: 72, column: 12, scope: !1930)
!1958 = !DILocation(line: 73, column: 2, scope: !1930)
!1959 = !DILocation(line: 73, column: 2, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1930, file: !510, line: 73, column: 2)
!1961 = !DILocation(line: 73, column: 2, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1960, file: !510, line: 73, column: 2)
!1963 = !DILocation(line: 73, column: 2, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !510, line: 73, column: 2)
!1965 = !DILocation(line: 74, column: 1, scope: !1930)
!1966 = distinct !DISubprogram(name: "__list_add_valid", scope: !510, file: !510, line: 45, type: !1967, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!113, !57, !57, !57}
!1969 = !DILocalVariable(name: "new", arg: 1, scope: !1966, file: !510, line: 45, type: !57)
!1970 = !DILocation(line: 45, column: 55, scope: !1966)
!1971 = !DILocalVariable(name: "prev", arg: 2, scope: !1966, file: !510, line: 46, type: !57)
!1972 = !DILocation(line: 46, column: 23, scope: !1966)
!1973 = !DILocalVariable(name: "next", arg: 3, scope: !1966, file: !510, line: 47, type: !57)
!1974 = !DILocation(line: 47, column: 23, scope: !1966)
!1975 = !DILocation(line: 49, column: 2, scope: !1966)
!1976 = distinct !DISubprogram(name: "list_del", scope: !510, file: !510, line: 144, type: !511, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1977 = !DILocalVariable(name: "entry", arg: 1, scope: !1976, file: !510, line: 144, type: !57)
!1978 = !DILocation(line: 144, column: 47, scope: !1976)
!1979 = !DILocation(line: 146, column: 19, scope: !1976)
!1980 = !DILocation(line: 146, column: 2, scope: !1976)
!1981 = !DILocation(line: 147, column: 2, scope: !1976)
!1982 = !DILocation(line: 147, column: 9, scope: !1976)
!1983 = !DILocation(line: 147, column: 14, scope: !1976)
!1984 = !DILocation(line: 148, column: 2, scope: !1976)
!1985 = !DILocation(line: 148, column: 9, scope: !1976)
!1986 = !DILocation(line: 148, column: 14, scope: !1976)
!1987 = !DILocation(line: 149, column: 1, scope: !1976)
!1988 = distinct !DISubprogram(name: "__list_del_entry", scope: !510, file: !510, line: 130, type: !511, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!1989 = !DILocalVariable(name: "entry", arg: 1, scope: !1988, file: !510, line: 130, type: !57)
!1990 = !DILocation(line: 130, column: 55, scope: !1988)
!1991 = !DILocation(line: 132, column: 30, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !510, line: 132, column: 6)
!1993 = !DILocation(line: 132, column: 7, scope: !1992)
!1994 = !DILocation(line: 132, column: 6, scope: !1988)
!1995 = !DILocation(line: 133, column: 3, scope: !1992)
!1996 = !DILocation(line: 135, column: 13, scope: !1988)
!1997 = !DILocation(line: 135, column: 20, scope: !1988)
!1998 = !DILocation(line: 135, column: 26, scope: !1988)
!1999 = !DILocation(line: 135, column: 33, scope: !1988)
!2000 = !DILocation(line: 135, column: 2, scope: !1988)
!2001 = !DILocation(line: 136, column: 1, scope: !1988)
!2002 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !510, file: !510, line: 51, type: !2003, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!113, !57}
!2005 = !DILocalVariable(name: "entry", arg: 1, scope: !2002, file: !510, line: 51, type: !57)
!2006 = !DILocation(line: 51, column: 61, scope: !2002)
!2007 = !DILocation(line: 53, column: 2, scope: !2002)
!2008 = distinct !DISubprogram(name: "__list_del", scope: !510, file: !510, line: 110, type: !1572, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2009 = !DILocalVariable(name: "prev", arg: 1, scope: !2008, file: !510, line: 110, type: !57)
!2010 = !DILocation(line: 110, column: 50, scope: !2008)
!2011 = !DILocalVariable(name: "next", arg: 2, scope: !2008, file: !510, line: 110, type: !57)
!2012 = !DILocation(line: 110, column: 75, scope: !2008)
!2013 = !DILocation(line: 112, column: 15, scope: !2008)
!2014 = !DILocation(line: 112, column: 2, scope: !2008)
!2015 = !DILocation(line: 112, column: 8, scope: !2008)
!2016 = !DILocation(line: 112, column: 13, scope: !2008)
!2017 = !DILocation(line: 113, column: 2, scope: !2008)
!2018 = !DILocation(line: 113, column: 2, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2008, file: !510, line: 113, column: 2)
!2020 = !DILocation(line: 113, column: 2, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2019, file: !510, line: 113, column: 2)
!2022 = !DILocation(line: 113, column: 2, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !510, line: 113, column: 2)
!2024 = !DILocation(line: 114, column: 1, scope: !2008)
!2025 = distinct !DISubprogram(name: "test_bit", scope: !1822, file: !1822, line: 132, type: !2026, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!113, !135, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!2030 = !DILocalVariable(name: "nr", arg: 1, scope: !2031, file: !1349, line: 210, type: !135)
!2031 = distinct !DISubprogram(name: "variable_test_bit", scope: !1349, file: !1349, line: 210, type: !2026, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2032 = !DILocation(line: 210, column: 52, scope: !2031, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 135, column: 9, scope: !2025)
!2034 = !DILocalVariable(name: "addr", arg: 2, scope: !2031, file: !1349, line: 210, type: !2028)
!2035 = !DILocation(line: 210, column: 86, scope: !2031, inlinedAt: !2033)
!2036 = !DILocalVariable(name: "oldbit", scope: !2031, file: !1349, line: 212, type: !113)
!2037 = !DILocation(line: 212, column: 7, scope: !2031, inlinedAt: !2033)
!2038 = !DILocalVariable(name: "nr", arg: 1, scope: !2039, file: !1349, line: 204, type: !135)
!2039 = distinct !DISubprogram(name: "constant_test_bit", scope: !1349, file: !1349, line: 204, type: !2026, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2040 = !DILocation(line: 204, column: 52, scope: !2039, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 135, column: 9, scope: !2025)
!2042 = !DILocalVariable(name: "addr", arg: 2, scope: !2039, file: !1349, line: 204, type: !2028)
!2043 = !DILocation(line: 204, column: 86, scope: !2039, inlinedAt: !2041)
!2044 = !DILocalVariable(name: "v", arg: 1, scope: !2045, file: !1835, line: 69, type: !1838)
!2045 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1835, file: !1835, line: 69, type: !1836, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2046 = !DILocation(line: 69, column: 73, scope: !2045, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 134, column: 2, scope: !2025)
!2048 = !DILocalVariable(name: "size", arg: 2, scope: !2045, file: !1835, line: 69, type: !129)
!2049 = !DILocation(line: 69, column: 83, scope: !2045, inlinedAt: !2047)
!2050 = !DILocalVariable(name: "nr", arg: 1, scope: !2025, file: !1822, line: 132, type: !135)
!2051 = !DILocation(line: 132, column: 34, scope: !2025)
!2052 = !DILocalVariable(name: "addr", arg: 2, scope: !2025, file: !1822, line: 132, type: !2028)
!2053 = !DILocation(line: 132, column: 68, scope: !2025)
!2054 = !DILocation(line: 134, column: 25, scope: !2025)
!2055 = !DILocation(line: 134, column: 32, scope: !2025)
!2056 = !DILocation(line: 134, column: 30, scope: !2025)
!2057 = !DILocation(line: 71, column: 19, scope: !2045, inlinedAt: !2047)
!2058 = !DILocation(line: 71, column: 22, scope: !2045, inlinedAt: !2047)
!2059 = !DILocation(line: 71, column: 2, scope: !2045, inlinedAt: !2047)
!2060 = !DILocation(line: 72, column: 2, scope: !2045, inlinedAt: !2047)
!2061 = !DILocation(line: 135, column: 9, scope: !2025)
!2062 = !DILocation(line: 206, column: 19, scope: !2039, inlinedAt: !2041)
!2063 = !DILocation(line: 206, column: 22, scope: !2039, inlinedAt: !2041)
!2064 = !DILocation(line: 206, column: 15, scope: !2039, inlinedAt: !2041)
!2065 = !DILocation(line: 207, column: 4, scope: !2039, inlinedAt: !2041)
!2066 = !DILocation(line: 207, column: 9, scope: !2039, inlinedAt: !2041)
!2067 = !DILocation(line: 207, column: 12, scope: !2039, inlinedAt: !2041)
!2068 = !DILocation(line: 206, column: 44, scope: !2039, inlinedAt: !2041)
!2069 = !DILocation(line: 207, column: 37, scope: !2039, inlinedAt: !2041)
!2070 = !DILocation(line: 217, column: 33, scope: !2031, inlinedAt: !2033)
!2071 = !DILocation(line: 217, column: 46, scope: !2031, inlinedAt: !2033)
!2072 = !DILocation(line: 214, column: 2, scope: !2031, inlinedAt: !2033)
!2073 = !{i32 -2147189011, i32 -2147188951}
!2074 = !DILocation(line: 219, column: 9, scope: !2031, inlinedAt: !2033)
!2075 = !DILocation(line: 135, column: 2, scope: !2025)
!2076 = distinct !DISubprogram(name: "kasan_check_read", scope: !1864, file: !1864, line: 34, type: !1865, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2077 = !DILocalVariable(name: "p", arg: 1, scope: !2076, file: !1864, line: 34, type: !1838)
!2078 = !DILocation(line: 34, column: 58, scope: !2076)
!2079 = !DILocalVariable(name: "size", arg: 2, scope: !2076, file: !1864, line: 34, type: !7)
!2080 = !DILocation(line: 34, column: 74, scope: !2076)
!2081 = !DILocation(line: 36, column: 2, scope: !2076)
!2082 = distinct !DISubprogram(name: "__mlxsw_item_offset", scope: !103, file: !103, line: 26, type: !2083, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!7, !873, !94, !129}
!2085 = !DILocalVariable(name: "item", arg: 1, scope: !2082, file: !103, line: 26, type: !873)
!2086 = !DILocation(line: 26, column: 46, scope: !2082)
!2087 = !DILocalVariable(name: "index", arg: 2, scope: !2082, file: !103, line: 26, type: !94)
!2088 = !DILocation(line: 26, column: 67, scope: !2082)
!2089 = !DILocalVariable(name: "typesize", arg: 3, scope: !2082, file: !103, line: 27, type: !129)
!2090 = !DILocation(line: 27, column: 14, scope: !2082)
!2091 = !DILocation(line: 29, column: 2, scope: !2082)
!2092 = !DILocation(line: 29, column: 2, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !103, line: 29, column: 2)
!2094 = distinct !DILexicalBlock(scope: !2082, file: !103, line: 29, column: 2)
!2095 = !DILocation(line: 0, scope: !2093)
!2096 = !DILocation(line: 29, column: 2, scope: !2094)
!2097 = !DILocation(line: 29, column: 2, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2093, file: !103, line: 29, column: 2)
!2099 = !DILocation(line: 29, column: 2, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2098, file: !103, line: 29, column: 2)
!2101 = !DILocation(line: 29, column: 2, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !103, line: 29, column: 2)
!2103 = !{i32 -2144617830, i32 -2144617801, i32 -2144617755, i32 -2144617697, i32 -2144617643, i32 -2144617589, i32 -2144617534, i32 -2144617503}
!2104 = !DILocation(line: 29, column: 2, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !103, line: 29, column: 2)
!2106 = distinct !DILexicalBlock(scope: !2098, file: !103, line: 29, column: 2)
!2107 = !{i32 -2144617039, i32 -2144617032, i32 -2144616978, i32 -2144616947, i32 -2144616917}
!2108 = !DILocation(line: 29, column: 2, scope: !2106)
!2109 = !DILocation(line: 30, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2082, file: !103, line: 30, column: 6)
!2111 = !DILocation(line: 30, column: 12, scope: !2110)
!2112 = !DILocation(line: 30, column: 21, scope: !2110)
!2113 = !DILocation(line: 30, column: 19, scope: !2110)
!2114 = !DILocation(line: 30, column: 30, scope: !2110)
!2115 = !DILocation(line: 30, column: 35, scope: !2110)
!2116 = !DILocation(line: 31, column: 6, scope: !2110)
!2117 = !DILocation(line: 31, column: 12, scope: !2110)
!2118 = !DILocation(line: 31, column: 19, scope: !2110)
!2119 = !DILocation(line: 31, column: 17, scope: !2110)
!2120 = !DILocation(line: 31, column: 28, scope: !2110)
!2121 = !DILocation(line: 31, column: 33, scope: !2110)
!2122 = !DILocation(line: 32, column: 6, scope: !2110)
!2123 = !DILocation(line: 32, column: 12, scope: !2110)
!2124 = !DILocation(line: 32, column: 29, scope: !2110)
!2125 = !DILocation(line: 32, column: 27, scope: !2110)
!2126 = !DILocation(line: 32, column: 38, scope: !2110)
!2127 = !DILocation(line: 30, column: 6, scope: !2082)
!2128 = !DILocation(line: 33, column: 3, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2110, file: !103, line: 32, column: 44)
!2130 = !DILocation(line: 36, column: 3, scope: !2129)
!2131 = !DILocation(line: 36, column: 3, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !103, line: 36, column: 3)
!2133 = !DILocation(line: 36, column: 3, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2132, file: !103, line: 36, column: 3)
!2135 = !DILocation(line: 36, column: 3, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !103, line: 36, column: 3)
!2137 = !{i32 -2144616409, i32 -2144616380, i32 -2144616334, i32 -2144616276, i32 -2144616222, i32 -2144616168, i32 -2144616113, i32 -2144616082}
!2138 = !DILocation(line: 36, column: 3, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !103, line: 36, column: 3)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !103, line: 36, column: 3)
!2141 = !{i32 -2144615618, i32 -2144615611, i32 -2144615557, i32 -2144615526, i32 -2144615496}
!2142 = !DILocation(line: 36, column: 3, scope: !2140)
!2143 = !DILocation(line: 37, column: 2, scope: !2129)
!2144 = !DILocation(line: 39, column: 11, scope: !2082)
!2145 = !DILocation(line: 39, column: 17, scope: !2082)
!2146 = !DILocation(line: 39, column: 26, scope: !2082)
!2147 = !DILocation(line: 39, column: 32, scope: !2082)
!2148 = !DILocation(line: 39, column: 39, scope: !2082)
!2149 = !DILocation(line: 39, column: 37, scope: !2082)
!2150 = !DILocation(line: 39, column: 24, scope: !2082)
!2151 = !DILocation(line: 39, column: 47, scope: !2082)
!2152 = !DILocation(line: 39, column: 53, scope: !2082)
!2153 = !DILocation(line: 39, column: 45, scope: !2082)
!2154 = !DILocation(line: 39, column: 10, scope: !2082)
!2155 = !DILocation(line: 40, column: 3, scope: !2082)
!2156 = !DILocation(line: 39, column: 69, scope: !2082)
!2157 = !DILocation(line: 39, column: 9, scope: !2082)
!2158 = !DILocation(line: 39, column: 2, scope: !2082)
!2159 = distinct !DISubprogram(name: "__fswab32", scope: !2160, file: !2160, line: 57, type: !2161, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2160 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!140, !140}
!2163 = !DILocalVariable(name: "val", arg: 1, scope: !2159, file: !2160, line: 57, type: !140)
!2164 = !DILocation(line: 57, column: 57, scope: !2159)
!2165 = !DILocation(line: 60, column: 23, scope: !2159)
!2166 = !DILocation(line: 60, column: 9, scope: !2159)
!2167 = !DILocation(line: 60, column: 2, scope: !2159)
!2168 = distinct !DISubprogram(name: "__arch_swab32", scope: !2169, file: !2169, line: 8, type: !2161, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2169 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!2170 = !DILocalVariable(name: "val", arg: 1, scope: !2168, file: !2169, line: 8, type: !140)
!2171 = !DILocation(line: 8, column: 61, scope: !2168)
!2172 = !DILocation(line: 10, column: 38, scope: !2168)
!2173 = !DILocation(line: 10, column: 2, scope: !2168)
!2174 = !{i32 374186}
!2175 = !DILocation(line: 11, column: 9, scope: !2168)
!2176 = !DILocation(line: 11, column: 2, scope: !2168)
!2177 = distinct !DISubprogram(name: "mlxsw_afk_block_elinst_get", scope: !3, file: !3, line: 332, type: !2178, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!1115, !85, !5}
!2180 = !DILocalVariable(name: "block", arg: 1, scope: !2177, file: !3, line: 332, type: !85)
!2181 = !DILocation(line: 332, column: 58, scope: !2177)
!2182 = !DILocalVariable(name: "element", arg: 2, scope: !2177, file: !3, line: 333, type: !5)
!2183 = !DILocation(line: 333, column: 30, scope: !2177)
!2184 = !DILocalVariable(name: "i", scope: !2177, file: !3, line: 335, type: !72)
!2185 = !DILocation(line: 335, column: 6, scope: !2177)
!2186 = !DILocation(line: 337, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 337, column: 2)
!2188 = !DILocation(line: 337, column: 7, scope: !2187)
!2189 = !DILocation(line: 337, column: 14, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 337, column: 2)
!2191 = !DILocation(line: 337, column: 18, scope: !2190)
!2192 = !DILocation(line: 337, column: 25, scope: !2190)
!2193 = !DILocation(line: 337, column: 16, scope: !2190)
!2194 = !DILocation(line: 337, column: 2, scope: !2187)
!2195 = !DILocalVariable(name: "elinst", scope: !2196, file: !3, line: 338, type: !96)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 337, column: 47)
!2197 = !DILocation(line: 338, column: 34, scope: !2196)
!2198 = !DILocation(line: 340, column: 13, scope: !2196)
!2199 = !DILocation(line: 340, column: 20, scope: !2196)
!2200 = !DILocation(line: 340, column: 30, scope: !2196)
!2201 = !DILocation(line: 340, column: 10, scope: !2196)
!2202 = !DILocation(line: 341, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 341, column: 7)
!2204 = !DILocation(line: 341, column: 15, scope: !2203)
!2205 = !DILocation(line: 341, column: 26, scope: !2203)
!2206 = !DILocation(line: 341, column: 23, scope: !2203)
!2207 = !DILocation(line: 341, column: 7, scope: !2196)
!2208 = !DILocation(line: 342, column: 11, scope: !2203)
!2209 = !DILocation(line: 342, column: 4, scope: !2203)
!2210 = !DILocation(line: 343, column: 2, scope: !2196)
!2211 = !DILocation(line: 337, column: 43, scope: !2190)
!2212 = !DILocation(line: 337, column: 2, scope: !2190)
!2213 = distinct !{!2213, !2194, !2214}
!2214 = !DILocation(line: 343, column: 2, scope: !2187)
!2215 = !DILocation(line: 344, column: 2, scope: !2177)
!2216 = !DILocation(line: 345, column: 1, scope: !2177)
!2217 = distinct !DISubprogram(name: "mlxsw_sp_afk_encode_u32", scope: !3, file: !3, line: 424, type: !2218, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !873, !873, !173, !173, !72}
!2220 = !DILocalVariable(name: "storage_item", arg: 1, scope: !2217, file: !3, line: 424, type: !873)
!2221 = !DILocation(line: 424, column: 62, scope: !2217)
!2222 = !DILocalVariable(name: "output_item", arg: 2, scope: !2217, file: !3, line: 425, type: !873)
!2223 = !DILocation(line: 425, column: 34, scope: !2217)
!2224 = !DILocalVariable(name: "storage", arg: 3, scope: !2217, file: !3, line: 426, type: !173)
!2225 = !DILocation(line: 426, column: 15, scope: !2217)
!2226 = !DILocalVariable(name: "output", arg: 4, scope: !2217, file: !3, line: 426, type: !173)
!2227 = !DILocation(line: 426, column: 30, scope: !2217)
!2228 = !DILocalVariable(name: "diff", arg: 5, scope: !2217, file: !3, line: 426, type: !72)
!2229 = !DILocation(line: 426, column: 42, scope: !2217)
!2230 = !DILocalVariable(name: "value", scope: !2217, file: !3, line: 428, type: !859)
!2231 = !DILocation(line: 428, column: 6, scope: !2217)
!2232 = !DILocation(line: 430, column: 29, scope: !2217)
!2233 = !DILocation(line: 430, column: 38, scope: !2217)
!2234 = !DILocation(line: 430, column: 10, scope: !2217)
!2235 = !DILocation(line: 430, column: 8, scope: !2217)
!2236 = !DILocation(line: 431, column: 21, scope: !2217)
!2237 = !DILocation(line: 431, column: 29, scope: !2217)
!2238 = !DILocation(line: 431, column: 45, scope: !2217)
!2239 = !DILocation(line: 431, column: 53, scope: !2217)
!2240 = !DILocation(line: 431, column: 51, scope: !2217)
!2241 = !DILocation(line: 431, column: 2, scope: !2217)
!2242 = !DILocation(line: 432, column: 1, scope: !2217)
!2243 = distinct !DISubprogram(name: "mlxsw_sp_afk_encode_buf", scope: !3, file: !3, line: 434, type: !2244, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !873, !873, !173, !173}
!2246 = !DILocalVariable(name: "storage_item", arg: 1, scope: !2243, file: !3, line: 434, type: !873)
!2247 = !DILocation(line: 434, column: 62, scope: !2243)
!2248 = !DILocalVariable(name: "output_item", arg: 2, scope: !2243, file: !3, line: 435, type: !873)
!2249 = !DILocation(line: 435, column: 34, scope: !2243)
!2250 = !DILocalVariable(name: "storage", arg: 3, scope: !2243, file: !3, line: 436, type: !173)
!2251 = !DILocation(line: 436, column: 15, scope: !2243)
!2252 = !DILocalVariable(name: "output", arg: 4, scope: !2243, file: !3, line: 436, type: !173)
!2253 = !DILocation(line: 436, column: 30, scope: !2243)
!2254 = !DILocalVariable(name: "storage_data", scope: !2243, file: !3, line: 438, type: !173)
!2255 = !DILocation(line: 438, column: 8, scope: !2243)
!2256 = !DILocation(line: 438, column: 41, scope: !2243)
!2257 = !DILocation(line: 438, column: 50, scope: !2243)
!2258 = !DILocation(line: 438, column: 23, scope: !2243)
!2259 = !DILocalVariable(name: "output_data", scope: !2243, file: !3, line: 439, type: !173)
!2260 = !DILocation(line: 439, column: 8, scope: !2243)
!2261 = !DILocation(line: 439, column: 40, scope: !2243)
!2262 = !DILocation(line: 439, column: 48, scope: !2243)
!2263 = !DILocation(line: 439, column: 22, scope: !2243)
!2264 = !DILocalVariable(name: "len", scope: !2243, file: !3, line: 440, type: !129)
!2265 = !DILocation(line: 440, column: 9, scope: !2243)
!2266 = !DILocation(line: 440, column: 15, scope: !2243)
!2267 = !DILocation(line: 440, column: 28, scope: !2243)
!2268 = !DILocation(line: 440, column: 33, scope: !2243)
!2269 = !DILocation(line: 442, column: 9, scope: !2243)
!2270 = !DILocation(line: 442, column: 22, scope: !2243)
!2271 = !DILocation(line: 442, column: 36, scope: !2243)
!2272 = !DILocation(line: 442, column: 2, scope: !2243)
!2273 = !DILocation(line: 443, column: 1, scope: !2243)
!2274 = distinct !DISubprogram(name: "__mlxsw_item_get32", scope: !103, file: !103, line: 111, type: !2275, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!859, !121, !873, !94}
!2277 = !DILocalVariable(name: "buf", arg: 1, scope: !2274, file: !103, line: 111, type: !121)
!2278 = !DILocation(line: 111, column: 50, scope: !2274)
!2279 = !DILocalVariable(name: "item", arg: 2, scope: !2274, file: !103, line: 112, type: !873)
!2280 = !DILocation(line: 112, column: 35, scope: !2274)
!2281 = !DILocalVariable(name: "index", arg: 3, scope: !2274, file: !103, line: 113, type: !94)
!2282 = !DILocation(line: 113, column: 25, scope: !2274)
!2283 = !DILocalVariable(name: "offset", scope: !2274, file: !103, line: 115, type: !7)
!2284 = !DILocation(line: 115, column: 15, scope: !2274)
!2285 = !DILocation(line: 115, column: 44, scope: !2274)
!2286 = !DILocation(line: 115, column: 50, scope: !2274)
!2287 = !DILocation(line: 115, column: 24, scope: !2274)
!2288 = !DILocalVariable(name: "b", scope: !2274, file: !103, line: 116, type: !137)
!2289 = !DILocation(line: 116, column: 10, scope: !2274)
!2290 = !DILocation(line: 116, column: 25, scope: !2274)
!2291 = !DILocation(line: 116, column: 14, scope: !2274)
!2292 = !DILocalVariable(name: "tmp", scope: !2274, file: !103, line: 117, type: !859)
!2293 = !DILocation(line: 117, column: 6, scope: !2274)
!2294 = !DILocation(line: 119, column: 8, scope: !2274)
!2295 = !DILocation(line: 119, column: 6, scope: !2274)
!2296 = !DILocation(line: 120, column: 10, scope: !2274)
!2297 = !DILocation(line: 120, column: 16, scope: !2274)
!2298 = !DILocation(line: 120, column: 6, scope: !2274)
!2299 = !DILocation(line: 121, column: 9, scope: !2274)
!2300 = !DILocation(line: 121, column: 6, scope: !2274)
!2301 = !DILocation(line: 122, column: 6, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2274, file: !103, line: 122, column: 6)
!2303 = !DILocation(line: 122, column: 12, scope: !2302)
!2304 = !DILocation(line: 122, column: 6, scope: !2274)
!2305 = !DILocation(line: 123, column: 11, scope: !2302)
!2306 = !DILocation(line: 123, column: 17, scope: !2302)
!2307 = !DILocation(line: 123, column: 7, scope: !2302)
!2308 = !DILocation(line: 123, column: 3, scope: !2302)
!2309 = !DILocation(line: 124, column: 9, scope: !2274)
!2310 = !DILocation(line: 124, column: 2, scope: !2274)
!2311 = distinct !DISubprogram(name: "__mlxsw_item_data", scope: !103, file: !103, line: 196, type: !2312, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!173, !173, !873, !94}
!2314 = !DILocalVariable(name: "buf", arg: 1, scope: !2311, file: !103, line: 196, type: !173)
!2315 = !DILocation(line: 196, column: 45, scope: !2311)
!2316 = !DILocalVariable(name: "item", arg: 2, scope: !2311, file: !103, line: 196, type: !873)
!2317 = !DILocation(line: 196, column: 75, scope: !2311)
!2318 = !DILocalVariable(name: "index", arg: 3, scope: !2311, file: !103, line: 197, type: !94)
!2319 = !DILocation(line: 197, column: 26, scope: !2311)
!2320 = !DILocalVariable(name: "offset", scope: !2311, file: !103, line: 199, type: !7)
!2321 = !DILocation(line: 199, column: 15, scope: !2311)
!2322 = !DILocation(line: 199, column: 44, scope: !2311)
!2323 = !DILocation(line: 199, column: 50, scope: !2311)
!2324 = !DILocation(line: 199, column: 24, scope: !2311)
!2325 = !DILocation(line: 201, column: 10, scope: !2311)
!2326 = !DILocation(line: 201, column: 14, scope: !2311)
!2327 = !DILocation(line: 201, column: 2, scope: !2311)
