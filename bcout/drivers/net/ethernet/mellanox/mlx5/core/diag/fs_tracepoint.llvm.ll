; ModuleID = '../bcout/drivers/net/ethernet/mellanox/mlx5/core/diag/fs_tracepoint.llvm.bc'
source_filename = "drivers/net/ethernet/mellanox/mlx5/core/diag/fs_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.in6_addr = type { %union.anon.9 }
%union.anon.9 = type { [4 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { i8*, i64, i64, i64 }
%struct.anon.3 = type { i64, i64 }
%struct.anon.4 = type { i64, i64 }
%struct.anon.5 = type { i16, i16 }
%struct.anon.6 = type { i8, i8 }
%struct.anon.7 = type { i32, i32 }
%struct.anon.8 = type { i32, i32 }
%struct.anon.10 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.11 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.12 = type { i8, i8 }
%struct.anon.13 = type { i16, i16 }
%struct.anon.14 = type { i16, i16 }
%struct.anon.15 = type { i16, i16 }
%struct.anon.16 = type { i16, i16 }
%struct.anon.17 = type { i16, i16 }
%struct.anon.18 = type { i16, i16 }
%struct.anon.19 = type { i8, i8 }
%struct.anon.20 = type { i8, i8 }
%struct.anon.21 = type { i8, i8 }
%struct.anon.22 = type { i8, i8 }
%struct.anon.23 = type { i8, i8 }
%struct.anon.24 = type { i8, i8 }
%struct.anon.25 = type { i8, i8 }
%struct.anon.26 = type { i64, i64 }
%struct.anon.27 = type { i32, i32 }
%struct.anon.28 = type { i16, i16 }
%struct.anon.29 = type { i8, i8 }
%struct.anon.30 = type { i8, i8 }
%struct.anon.31 = type { i16, i16 }
%struct.anon.32 = type { i8, i8 }
%struct.anon.33 = type { i8, i8 }
%struct.anon.34 = type { i16, i16 }
%struct.anon.35 = type { i8, i8 }
%struct.anon.36 = type { i8, i8 }
%struct.anon.37 = type { i8, i8 }
%struct.anon.38 = type { i8, i8 }
%struct.anon.39 = type { i8, i8 }
%struct.anon.40 = type { i32, i32 }
%struct.anon.41 = type { i32, i32 }
%struct.anon.42 = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i16, i16, %struct.mlx5_pkt_reformat*, i8 }
%struct.mlx5_pkt_reformat = type { i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.mlx5_fs_dr_action }
%struct.mlx5_fs_dr_action = type { %struct.mlx5dr_action* }
%struct.mlx5dr_action = type opaque
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, %struct.mlx5_flow_namespace* }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, %struct.fs_node*, %struct.fs_node*, %struct.rw_semaphore, %struct.refcount_struct, i8, void (%struct.fs_node*)*, void (%struct.fs_node*)*, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5_fs_dr_table = type { %struct.mlx5dr_table*, %struct.mlx5dr_action* }
%struct.mlx5dr_table = type opaque
%struct.anon = type { i8, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, %struct.bucket_table*, %struct.lockdep_map, [0 x %struct.rhash_lock_head*] }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.lockdep_map = type {}
%struct.rhash_lock_head = type {}
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.mlx5_flow_namespace = type { %struct.fs_node, i32 }

@.str = private unnamed_addr constant [9 x i8] c"[outer] \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[misc] \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[inner] \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vport=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ft=%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ft_num=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"tir=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"counter_id=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"port\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"smac=%pM \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dmac=%pM \00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ethertype=%04x \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"src_ipv4=%pI4 \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"dst_ipv4=%pI4 \00", align 1
@print_lyr_2_4_hdrs.full_ones = internal constant %struct.in6_addr { %union.anon.9 { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] } }, align 4, !dbg !0
@.str.14 = private unnamed_addr constant [15 x i8] c"src_ipv6=%pI6 \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"dst_ipv6=%pI6 \00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"ip_protocol=%02x \00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tcp_flags=%x \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"tcp_sport=%u \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"tcp_dport=%u \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"udp_sport=%u \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"udp_dport=%u \00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"first_vid=%04x \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"first_prio=%x \00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"first_cfi=%d \00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"ip_dscp=%02x \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"ip_ecn=%x \00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"cvlan_tag=%d \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"svlan_tag=%d \00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"frag=%d \00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"gre_key=%llu \00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"source_sqn=%u \00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"source_port=%u \00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"outer_second_prio=%u \00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"outer_second_cfi=%u \00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"outer_second_vid=%u \00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"inner_second_prio=%u \00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"inner_second_cfi=%u \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"inner_second_vid=%u \00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"outer_second_cvlan_tag=%u \00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"inner_second_cvlan_tag=%u \00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"outer_second_svlan_tag=%u \00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"inner_second_svlan_tag=%u \00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"gre_protocol=%u \00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"vxlan_vni=%u \00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"outer_ipv6_flow_label=%x \00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"inner_ipv6_flow_label=%x \00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @parse_fs_hdrs(%struct.trace_seq* %p, i8 zeroext %match_criteria_enable, i32* %mask_outer, i32* %mask_misc, i32* %mask_inner, i32* %value_outer, i32* %value_misc, i32* %value_inner) #0 !dbg !151 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %match_criteria_enable.addr = alloca i8, align 1
  %mask_outer.addr = alloca i32*, align 8
  %mask_misc.addr = alloca i32*, align 8
  %mask_inner.addr = alloca i32*, align 8
  %value_outer.addr = alloca i32*, align 8
  %value_misc.addr = alloca i32*, align 8
  %value_inner.addr = alloca i32*, align 8
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !156, metadata !DIExpression()), !dbg !157
  store i8 %match_criteria_enable, i8* %match_criteria_enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %match_criteria_enable.addr, metadata !158, metadata !DIExpression()), !dbg !159
  store i32* %mask_outer, i32** %mask_outer.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mask_outer.addr, metadata !160, metadata !DIExpression()), !dbg !161
  store i32* %mask_misc, i32** %mask_misc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mask_misc.addr, metadata !162, metadata !DIExpression()), !dbg !163
  store i32* %mask_inner, i32** %mask_inner.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mask_inner.addr, metadata !164, metadata !DIExpression()), !dbg !165
  store i32* %value_outer, i32** %value_outer.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value_outer.addr, metadata !166, metadata !DIExpression()), !dbg !167
  store i32* %value_misc, i32** %value_misc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value_misc.addr, metadata !168, metadata !DIExpression()), !dbg !169
  store i32* %value_inner, i32** %value_inner.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value_inner.addr, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !174
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #6, !dbg !175
  store i8* %call, i8** %ret, align 8, !dbg !173
  %1 = load i8, i8* %match_criteria_enable.addr, align 1, !dbg !176
  %conv = zext i8 %1 to i32, !dbg !176
  %and = and i32 %conv, 1, !dbg !178
  %tobool = icmp ne i32 %and, 0, !dbg !178
  br i1 %tobool, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %2 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !180
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #6, !dbg !182
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !183
  %4 = load i32*, i32** %mask_outer.addr, align 8, !dbg !184
  %5 = load i32*, i32** %value_outer.addr, align 8, !dbg !185
  call void @print_lyr_2_4_hdrs(%struct.trace_seq* %3, i32* %4, i32* %5) #6, !dbg !186
  br label %if.end, !dbg !187

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8, i8* %match_criteria_enable.addr, align 1, !dbg !188
  %conv1 = zext i8 %6 to i32, !dbg !188
  %and2 = and i32 %conv1, 2, !dbg !190
  %tobool3 = icmp ne i32 %and2, 0, !dbg !190
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !191

if.then4:                                         ; preds = %if.end
  %7 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !192
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !194
  %8 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !195
  %9 = load i32*, i32** %mask_misc.addr, align 8, !dbg !196
  %10 = load i32*, i32** %value_misc.addr, align 8, !dbg !197
  call void @print_misc_parameters_hdrs(%struct.trace_seq* %8, i32* %9, i32* %10) #6, !dbg !198
  br label %if.end5, !dbg !199

if.end5:                                          ; preds = %if.then4, %if.end
  %11 = load i8, i8* %match_criteria_enable.addr, align 1, !dbg !200
  %conv6 = zext i8 %11 to i32, !dbg !200
  %and7 = and i32 %conv6, 4, !dbg !202
  %tobool8 = icmp ne i32 %and7, 0, !dbg !202
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !203

if.then9:                                         ; preds = %if.end5
  %12 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !204
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !206
  %13 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !207
  %14 = load i32*, i32** %mask_inner.addr, align 8, !dbg !208
  %15 = load i32*, i32** %value_inner.addr, align 8, !dbg !209
  call void @print_lyr_2_4_hdrs(%struct.trace_seq* %13, i32* %14, i32* %15) #6, !dbg !210
  br label %if.end10, !dbg !211

if.end10:                                         ; preds = %if.then9, %if.end5
  %16 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !212
  call void @trace_seq_putc(%struct.trace_seq* %16, i8 zeroext 0) #6, !dbg !213
  %17 = load i8*, i8** %ret, align 8, !dbg !214
  ret i8* %17, !dbg !215
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @trace_seq_buffer_ptr(%struct.trace_seq* %s) #0 !dbg !216 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = load %struct.trace_seq*, %struct.trace_seq** %s.addr, align 8, !dbg !222
  %buffer = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %0, i32 0, i32 0, !dbg !223
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !222
  %1 = load %struct.trace_seq*, %struct.trace_seq** %s.addr, align 8, !dbg !224
  %seq = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %1, i32 0, i32 1, !dbg !225
  %call = call i32 @seq_buf_used(%struct.seq_buf* %seq) #6, !dbg !226
  %idx.ext = zext i32 %call to i64, !dbg !227
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !227
  ret i8* %add.ptr, !dbg !228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_printf(%struct.trace_seq* %s, i8* %fmt, ...) #0 !dbg !229 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %fmt.addr = alloca i8*, align 8
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !232, metadata !DIExpression()), !dbg !233
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !234, metadata !DIExpression()), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @print_lyr_2_4_hdrs(%struct.trace_seq* %p, i32* %mask, i32* %value) #0 !dbg !2 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %mask.addr = alloca i32*, align 8
  %value.addr = alloca i32*, align 8
  %smac = alloca %struct.anon.3, align 8
  %dmac = alloca %struct.anon.4, align 8
  %ethertype = alloca %struct.anon.5, align 2
  %ip_version = alloca %struct.anon.6, align 1
  %src_ipv4 = alloca %struct.anon.7, align 4
  %tmp = alloca i32, align 4
  %tmp481 = alloca i32, align 4
  %tmp483 = alloca i32, align 4
  %tmp638 = alloca i32, align 4
  %dst_ipv4 = alloca %struct.anon.8, align 4
  %tmp640 = alloca i32, align 4
  %tmp795 = alloca i32, align 4
  %tmp797 = alloca i32, align 4
  %tmp952 = alloca i32, align 4
  %src_ipv6 = alloca %struct.anon.10, align 4
  %dst_ipv6 = alloca %struct.anon.11, align 4
  %ip_protocol = alloca %struct.anon.12, align 1
  %tcp_flags = alloca %struct.anon.13, align 2
  %tcp_sport = alloca %struct.anon.14, align 2
  %tcp_dport = alloca %struct.anon.15, align 2
  %udp_sport = alloca %struct.anon.16, align 2
  %udp_dport = alloca %struct.anon.17, align 2
  %first_vid = alloca %struct.anon.18, align 2
  %first_prio = alloca %struct.anon.19, align 1
  %first_cfi = alloca %struct.anon.20, align 1
  %ip_dscp = alloca %struct.anon.21, align 1
  %ip_ecn = alloca %struct.anon.22, align 1
  %cvlan_tag = alloca %struct.anon.23, align 1
  %svlan_tag = alloca %struct.anon.24, align 1
  %frag = alloca %struct.anon.25, align 1
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !237, metadata !DIExpression()), !dbg !238
  store i32* %mask, i32** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mask.addr, metadata !239, metadata !DIExpression()), !dbg !240
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata %struct.anon.3* %smac, metadata !243, metadata !DIExpression()), !dbg !251
  %m = getelementptr inbounds %struct.anon.3, %struct.anon.3* %smac, i32 0, i32 0, !dbg !252
  %0 = load i32*, i32** %mask.addr, align 8, !dbg !253
  %add.ptr = getelementptr i32, i32* %0, i64 0, !dbg !253
  %1 = load i32, i32* %add.ptr, align 4, !dbg !253
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !253
  br i1 %2, label %cond.true, label %cond.false, !dbg !253

cond.true:                                        ; preds = %entry
  %3 = load i32*, i32** %mask.addr, align 8, !dbg !253
  %add.ptr1 = getelementptr i32, i32* %3, i64 0, !dbg !253
  %4 = load i32, i32* %add.ptr1, align 4, !dbg !253
  %and = and i32 %4, 255, !dbg !253
  %shl = shl i32 %and, 24, !dbg !253
  %5 = load i32*, i32** %mask.addr, align 8, !dbg !253
  %add.ptr2 = getelementptr i32, i32* %5, i64 0, !dbg !253
  %6 = load i32, i32* %add.ptr2, align 4, !dbg !253
  %and3 = and i32 %6, 65280, !dbg !253
  %shl4 = shl i32 %and3, 8, !dbg !253
  %or = or i32 %shl, %shl4, !dbg !253
  %7 = load i32*, i32** %mask.addr, align 8, !dbg !253
  %add.ptr5 = getelementptr i32, i32* %7, i64 0, !dbg !253
  %8 = load i32, i32* %add.ptr5, align 4, !dbg !253
  %and6 = and i32 %8, 16711680, !dbg !253
  %shr = lshr i32 %and6, 8, !dbg !253
  %or7 = or i32 %or, %shr, !dbg !253
  %9 = load i32*, i32** %mask.addr, align 8, !dbg !253
  %add.ptr8 = getelementptr i32, i32* %9, i64 0, !dbg !253
  %10 = load i32, i32* %add.ptr8, align 4, !dbg !253
  %and9 = and i32 %10, -16777216, !dbg !253
  %shr10 = lshr i32 %and9, 24, !dbg !253
  %or11 = or i32 %or7, %shr10, !dbg !253
  br label %cond.end, !dbg !253

cond.false:                                       ; preds = %entry
  %11 = load i32*, i32** %mask.addr, align 8, !dbg !253
  %add.ptr12 = getelementptr i32, i32* %11, i64 0, !dbg !253
  %12 = load i32, i32* %add.ptr12, align 4, !dbg !253
  %call = call i32 @__fswab32(i32 %12) #7, !dbg !253
  br label %cond.end, !dbg !253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ %call, %cond.false ], !dbg !253
  %shr13 = lshr i32 %cond, 0, !dbg !253
  %shl14 = shl i32 %shr13, 16, !dbg !254
  %13 = load i32*, i32** %mask.addr, align 8, !dbg !255
  %add.ptr15 = getelementptr i32, i32* %13, i64 1, !dbg !255
  %14 = load i32, i32* %add.ptr15, align 4, !dbg !255
  %15 = call i1 @llvm.is.constant.i32(i32 %14), !dbg !255
  br i1 %15, label %cond.true16, label %cond.false32, !dbg !255

cond.true16:                                      ; preds = %cond.end
  %16 = load i32*, i32** %mask.addr, align 8, !dbg !255
  %add.ptr17 = getelementptr i32, i32* %16, i64 1, !dbg !255
  %17 = load i32, i32* %add.ptr17, align 4, !dbg !255
  %and18 = and i32 %17, 255, !dbg !255
  %shl19 = shl i32 %and18, 24, !dbg !255
  %18 = load i32*, i32** %mask.addr, align 8, !dbg !255
  %add.ptr20 = getelementptr i32, i32* %18, i64 1, !dbg !255
  %19 = load i32, i32* %add.ptr20, align 4, !dbg !255
  %and21 = and i32 %19, 65280, !dbg !255
  %shl22 = shl i32 %and21, 8, !dbg !255
  %or23 = or i32 %shl19, %shl22, !dbg !255
  %20 = load i32*, i32** %mask.addr, align 8, !dbg !255
  %add.ptr24 = getelementptr i32, i32* %20, i64 1, !dbg !255
  %21 = load i32, i32* %add.ptr24, align 4, !dbg !255
  %and25 = and i32 %21, 16711680, !dbg !255
  %shr26 = lshr i32 %and25, 8, !dbg !255
  %or27 = or i32 %or23, %shr26, !dbg !255
  %22 = load i32*, i32** %mask.addr, align 8, !dbg !255
  %add.ptr28 = getelementptr i32, i32* %22, i64 1, !dbg !255
  %23 = load i32, i32* %add.ptr28, align 4, !dbg !255
  %and29 = and i32 %23, -16777216, !dbg !255
  %shr30 = lshr i32 %and29, 24, !dbg !255
  %or31 = or i32 %or27, %shr30, !dbg !255
  br label %cond.end35, !dbg !255

cond.false32:                                     ; preds = %cond.end
  %24 = load i32*, i32** %mask.addr, align 8, !dbg !255
  %add.ptr33 = getelementptr i32, i32* %24, i64 1, !dbg !255
  %25 = load i32, i32* %add.ptr33, align 4, !dbg !255
  %call34 = call i32 @__fswab32(i32 %25) #7, !dbg !255
  br label %cond.end35, !dbg !255

cond.end35:                                       ; preds = %cond.false32, %cond.true16
  %cond36 = phi i32 [ %or31, %cond.true16 ], [ %call34, %cond.false32 ], !dbg !255
  %shr37 = lshr i32 %cond36, 16, !dbg !255
  %and38 = and i32 %shr37, 65535, !dbg !255
  %or39 = or i32 %shl14, %and38, !dbg !256
  %conv = zext i32 %or39 to i64, !dbg !253
  store i64 %conv, i64* %m, align 8, !dbg !252
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %smac, i32 0, i32 1, !dbg !252
  %26 = load i32*, i32** %value.addr, align 8, !dbg !257
  %add.ptr40 = getelementptr i32, i32* %26, i64 0, !dbg !257
  %27 = load i32, i32* %add.ptr40, align 4, !dbg !257
  %28 = call i1 @llvm.is.constant.i32(i32 %27), !dbg !257
  br i1 %28, label %cond.true41, label %cond.false57, !dbg !257

cond.true41:                                      ; preds = %cond.end35
  %29 = load i32*, i32** %value.addr, align 8, !dbg !257
  %add.ptr42 = getelementptr i32, i32* %29, i64 0, !dbg !257
  %30 = load i32, i32* %add.ptr42, align 4, !dbg !257
  %and43 = and i32 %30, 255, !dbg !257
  %shl44 = shl i32 %and43, 24, !dbg !257
  %31 = load i32*, i32** %value.addr, align 8, !dbg !257
  %add.ptr45 = getelementptr i32, i32* %31, i64 0, !dbg !257
  %32 = load i32, i32* %add.ptr45, align 4, !dbg !257
  %and46 = and i32 %32, 65280, !dbg !257
  %shl47 = shl i32 %and46, 8, !dbg !257
  %or48 = or i32 %shl44, %shl47, !dbg !257
  %33 = load i32*, i32** %value.addr, align 8, !dbg !257
  %add.ptr49 = getelementptr i32, i32* %33, i64 0, !dbg !257
  %34 = load i32, i32* %add.ptr49, align 4, !dbg !257
  %and50 = and i32 %34, 16711680, !dbg !257
  %shr51 = lshr i32 %and50, 8, !dbg !257
  %or52 = or i32 %or48, %shr51, !dbg !257
  %35 = load i32*, i32** %value.addr, align 8, !dbg !257
  %add.ptr53 = getelementptr i32, i32* %35, i64 0, !dbg !257
  %36 = load i32, i32* %add.ptr53, align 4, !dbg !257
  %and54 = and i32 %36, -16777216, !dbg !257
  %shr55 = lshr i32 %and54, 24, !dbg !257
  %or56 = or i32 %or52, %shr55, !dbg !257
  br label %cond.end60, !dbg !257

cond.false57:                                     ; preds = %cond.end35
  %37 = load i32*, i32** %value.addr, align 8, !dbg !257
  %add.ptr58 = getelementptr i32, i32* %37, i64 0, !dbg !257
  %38 = load i32, i32* %add.ptr58, align 4, !dbg !257
  %call59 = call i32 @__fswab32(i32 %38) #7, !dbg !257
  br label %cond.end60, !dbg !257

cond.end60:                                       ; preds = %cond.false57, %cond.true41
  %cond61 = phi i32 [ %or56, %cond.true41 ], [ %call59, %cond.false57 ], !dbg !257
  %shr62 = lshr i32 %cond61, 0, !dbg !257
  %shl63 = shl i32 %shr62, 16, !dbg !258
  %39 = load i32*, i32** %value.addr, align 8, !dbg !259
  %add.ptr64 = getelementptr i32, i32* %39, i64 1, !dbg !259
  %40 = load i32, i32* %add.ptr64, align 4, !dbg !259
  %41 = call i1 @llvm.is.constant.i32(i32 %40), !dbg !259
  br i1 %41, label %cond.true65, label %cond.false81, !dbg !259

cond.true65:                                      ; preds = %cond.end60
  %42 = load i32*, i32** %value.addr, align 8, !dbg !259
  %add.ptr66 = getelementptr i32, i32* %42, i64 1, !dbg !259
  %43 = load i32, i32* %add.ptr66, align 4, !dbg !259
  %and67 = and i32 %43, 255, !dbg !259
  %shl68 = shl i32 %and67, 24, !dbg !259
  %44 = load i32*, i32** %value.addr, align 8, !dbg !259
  %add.ptr69 = getelementptr i32, i32* %44, i64 1, !dbg !259
  %45 = load i32, i32* %add.ptr69, align 4, !dbg !259
  %and70 = and i32 %45, 65280, !dbg !259
  %shl71 = shl i32 %and70, 8, !dbg !259
  %or72 = or i32 %shl68, %shl71, !dbg !259
  %46 = load i32*, i32** %value.addr, align 8, !dbg !259
  %add.ptr73 = getelementptr i32, i32* %46, i64 1, !dbg !259
  %47 = load i32, i32* %add.ptr73, align 4, !dbg !259
  %and74 = and i32 %47, 16711680, !dbg !259
  %shr75 = lshr i32 %and74, 8, !dbg !259
  %or76 = or i32 %or72, %shr75, !dbg !259
  %48 = load i32*, i32** %value.addr, align 8, !dbg !259
  %add.ptr77 = getelementptr i32, i32* %48, i64 1, !dbg !259
  %49 = load i32, i32* %add.ptr77, align 4, !dbg !259
  %and78 = and i32 %49, -16777216, !dbg !259
  %shr79 = lshr i32 %and78, 24, !dbg !259
  %or80 = or i32 %or76, %shr79, !dbg !259
  br label %cond.end84, !dbg !259

cond.false81:                                     ; preds = %cond.end60
  %50 = load i32*, i32** %value.addr, align 8, !dbg !259
  %add.ptr82 = getelementptr i32, i32* %50, i64 1, !dbg !259
  %51 = load i32, i32* %add.ptr82, align 4, !dbg !259
  %call83 = call i32 @__fswab32(i32 %51) #7, !dbg !259
  br label %cond.end84, !dbg !259

cond.end84:                                       ; preds = %cond.false81, %cond.true65
  %cond85 = phi i32 [ %or80, %cond.true65 ], [ %call83, %cond.false81 ], !dbg !259
  %shr86 = lshr i32 %cond85, 16, !dbg !259
  %and87 = and i32 %shr86, 65535, !dbg !259
  %or88 = or i32 %shl63, %and87, !dbg !260
  %conv89 = zext i32 %or88 to i64, !dbg !257
  store i64 %conv89, i64* %v, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata %struct.anon.4* %dmac, metadata !261, metadata !DIExpression()), !dbg !266
  %m90 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %dmac, i32 0, i32 0, !dbg !267
  %52 = load i32*, i32** %mask.addr, align 8, !dbg !268
  %add.ptr91 = getelementptr i32, i32* %52, i64 2, !dbg !268
  %53 = load i32, i32* %add.ptr91, align 4, !dbg !268
  %54 = call i1 @llvm.is.constant.i32(i32 %53), !dbg !268
  br i1 %54, label %cond.true92, label %cond.false108, !dbg !268

cond.true92:                                      ; preds = %cond.end84
  %55 = load i32*, i32** %mask.addr, align 8, !dbg !268
  %add.ptr93 = getelementptr i32, i32* %55, i64 2, !dbg !268
  %56 = load i32, i32* %add.ptr93, align 4, !dbg !268
  %and94 = and i32 %56, 255, !dbg !268
  %shl95 = shl i32 %and94, 24, !dbg !268
  %57 = load i32*, i32** %mask.addr, align 8, !dbg !268
  %add.ptr96 = getelementptr i32, i32* %57, i64 2, !dbg !268
  %58 = load i32, i32* %add.ptr96, align 4, !dbg !268
  %and97 = and i32 %58, 65280, !dbg !268
  %shl98 = shl i32 %and97, 8, !dbg !268
  %or99 = or i32 %shl95, %shl98, !dbg !268
  %59 = load i32*, i32** %mask.addr, align 8, !dbg !268
  %add.ptr100 = getelementptr i32, i32* %59, i64 2, !dbg !268
  %60 = load i32, i32* %add.ptr100, align 4, !dbg !268
  %and101 = and i32 %60, 16711680, !dbg !268
  %shr102 = lshr i32 %and101, 8, !dbg !268
  %or103 = or i32 %or99, %shr102, !dbg !268
  %61 = load i32*, i32** %mask.addr, align 8, !dbg !268
  %add.ptr104 = getelementptr i32, i32* %61, i64 2, !dbg !268
  %62 = load i32, i32* %add.ptr104, align 4, !dbg !268
  %and105 = and i32 %62, -16777216, !dbg !268
  %shr106 = lshr i32 %and105, 24, !dbg !268
  %or107 = or i32 %or103, %shr106, !dbg !268
  br label %cond.end111, !dbg !268

cond.false108:                                    ; preds = %cond.end84
  %63 = load i32*, i32** %mask.addr, align 8, !dbg !268
  %add.ptr109 = getelementptr i32, i32* %63, i64 2, !dbg !268
  %64 = load i32, i32* %add.ptr109, align 4, !dbg !268
  %call110 = call i32 @__fswab32(i32 %64) #7, !dbg !268
  br label %cond.end111, !dbg !268

cond.end111:                                      ; preds = %cond.false108, %cond.true92
  %cond112 = phi i32 [ %or107, %cond.true92 ], [ %call110, %cond.false108 ], !dbg !268
  %shr113 = lshr i32 %cond112, 0, !dbg !268
  %shl114 = shl i32 %shr113, 16, !dbg !269
  %65 = load i32*, i32** %mask.addr, align 8, !dbg !270
  %add.ptr115 = getelementptr i32, i32* %65, i64 3, !dbg !270
  %66 = load i32, i32* %add.ptr115, align 4, !dbg !270
  %67 = call i1 @llvm.is.constant.i32(i32 %66), !dbg !270
  br i1 %67, label %cond.true116, label %cond.false132, !dbg !270

cond.true116:                                     ; preds = %cond.end111
  %68 = load i32*, i32** %mask.addr, align 8, !dbg !270
  %add.ptr117 = getelementptr i32, i32* %68, i64 3, !dbg !270
  %69 = load i32, i32* %add.ptr117, align 4, !dbg !270
  %and118 = and i32 %69, 255, !dbg !270
  %shl119 = shl i32 %and118, 24, !dbg !270
  %70 = load i32*, i32** %mask.addr, align 8, !dbg !270
  %add.ptr120 = getelementptr i32, i32* %70, i64 3, !dbg !270
  %71 = load i32, i32* %add.ptr120, align 4, !dbg !270
  %and121 = and i32 %71, 65280, !dbg !270
  %shl122 = shl i32 %and121, 8, !dbg !270
  %or123 = or i32 %shl119, %shl122, !dbg !270
  %72 = load i32*, i32** %mask.addr, align 8, !dbg !270
  %add.ptr124 = getelementptr i32, i32* %72, i64 3, !dbg !270
  %73 = load i32, i32* %add.ptr124, align 4, !dbg !270
  %and125 = and i32 %73, 16711680, !dbg !270
  %shr126 = lshr i32 %and125, 8, !dbg !270
  %or127 = or i32 %or123, %shr126, !dbg !270
  %74 = load i32*, i32** %mask.addr, align 8, !dbg !270
  %add.ptr128 = getelementptr i32, i32* %74, i64 3, !dbg !270
  %75 = load i32, i32* %add.ptr128, align 4, !dbg !270
  %and129 = and i32 %75, -16777216, !dbg !270
  %shr130 = lshr i32 %and129, 24, !dbg !270
  %or131 = or i32 %or127, %shr130, !dbg !270
  br label %cond.end135, !dbg !270

cond.false132:                                    ; preds = %cond.end111
  %76 = load i32*, i32** %mask.addr, align 8, !dbg !270
  %add.ptr133 = getelementptr i32, i32* %76, i64 3, !dbg !270
  %77 = load i32, i32* %add.ptr133, align 4, !dbg !270
  %call134 = call i32 @__fswab32(i32 %77) #7, !dbg !270
  br label %cond.end135, !dbg !270

cond.end135:                                      ; preds = %cond.false132, %cond.true116
  %cond136 = phi i32 [ %or131, %cond.true116 ], [ %call134, %cond.false132 ], !dbg !270
  %shr137 = lshr i32 %cond136, 16, !dbg !270
  %and138 = and i32 %shr137, 65535, !dbg !270
  %or139 = or i32 %shl114, %and138, !dbg !271
  %conv140 = zext i32 %or139 to i64, !dbg !268
  store i64 %conv140, i64* %m90, align 8, !dbg !267
  %v141 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %dmac, i32 0, i32 1, !dbg !267
  %78 = load i32*, i32** %value.addr, align 8, !dbg !272
  %add.ptr142 = getelementptr i32, i32* %78, i64 2, !dbg !272
  %79 = load i32, i32* %add.ptr142, align 4, !dbg !272
  %80 = call i1 @llvm.is.constant.i32(i32 %79), !dbg !272
  br i1 %80, label %cond.true143, label %cond.false159, !dbg !272

cond.true143:                                     ; preds = %cond.end135
  %81 = load i32*, i32** %value.addr, align 8, !dbg !272
  %add.ptr144 = getelementptr i32, i32* %81, i64 2, !dbg !272
  %82 = load i32, i32* %add.ptr144, align 4, !dbg !272
  %and145 = and i32 %82, 255, !dbg !272
  %shl146 = shl i32 %and145, 24, !dbg !272
  %83 = load i32*, i32** %value.addr, align 8, !dbg !272
  %add.ptr147 = getelementptr i32, i32* %83, i64 2, !dbg !272
  %84 = load i32, i32* %add.ptr147, align 4, !dbg !272
  %and148 = and i32 %84, 65280, !dbg !272
  %shl149 = shl i32 %and148, 8, !dbg !272
  %or150 = or i32 %shl146, %shl149, !dbg !272
  %85 = load i32*, i32** %value.addr, align 8, !dbg !272
  %add.ptr151 = getelementptr i32, i32* %85, i64 2, !dbg !272
  %86 = load i32, i32* %add.ptr151, align 4, !dbg !272
  %and152 = and i32 %86, 16711680, !dbg !272
  %shr153 = lshr i32 %and152, 8, !dbg !272
  %or154 = or i32 %or150, %shr153, !dbg !272
  %87 = load i32*, i32** %value.addr, align 8, !dbg !272
  %add.ptr155 = getelementptr i32, i32* %87, i64 2, !dbg !272
  %88 = load i32, i32* %add.ptr155, align 4, !dbg !272
  %and156 = and i32 %88, -16777216, !dbg !272
  %shr157 = lshr i32 %and156, 24, !dbg !272
  %or158 = or i32 %or154, %shr157, !dbg !272
  br label %cond.end162, !dbg !272

cond.false159:                                    ; preds = %cond.end135
  %89 = load i32*, i32** %value.addr, align 8, !dbg !272
  %add.ptr160 = getelementptr i32, i32* %89, i64 2, !dbg !272
  %90 = load i32, i32* %add.ptr160, align 4, !dbg !272
  %call161 = call i32 @__fswab32(i32 %90) #7, !dbg !272
  br label %cond.end162, !dbg !272

cond.end162:                                      ; preds = %cond.false159, %cond.true143
  %cond163 = phi i32 [ %or158, %cond.true143 ], [ %call161, %cond.false159 ], !dbg !272
  %shr164 = lshr i32 %cond163, 0, !dbg !272
  %shl165 = shl i32 %shr164, 16, !dbg !273
  %91 = load i32*, i32** %value.addr, align 8, !dbg !274
  %add.ptr166 = getelementptr i32, i32* %91, i64 3, !dbg !274
  %92 = load i32, i32* %add.ptr166, align 4, !dbg !274
  %93 = call i1 @llvm.is.constant.i32(i32 %92), !dbg !274
  br i1 %93, label %cond.true167, label %cond.false183, !dbg !274

cond.true167:                                     ; preds = %cond.end162
  %94 = load i32*, i32** %value.addr, align 8, !dbg !274
  %add.ptr168 = getelementptr i32, i32* %94, i64 3, !dbg !274
  %95 = load i32, i32* %add.ptr168, align 4, !dbg !274
  %and169 = and i32 %95, 255, !dbg !274
  %shl170 = shl i32 %and169, 24, !dbg !274
  %96 = load i32*, i32** %value.addr, align 8, !dbg !274
  %add.ptr171 = getelementptr i32, i32* %96, i64 3, !dbg !274
  %97 = load i32, i32* %add.ptr171, align 4, !dbg !274
  %and172 = and i32 %97, 65280, !dbg !274
  %shl173 = shl i32 %and172, 8, !dbg !274
  %or174 = or i32 %shl170, %shl173, !dbg !274
  %98 = load i32*, i32** %value.addr, align 8, !dbg !274
  %add.ptr175 = getelementptr i32, i32* %98, i64 3, !dbg !274
  %99 = load i32, i32* %add.ptr175, align 4, !dbg !274
  %and176 = and i32 %99, 16711680, !dbg !274
  %shr177 = lshr i32 %and176, 8, !dbg !274
  %or178 = or i32 %or174, %shr177, !dbg !274
  %100 = load i32*, i32** %value.addr, align 8, !dbg !274
  %add.ptr179 = getelementptr i32, i32* %100, i64 3, !dbg !274
  %101 = load i32, i32* %add.ptr179, align 4, !dbg !274
  %and180 = and i32 %101, -16777216, !dbg !274
  %shr181 = lshr i32 %and180, 24, !dbg !274
  %or182 = or i32 %or178, %shr181, !dbg !274
  br label %cond.end186, !dbg !274

cond.false183:                                    ; preds = %cond.end162
  %102 = load i32*, i32** %value.addr, align 8, !dbg !274
  %add.ptr184 = getelementptr i32, i32* %102, i64 3, !dbg !274
  %103 = load i32, i32* %add.ptr184, align 4, !dbg !274
  %call185 = call i32 @__fswab32(i32 %103) #7, !dbg !274
  br label %cond.end186, !dbg !274

cond.end186:                                      ; preds = %cond.false183, %cond.true167
  %cond187 = phi i32 [ %or182, %cond.true167 ], [ %call185, %cond.false183 ], !dbg !274
  %shr188 = lshr i32 %cond187, 16, !dbg !274
  %and189 = and i32 %shr188, 65535, !dbg !274
  %or190 = or i32 %shl165, %and189, !dbg !275
  %conv191 = zext i32 %or190 to i64, !dbg !272
  store i64 %conv191, i64* %v141, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata %struct.anon.5* %ethertype, metadata !276, metadata !DIExpression()), !dbg !282
  %m192 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 0, !dbg !282
  %104 = load i32*, i32** %mask.addr, align 8, !dbg !282
  %add.ptr193 = getelementptr i32, i32* %104, i64 1, !dbg !282
  %105 = load i32, i32* %add.ptr193, align 4, !dbg !282
  %106 = call i1 @llvm.is.constant.i32(i32 %105), !dbg !282
  br i1 %106, label %cond.true194, label %cond.false210, !dbg !282

cond.true194:                                     ; preds = %cond.end186
  %107 = load i32*, i32** %mask.addr, align 8, !dbg !282
  %add.ptr195 = getelementptr i32, i32* %107, i64 1, !dbg !282
  %108 = load i32, i32* %add.ptr195, align 4, !dbg !282
  %and196 = and i32 %108, 255, !dbg !282
  %shl197 = shl i32 %and196, 24, !dbg !282
  %109 = load i32*, i32** %mask.addr, align 8, !dbg !282
  %add.ptr198 = getelementptr i32, i32* %109, i64 1, !dbg !282
  %110 = load i32, i32* %add.ptr198, align 4, !dbg !282
  %and199 = and i32 %110, 65280, !dbg !282
  %shl200 = shl i32 %and199, 8, !dbg !282
  %or201 = or i32 %shl197, %shl200, !dbg !282
  %111 = load i32*, i32** %mask.addr, align 8, !dbg !282
  %add.ptr202 = getelementptr i32, i32* %111, i64 1, !dbg !282
  %112 = load i32, i32* %add.ptr202, align 4, !dbg !282
  %and203 = and i32 %112, 16711680, !dbg !282
  %shr204 = lshr i32 %and203, 8, !dbg !282
  %or205 = or i32 %or201, %shr204, !dbg !282
  %113 = load i32*, i32** %mask.addr, align 8, !dbg !282
  %add.ptr206 = getelementptr i32, i32* %113, i64 1, !dbg !282
  %114 = load i32, i32* %add.ptr206, align 4, !dbg !282
  %and207 = and i32 %114, -16777216, !dbg !282
  %shr208 = lshr i32 %and207, 24, !dbg !282
  %or209 = or i32 %or205, %shr208, !dbg !282
  br label %cond.end213, !dbg !282

cond.false210:                                    ; preds = %cond.end186
  %115 = load i32*, i32** %mask.addr, align 8, !dbg !282
  %add.ptr211 = getelementptr i32, i32* %115, i64 1, !dbg !282
  %116 = load i32, i32* %add.ptr211, align 4, !dbg !282
  %call212 = call i32 @__fswab32(i32 %116) #7, !dbg !282
  br label %cond.end213, !dbg !282

cond.end213:                                      ; preds = %cond.false210, %cond.true194
  %cond214 = phi i32 [ %or209, %cond.true194 ], [ %call212, %cond.false210 ], !dbg !282
  %shr215 = lshr i32 %cond214, 0, !dbg !282
  %and216 = and i32 %shr215, 65535, !dbg !282
  %conv217 = trunc i32 %and216 to i16, !dbg !282
  store i16 %conv217, i16* %m192, align 2, !dbg !282
  %v218 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 1, !dbg !282
  %117 = load i32*, i32** %value.addr, align 8, !dbg !282
  %add.ptr219 = getelementptr i32, i32* %117, i64 1, !dbg !282
  %118 = load i32, i32* %add.ptr219, align 4, !dbg !282
  %119 = call i1 @llvm.is.constant.i32(i32 %118), !dbg !282
  br i1 %119, label %cond.true220, label %cond.false236, !dbg !282

cond.true220:                                     ; preds = %cond.end213
  %120 = load i32*, i32** %value.addr, align 8, !dbg !282
  %add.ptr221 = getelementptr i32, i32* %120, i64 1, !dbg !282
  %121 = load i32, i32* %add.ptr221, align 4, !dbg !282
  %and222 = and i32 %121, 255, !dbg !282
  %shl223 = shl i32 %and222, 24, !dbg !282
  %122 = load i32*, i32** %value.addr, align 8, !dbg !282
  %add.ptr224 = getelementptr i32, i32* %122, i64 1, !dbg !282
  %123 = load i32, i32* %add.ptr224, align 4, !dbg !282
  %and225 = and i32 %123, 65280, !dbg !282
  %shl226 = shl i32 %and225, 8, !dbg !282
  %or227 = or i32 %shl223, %shl226, !dbg !282
  %124 = load i32*, i32** %value.addr, align 8, !dbg !282
  %add.ptr228 = getelementptr i32, i32* %124, i64 1, !dbg !282
  %125 = load i32, i32* %add.ptr228, align 4, !dbg !282
  %and229 = and i32 %125, 16711680, !dbg !282
  %shr230 = lshr i32 %and229, 8, !dbg !282
  %or231 = or i32 %or227, %shr230, !dbg !282
  %126 = load i32*, i32** %value.addr, align 8, !dbg !282
  %add.ptr232 = getelementptr i32, i32* %126, i64 1, !dbg !282
  %127 = load i32, i32* %add.ptr232, align 4, !dbg !282
  %and233 = and i32 %127, -16777216, !dbg !282
  %shr234 = lshr i32 %and233, 24, !dbg !282
  %or235 = or i32 %or231, %shr234, !dbg !282
  br label %cond.end239, !dbg !282

cond.false236:                                    ; preds = %cond.end213
  %128 = load i32*, i32** %value.addr, align 8, !dbg !282
  %add.ptr237 = getelementptr i32, i32* %128, i64 1, !dbg !282
  %129 = load i32, i32* %add.ptr237, align 4, !dbg !282
  %call238 = call i32 @__fswab32(i32 %129) #7, !dbg !282
  br label %cond.end239, !dbg !282

cond.end239:                                      ; preds = %cond.false236, %cond.true220
  %cond240 = phi i32 [ %or235, %cond.true220 ], [ %call238, %cond.false236 ], !dbg !282
  %shr241 = lshr i32 %cond240, 0, !dbg !282
  %and242 = and i32 %shr241, 65535, !dbg !282
  %conv243 = trunc i32 %and242 to i16, !dbg !282
  store i16 %conv243, i16* %v218, align 2, !dbg !282
  call void @llvm.dbg.declare(metadata %struct.anon.6* %ip_version, metadata !283, metadata !DIExpression()), !dbg !288
  %m244 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %ip_version, i32 0, i32 0, !dbg !288
  %130 = load i32*, i32** %mask.addr, align 8, !dbg !288
  %add.ptr245 = getelementptr i32, i32* %130, i64 4, !dbg !288
  %131 = load i32, i32* %add.ptr245, align 4, !dbg !288
  %132 = call i1 @llvm.is.constant.i32(i32 %131), !dbg !288
  br i1 %132, label %cond.true246, label %cond.false262, !dbg !288

cond.true246:                                     ; preds = %cond.end239
  %133 = load i32*, i32** %mask.addr, align 8, !dbg !288
  %add.ptr247 = getelementptr i32, i32* %133, i64 4, !dbg !288
  %134 = load i32, i32* %add.ptr247, align 4, !dbg !288
  %and248 = and i32 %134, 255, !dbg !288
  %shl249 = shl i32 %and248, 24, !dbg !288
  %135 = load i32*, i32** %mask.addr, align 8, !dbg !288
  %add.ptr250 = getelementptr i32, i32* %135, i64 4, !dbg !288
  %136 = load i32, i32* %add.ptr250, align 4, !dbg !288
  %and251 = and i32 %136, 65280, !dbg !288
  %shl252 = shl i32 %and251, 8, !dbg !288
  %or253 = or i32 %shl249, %shl252, !dbg !288
  %137 = load i32*, i32** %mask.addr, align 8, !dbg !288
  %add.ptr254 = getelementptr i32, i32* %137, i64 4, !dbg !288
  %138 = load i32, i32* %add.ptr254, align 4, !dbg !288
  %and255 = and i32 %138, 16711680, !dbg !288
  %shr256 = lshr i32 %and255, 8, !dbg !288
  %or257 = or i32 %or253, %shr256, !dbg !288
  %139 = load i32*, i32** %mask.addr, align 8, !dbg !288
  %add.ptr258 = getelementptr i32, i32* %139, i64 4, !dbg !288
  %140 = load i32, i32* %add.ptr258, align 4, !dbg !288
  %and259 = and i32 %140, -16777216, !dbg !288
  %shr260 = lshr i32 %and259, 24, !dbg !288
  %or261 = or i32 %or257, %shr260, !dbg !288
  br label %cond.end265, !dbg !288

cond.false262:                                    ; preds = %cond.end239
  %141 = load i32*, i32** %mask.addr, align 8, !dbg !288
  %add.ptr263 = getelementptr i32, i32* %141, i64 4, !dbg !288
  %142 = load i32, i32* %add.ptr263, align 4, !dbg !288
  %call264 = call i32 @__fswab32(i32 %142) #7, !dbg !288
  br label %cond.end265, !dbg !288

cond.end265:                                      ; preds = %cond.false262, %cond.true246
  %cond266 = phi i32 [ %or261, %cond.true246 ], [ %call264, %cond.false262 ], !dbg !288
  %shr267 = lshr i32 %cond266, 9, !dbg !288
  %and268 = and i32 %shr267, 15, !dbg !288
  %conv269 = trunc i32 %and268 to i8, !dbg !288
  store i8 %conv269, i8* %m244, align 1, !dbg !288
  %v270 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %ip_version, i32 0, i32 1, !dbg !288
  %143 = load i32*, i32** %value.addr, align 8, !dbg !288
  %add.ptr271 = getelementptr i32, i32* %143, i64 4, !dbg !288
  %144 = load i32, i32* %add.ptr271, align 4, !dbg !288
  %145 = call i1 @llvm.is.constant.i32(i32 %144), !dbg !288
  br i1 %145, label %cond.true272, label %cond.false288, !dbg !288

cond.true272:                                     ; preds = %cond.end265
  %146 = load i32*, i32** %value.addr, align 8, !dbg !288
  %add.ptr273 = getelementptr i32, i32* %146, i64 4, !dbg !288
  %147 = load i32, i32* %add.ptr273, align 4, !dbg !288
  %and274 = and i32 %147, 255, !dbg !288
  %shl275 = shl i32 %and274, 24, !dbg !288
  %148 = load i32*, i32** %value.addr, align 8, !dbg !288
  %add.ptr276 = getelementptr i32, i32* %148, i64 4, !dbg !288
  %149 = load i32, i32* %add.ptr276, align 4, !dbg !288
  %and277 = and i32 %149, 65280, !dbg !288
  %shl278 = shl i32 %and277, 8, !dbg !288
  %or279 = or i32 %shl275, %shl278, !dbg !288
  %150 = load i32*, i32** %value.addr, align 8, !dbg !288
  %add.ptr280 = getelementptr i32, i32* %150, i64 4, !dbg !288
  %151 = load i32, i32* %add.ptr280, align 4, !dbg !288
  %and281 = and i32 %151, 16711680, !dbg !288
  %shr282 = lshr i32 %and281, 8, !dbg !288
  %or283 = or i32 %or279, %shr282, !dbg !288
  %152 = load i32*, i32** %value.addr, align 8, !dbg !288
  %add.ptr284 = getelementptr i32, i32* %152, i64 4, !dbg !288
  %153 = load i32, i32* %add.ptr284, align 4, !dbg !288
  %and285 = and i32 %153, -16777216, !dbg !288
  %shr286 = lshr i32 %and285, 24, !dbg !288
  %or287 = or i32 %or283, %shr286, !dbg !288
  br label %cond.end291, !dbg !288

cond.false288:                                    ; preds = %cond.end265
  %154 = load i32*, i32** %value.addr, align 8, !dbg !288
  %add.ptr289 = getelementptr i32, i32* %154, i64 4, !dbg !288
  %155 = load i32, i32* %add.ptr289, align 4, !dbg !288
  %call290 = call i32 @__fswab32(i32 %155) #7, !dbg !288
  br label %cond.end291, !dbg !288

cond.end291:                                      ; preds = %cond.false288, %cond.true272
  %cond292 = phi i32 [ %or287, %cond.true272 ], [ %call290, %cond.false288 ], !dbg !288
  %shr293 = lshr i32 %cond292, 9, !dbg !288
  %and294 = and i32 %shr293, 15, !dbg !288
  %conv295 = trunc i32 %and294 to i8, !dbg !288
  store i8 %conv295, i8* %v270, align 1, !dbg !288
  %m296 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %smac, i32 0, i32 0, !dbg !289
  %156 = load i64, i64* %m296, align 8, !dbg !289
  %tobool = icmp ne i64 %156, 0, !dbg !289
  br i1 %tobool, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %cond.end291
  %157 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !289
  %v297 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %smac, i32 0, i32 1, !dbg !289
  %158 = bitcast i64* %v297 to i8*, !dbg !289
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %158) #6, !dbg !289
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %cond.end291
  %m298 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %dmac, i32 0, i32 0, !dbg !293
  %159 = load i64, i64* %m298, align 8, !dbg !293
  %tobool299 = icmp ne i64 %159, 0, !dbg !293
  br i1 %tobool299, label %if.then300, label %if.end302, !dbg !296

if.then300:                                       ; preds = %if.end
  %160 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !293
  %v301 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %dmac, i32 0, i32 1, !dbg !293
  %161 = bitcast i64* %v301 to i8*, !dbg !293
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %161) #6, !dbg !293
  br label %if.end302, !dbg !293

if.end302:                                        ; preds = %if.then300, %if.end
  %m303 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 0, !dbg !297
  %162 = load i16, i16* %m303, align 2, !dbg !297
  %tobool304 = icmp ne i16 %162, 0, !dbg !297
  br i1 %tobool304, label %if.then305, label %if.end308, !dbg !300

if.then305:                                       ; preds = %if.end302
  %163 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !297
  %v306 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 1, !dbg !297
  %164 = load i16, i16* %v306, align 2, !dbg !297
  %conv307 = zext i16 %164 to i32, !dbg !297
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %conv307) #6, !dbg !297
  br label %if.end308, !dbg !297

if.end308:                                        ; preds = %if.then305, %if.end302
  %m309 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 0, !dbg !301
  %165 = load i16, i16* %m309, align 2, !dbg !301
  %conv310 = zext i16 %165 to i32, !dbg !303
  %cmp = icmp eq i32 %conv310, 65535, !dbg !304
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !305

land.lhs.true:                                    ; preds = %if.end308
  %v312 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 1, !dbg !306
  %166 = load i16, i16* %v312, align 2, !dbg !306
  %conv313 = zext i16 %166 to i32, !dbg !307
  %cmp314 = icmp eq i32 %conv313, 2048, !dbg !308
  br i1 %cmp314, label %if.then325, label %lor.lhs.false, !dbg !309

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end308
  %m316 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %ip_version, i32 0, i32 0, !dbg !310
  %167 = load i8, i8* %m316, align 1, !dbg !310
  %conv317 = zext i8 %167 to i32, !dbg !311
  %cmp318 = icmp eq i32 %conv317, 15, !dbg !312
  br i1 %cmp318, label %land.lhs.true320, label %if.else, !dbg !313

land.lhs.true320:                                 ; preds = %lor.lhs.false
  %v321 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %ip_version, i32 0, i32 1, !dbg !314
  %168 = load i8, i8* %v321, align 1, !dbg !314
  %conv322 = zext i8 %168 to i32, !dbg !315
  %cmp323 = icmp eq i32 %conv322, 4, !dbg !316
  br i1 %cmp323, label %if.then325, label %if.else, !dbg !317

if.then325:                                       ; preds = %land.lhs.true320, %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.anon.7* %src_ipv4, metadata !318, metadata !DIExpression()), !dbg !324
  %m326 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %src_ipv4, i32 0, i32 0, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !325, metadata !DIExpression()), !dbg !327
  %169 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr327 = getelementptr i32, i32* %169, i64 11, !dbg !327
  %170 = load i32, i32* %add.ptr327, align 4, !dbg !327
  %171 = call i1 @llvm.is.constant.i32(i32 %170), !dbg !327
  br i1 %171, label %cond.true328, label %cond.false344, !dbg !327

cond.true328:                                     ; preds = %if.then325
  %172 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr329 = getelementptr i32, i32* %172, i64 11, !dbg !327
  %173 = load i32, i32* %add.ptr329, align 4, !dbg !327
  %and330 = and i32 %173, 255, !dbg !327
  %shl331 = shl i32 %and330, 24, !dbg !327
  %174 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr332 = getelementptr i32, i32* %174, i64 11, !dbg !327
  %175 = load i32, i32* %add.ptr332, align 4, !dbg !327
  %and333 = and i32 %175, 65280, !dbg !327
  %shl334 = shl i32 %and333, 8, !dbg !327
  %or335 = or i32 %shl331, %shl334, !dbg !327
  %176 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr336 = getelementptr i32, i32* %176, i64 11, !dbg !327
  %177 = load i32, i32* %add.ptr336, align 4, !dbg !327
  %and337 = and i32 %177, 16711680, !dbg !327
  %shr338 = lshr i32 %and337, 8, !dbg !327
  %or339 = or i32 %or335, %shr338, !dbg !327
  %178 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr340 = getelementptr i32, i32* %178, i64 11, !dbg !327
  %179 = load i32, i32* %add.ptr340, align 4, !dbg !327
  %and341 = and i32 %179, -16777216, !dbg !327
  %shr342 = lshr i32 %and341, 24, !dbg !327
  %or343 = or i32 %or339, %shr342, !dbg !327
  br label %cond.end347, !dbg !327

cond.false344:                                    ; preds = %if.then325
  %180 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr345 = getelementptr i32, i32* %180, i64 11, !dbg !327
  %181 = load i32, i32* %add.ptr345, align 4, !dbg !327
  %call346 = call i32 @__fswab32(i32 %181) #7, !dbg !327
  br label %cond.end347, !dbg !327

cond.end347:                                      ; preds = %cond.false344, %cond.true328
  %cond348 = phi i32 [ %or343, %cond.true328 ], [ %call346, %cond.false344 ], !dbg !327
  %shr349 = lshr i32 %cond348, 0, !dbg !327
  %182 = call i1 @llvm.is.constant.i32(i32 %shr349), !dbg !327
  br i1 %182, label %cond.true350, label %cond.false454, !dbg !327

cond.true350:                                     ; preds = %cond.end347
  %183 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr351 = getelementptr i32, i32* %183, i64 11, !dbg !327
  %184 = load i32, i32* %add.ptr351, align 4, !dbg !327
  %185 = call i1 @llvm.is.constant.i32(i32 %184), !dbg !327
  br i1 %185, label %cond.true352, label %cond.false368, !dbg !327

cond.true352:                                     ; preds = %cond.true350
  %186 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr353 = getelementptr i32, i32* %186, i64 11, !dbg !327
  %187 = load i32, i32* %add.ptr353, align 4, !dbg !327
  %and354 = and i32 %187, 255, !dbg !327
  %shl355 = shl i32 %and354, 24, !dbg !327
  %188 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr356 = getelementptr i32, i32* %188, i64 11, !dbg !327
  %189 = load i32, i32* %add.ptr356, align 4, !dbg !327
  %and357 = and i32 %189, 65280, !dbg !327
  %shl358 = shl i32 %and357, 8, !dbg !327
  %or359 = or i32 %shl355, %shl358, !dbg !327
  %190 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr360 = getelementptr i32, i32* %190, i64 11, !dbg !327
  %191 = load i32, i32* %add.ptr360, align 4, !dbg !327
  %and361 = and i32 %191, 16711680, !dbg !327
  %shr362 = lshr i32 %and361, 8, !dbg !327
  %or363 = or i32 %or359, %shr362, !dbg !327
  %192 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr364 = getelementptr i32, i32* %192, i64 11, !dbg !327
  %193 = load i32, i32* %add.ptr364, align 4, !dbg !327
  %and365 = and i32 %193, -16777216, !dbg !327
  %shr366 = lshr i32 %and365, 24, !dbg !327
  %or367 = or i32 %or363, %shr366, !dbg !327
  br label %cond.end371, !dbg !327

cond.false368:                                    ; preds = %cond.true350
  %194 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr369 = getelementptr i32, i32* %194, i64 11, !dbg !327
  %195 = load i32, i32* %add.ptr369, align 4, !dbg !327
  %call370 = call i32 @__fswab32(i32 %195) #7, !dbg !327
  br label %cond.end371, !dbg !327

cond.end371:                                      ; preds = %cond.false368, %cond.true352
  %cond372 = phi i32 [ %or367, %cond.true352 ], [ %call370, %cond.false368 ], !dbg !327
  %shr373 = lshr i32 %cond372, 0, !dbg !327
  %and374 = and i32 %shr373, 255, !dbg !327
  %shl375 = shl i32 %and374, 24, !dbg !327
  %196 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr376 = getelementptr i32, i32* %196, i64 11, !dbg !327
  %197 = load i32, i32* %add.ptr376, align 4, !dbg !327
  %198 = call i1 @llvm.is.constant.i32(i32 %197), !dbg !327
  br i1 %198, label %cond.true377, label %cond.false393, !dbg !327

cond.true377:                                     ; preds = %cond.end371
  %199 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr378 = getelementptr i32, i32* %199, i64 11, !dbg !327
  %200 = load i32, i32* %add.ptr378, align 4, !dbg !327
  %and379 = and i32 %200, 255, !dbg !327
  %shl380 = shl i32 %and379, 24, !dbg !327
  %201 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr381 = getelementptr i32, i32* %201, i64 11, !dbg !327
  %202 = load i32, i32* %add.ptr381, align 4, !dbg !327
  %and382 = and i32 %202, 65280, !dbg !327
  %shl383 = shl i32 %and382, 8, !dbg !327
  %or384 = or i32 %shl380, %shl383, !dbg !327
  %203 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr385 = getelementptr i32, i32* %203, i64 11, !dbg !327
  %204 = load i32, i32* %add.ptr385, align 4, !dbg !327
  %and386 = and i32 %204, 16711680, !dbg !327
  %shr387 = lshr i32 %and386, 8, !dbg !327
  %or388 = or i32 %or384, %shr387, !dbg !327
  %205 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr389 = getelementptr i32, i32* %205, i64 11, !dbg !327
  %206 = load i32, i32* %add.ptr389, align 4, !dbg !327
  %and390 = and i32 %206, -16777216, !dbg !327
  %shr391 = lshr i32 %and390, 24, !dbg !327
  %or392 = or i32 %or388, %shr391, !dbg !327
  br label %cond.end396, !dbg !327

cond.false393:                                    ; preds = %cond.end371
  %207 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr394 = getelementptr i32, i32* %207, i64 11, !dbg !327
  %208 = load i32, i32* %add.ptr394, align 4, !dbg !327
  %call395 = call i32 @__fswab32(i32 %208) #7, !dbg !327
  br label %cond.end396, !dbg !327

cond.end396:                                      ; preds = %cond.false393, %cond.true377
  %cond397 = phi i32 [ %or392, %cond.true377 ], [ %call395, %cond.false393 ], !dbg !327
  %shr398 = lshr i32 %cond397, 0, !dbg !327
  %and399 = and i32 %shr398, 65280, !dbg !327
  %shl400 = shl i32 %and399, 8, !dbg !327
  %or401 = or i32 %shl375, %shl400, !dbg !327
  %209 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr402 = getelementptr i32, i32* %209, i64 11, !dbg !327
  %210 = load i32, i32* %add.ptr402, align 4, !dbg !327
  %211 = call i1 @llvm.is.constant.i32(i32 %210), !dbg !327
  br i1 %211, label %cond.true403, label %cond.false419, !dbg !327

cond.true403:                                     ; preds = %cond.end396
  %212 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr404 = getelementptr i32, i32* %212, i64 11, !dbg !327
  %213 = load i32, i32* %add.ptr404, align 4, !dbg !327
  %and405 = and i32 %213, 255, !dbg !327
  %shl406 = shl i32 %and405, 24, !dbg !327
  %214 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr407 = getelementptr i32, i32* %214, i64 11, !dbg !327
  %215 = load i32, i32* %add.ptr407, align 4, !dbg !327
  %and408 = and i32 %215, 65280, !dbg !327
  %shl409 = shl i32 %and408, 8, !dbg !327
  %or410 = or i32 %shl406, %shl409, !dbg !327
  %216 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr411 = getelementptr i32, i32* %216, i64 11, !dbg !327
  %217 = load i32, i32* %add.ptr411, align 4, !dbg !327
  %and412 = and i32 %217, 16711680, !dbg !327
  %shr413 = lshr i32 %and412, 8, !dbg !327
  %or414 = or i32 %or410, %shr413, !dbg !327
  %218 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr415 = getelementptr i32, i32* %218, i64 11, !dbg !327
  %219 = load i32, i32* %add.ptr415, align 4, !dbg !327
  %and416 = and i32 %219, -16777216, !dbg !327
  %shr417 = lshr i32 %and416, 24, !dbg !327
  %or418 = or i32 %or414, %shr417, !dbg !327
  br label %cond.end422, !dbg !327

cond.false419:                                    ; preds = %cond.end396
  %220 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr420 = getelementptr i32, i32* %220, i64 11, !dbg !327
  %221 = load i32, i32* %add.ptr420, align 4, !dbg !327
  %call421 = call i32 @__fswab32(i32 %221) #7, !dbg !327
  br label %cond.end422, !dbg !327

cond.end422:                                      ; preds = %cond.false419, %cond.true403
  %cond423 = phi i32 [ %or418, %cond.true403 ], [ %call421, %cond.false419 ], !dbg !327
  %shr424 = lshr i32 %cond423, 0, !dbg !327
  %and425 = and i32 %shr424, 16711680, !dbg !327
  %shr426 = lshr i32 %and425, 8, !dbg !327
  %or427 = or i32 %or401, %shr426, !dbg !327
  %222 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr428 = getelementptr i32, i32* %222, i64 11, !dbg !327
  %223 = load i32, i32* %add.ptr428, align 4, !dbg !327
  %224 = call i1 @llvm.is.constant.i32(i32 %223), !dbg !327
  br i1 %224, label %cond.true429, label %cond.false445, !dbg !327

cond.true429:                                     ; preds = %cond.end422
  %225 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr430 = getelementptr i32, i32* %225, i64 11, !dbg !327
  %226 = load i32, i32* %add.ptr430, align 4, !dbg !327
  %and431 = and i32 %226, 255, !dbg !327
  %shl432 = shl i32 %and431, 24, !dbg !327
  %227 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr433 = getelementptr i32, i32* %227, i64 11, !dbg !327
  %228 = load i32, i32* %add.ptr433, align 4, !dbg !327
  %and434 = and i32 %228, 65280, !dbg !327
  %shl435 = shl i32 %and434, 8, !dbg !327
  %or436 = or i32 %shl432, %shl435, !dbg !327
  %229 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr437 = getelementptr i32, i32* %229, i64 11, !dbg !327
  %230 = load i32, i32* %add.ptr437, align 4, !dbg !327
  %and438 = and i32 %230, 16711680, !dbg !327
  %shr439 = lshr i32 %and438, 8, !dbg !327
  %or440 = or i32 %or436, %shr439, !dbg !327
  %231 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr441 = getelementptr i32, i32* %231, i64 11, !dbg !327
  %232 = load i32, i32* %add.ptr441, align 4, !dbg !327
  %and442 = and i32 %232, -16777216, !dbg !327
  %shr443 = lshr i32 %and442, 24, !dbg !327
  %or444 = or i32 %or440, %shr443, !dbg !327
  br label %cond.end448, !dbg !327

cond.false445:                                    ; preds = %cond.end422
  %233 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr446 = getelementptr i32, i32* %233, i64 11, !dbg !327
  %234 = load i32, i32* %add.ptr446, align 4, !dbg !327
  %call447 = call i32 @__fswab32(i32 %234) #7, !dbg !327
  br label %cond.end448, !dbg !327

cond.end448:                                      ; preds = %cond.false445, %cond.true429
  %cond449 = phi i32 [ %or444, %cond.true429 ], [ %call447, %cond.false445 ], !dbg !327
  %shr450 = lshr i32 %cond449, 0, !dbg !327
  %and451 = and i32 %shr450, -16777216, !dbg !327
  %shr452 = lshr i32 %and451, 24, !dbg !327
  %or453 = or i32 %or427, %shr452, !dbg !327
  br label %cond.end479, !dbg !327

cond.false454:                                    ; preds = %cond.end347
  %235 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr455 = getelementptr i32, i32* %235, i64 11, !dbg !327
  %236 = load i32, i32* %add.ptr455, align 4, !dbg !327
  %237 = call i1 @llvm.is.constant.i32(i32 %236), !dbg !327
  br i1 %237, label %cond.true456, label %cond.false472, !dbg !327

cond.true456:                                     ; preds = %cond.false454
  %238 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr457 = getelementptr i32, i32* %238, i64 11, !dbg !327
  %239 = load i32, i32* %add.ptr457, align 4, !dbg !327
  %and458 = and i32 %239, 255, !dbg !327
  %shl459 = shl i32 %and458, 24, !dbg !327
  %240 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr460 = getelementptr i32, i32* %240, i64 11, !dbg !327
  %241 = load i32, i32* %add.ptr460, align 4, !dbg !327
  %and461 = and i32 %241, 65280, !dbg !327
  %shl462 = shl i32 %and461, 8, !dbg !327
  %or463 = or i32 %shl459, %shl462, !dbg !327
  %242 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr464 = getelementptr i32, i32* %242, i64 11, !dbg !327
  %243 = load i32, i32* %add.ptr464, align 4, !dbg !327
  %and465 = and i32 %243, 16711680, !dbg !327
  %shr466 = lshr i32 %and465, 8, !dbg !327
  %or467 = or i32 %or463, %shr466, !dbg !327
  %244 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr468 = getelementptr i32, i32* %244, i64 11, !dbg !327
  %245 = load i32, i32* %add.ptr468, align 4, !dbg !327
  %and469 = and i32 %245, -16777216, !dbg !327
  %shr470 = lshr i32 %and469, 24, !dbg !327
  %or471 = or i32 %or467, %shr470, !dbg !327
  br label %cond.end475, !dbg !327

cond.false472:                                    ; preds = %cond.false454
  %246 = load i32*, i32** %mask.addr, align 8, !dbg !327
  %add.ptr473 = getelementptr i32, i32* %246, i64 11, !dbg !327
  %247 = load i32, i32* %add.ptr473, align 4, !dbg !327
  %call474 = call i32 @__fswab32(i32 %247) #7, !dbg !327
  br label %cond.end475, !dbg !327

cond.end475:                                      ; preds = %cond.false472, %cond.true456
  %cond476 = phi i32 [ %or471, %cond.true456 ], [ %call474, %cond.false472 ], !dbg !327
  %shr477 = lshr i32 %cond476, 0, !dbg !327
  %call478 = call i32 @__fswab32(i32 %shr477) #7, !dbg !327
  br label %cond.end479, !dbg !327

cond.end479:                                      ; preds = %cond.end475, %cond.end448
  %cond480 = phi i32 [ %or453, %cond.end448 ], [ %call478, %cond.end475 ], !dbg !327
  store i32 %cond480, i32* %tmp, align 4, !dbg !327
  %248 = load i32, i32* %tmp, align 4, !dbg !327
  store i32 %248, i32* %tmp481, align 4, !dbg !327
  %249 = load i32, i32* %tmp481, align 4, !dbg !327
  store i32 %249, i32* %m326, align 4, !dbg !324
  %v482 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %src_ipv4, i32 0, i32 1, !dbg !324
  call void @llvm.dbg.declare(metadata i32* %tmp483, metadata !328, metadata !DIExpression()), !dbg !330
  %250 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr484 = getelementptr i32, i32* %250, i64 11, !dbg !330
  %251 = load i32, i32* %add.ptr484, align 4, !dbg !330
  %252 = call i1 @llvm.is.constant.i32(i32 %251), !dbg !330
  br i1 %252, label %cond.true485, label %cond.false501, !dbg !330

cond.true485:                                     ; preds = %cond.end479
  %253 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr486 = getelementptr i32, i32* %253, i64 11, !dbg !330
  %254 = load i32, i32* %add.ptr486, align 4, !dbg !330
  %and487 = and i32 %254, 255, !dbg !330
  %shl488 = shl i32 %and487, 24, !dbg !330
  %255 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr489 = getelementptr i32, i32* %255, i64 11, !dbg !330
  %256 = load i32, i32* %add.ptr489, align 4, !dbg !330
  %and490 = and i32 %256, 65280, !dbg !330
  %shl491 = shl i32 %and490, 8, !dbg !330
  %or492 = or i32 %shl488, %shl491, !dbg !330
  %257 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr493 = getelementptr i32, i32* %257, i64 11, !dbg !330
  %258 = load i32, i32* %add.ptr493, align 4, !dbg !330
  %and494 = and i32 %258, 16711680, !dbg !330
  %shr495 = lshr i32 %and494, 8, !dbg !330
  %or496 = or i32 %or492, %shr495, !dbg !330
  %259 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr497 = getelementptr i32, i32* %259, i64 11, !dbg !330
  %260 = load i32, i32* %add.ptr497, align 4, !dbg !330
  %and498 = and i32 %260, -16777216, !dbg !330
  %shr499 = lshr i32 %and498, 24, !dbg !330
  %or500 = or i32 %or496, %shr499, !dbg !330
  br label %cond.end504, !dbg !330

cond.false501:                                    ; preds = %cond.end479
  %261 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr502 = getelementptr i32, i32* %261, i64 11, !dbg !330
  %262 = load i32, i32* %add.ptr502, align 4, !dbg !330
  %call503 = call i32 @__fswab32(i32 %262) #7, !dbg !330
  br label %cond.end504, !dbg !330

cond.end504:                                      ; preds = %cond.false501, %cond.true485
  %cond505 = phi i32 [ %or500, %cond.true485 ], [ %call503, %cond.false501 ], !dbg !330
  %shr506 = lshr i32 %cond505, 0, !dbg !330
  %263 = call i1 @llvm.is.constant.i32(i32 %shr506), !dbg !330
  br i1 %263, label %cond.true507, label %cond.false611, !dbg !330

cond.true507:                                     ; preds = %cond.end504
  %264 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr508 = getelementptr i32, i32* %264, i64 11, !dbg !330
  %265 = load i32, i32* %add.ptr508, align 4, !dbg !330
  %266 = call i1 @llvm.is.constant.i32(i32 %265), !dbg !330
  br i1 %266, label %cond.true509, label %cond.false525, !dbg !330

cond.true509:                                     ; preds = %cond.true507
  %267 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr510 = getelementptr i32, i32* %267, i64 11, !dbg !330
  %268 = load i32, i32* %add.ptr510, align 4, !dbg !330
  %and511 = and i32 %268, 255, !dbg !330
  %shl512 = shl i32 %and511, 24, !dbg !330
  %269 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr513 = getelementptr i32, i32* %269, i64 11, !dbg !330
  %270 = load i32, i32* %add.ptr513, align 4, !dbg !330
  %and514 = and i32 %270, 65280, !dbg !330
  %shl515 = shl i32 %and514, 8, !dbg !330
  %or516 = or i32 %shl512, %shl515, !dbg !330
  %271 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr517 = getelementptr i32, i32* %271, i64 11, !dbg !330
  %272 = load i32, i32* %add.ptr517, align 4, !dbg !330
  %and518 = and i32 %272, 16711680, !dbg !330
  %shr519 = lshr i32 %and518, 8, !dbg !330
  %or520 = or i32 %or516, %shr519, !dbg !330
  %273 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr521 = getelementptr i32, i32* %273, i64 11, !dbg !330
  %274 = load i32, i32* %add.ptr521, align 4, !dbg !330
  %and522 = and i32 %274, -16777216, !dbg !330
  %shr523 = lshr i32 %and522, 24, !dbg !330
  %or524 = or i32 %or520, %shr523, !dbg !330
  br label %cond.end528, !dbg !330

cond.false525:                                    ; preds = %cond.true507
  %275 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr526 = getelementptr i32, i32* %275, i64 11, !dbg !330
  %276 = load i32, i32* %add.ptr526, align 4, !dbg !330
  %call527 = call i32 @__fswab32(i32 %276) #7, !dbg !330
  br label %cond.end528, !dbg !330

cond.end528:                                      ; preds = %cond.false525, %cond.true509
  %cond529 = phi i32 [ %or524, %cond.true509 ], [ %call527, %cond.false525 ], !dbg !330
  %shr530 = lshr i32 %cond529, 0, !dbg !330
  %and531 = and i32 %shr530, 255, !dbg !330
  %shl532 = shl i32 %and531, 24, !dbg !330
  %277 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr533 = getelementptr i32, i32* %277, i64 11, !dbg !330
  %278 = load i32, i32* %add.ptr533, align 4, !dbg !330
  %279 = call i1 @llvm.is.constant.i32(i32 %278), !dbg !330
  br i1 %279, label %cond.true534, label %cond.false550, !dbg !330

cond.true534:                                     ; preds = %cond.end528
  %280 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr535 = getelementptr i32, i32* %280, i64 11, !dbg !330
  %281 = load i32, i32* %add.ptr535, align 4, !dbg !330
  %and536 = and i32 %281, 255, !dbg !330
  %shl537 = shl i32 %and536, 24, !dbg !330
  %282 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr538 = getelementptr i32, i32* %282, i64 11, !dbg !330
  %283 = load i32, i32* %add.ptr538, align 4, !dbg !330
  %and539 = and i32 %283, 65280, !dbg !330
  %shl540 = shl i32 %and539, 8, !dbg !330
  %or541 = or i32 %shl537, %shl540, !dbg !330
  %284 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr542 = getelementptr i32, i32* %284, i64 11, !dbg !330
  %285 = load i32, i32* %add.ptr542, align 4, !dbg !330
  %and543 = and i32 %285, 16711680, !dbg !330
  %shr544 = lshr i32 %and543, 8, !dbg !330
  %or545 = or i32 %or541, %shr544, !dbg !330
  %286 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr546 = getelementptr i32, i32* %286, i64 11, !dbg !330
  %287 = load i32, i32* %add.ptr546, align 4, !dbg !330
  %and547 = and i32 %287, -16777216, !dbg !330
  %shr548 = lshr i32 %and547, 24, !dbg !330
  %or549 = or i32 %or545, %shr548, !dbg !330
  br label %cond.end553, !dbg !330

cond.false550:                                    ; preds = %cond.end528
  %288 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr551 = getelementptr i32, i32* %288, i64 11, !dbg !330
  %289 = load i32, i32* %add.ptr551, align 4, !dbg !330
  %call552 = call i32 @__fswab32(i32 %289) #7, !dbg !330
  br label %cond.end553, !dbg !330

cond.end553:                                      ; preds = %cond.false550, %cond.true534
  %cond554 = phi i32 [ %or549, %cond.true534 ], [ %call552, %cond.false550 ], !dbg !330
  %shr555 = lshr i32 %cond554, 0, !dbg !330
  %and556 = and i32 %shr555, 65280, !dbg !330
  %shl557 = shl i32 %and556, 8, !dbg !330
  %or558 = or i32 %shl532, %shl557, !dbg !330
  %290 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr559 = getelementptr i32, i32* %290, i64 11, !dbg !330
  %291 = load i32, i32* %add.ptr559, align 4, !dbg !330
  %292 = call i1 @llvm.is.constant.i32(i32 %291), !dbg !330
  br i1 %292, label %cond.true560, label %cond.false576, !dbg !330

cond.true560:                                     ; preds = %cond.end553
  %293 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr561 = getelementptr i32, i32* %293, i64 11, !dbg !330
  %294 = load i32, i32* %add.ptr561, align 4, !dbg !330
  %and562 = and i32 %294, 255, !dbg !330
  %shl563 = shl i32 %and562, 24, !dbg !330
  %295 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr564 = getelementptr i32, i32* %295, i64 11, !dbg !330
  %296 = load i32, i32* %add.ptr564, align 4, !dbg !330
  %and565 = and i32 %296, 65280, !dbg !330
  %shl566 = shl i32 %and565, 8, !dbg !330
  %or567 = or i32 %shl563, %shl566, !dbg !330
  %297 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr568 = getelementptr i32, i32* %297, i64 11, !dbg !330
  %298 = load i32, i32* %add.ptr568, align 4, !dbg !330
  %and569 = and i32 %298, 16711680, !dbg !330
  %shr570 = lshr i32 %and569, 8, !dbg !330
  %or571 = or i32 %or567, %shr570, !dbg !330
  %299 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr572 = getelementptr i32, i32* %299, i64 11, !dbg !330
  %300 = load i32, i32* %add.ptr572, align 4, !dbg !330
  %and573 = and i32 %300, -16777216, !dbg !330
  %shr574 = lshr i32 %and573, 24, !dbg !330
  %or575 = or i32 %or571, %shr574, !dbg !330
  br label %cond.end579, !dbg !330

cond.false576:                                    ; preds = %cond.end553
  %301 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr577 = getelementptr i32, i32* %301, i64 11, !dbg !330
  %302 = load i32, i32* %add.ptr577, align 4, !dbg !330
  %call578 = call i32 @__fswab32(i32 %302) #7, !dbg !330
  br label %cond.end579, !dbg !330

cond.end579:                                      ; preds = %cond.false576, %cond.true560
  %cond580 = phi i32 [ %or575, %cond.true560 ], [ %call578, %cond.false576 ], !dbg !330
  %shr581 = lshr i32 %cond580, 0, !dbg !330
  %and582 = and i32 %shr581, 16711680, !dbg !330
  %shr583 = lshr i32 %and582, 8, !dbg !330
  %or584 = or i32 %or558, %shr583, !dbg !330
  %303 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr585 = getelementptr i32, i32* %303, i64 11, !dbg !330
  %304 = load i32, i32* %add.ptr585, align 4, !dbg !330
  %305 = call i1 @llvm.is.constant.i32(i32 %304), !dbg !330
  br i1 %305, label %cond.true586, label %cond.false602, !dbg !330

cond.true586:                                     ; preds = %cond.end579
  %306 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr587 = getelementptr i32, i32* %306, i64 11, !dbg !330
  %307 = load i32, i32* %add.ptr587, align 4, !dbg !330
  %and588 = and i32 %307, 255, !dbg !330
  %shl589 = shl i32 %and588, 24, !dbg !330
  %308 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr590 = getelementptr i32, i32* %308, i64 11, !dbg !330
  %309 = load i32, i32* %add.ptr590, align 4, !dbg !330
  %and591 = and i32 %309, 65280, !dbg !330
  %shl592 = shl i32 %and591, 8, !dbg !330
  %or593 = or i32 %shl589, %shl592, !dbg !330
  %310 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr594 = getelementptr i32, i32* %310, i64 11, !dbg !330
  %311 = load i32, i32* %add.ptr594, align 4, !dbg !330
  %and595 = and i32 %311, 16711680, !dbg !330
  %shr596 = lshr i32 %and595, 8, !dbg !330
  %or597 = or i32 %or593, %shr596, !dbg !330
  %312 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr598 = getelementptr i32, i32* %312, i64 11, !dbg !330
  %313 = load i32, i32* %add.ptr598, align 4, !dbg !330
  %and599 = and i32 %313, -16777216, !dbg !330
  %shr600 = lshr i32 %and599, 24, !dbg !330
  %or601 = or i32 %or597, %shr600, !dbg !330
  br label %cond.end605, !dbg !330

cond.false602:                                    ; preds = %cond.end579
  %314 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr603 = getelementptr i32, i32* %314, i64 11, !dbg !330
  %315 = load i32, i32* %add.ptr603, align 4, !dbg !330
  %call604 = call i32 @__fswab32(i32 %315) #7, !dbg !330
  br label %cond.end605, !dbg !330

cond.end605:                                      ; preds = %cond.false602, %cond.true586
  %cond606 = phi i32 [ %or601, %cond.true586 ], [ %call604, %cond.false602 ], !dbg !330
  %shr607 = lshr i32 %cond606, 0, !dbg !330
  %and608 = and i32 %shr607, -16777216, !dbg !330
  %shr609 = lshr i32 %and608, 24, !dbg !330
  %or610 = or i32 %or584, %shr609, !dbg !330
  br label %cond.end636, !dbg !330

cond.false611:                                    ; preds = %cond.end504
  %316 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr612 = getelementptr i32, i32* %316, i64 11, !dbg !330
  %317 = load i32, i32* %add.ptr612, align 4, !dbg !330
  %318 = call i1 @llvm.is.constant.i32(i32 %317), !dbg !330
  br i1 %318, label %cond.true613, label %cond.false629, !dbg !330

cond.true613:                                     ; preds = %cond.false611
  %319 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr614 = getelementptr i32, i32* %319, i64 11, !dbg !330
  %320 = load i32, i32* %add.ptr614, align 4, !dbg !330
  %and615 = and i32 %320, 255, !dbg !330
  %shl616 = shl i32 %and615, 24, !dbg !330
  %321 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr617 = getelementptr i32, i32* %321, i64 11, !dbg !330
  %322 = load i32, i32* %add.ptr617, align 4, !dbg !330
  %and618 = and i32 %322, 65280, !dbg !330
  %shl619 = shl i32 %and618, 8, !dbg !330
  %or620 = or i32 %shl616, %shl619, !dbg !330
  %323 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr621 = getelementptr i32, i32* %323, i64 11, !dbg !330
  %324 = load i32, i32* %add.ptr621, align 4, !dbg !330
  %and622 = and i32 %324, 16711680, !dbg !330
  %shr623 = lshr i32 %and622, 8, !dbg !330
  %or624 = or i32 %or620, %shr623, !dbg !330
  %325 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr625 = getelementptr i32, i32* %325, i64 11, !dbg !330
  %326 = load i32, i32* %add.ptr625, align 4, !dbg !330
  %and626 = and i32 %326, -16777216, !dbg !330
  %shr627 = lshr i32 %and626, 24, !dbg !330
  %or628 = or i32 %or624, %shr627, !dbg !330
  br label %cond.end632, !dbg !330

cond.false629:                                    ; preds = %cond.false611
  %327 = load i32*, i32** %value.addr, align 8, !dbg !330
  %add.ptr630 = getelementptr i32, i32* %327, i64 11, !dbg !330
  %328 = load i32, i32* %add.ptr630, align 4, !dbg !330
  %call631 = call i32 @__fswab32(i32 %328) #7, !dbg !330
  br label %cond.end632, !dbg !330

cond.end632:                                      ; preds = %cond.false629, %cond.true613
  %cond633 = phi i32 [ %or628, %cond.true613 ], [ %call631, %cond.false629 ], !dbg !330
  %shr634 = lshr i32 %cond633, 0, !dbg !330
  %call635 = call i32 @__fswab32(i32 %shr634) #7, !dbg !330
  br label %cond.end636, !dbg !330

cond.end636:                                      ; preds = %cond.end632, %cond.end605
  %cond637 = phi i32 [ %or610, %cond.end605 ], [ %call635, %cond.end632 ], !dbg !330
  store i32 %cond637, i32* %tmp483, align 4, !dbg !330
  %329 = load i32, i32* %tmp483, align 4, !dbg !330
  store i32 %329, i32* %tmp638, align 4, !dbg !330
  %330 = load i32, i32* %tmp638, align 4, !dbg !330
  store i32 %330, i32* %v482, align 4, !dbg !324
  call void @llvm.dbg.declare(metadata %struct.anon.8* %dst_ipv4, metadata !331, metadata !DIExpression()), !dbg !336
  %m639 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %dst_ipv4, i32 0, i32 0, !dbg !336
  call void @llvm.dbg.declare(metadata i32* %tmp640, metadata !337, metadata !DIExpression()), !dbg !339
  %331 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr641 = getelementptr i32, i32* %331, i64 15, !dbg !339
  %332 = load i32, i32* %add.ptr641, align 4, !dbg !339
  %333 = call i1 @llvm.is.constant.i32(i32 %332), !dbg !339
  br i1 %333, label %cond.true642, label %cond.false658, !dbg !339

cond.true642:                                     ; preds = %cond.end636
  %334 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr643 = getelementptr i32, i32* %334, i64 15, !dbg !339
  %335 = load i32, i32* %add.ptr643, align 4, !dbg !339
  %and644 = and i32 %335, 255, !dbg !339
  %shl645 = shl i32 %and644, 24, !dbg !339
  %336 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr646 = getelementptr i32, i32* %336, i64 15, !dbg !339
  %337 = load i32, i32* %add.ptr646, align 4, !dbg !339
  %and647 = and i32 %337, 65280, !dbg !339
  %shl648 = shl i32 %and647, 8, !dbg !339
  %or649 = or i32 %shl645, %shl648, !dbg !339
  %338 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr650 = getelementptr i32, i32* %338, i64 15, !dbg !339
  %339 = load i32, i32* %add.ptr650, align 4, !dbg !339
  %and651 = and i32 %339, 16711680, !dbg !339
  %shr652 = lshr i32 %and651, 8, !dbg !339
  %or653 = or i32 %or649, %shr652, !dbg !339
  %340 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr654 = getelementptr i32, i32* %340, i64 15, !dbg !339
  %341 = load i32, i32* %add.ptr654, align 4, !dbg !339
  %and655 = and i32 %341, -16777216, !dbg !339
  %shr656 = lshr i32 %and655, 24, !dbg !339
  %or657 = or i32 %or653, %shr656, !dbg !339
  br label %cond.end661, !dbg !339

cond.false658:                                    ; preds = %cond.end636
  %342 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr659 = getelementptr i32, i32* %342, i64 15, !dbg !339
  %343 = load i32, i32* %add.ptr659, align 4, !dbg !339
  %call660 = call i32 @__fswab32(i32 %343) #7, !dbg !339
  br label %cond.end661, !dbg !339

cond.end661:                                      ; preds = %cond.false658, %cond.true642
  %cond662 = phi i32 [ %or657, %cond.true642 ], [ %call660, %cond.false658 ], !dbg !339
  %shr663 = lshr i32 %cond662, 0, !dbg !339
  %344 = call i1 @llvm.is.constant.i32(i32 %shr663), !dbg !339
  br i1 %344, label %cond.true664, label %cond.false768, !dbg !339

cond.true664:                                     ; preds = %cond.end661
  %345 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr665 = getelementptr i32, i32* %345, i64 15, !dbg !339
  %346 = load i32, i32* %add.ptr665, align 4, !dbg !339
  %347 = call i1 @llvm.is.constant.i32(i32 %346), !dbg !339
  br i1 %347, label %cond.true666, label %cond.false682, !dbg !339

cond.true666:                                     ; preds = %cond.true664
  %348 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr667 = getelementptr i32, i32* %348, i64 15, !dbg !339
  %349 = load i32, i32* %add.ptr667, align 4, !dbg !339
  %and668 = and i32 %349, 255, !dbg !339
  %shl669 = shl i32 %and668, 24, !dbg !339
  %350 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr670 = getelementptr i32, i32* %350, i64 15, !dbg !339
  %351 = load i32, i32* %add.ptr670, align 4, !dbg !339
  %and671 = and i32 %351, 65280, !dbg !339
  %shl672 = shl i32 %and671, 8, !dbg !339
  %or673 = or i32 %shl669, %shl672, !dbg !339
  %352 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr674 = getelementptr i32, i32* %352, i64 15, !dbg !339
  %353 = load i32, i32* %add.ptr674, align 4, !dbg !339
  %and675 = and i32 %353, 16711680, !dbg !339
  %shr676 = lshr i32 %and675, 8, !dbg !339
  %or677 = or i32 %or673, %shr676, !dbg !339
  %354 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr678 = getelementptr i32, i32* %354, i64 15, !dbg !339
  %355 = load i32, i32* %add.ptr678, align 4, !dbg !339
  %and679 = and i32 %355, -16777216, !dbg !339
  %shr680 = lshr i32 %and679, 24, !dbg !339
  %or681 = or i32 %or677, %shr680, !dbg !339
  br label %cond.end685, !dbg !339

cond.false682:                                    ; preds = %cond.true664
  %356 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr683 = getelementptr i32, i32* %356, i64 15, !dbg !339
  %357 = load i32, i32* %add.ptr683, align 4, !dbg !339
  %call684 = call i32 @__fswab32(i32 %357) #7, !dbg !339
  br label %cond.end685, !dbg !339

cond.end685:                                      ; preds = %cond.false682, %cond.true666
  %cond686 = phi i32 [ %or681, %cond.true666 ], [ %call684, %cond.false682 ], !dbg !339
  %shr687 = lshr i32 %cond686, 0, !dbg !339
  %and688 = and i32 %shr687, 255, !dbg !339
  %shl689 = shl i32 %and688, 24, !dbg !339
  %358 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr690 = getelementptr i32, i32* %358, i64 15, !dbg !339
  %359 = load i32, i32* %add.ptr690, align 4, !dbg !339
  %360 = call i1 @llvm.is.constant.i32(i32 %359), !dbg !339
  br i1 %360, label %cond.true691, label %cond.false707, !dbg !339

cond.true691:                                     ; preds = %cond.end685
  %361 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr692 = getelementptr i32, i32* %361, i64 15, !dbg !339
  %362 = load i32, i32* %add.ptr692, align 4, !dbg !339
  %and693 = and i32 %362, 255, !dbg !339
  %shl694 = shl i32 %and693, 24, !dbg !339
  %363 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr695 = getelementptr i32, i32* %363, i64 15, !dbg !339
  %364 = load i32, i32* %add.ptr695, align 4, !dbg !339
  %and696 = and i32 %364, 65280, !dbg !339
  %shl697 = shl i32 %and696, 8, !dbg !339
  %or698 = or i32 %shl694, %shl697, !dbg !339
  %365 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr699 = getelementptr i32, i32* %365, i64 15, !dbg !339
  %366 = load i32, i32* %add.ptr699, align 4, !dbg !339
  %and700 = and i32 %366, 16711680, !dbg !339
  %shr701 = lshr i32 %and700, 8, !dbg !339
  %or702 = or i32 %or698, %shr701, !dbg !339
  %367 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr703 = getelementptr i32, i32* %367, i64 15, !dbg !339
  %368 = load i32, i32* %add.ptr703, align 4, !dbg !339
  %and704 = and i32 %368, -16777216, !dbg !339
  %shr705 = lshr i32 %and704, 24, !dbg !339
  %or706 = or i32 %or702, %shr705, !dbg !339
  br label %cond.end710, !dbg !339

cond.false707:                                    ; preds = %cond.end685
  %369 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr708 = getelementptr i32, i32* %369, i64 15, !dbg !339
  %370 = load i32, i32* %add.ptr708, align 4, !dbg !339
  %call709 = call i32 @__fswab32(i32 %370) #7, !dbg !339
  br label %cond.end710, !dbg !339

cond.end710:                                      ; preds = %cond.false707, %cond.true691
  %cond711 = phi i32 [ %or706, %cond.true691 ], [ %call709, %cond.false707 ], !dbg !339
  %shr712 = lshr i32 %cond711, 0, !dbg !339
  %and713 = and i32 %shr712, 65280, !dbg !339
  %shl714 = shl i32 %and713, 8, !dbg !339
  %or715 = or i32 %shl689, %shl714, !dbg !339
  %371 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr716 = getelementptr i32, i32* %371, i64 15, !dbg !339
  %372 = load i32, i32* %add.ptr716, align 4, !dbg !339
  %373 = call i1 @llvm.is.constant.i32(i32 %372), !dbg !339
  br i1 %373, label %cond.true717, label %cond.false733, !dbg !339

cond.true717:                                     ; preds = %cond.end710
  %374 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr718 = getelementptr i32, i32* %374, i64 15, !dbg !339
  %375 = load i32, i32* %add.ptr718, align 4, !dbg !339
  %and719 = and i32 %375, 255, !dbg !339
  %shl720 = shl i32 %and719, 24, !dbg !339
  %376 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr721 = getelementptr i32, i32* %376, i64 15, !dbg !339
  %377 = load i32, i32* %add.ptr721, align 4, !dbg !339
  %and722 = and i32 %377, 65280, !dbg !339
  %shl723 = shl i32 %and722, 8, !dbg !339
  %or724 = or i32 %shl720, %shl723, !dbg !339
  %378 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr725 = getelementptr i32, i32* %378, i64 15, !dbg !339
  %379 = load i32, i32* %add.ptr725, align 4, !dbg !339
  %and726 = and i32 %379, 16711680, !dbg !339
  %shr727 = lshr i32 %and726, 8, !dbg !339
  %or728 = or i32 %or724, %shr727, !dbg !339
  %380 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr729 = getelementptr i32, i32* %380, i64 15, !dbg !339
  %381 = load i32, i32* %add.ptr729, align 4, !dbg !339
  %and730 = and i32 %381, -16777216, !dbg !339
  %shr731 = lshr i32 %and730, 24, !dbg !339
  %or732 = or i32 %or728, %shr731, !dbg !339
  br label %cond.end736, !dbg !339

cond.false733:                                    ; preds = %cond.end710
  %382 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr734 = getelementptr i32, i32* %382, i64 15, !dbg !339
  %383 = load i32, i32* %add.ptr734, align 4, !dbg !339
  %call735 = call i32 @__fswab32(i32 %383) #7, !dbg !339
  br label %cond.end736, !dbg !339

cond.end736:                                      ; preds = %cond.false733, %cond.true717
  %cond737 = phi i32 [ %or732, %cond.true717 ], [ %call735, %cond.false733 ], !dbg !339
  %shr738 = lshr i32 %cond737, 0, !dbg !339
  %and739 = and i32 %shr738, 16711680, !dbg !339
  %shr740 = lshr i32 %and739, 8, !dbg !339
  %or741 = or i32 %or715, %shr740, !dbg !339
  %384 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr742 = getelementptr i32, i32* %384, i64 15, !dbg !339
  %385 = load i32, i32* %add.ptr742, align 4, !dbg !339
  %386 = call i1 @llvm.is.constant.i32(i32 %385), !dbg !339
  br i1 %386, label %cond.true743, label %cond.false759, !dbg !339

cond.true743:                                     ; preds = %cond.end736
  %387 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr744 = getelementptr i32, i32* %387, i64 15, !dbg !339
  %388 = load i32, i32* %add.ptr744, align 4, !dbg !339
  %and745 = and i32 %388, 255, !dbg !339
  %shl746 = shl i32 %and745, 24, !dbg !339
  %389 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr747 = getelementptr i32, i32* %389, i64 15, !dbg !339
  %390 = load i32, i32* %add.ptr747, align 4, !dbg !339
  %and748 = and i32 %390, 65280, !dbg !339
  %shl749 = shl i32 %and748, 8, !dbg !339
  %or750 = or i32 %shl746, %shl749, !dbg !339
  %391 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr751 = getelementptr i32, i32* %391, i64 15, !dbg !339
  %392 = load i32, i32* %add.ptr751, align 4, !dbg !339
  %and752 = and i32 %392, 16711680, !dbg !339
  %shr753 = lshr i32 %and752, 8, !dbg !339
  %or754 = or i32 %or750, %shr753, !dbg !339
  %393 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr755 = getelementptr i32, i32* %393, i64 15, !dbg !339
  %394 = load i32, i32* %add.ptr755, align 4, !dbg !339
  %and756 = and i32 %394, -16777216, !dbg !339
  %shr757 = lshr i32 %and756, 24, !dbg !339
  %or758 = or i32 %or754, %shr757, !dbg !339
  br label %cond.end762, !dbg !339

cond.false759:                                    ; preds = %cond.end736
  %395 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr760 = getelementptr i32, i32* %395, i64 15, !dbg !339
  %396 = load i32, i32* %add.ptr760, align 4, !dbg !339
  %call761 = call i32 @__fswab32(i32 %396) #7, !dbg !339
  br label %cond.end762, !dbg !339

cond.end762:                                      ; preds = %cond.false759, %cond.true743
  %cond763 = phi i32 [ %or758, %cond.true743 ], [ %call761, %cond.false759 ], !dbg !339
  %shr764 = lshr i32 %cond763, 0, !dbg !339
  %and765 = and i32 %shr764, -16777216, !dbg !339
  %shr766 = lshr i32 %and765, 24, !dbg !339
  %or767 = or i32 %or741, %shr766, !dbg !339
  br label %cond.end793, !dbg !339

cond.false768:                                    ; preds = %cond.end661
  %397 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr769 = getelementptr i32, i32* %397, i64 15, !dbg !339
  %398 = load i32, i32* %add.ptr769, align 4, !dbg !339
  %399 = call i1 @llvm.is.constant.i32(i32 %398), !dbg !339
  br i1 %399, label %cond.true770, label %cond.false786, !dbg !339

cond.true770:                                     ; preds = %cond.false768
  %400 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr771 = getelementptr i32, i32* %400, i64 15, !dbg !339
  %401 = load i32, i32* %add.ptr771, align 4, !dbg !339
  %and772 = and i32 %401, 255, !dbg !339
  %shl773 = shl i32 %and772, 24, !dbg !339
  %402 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr774 = getelementptr i32, i32* %402, i64 15, !dbg !339
  %403 = load i32, i32* %add.ptr774, align 4, !dbg !339
  %and775 = and i32 %403, 65280, !dbg !339
  %shl776 = shl i32 %and775, 8, !dbg !339
  %or777 = or i32 %shl773, %shl776, !dbg !339
  %404 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr778 = getelementptr i32, i32* %404, i64 15, !dbg !339
  %405 = load i32, i32* %add.ptr778, align 4, !dbg !339
  %and779 = and i32 %405, 16711680, !dbg !339
  %shr780 = lshr i32 %and779, 8, !dbg !339
  %or781 = or i32 %or777, %shr780, !dbg !339
  %406 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr782 = getelementptr i32, i32* %406, i64 15, !dbg !339
  %407 = load i32, i32* %add.ptr782, align 4, !dbg !339
  %and783 = and i32 %407, -16777216, !dbg !339
  %shr784 = lshr i32 %and783, 24, !dbg !339
  %or785 = or i32 %or781, %shr784, !dbg !339
  br label %cond.end789, !dbg !339

cond.false786:                                    ; preds = %cond.false768
  %408 = load i32*, i32** %mask.addr, align 8, !dbg !339
  %add.ptr787 = getelementptr i32, i32* %408, i64 15, !dbg !339
  %409 = load i32, i32* %add.ptr787, align 4, !dbg !339
  %call788 = call i32 @__fswab32(i32 %409) #7, !dbg !339
  br label %cond.end789, !dbg !339

cond.end789:                                      ; preds = %cond.false786, %cond.true770
  %cond790 = phi i32 [ %or785, %cond.true770 ], [ %call788, %cond.false786 ], !dbg !339
  %shr791 = lshr i32 %cond790, 0, !dbg !339
  %call792 = call i32 @__fswab32(i32 %shr791) #7, !dbg !339
  br label %cond.end793, !dbg !339

cond.end793:                                      ; preds = %cond.end789, %cond.end762
  %cond794 = phi i32 [ %or767, %cond.end762 ], [ %call792, %cond.end789 ], !dbg !339
  store i32 %cond794, i32* %tmp640, align 4, !dbg !339
  %410 = load i32, i32* %tmp640, align 4, !dbg !339
  store i32 %410, i32* %tmp795, align 4, !dbg !339
  %411 = load i32, i32* %tmp795, align 4, !dbg !339
  store i32 %411, i32* %m639, align 4, !dbg !336
  %v796 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %dst_ipv4, i32 0, i32 1, !dbg !336
  call void @llvm.dbg.declare(metadata i32* %tmp797, metadata !340, metadata !DIExpression()), !dbg !342
  %412 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr798 = getelementptr i32, i32* %412, i64 15, !dbg !342
  %413 = load i32, i32* %add.ptr798, align 4, !dbg !342
  %414 = call i1 @llvm.is.constant.i32(i32 %413), !dbg !342
  br i1 %414, label %cond.true799, label %cond.false815, !dbg !342

cond.true799:                                     ; preds = %cond.end793
  %415 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr800 = getelementptr i32, i32* %415, i64 15, !dbg !342
  %416 = load i32, i32* %add.ptr800, align 4, !dbg !342
  %and801 = and i32 %416, 255, !dbg !342
  %shl802 = shl i32 %and801, 24, !dbg !342
  %417 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr803 = getelementptr i32, i32* %417, i64 15, !dbg !342
  %418 = load i32, i32* %add.ptr803, align 4, !dbg !342
  %and804 = and i32 %418, 65280, !dbg !342
  %shl805 = shl i32 %and804, 8, !dbg !342
  %or806 = or i32 %shl802, %shl805, !dbg !342
  %419 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr807 = getelementptr i32, i32* %419, i64 15, !dbg !342
  %420 = load i32, i32* %add.ptr807, align 4, !dbg !342
  %and808 = and i32 %420, 16711680, !dbg !342
  %shr809 = lshr i32 %and808, 8, !dbg !342
  %or810 = or i32 %or806, %shr809, !dbg !342
  %421 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr811 = getelementptr i32, i32* %421, i64 15, !dbg !342
  %422 = load i32, i32* %add.ptr811, align 4, !dbg !342
  %and812 = and i32 %422, -16777216, !dbg !342
  %shr813 = lshr i32 %and812, 24, !dbg !342
  %or814 = or i32 %or810, %shr813, !dbg !342
  br label %cond.end818, !dbg !342

cond.false815:                                    ; preds = %cond.end793
  %423 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr816 = getelementptr i32, i32* %423, i64 15, !dbg !342
  %424 = load i32, i32* %add.ptr816, align 4, !dbg !342
  %call817 = call i32 @__fswab32(i32 %424) #7, !dbg !342
  br label %cond.end818, !dbg !342

cond.end818:                                      ; preds = %cond.false815, %cond.true799
  %cond819 = phi i32 [ %or814, %cond.true799 ], [ %call817, %cond.false815 ], !dbg !342
  %shr820 = lshr i32 %cond819, 0, !dbg !342
  %425 = call i1 @llvm.is.constant.i32(i32 %shr820), !dbg !342
  br i1 %425, label %cond.true821, label %cond.false925, !dbg !342

cond.true821:                                     ; preds = %cond.end818
  %426 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr822 = getelementptr i32, i32* %426, i64 15, !dbg !342
  %427 = load i32, i32* %add.ptr822, align 4, !dbg !342
  %428 = call i1 @llvm.is.constant.i32(i32 %427), !dbg !342
  br i1 %428, label %cond.true823, label %cond.false839, !dbg !342

cond.true823:                                     ; preds = %cond.true821
  %429 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr824 = getelementptr i32, i32* %429, i64 15, !dbg !342
  %430 = load i32, i32* %add.ptr824, align 4, !dbg !342
  %and825 = and i32 %430, 255, !dbg !342
  %shl826 = shl i32 %and825, 24, !dbg !342
  %431 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr827 = getelementptr i32, i32* %431, i64 15, !dbg !342
  %432 = load i32, i32* %add.ptr827, align 4, !dbg !342
  %and828 = and i32 %432, 65280, !dbg !342
  %shl829 = shl i32 %and828, 8, !dbg !342
  %or830 = or i32 %shl826, %shl829, !dbg !342
  %433 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr831 = getelementptr i32, i32* %433, i64 15, !dbg !342
  %434 = load i32, i32* %add.ptr831, align 4, !dbg !342
  %and832 = and i32 %434, 16711680, !dbg !342
  %shr833 = lshr i32 %and832, 8, !dbg !342
  %or834 = or i32 %or830, %shr833, !dbg !342
  %435 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr835 = getelementptr i32, i32* %435, i64 15, !dbg !342
  %436 = load i32, i32* %add.ptr835, align 4, !dbg !342
  %and836 = and i32 %436, -16777216, !dbg !342
  %shr837 = lshr i32 %and836, 24, !dbg !342
  %or838 = or i32 %or834, %shr837, !dbg !342
  br label %cond.end842, !dbg !342

cond.false839:                                    ; preds = %cond.true821
  %437 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr840 = getelementptr i32, i32* %437, i64 15, !dbg !342
  %438 = load i32, i32* %add.ptr840, align 4, !dbg !342
  %call841 = call i32 @__fswab32(i32 %438) #7, !dbg !342
  br label %cond.end842, !dbg !342

cond.end842:                                      ; preds = %cond.false839, %cond.true823
  %cond843 = phi i32 [ %or838, %cond.true823 ], [ %call841, %cond.false839 ], !dbg !342
  %shr844 = lshr i32 %cond843, 0, !dbg !342
  %and845 = and i32 %shr844, 255, !dbg !342
  %shl846 = shl i32 %and845, 24, !dbg !342
  %439 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr847 = getelementptr i32, i32* %439, i64 15, !dbg !342
  %440 = load i32, i32* %add.ptr847, align 4, !dbg !342
  %441 = call i1 @llvm.is.constant.i32(i32 %440), !dbg !342
  br i1 %441, label %cond.true848, label %cond.false864, !dbg !342

cond.true848:                                     ; preds = %cond.end842
  %442 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr849 = getelementptr i32, i32* %442, i64 15, !dbg !342
  %443 = load i32, i32* %add.ptr849, align 4, !dbg !342
  %and850 = and i32 %443, 255, !dbg !342
  %shl851 = shl i32 %and850, 24, !dbg !342
  %444 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr852 = getelementptr i32, i32* %444, i64 15, !dbg !342
  %445 = load i32, i32* %add.ptr852, align 4, !dbg !342
  %and853 = and i32 %445, 65280, !dbg !342
  %shl854 = shl i32 %and853, 8, !dbg !342
  %or855 = or i32 %shl851, %shl854, !dbg !342
  %446 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr856 = getelementptr i32, i32* %446, i64 15, !dbg !342
  %447 = load i32, i32* %add.ptr856, align 4, !dbg !342
  %and857 = and i32 %447, 16711680, !dbg !342
  %shr858 = lshr i32 %and857, 8, !dbg !342
  %or859 = or i32 %or855, %shr858, !dbg !342
  %448 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr860 = getelementptr i32, i32* %448, i64 15, !dbg !342
  %449 = load i32, i32* %add.ptr860, align 4, !dbg !342
  %and861 = and i32 %449, -16777216, !dbg !342
  %shr862 = lshr i32 %and861, 24, !dbg !342
  %or863 = or i32 %or859, %shr862, !dbg !342
  br label %cond.end867, !dbg !342

cond.false864:                                    ; preds = %cond.end842
  %450 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr865 = getelementptr i32, i32* %450, i64 15, !dbg !342
  %451 = load i32, i32* %add.ptr865, align 4, !dbg !342
  %call866 = call i32 @__fswab32(i32 %451) #7, !dbg !342
  br label %cond.end867, !dbg !342

cond.end867:                                      ; preds = %cond.false864, %cond.true848
  %cond868 = phi i32 [ %or863, %cond.true848 ], [ %call866, %cond.false864 ], !dbg !342
  %shr869 = lshr i32 %cond868, 0, !dbg !342
  %and870 = and i32 %shr869, 65280, !dbg !342
  %shl871 = shl i32 %and870, 8, !dbg !342
  %or872 = or i32 %shl846, %shl871, !dbg !342
  %452 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr873 = getelementptr i32, i32* %452, i64 15, !dbg !342
  %453 = load i32, i32* %add.ptr873, align 4, !dbg !342
  %454 = call i1 @llvm.is.constant.i32(i32 %453), !dbg !342
  br i1 %454, label %cond.true874, label %cond.false890, !dbg !342

cond.true874:                                     ; preds = %cond.end867
  %455 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr875 = getelementptr i32, i32* %455, i64 15, !dbg !342
  %456 = load i32, i32* %add.ptr875, align 4, !dbg !342
  %and876 = and i32 %456, 255, !dbg !342
  %shl877 = shl i32 %and876, 24, !dbg !342
  %457 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr878 = getelementptr i32, i32* %457, i64 15, !dbg !342
  %458 = load i32, i32* %add.ptr878, align 4, !dbg !342
  %and879 = and i32 %458, 65280, !dbg !342
  %shl880 = shl i32 %and879, 8, !dbg !342
  %or881 = or i32 %shl877, %shl880, !dbg !342
  %459 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr882 = getelementptr i32, i32* %459, i64 15, !dbg !342
  %460 = load i32, i32* %add.ptr882, align 4, !dbg !342
  %and883 = and i32 %460, 16711680, !dbg !342
  %shr884 = lshr i32 %and883, 8, !dbg !342
  %or885 = or i32 %or881, %shr884, !dbg !342
  %461 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr886 = getelementptr i32, i32* %461, i64 15, !dbg !342
  %462 = load i32, i32* %add.ptr886, align 4, !dbg !342
  %and887 = and i32 %462, -16777216, !dbg !342
  %shr888 = lshr i32 %and887, 24, !dbg !342
  %or889 = or i32 %or885, %shr888, !dbg !342
  br label %cond.end893, !dbg !342

cond.false890:                                    ; preds = %cond.end867
  %463 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr891 = getelementptr i32, i32* %463, i64 15, !dbg !342
  %464 = load i32, i32* %add.ptr891, align 4, !dbg !342
  %call892 = call i32 @__fswab32(i32 %464) #7, !dbg !342
  br label %cond.end893, !dbg !342

cond.end893:                                      ; preds = %cond.false890, %cond.true874
  %cond894 = phi i32 [ %or889, %cond.true874 ], [ %call892, %cond.false890 ], !dbg !342
  %shr895 = lshr i32 %cond894, 0, !dbg !342
  %and896 = and i32 %shr895, 16711680, !dbg !342
  %shr897 = lshr i32 %and896, 8, !dbg !342
  %or898 = or i32 %or872, %shr897, !dbg !342
  %465 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr899 = getelementptr i32, i32* %465, i64 15, !dbg !342
  %466 = load i32, i32* %add.ptr899, align 4, !dbg !342
  %467 = call i1 @llvm.is.constant.i32(i32 %466), !dbg !342
  br i1 %467, label %cond.true900, label %cond.false916, !dbg !342

cond.true900:                                     ; preds = %cond.end893
  %468 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr901 = getelementptr i32, i32* %468, i64 15, !dbg !342
  %469 = load i32, i32* %add.ptr901, align 4, !dbg !342
  %and902 = and i32 %469, 255, !dbg !342
  %shl903 = shl i32 %and902, 24, !dbg !342
  %470 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr904 = getelementptr i32, i32* %470, i64 15, !dbg !342
  %471 = load i32, i32* %add.ptr904, align 4, !dbg !342
  %and905 = and i32 %471, 65280, !dbg !342
  %shl906 = shl i32 %and905, 8, !dbg !342
  %or907 = or i32 %shl903, %shl906, !dbg !342
  %472 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr908 = getelementptr i32, i32* %472, i64 15, !dbg !342
  %473 = load i32, i32* %add.ptr908, align 4, !dbg !342
  %and909 = and i32 %473, 16711680, !dbg !342
  %shr910 = lshr i32 %and909, 8, !dbg !342
  %or911 = or i32 %or907, %shr910, !dbg !342
  %474 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr912 = getelementptr i32, i32* %474, i64 15, !dbg !342
  %475 = load i32, i32* %add.ptr912, align 4, !dbg !342
  %and913 = and i32 %475, -16777216, !dbg !342
  %shr914 = lshr i32 %and913, 24, !dbg !342
  %or915 = or i32 %or911, %shr914, !dbg !342
  br label %cond.end919, !dbg !342

cond.false916:                                    ; preds = %cond.end893
  %476 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr917 = getelementptr i32, i32* %476, i64 15, !dbg !342
  %477 = load i32, i32* %add.ptr917, align 4, !dbg !342
  %call918 = call i32 @__fswab32(i32 %477) #7, !dbg !342
  br label %cond.end919, !dbg !342

cond.end919:                                      ; preds = %cond.false916, %cond.true900
  %cond920 = phi i32 [ %or915, %cond.true900 ], [ %call918, %cond.false916 ], !dbg !342
  %shr921 = lshr i32 %cond920, 0, !dbg !342
  %and922 = and i32 %shr921, -16777216, !dbg !342
  %shr923 = lshr i32 %and922, 24, !dbg !342
  %or924 = or i32 %or898, %shr923, !dbg !342
  br label %cond.end950, !dbg !342

cond.false925:                                    ; preds = %cond.end818
  %478 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr926 = getelementptr i32, i32* %478, i64 15, !dbg !342
  %479 = load i32, i32* %add.ptr926, align 4, !dbg !342
  %480 = call i1 @llvm.is.constant.i32(i32 %479), !dbg !342
  br i1 %480, label %cond.true927, label %cond.false943, !dbg !342

cond.true927:                                     ; preds = %cond.false925
  %481 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr928 = getelementptr i32, i32* %481, i64 15, !dbg !342
  %482 = load i32, i32* %add.ptr928, align 4, !dbg !342
  %and929 = and i32 %482, 255, !dbg !342
  %shl930 = shl i32 %and929, 24, !dbg !342
  %483 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr931 = getelementptr i32, i32* %483, i64 15, !dbg !342
  %484 = load i32, i32* %add.ptr931, align 4, !dbg !342
  %and932 = and i32 %484, 65280, !dbg !342
  %shl933 = shl i32 %and932, 8, !dbg !342
  %or934 = or i32 %shl930, %shl933, !dbg !342
  %485 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr935 = getelementptr i32, i32* %485, i64 15, !dbg !342
  %486 = load i32, i32* %add.ptr935, align 4, !dbg !342
  %and936 = and i32 %486, 16711680, !dbg !342
  %shr937 = lshr i32 %and936, 8, !dbg !342
  %or938 = or i32 %or934, %shr937, !dbg !342
  %487 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr939 = getelementptr i32, i32* %487, i64 15, !dbg !342
  %488 = load i32, i32* %add.ptr939, align 4, !dbg !342
  %and940 = and i32 %488, -16777216, !dbg !342
  %shr941 = lshr i32 %and940, 24, !dbg !342
  %or942 = or i32 %or938, %shr941, !dbg !342
  br label %cond.end946, !dbg !342

cond.false943:                                    ; preds = %cond.false925
  %489 = load i32*, i32** %value.addr, align 8, !dbg !342
  %add.ptr944 = getelementptr i32, i32* %489, i64 15, !dbg !342
  %490 = load i32, i32* %add.ptr944, align 4, !dbg !342
  %call945 = call i32 @__fswab32(i32 %490) #7, !dbg !342
  br label %cond.end946, !dbg !342

cond.end946:                                      ; preds = %cond.false943, %cond.true927
  %cond947 = phi i32 [ %or942, %cond.true927 ], [ %call945, %cond.false943 ], !dbg !342
  %shr948 = lshr i32 %cond947, 0, !dbg !342
  %call949 = call i32 @__fswab32(i32 %shr948) #7, !dbg !342
  br label %cond.end950, !dbg !342

cond.end950:                                      ; preds = %cond.end946, %cond.end919
  %cond951 = phi i32 [ %or924, %cond.end919 ], [ %call949, %cond.end946 ], !dbg !342
  store i32 %cond951, i32* %tmp797, align 4, !dbg !342
  %491 = load i32, i32* %tmp797, align 4, !dbg !342
  store i32 %491, i32* %tmp952, align 4, !dbg !342
  %492 = load i32, i32* %tmp952, align 4, !dbg !342
  store i32 %492, i32* %v796, align 4, !dbg !336
  %m953 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %src_ipv4, i32 0, i32 0, !dbg !343
  %493 = load i32, i32* %m953, align 4, !dbg !343
  %tobool954 = icmp ne i32 %493, 0, !dbg !343
  br i1 %tobool954, label %if.then955, label %if.end957, !dbg !346

if.then955:                                       ; preds = %cond.end950
  %494 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !343
  %v956 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %src_ipv4, i32 0, i32 1, !dbg !343
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %494, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %v956) #6, !dbg !343
  br label %if.end957, !dbg !343

if.end957:                                        ; preds = %if.then955, %cond.end950
  %m958 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %dst_ipv4, i32 0, i32 0, !dbg !347
  %495 = load i32, i32* %m958, align 4, !dbg !347
  %tobool959 = icmp ne i32 %495, 0, !dbg !347
  br i1 %tobool959, label %if.then960, label %if.end962, !dbg !350

if.then960:                                       ; preds = %if.end957
  %496 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !347
  %v961 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %dst_ipv4, i32 0, i32 1, !dbg !347
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %496, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %v961) #6, !dbg !347
  br label %if.end962, !dbg !347

if.end962:                                        ; preds = %if.then960, %if.end957
  br label %if.end1013, !dbg !351

if.else:                                          ; preds = %land.lhs.true320, %lor.lhs.false
  %m963 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 0, !dbg !352
  %497 = load i16, i16* %m963, align 2, !dbg !352
  %conv964 = zext i16 %497 to i32, !dbg !354
  %cmp965 = icmp eq i32 %conv964, 65535, !dbg !355
  br i1 %cmp965, label %land.lhs.true967, label %lor.lhs.false972, !dbg !356

land.lhs.true967:                                 ; preds = %if.else
  %v968 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %ethertype, i32 0, i32 1, !dbg !357
  %498 = load i16, i16* %v968, align 2, !dbg !357
  %conv969 = zext i16 %498 to i32, !dbg !358
  %cmp970 = icmp eq i32 %conv969, 34525, !dbg !359
  br i1 %cmp970, label %if.then982, label %lor.lhs.false972, !dbg !360

lor.lhs.false972:                                 ; preds = %land.lhs.true967, %if.else
  %m973 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %ip_version, i32 0, i32 0, !dbg !361
  %499 = load i8, i8* %m973, align 1, !dbg !361
  %conv974 = zext i8 %499 to i32, !dbg !362
  %cmp975 = icmp eq i32 %conv974, 15, !dbg !363
  br i1 %cmp975, label %land.lhs.true977, label %if.end1012, !dbg !364

land.lhs.true977:                                 ; preds = %lor.lhs.false972
  %v978 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %ip_version, i32 0, i32 1, !dbg !365
  %500 = load i8, i8* %v978, align 1, !dbg !365
  %conv979 = zext i8 %500 to i32, !dbg !366
  %cmp980 = icmp eq i32 %conv979, 6, !dbg !367
  br i1 %cmp980, label %if.then982, label %if.end1012, !dbg !368

if.then982:                                       ; preds = %land.lhs.true977, %land.lhs.true967
  call void @llvm.dbg.declare(metadata %struct.anon.10* %src_ipv6, metadata !369, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.anon.11* %dst_ipv6, metadata !376, metadata !DIExpression()), !dbg !381
  %m983 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %src_ipv6, i32 0, i32 0, !dbg !382
  %in6_u = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %m983, i32 0, i32 0, !dbg !383
  %u6_addr8 = bitcast %union.anon.9* %in6_u to [16 x i8]*, !dbg !384
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %u6_addr8, i64 0, i64 0, !dbg !385
  %501 = load i32*, i32** %mask.addr, align 8, !dbg !386
  %502 = bitcast i32* %501 to i8*, !dbg !386
  %add.ptr984 = getelementptr i8, i8* %502, i64 32, !dbg !386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay, i8* align 1 %add.ptr984, i64 16, i1 false), !dbg !385
  %m985 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %dst_ipv6, i32 0, i32 0, !dbg !387
  %in6_u986 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %m985, i32 0, i32 0, !dbg !388
  %u6_addr8987 = bitcast %union.anon.9* %in6_u986 to [16 x i8]*, !dbg !389
  %arraydecay988 = getelementptr inbounds [16 x i8], [16 x i8]* %u6_addr8987, i64 0, i64 0, !dbg !390
  %503 = load i32*, i32** %mask.addr, align 8, !dbg !391
  %504 = bitcast i32* %503 to i8*, !dbg !391
  %add.ptr989 = getelementptr i8, i8* %504, i64 48, !dbg !391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay988, i8* align 1 %add.ptr989, i64 16, i1 false), !dbg !390
  %v990 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %src_ipv6, i32 0, i32 1, !dbg !392
  %in6_u991 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %v990, i32 0, i32 0, !dbg !393
  %u6_addr8992 = bitcast %union.anon.9* %in6_u991 to [16 x i8]*, !dbg !394
  %arraydecay993 = getelementptr inbounds [16 x i8], [16 x i8]* %u6_addr8992, i64 0, i64 0, !dbg !395
  %505 = load i32*, i32** %value.addr, align 8, !dbg !396
  %506 = bitcast i32* %505 to i8*, !dbg !396
  %add.ptr994 = getelementptr i8, i8* %506, i64 32, !dbg !396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay993, i8* align 1 %add.ptr994, i64 16, i1 false), !dbg !395
  %v995 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %dst_ipv6, i32 0, i32 1, !dbg !397
  %in6_u996 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %v995, i32 0, i32 0, !dbg !398
  %u6_addr8997 = bitcast %union.anon.9* %in6_u996 to [16 x i8]*, !dbg !399
  %arraydecay998 = getelementptr inbounds [16 x i8], [16 x i8]* %u6_addr8997, i64 0, i64 0, !dbg !400
  %507 = load i32*, i32** %value.addr, align 8, !dbg !401
  %508 = bitcast i32* %507 to i8*, !dbg !401
  %add.ptr999 = getelementptr i8, i8* %508, i64 48, !dbg !401
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay998, i8* align 1 %add.ptr999, i64 16, i1 false), !dbg !400
  %m1000 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %src_ipv6, i32 0, i32 0, !dbg !402
  %509 = bitcast %struct.in6_addr* %m1000 to i8*, !dbg !404
  %call1001 = call i32 @memcmp(i8* %509, i8* bitcast (%struct.in6_addr* @print_lyr_2_4_hdrs.full_ones to i8*), i64 16) #6, !dbg !405
  %tobool1002 = icmp ne i32 %call1001, 0, !dbg !405
  br i1 %tobool1002, label %if.end1005, label %if.then1003, !dbg !406

if.then1003:                                      ; preds = %if.then982
  %510 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !407
  %v1004 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %src_ipv6, i32 0, i32 1, !dbg !408
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %510, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), %struct.in6_addr* %v1004) #6, !dbg !409
  br label %if.end1005, !dbg !409

if.end1005:                                       ; preds = %if.then1003, %if.then982
  %m1006 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %dst_ipv6, i32 0, i32 0, !dbg !410
  %511 = bitcast %struct.in6_addr* %m1006 to i8*, !dbg !412
  %call1007 = call i32 @memcmp(i8* %511, i8* bitcast (%struct.in6_addr* @print_lyr_2_4_hdrs.full_ones to i8*), i64 16) #6, !dbg !413
  %tobool1008 = icmp ne i32 %call1007, 0, !dbg !413
  br i1 %tobool1008, label %if.end1011, label %if.then1009, !dbg !414

if.then1009:                                      ; preds = %if.end1005
  %512 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !415
  %v1010 = getelementptr inbounds %struct.anon.11, %struct.anon.11* %dst_ipv6, i32 0, i32 1, !dbg !416
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), %struct.in6_addr* %v1010) #6, !dbg !417
  br label %if.end1011, !dbg !417

if.end1011:                                       ; preds = %if.then1009, %if.end1005
  br label %if.end1012, !dbg !418

if.end1012:                                       ; preds = %if.end1011, %land.lhs.true977, %lor.lhs.false972
  br label %if.end1013

if.end1013:                                       ; preds = %if.end1012, %if.end962
  call void @llvm.dbg.declare(metadata %struct.anon.12* %ip_protocol, metadata !419, metadata !DIExpression()), !dbg !425
  %m1014 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %ip_protocol, i32 0, i32 0, !dbg !425
  %513 = load i32*, i32** %mask.addr, align 8, !dbg !425
  %add.ptr1015 = getelementptr i32, i32* %513, i64 4, !dbg !425
  %514 = load i32, i32* %add.ptr1015, align 4, !dbg !425
  %515 = call i1 @llvm.is.constant.i32(i32 %514), !dbg !425
  br i1 %515, label %cond.true1016, label %cond.false1032, !dbg !425

cond.true1016:                                    ; preds = %if.end1013
  %516 = load i32*, i32** %mask.addr, align 8, !dbg !425
  %add.ptr1017 = getelementptr i32, i32* %516, i64 4, !dbg !425
  %517 = load i32, i32* %add.ptr1017, align 4, !dbg !425
  %and1018 = and i32 %517, 255, !dbg !425
  %shl1019 = shl i32 %and1018, 24, !dbg !425
  %518 = load i32*, i32** %mask.addr, align 8, !dbg !425
  %add.ptr1020 = getelementptr i32, i32* %518, i64 4, !dbg !425
  %519 = load i32, i32* %add.ptr1020, align 4, !dbg !425
  %and1021 = and i32 %519, 65280, !dbg !425
  %shl1022 = shl i32 %and1021, 8, !dbg !425
  %or1023 = or i32 %shl1019, %shl1022, !dbg !425
  %520 = load i32*, i32** %mask.addr, align 8, !dbg !425
  %add.ptr1024 = getelementptr i32, i32* %520, i64 4, !dbg !425
  %521 = load i32, i32* %add.ptr1024, align 4, !dbg !425
  %and1025 = and i32 %521, 16711680, !dbg !425
  %shr1026 = lshr i32 %and1025, 8, !dbg !425
  %or1027 = or i32 %or1023, %shr1026, !dbg !425
  %522 = load i32*, i32** %mask.addr, align 8, !dbg !425
  %add.ptr1028 = getelementptr i32, i32* %522, i64 4, !dbg !425
  %523 = load i32, i32* %add.ptr1028, align 4, !dbg !425
  %and1029 = and i32 %523, -16777216, !dbg !425
  %shr1030 = lshr i32 %and1029, 24, !dbg !425
  %or1031 = or i32 %or1027, %shr1030, !dbg !425
  br label %cond.end1035, !dbg !425

cond.false1032:                                   ; preds = %if.end1013
  %524 = load i32*, i32** %mask.addr, align 8, !dbg !425
  %add.ptr1033 = getelementptr i32, i32* %524, i64 4, !dbg !425
  %525 = load i32, i32* %add.ptr1033, align 4, !dbg !425
  %call1034 = call i32 @__fswab32(i32 %525) #7, !dbg !425
  br label %cond.end1035, !dbg !425

cond.end1035:                                     ; preds = %cond.false1032, %cond.true1016
  %cond1036 = phi i32 [ %or1031, %cond.true1016 ], [ %call1034, %cond.false1032 ], !dbg !425
  %shr1037 = lshr i32 %cond1036, 24, !dbg !425
  %and1038 = and i32 %shr1037, 255, !dbg !425
  %conv1039 = trunc i32 %and1038 to i8, !dbg !425
  store i8 %conv1039, i8* %m1014, align 1, !dbg !425
  %v1040 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %ip_protocol, i32 0, i32 1, !dbg !425
  %526 = load i32*, i32** %value.addr, align 8, !dbg !425
  %add.ptr1041 = getelementptr i32, i32* %526, i64 4, !dbg !425
  %527 = load i32, i32* %add.ptr1041, align 4, !dbg !425
  %528 = call i1 @llvm.is.constant.i32(i32 %527), !dbg !425
  br i1 %528, label %cond.true1042, label %cond.false1058, !dbg !425

cond.true1042:                                    ; preds = %cond.end1035
  %529 = load i32*, i32** %value.addr, align 8, !dbg !425
  %add.ptr1043 = getelementptr i32, i32* %529, i64 4, !dbg !425
  %530 = load i32, i32* %add.ptr1043, align 4, !dbg !425
  %and1044 = and i32 %530, 255, !dbg !425
  %shl1045 = shl i32 %and1044, 24, !dbg !425
  %531 = load i32*, i32** %value.addr, align 8, !dbg !425
  %add.ptr1046 = getelementptr i32, i32* %531, i64 4, !dbg !425
  %532 = load i32, i32* %add.ptr1046, align 4, !dbg !425
  %and1047 = and i32 %532, 65280, !dbg !425
  %shl1048 = shl i32 %and1047, 8, !dbg !425
  %or1049 = or i32 %shl1045, %shl1048, !dbg !425
  %533 = load i32*, i32** %value.addr, align 8, !dbg !425
  %add.ptr1050 = getelementptr i32, i32* %533, i64 4, !dbg !425
  %534 = load i32, i32* %add.ptr1050, align 4, !dbg !425
  %and1051 = and i32 %534, 16711680, !dbg !425
  %shr1052 = lshr i32 %and1051, 8, !dbg !425
  %or1053 = or i32 %or1049, %shr1052, !dbg !425
  %535 = load i32*, i32** %value.addr, align 8, !dbg !425
  %add.ptr1054 = getelementptr i32, i32* %535, i64 4, !dbg !425
  %536 = load i32, i32* %add.ptr1054, align 4, !dbg !425
  %and1055 = and i32 %536, -16777216, !dbg !425
  %shr1056 = lshr i32 %and1055, 24, !dbg !425
  %or1057 = or i32 %or1053, %shr1056, !dbg !425
  br label %cond.end1061, !dbg !425

cond.false1058:                                   ; preds = %cond.end1035
  %537 = load i32*, i32** %value.addr, align 8, !dbg !425
  %add.ptr1059 = getelementptr i32, i32* %537, i64 4, !dbg !425
  %538 = load i32, i32* %add.ptr1059, align 4, !dbg !425
  %call1060 = call i32 @__fswab32(i32 %538) #7, !dbg !425
  br label %cond.end1061, !dbg !425

cond.end1061:                                     ; preds = %cond.false1058, %cond.true1042
  %cond1062 = phi i32 [ %or1057, %cond.true1042 ], [ %call1060, %cond.false1058 ], !dbg !425
  %shr1063 = lshr i32 %cond1062, 24, !dbg !425
  %and1064 = and i32 %shr1063, 255, !dbg !425
  %conv1065 = trunc i32 %and1064 to i8, !dbg !425
  store i8 %conv1065, i8* %v1040, align 1, !dbg !425
  %m1066 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %ip_protocol, i32 0, i32 0, !dbg !426
  %539 = load i8, i8* %m1066, align 1, !dbg !426
  %tobool1067 = icmp ne i8 %539, 0, !dbg !426
  br i1 %tobool1067, label %if.then1068, label %if.end1071, !dbg !429

if.then1068:                                      ; preds = %cond.end1061
  %540 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !426
  %v1069 = getelementptr inbounds %struct.anon.12, %struct.anon.12* %ip_protocol, i32 0, i32 1, !dbg !426
  %541 = load i8, i8* %v1069, align 1, !dbg !426
  %conv1070 = zext i8 %541 to i32, !dbg !426
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %540, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %conv1070) #6, !dbg !426
  br label %if.end1071, !dbg !426

if.end1071:                                       ; preds = %if.then1068, %cond.end1061
  call void @llvm.dbg.declare(metadata %struct.anon.13* %tcp_flags, metadata !430, metadata !DIExpression()), !dbg !436
  %m1072 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %tcp_flags, i32 0, i32 0, !dbg !436
  %542 = load i32*, i32** %mask.addr, align 8, !dbg !436
  %add.ptr1073 = getelementptr i32, i32* %542, i64 4, !dbg !436
  %543 = load i32, i32* %add.ptr1073, align 4, !dbg !436
  %544 = call i1 @llvm.is.constant.i32(i32 %543), !dbg !436
  br i1 %544, label %cond.true1074, label %cond.false1090, !dbg !436

cond.true1074:                                    ; preds = %if.end1071
  %545 = load i32*, i32** %mask.addr, align 8, !dbg !436
  %add.ptr1075 = getelementptr i32, i32* %545, i64 4, !dbg !436
  %546 = load i32, i32* %add.ptr1075, align 4, !dbg !436
  %and1076 = and i32 %546, 255, !dbg !436
  %shl1077 = shl i32 %and1076, 24, !dbg !436
  %547 = load i32*, i32** %mask.addr, align 8, !dbg !436
  %add.ptr1078 = getelementptr i32, i32* %547, i64 4, !dbg !436
  %548 = load i32, i32* %add.ptr1078, align 4, !dbg !436
  %and1079 = and i32 %548, 65280, !dbg !436
  %shl1080 = shl i32 %and1079, 8, !dbg !436
  %or1081 = or i32 %shl1077, %shl1080, !dbg !436
  %549 = load i32*, i32** %mask.addr, align 8, !dbg !436
  %add.ptr1082 = getelementptr i32, i32* %549, i64 4, !dbg !436
  %550 = load i32, i32* %add.ptr1082, align 4, !dbg !436
  %and1083 = and i32 %550, 16711680, !dbg !436
  %shr1084 = lshr i32 %and1083, 8, !dbg !436
  %or1085 = or i32 %or1081, %shr1084, !dbg !436
  %551 = load i32*, i32** %mask.addr, align 8, !dbg !436
  %add.ptr1086 = getelementptr i32, i32* %551, i64 4, !dbg !436
  %552 = load i32, i32* %add.ptr1086, align 4, !dbg !436
  %and1087 = and i32 %552, -16777216, !dbg !436
  %shr1088 = lshr i32 %and1087, 24, !dbg !436
  %or1089 = or i32 %or1085, %shr1088, !dbg !436
  br label %cond.end1093, !dbg !436

cond.false1090:                                   ; preds = %if.end1071
  %553 = load i32*, i32** %mask.addr, align 8, !dbg !436
  %add.ptr1091 = getelementptr i32, i32* %553, i64 4, !dbg !436
  %554 = load i32, i32* %add.ptr1091, align 4, !dbg !436
  %call1092 = call i32 @__fswab32(i32 %554) #7, !dbg !436
  br label %cond.end1093, !dbg !436

cond.end1093:                                     ; preds = %cond.false1090, %cond.true1074
  %cond1094 = phi i32 [ %or1089, %cond.true1074 ], [ %call1092, %cond.false1090 ], !dbg !436
  %shr1095 = lshr i32 %cond1094, 0, !dbg !436
  %and1096 = and i32 %shr1095, 511, !dbg !436
  %conv1097 = trunc i32 %and1096 to i16, !dbg !436
  store i16 %conv1097, i16* %m1072, align 2, !dbg !436
  %v1098 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %tcp_flags, i32 0, i32 1, !dbg !436
  %555 = load i32*, i32** %value.addr, align 8, !dbg !436
  %add.ptr1099 = getelementptr i32, i32* %555, i64 4, !dbg !436
  %556 = load i32, i32* %add.ptr1099, align 4, !dbg !436
  %557 = call i1 @llvm.is.constant.i32(i32 %556), !dbg !436
  br i1 %557, label %cond.true1100, label %cond.false1116, !dbg !436

cond.true1100:                                    ; preds = %cond.end1093
  %558 = load i32*, i32** %value.addr, align 8, !dbg !436
  %add.ptr1101 = getelementptr i32, i32* %558, i64 4, !dbg !436
  %559 = load i32, i32* %add.ptr1101, align 4, !dbg !436
  %and1102 = and i32 %559, 255, !dbg !436
  %shl1103 = shl i32 %and1102, 24, !dbg !436
  %560 = load i32*, i32** %value.addr, align 8, !dbg !436
  %add.ptr1104 = getelementptr i32, i32* %560, i64 4, !dbg !436
  %561 = load i32, i32* %add.ptr1104, align 4, !dbg !436
  %and1105 = and i32 %561, 65280, !dbg !436
  %shl1106 = shl i32 %and1105, 8, !dbg !436
  %or1107 = or i32 %shl1103, %shl1106, !dbg !436
  %562 = load i32*, i32** %value.addr, align 8, !dbg !436
  %add.ptr1108 = getelementptr i32, i32* %562, i64 4, !dbg !436
  %563 = load i32, i32* %add.ptr1108, align 4, !dbg !436
  %and1109 = and i32 %563, 16711680, !dbg !436
  %shr1110 = lshr i32 %and1109, 8, !dbg !436
  %or1111 = or i32 %or1107, %shr1110, !dbg !436
  %564 = load i32*, i32** %value.addr, align 8, !dbg !436
  %add.ptr1112 = getelementptr i32, i32* %564, i64 4, !dbg !436
  %565 = load i32, i32* %add.ptr1112, align 4, !dbg !436
  %and1113 = and i32 %565, -16777216, !dbg !436
  %shr1114 = lshr i32 %and1113, 24, !dbg !436
  %or1115 = or i32 %or1111, %shr1114, !dbg !436
  br label %cond.end1119, !dbg !436

cond.false1116:                                   ; preds = %cond.end1093
  %566 = load i32*, i32** %value.addr, align 8, !dbg !436
  %add.ptr1117 = getelementptr i32, i32* %566, i64 4, !dbg !436
  %567 = load i32, i32* %add.ptr1117, align 4, !dbg !436
  %call1118 = call i32 @__fswab32(i32 %567) #7, !dbg !436
  br label %cond.end1119, !dbg !436

cond.end1119:                                     ; preds = %cond.false1116, %cond.true1100
  %cond1120 = phi i32 [ %or1115, %cond.true1100 ], [ %call1118, %cond.false1116 ], !dbg !436
  %shr1121 = lshr i32 %cond1120, 0, !dbg !436
  %and1122 = and i32 %shr1121, 511, !dbg !436
  %conv1123 = trunc i32 %and1122 to i16, !dbg !436
  store i16 %conv1123, i16* %v1098, align 2, !dbg !436
  %m1124 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %tcp_flags, i32 0, i32 0, !dbg !437
  %568 = load i16, i16* %m1124, align 2, !dbg !437
  %tobool1125 = icmp ne i16 %568, 0, !dbg !437
  br i1 %tobool1125, label %if.then1126, label %if.end1129, !dbg !440

if.then1126:                                      ; preds = %cond.end1119
  %569 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !437
  %v1127 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %tcp_flags, i32 0, i32 1, !dbg !437
  %570 = load i16, i16* %v1127, align 2, !dbg !437
  %conv1128 = zext i16 %570 to i32, !dbg !437
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %569, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %conv1128) #6, !dbg !437
  br label %if.end1129, !dbg !437

if.end1129:                                       ; preds = %if.then1126, %cond.end1119
  call void @llvm.dbg.declare(metadata %struct.anon.14* %tcp_sport, metadata !441, metadata !DIExpression()), !dbg !447
  %m1130 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %tcp_sport, i32 0, i32 0, !dbg !447
  %571 = load i32*, i32** %mask.addr, align 8, !dbg !447
  %add.ptr1131 = getelementptr i32, i32* %571, i64 5, !dbg !447
  %572 = load i32, i32* %add.ptr1131, align 4, !dbg !447
  %573 = call i1 @llvm.is.constant.i32(i32 %572), !dbg !447
  br i1 %573, label %cond.true1132, label %cond.false1148, !dbg !447

cond.true1132:                                    ; preds = %if.end1129
  %574 = load i32*, i32** %mask.addr, align 8, !dbg !447
  %add.ptr1133 = getelementptr i32, i32* %574, i64 5, !dbg !447
  %575 = load i32, i32* %add.ptr1133, align 4, !dbg !447
  %and1134 = and i32 %575, 255, !dbg !447
  %shl1135 = shl i32 %and1134, 24, !dbg !447
  %576 = load i32*, i32** %mask.addr, align 8, !dbg !447
  %add.ptr1136 = getelementptr i32, i32* %576, i64 5, !dbg !447
  %577 = load i32, i32* %add.ptr1136, align 4, !dbg !447
  %and1137 = and i32 %577, 65280, !dbg !447
  %shl1138 = shl i32 %and1137, 8, !dbg !447
  %or1139 = or i32 %shl1135, %shl1138, !dbg !447
  %578 = load i32*, i32** %mask.addr, align 8, !dbg !447
  %add.ptr1140 = getelementptr i32, i32* %578, i64 5, !dbg !447
  %579 = load i32, i32* %add.ptr1140, align 4, !dbg !447
  %and1141 = and i32 %579, 16711680, !dbg !447
  %shr1142 = lshr i32 %and1141, 8, !dbg !447
  %or1143 = or i32 %or1139, %shr1142, !dbg !447
  %580 = load i32*, i32** %mask.addr, align 8, !dbg !447
  %add.ptr1144 = getelementptr i32, i32* %580, i64 5, !dbg !447
  %581 = load i32, i32* %add.ptr1144, align 4, !dbg !447
  %and1145 = and i32 %581, -16777216, !dbg !447
  %shr1146 = lshr i32 %and1145, 24, !dbg !447
  %or1147 = or i32 %or1143, %shr1146, !dbg !447
  br label %cond.end1151, !dbg !447

cond.false1148:                                   ; preds = %if.end1129
  %582 = load i32*, i32** %mask.addr, align 8, !dbg !447
  %add.ptr1149 = getelementptr i32, i32* %582, i64 5, !dbg !447
  %583 = load i32, i32* %add.ptr1149, align 4, !dbg !447
  %call1150 = call i32 @__fswab32(i32 %583) #7, !dbg !447
  br label %cond.end1151, !dbg !447

cond.end1151:                                     ; preds = %cond.false1148, %cond.true1132
  %cond1152 = phi i32 [ %or1147, %cond.true1132 ], [ %call1150, %cond.false1148 ], !dbg !447
  %shr1153 = lshr i32 %cond1152, 16, !dbg !447
  %and1154 = and i32 %shr1153, 65535, !dbg !447
  %conv1155 = trunc i32 %and1154 to i16, !dbg !447
  store i16 %conv1155, i16* %m1130, align 2, !dbg !447
  %v1156 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %tcp_sport, i32 0, i32 1, !dbg !447
  %584 = load i32*, i32** %value.addr, align 8, !dbg !447
  %add.ptr1157 = getelementptr i32, i32* %584, i64 5, !dbg !447
  %585 = load i32, i32* %add.ptr1157, align 4, !dbg !447
  %586 = call i1 @llvm.is.constant.i32(i32 %585), !dbg !447
  br i1 %586, label %cond.true1158, label %cond.false1174, !dbg !447

cond.true1158:                                    ; preds = %cond.end1151
  %587 = load i32*, i32** %value.addr, align 8, !dbg !447
  %add.ptr1159 = getelementptr i32, i32* %587, i64 5, !dbg !447
  %588 = load i32, i32* %add.ptr1159, align 4, !dbg !447
  %and1160 = and i32 %588, 255, !dbg !447
  %shl1161 = shl i32 %and1160, 24, !dbg !447
  %589 = load i32*, i32** %value.addr, align 8, !dbg !447
  %add.ptr1162 = getelementptr i32, i32* %589, i64 5, !dbg !447
  %590 = load i32, i32* %add.ptr1162, align 4, !dbg !447
  %and1163 = and i32 %590, 65280, !dbg !447
  %shl1164 = shl i32 %and1163, 8, !dbg !447
  %or1165 = or i32 %shl1161, %shl1164, !dbg !447
  %591 = load i32*, i32** %value.addr, align 8, !dbg !447
  %add.ptr1166 = getelementptr i32, i32* %591, i64 5, !dbg !447
  %592 = load i32, i32* %add.ptr1166, align 4, !dbg !447
  %and1167 = and i32 %592, 16711680, !dbg !447
  %shr1168 = lshr i32 %and1167, 8, !dbg !447
  %or1169 = or i32 %or1165, %shr1168, !dbg !447
  %593 = load i32*, i32** %value.addr, align 8, !dbg !447
  %add.ptr1170 = getelementptr i32, i32* %593, i64 5, !dbg !447
  %594 = load i32, i32* %add.ptr1170, align 4, !dbg !447
  %and1171 = and i32 %594, -16777216, !dbg !447
  %shr1172 = lshr i32 %and1171, 24, !dbg !447
  %or1173 = or i32 %or1169, %shr1172, !dbg !447
  br label %cond.end1177, !dbg !447

cond.false1174:                                   ; preds = %cond.end1151
  %595 = load i32*, i32** %value.addr, align 8, !dbg !447
  %add.ptr1175 = getelementptr i32, i32* %595, i64 5, !dbg !447
  %596 = load i32, i32* %add.ptr1175, align 4, !dbg !447
  %call1176 = call i32 @__fswab32(i32 %596) #7, !dbg !447
  br label %cond.end1177, !dbg !447

cond.end1177:                                     ; preds = %cond.false1174, %cond.true1158
  %cond1178 = phi i32 [ %or1173, %cond.true1158 ], [ %call1176, %cond.false1174 ], !dbg !447
  %shr1179 = lshr i32 %cond1178, 16, !dbg !447
  %and1180 = and i32 %shr1179, 65535, !dbg !447
  %conv1181 = trunc i32 %and1180 to i16, !dbg !447
  store i16 %conv1181, i16* %v1156, align 2, !dbg !447
  %m1182 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %tcp_sport, i32 0, i32 0, !dbg !448
  %597 = load i16, i16* %m1182, align 2, !dbg !448
  %tobool1183 = icmp ne i16 %597, 0, !dbg !448
  br i1 %tobool1183, label %if.then1184, label %if.end1187, !dbg !451

if.then1184:                                      ; preds = %cond.end1177
  %598 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !448
  %v1185 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %tcp_sport, i32 0, i32 1, !dbg !448
  %599 = load i16, i16* %v1185, align 2, !dbg !448
  %conv1186 = zext i16 %599 to i32, !dbg !448
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %598, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %conv1186) #6, !dbg !448
  br label %if.end1187, !dbg !448

if.end1187:                                       ; preds = %if.then1184, %cond.end1177
  call void @llvm.dbg.declare(metadata %struct.anon.15* %tcp_dport, metadata !452, metadata !DIExpression()), !dbg !458
  %m1188 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %tcp_dport, i32 0, i32 0, !dbg !458
  %600 = load i32*, i32** %mask.addr, align 8, !dbg !458
  %add.ptr1189 = getelementptr i32, i32* %600, i64 5, !dbg !458
  %601 = load i32, i32* %add.ptr1189, align 4, !dbg !458
  %602 = call i1 @llvm.is.constant.i32(i32 %601), !dbg !458
  br i1 %602, label %cond.true1190, label %cond.false1206, !dbg !458

cond.true1190:                                    ; preds = %if.end1187
  %603 = load i32*, i32** %mask.addr, align 8, !dbg !458
  %add.ptr1191 = getelementptr i32, i32* %603, i64 5, !dbg !458
  %604 = load i32, i32* %add.ptr1191, align 4, !dbg !458
  %and1192 = and i32 %604, 255, !dbg !458
  %shl1193 = shl i32 %and1192, 24, !dbg !458
  %605 = load i32*, i32** %mask.addr, align 8, !dbg !458
  %add.ptr1194 = getelementptr i32, i32* %605, i64 5, !dbg !458
  %606 = load i32, i32* %add.ptr1194, align 4, !dbg !458
  %and1195 = and i32 %606, 65280, !dbg !458
  %shl1196 = shl i32 %and1195, 8, !dbg !458
  %or1197 = or i32 %shl1193, %shl1196, !dbg !458
  %607 = load i32*, i32** %mask.addr, align 8, !dbg !458
  %add.ptr1198 = getelementptr i32, i32* %607, i64 5, !dbg !458
  %608 = load i32, i32* %add.ptr1198, align 4, !dbg !458
  %and1199 = and i32 %608, 16711680, !dbg !458
  %shr1200 = lshr i32 %and1199, 8, !dbg !458
  %or1201 = or i32 %or1197, %shr1200, !dbg !458
  %609 = load i32*, i32** %mask.addr, align 8, !dbg !458
  %add.ptr1202 = getelementptr i32, i32* %609, i64 5, !dbg !458
  %610 = load i32, i32* %add.ptr1202, align 4, !dbg !458
  %and1203 = and i32 %610, -16777216, !dbg !458
  %shr1204 = lshr i32 %and1203, 24, !dbg !458
  %or1205 = or i32 %or1201, %shr1204, !dbg !458
  br label %cond.end1209, !dbg !458

cond.false1206:                                   ; preds = %if.end1187
  %611 = load i32*, i32** %mask.addr, align 8, !dbg !458
  %add.ptr1207 = getelementptr i32, i32* %611, i64 5, !dbg !458
  %612 = load i32, i32* %add.ptr1207, align 4, !dbg !458
  %call1208 = call i32 @__fswab32(i32 %612) #7, !dbg !458
  br label %cond.end1209, !dbg !458

cond.end1209:                                     ; preds = %cond.false1206, %cond.true1190
  %cond1210 = phi i32 [ %or1205, %cond.true1190 ], [ %call1208, %cond.false1206 ], !dbg !458
  %shr1211 = lshr i32 %cond1210, 0, !dbg !458
  %and1212 = and i32 %shr1211, 65535, !dbg !458
  %conv1213 = trunc i32 %and1212 to i16, !dbg !458
  store i16 %conv1213, i16* %m1188, align 2, !dbg !458
  %v1214 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %tcp_dport, i32 0, i32 1, !dbg !458
  %613 = load i32*, i32** %value.addr, align 8, !dbg !458
  %add.ptr1215 = getelementptr i32, i32* %613, i64 5, !dbg !458
  %614 = load i32, i32* %add.ptr1215, align 4, !dbg !458
  %615 = call i1 @llvm.is.constant.i32(i32 %614), !dbg !458
  br i1 %615, label %cond.true1216, label %cond.false1232, !dbg !458

cond.true1216:                                    ; preds = %cond.end1209
  %616 = load i32*, i32** %value.addr, align 8, !dbg !458
  %add.ptr1217 = getelementptr i32, i32* %616, i64 5, !dbg !458
  %617 = load i32, i32* %add.ptr1217, align 4, !dbg !458
  %and1218 = and i32 %617, 255, !dbg !458
  %shl1219 = shl i32 %and1218, 24, !dbg !458
  %618 = load i32*, i32** %value.addr, align 8, !dbg !458
  %add.ptr1220 = getelementptr i32, i32* %618, i64 5, !dbg !458
  %619 = load i32, i32* %add.ptr1220, align 4, !dbg !458
  %and1221 = and i32 %619, 65280, !dbg !458
  %shl1222 = shl i32 %and1221, 8, !dbg !458
  %or1223 = or i32 %shl1219, %shl1222, !dbg !458
  %620 = load i32*, i32** %value.addr, align 8, !dbg !458
  %add.ptr1224 = getelementptr i32, i32* %620, i64 5, !dbg !458
  %621 = load i32, i32* %add.ptr1224, align 4, !dbg !458
  %and1225 = and i32 %621, 16711680, !dbg !458
  %shr1226 = lshr i32 %and1225, 8, !dbg !458
  %or1227 = or i32 %or1223, %shr1226, !dbg !458
  %622 = load i32*, i32** %value.addr, align 8, !dbg !458
  %add.ptr1228 = getelementptr i32, i32* %622, i64 5, !dbg !458
  %623 = load i32, i32* %add.ptr1228, align 4, !dbg !458
  %and1229 = and i32 %623, -16777216, !dbg !458
  %shr1230 = lshr i32 %and1229, 24, !dbg !458
  %or1231 = or i32 %or1227, %shr1230, !dbg !458
  br label %cond.end1235, !dbg !458

cond.false1232:                                   ; preds = %cond.end1209
  %624 = load i32*, i32** %value.addr, align 8, !dbg !458
  %add.ptr1233 = getelementptr i32, i32* %624, i64 5, !dbg !458
  %625 = load i32, i32* %add.ptr1233, align 4, !dbg !458
  %call1234 = call i32 @__fswab32(i32 %625) #7, !dbg !458
  br label %cond.end1235, !dbg !458

cond.end1235:                                     ; preds = %cond.false1232, %cond.true1216
  %cond1236 = phi i32 [ %or1231, %cond.true1216 ], [ %call1234, %cond.false1232 ], !dbg !458
  %shr1237 = lshr i32 %cond1236, 0, !dbg !458
  %and1238 = and i32 %shr1237, 65535, !dbg !458
  %conv1239 = trunc i32 %and1238 to i16, !dbg !458
  store i16 %conv1239, i16* %v1214, align 2, !dbg !458
  %m1240 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %tcp_dport, i32 0, i32 0, !dbg !459
  %626 = load i16, i16* %m1240, align 2, !dbg !459
  %tobool1241 = icmp ne i16 %626, 0, !dbg !459
  br i1 %tobool1241, label %if.then1242, label %if.end1245, !dbg !462

if.then1242:                                      ; preds = %cond.end1235
  %627 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !459
  %v1243 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %tcp_dport, i32 0, i32 1, !dbg !459
  %628 = load i16, i16* %v1243, align 2, !dbg !459
  %conv1244 = zext i16 %628 to i32, !dbg !459
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %627, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %conv1244) #6, !dbg !459
  br label %if.end1245, !dbg !459

if.end1245:                                       ; preds = %if.then1242, %cond.end1235
  call void @llvm.dbg.declare(metadata %struct.anon.16* %udp_sport, metadata !463, metadata !DIExpression()), !dbg !469
  %m1246 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %udp_sport, i32 0, i32 0, !dbg !469
  %629 = load i32*, i32** %mask.addr, align 8, !dbg !469
  %add.ptr1247 = getelementptr i32, i32* %629, i64 7, !dbg !469
  %630 = load i32, i32* %add.ptr1247, align 4, !dbg !469
  %631 = call i1 @llvm.is.constant.i32(i32 %630), !dbg !469
  br i1 %631, label %cond.true1248, label %cond.false1264, !dbg !469

cond.true1248:                                    ; preds = %if.end1245
  %632 = load i32*, i32** %mask.addr, align 8, !dbg !469
  %add.ptr1249 = getelementptr i32, i32* %632, i64 7, !dbg !469
  %633 = load i32, i32* %add.ptr1249, align 4, !dbg !469
  %and1250 = and i32 %633, 255, !dbg !469
  %shl1251 = shl i32 %and1250, 24, !dbg !469
  %634 = load i32*, i32** %mask.addr, align 8, !dbg !469
  %add.ptr1252 = getelementptr i32, i32* %634, i64 7, !dbg !469
  %635 = load i32, i32* %add.ptr1252, align 4, !dbg !469
  %and1253 = and i32 %635, 65280, !dbg !469
  %shl1254 = shl i32 %and1253, 8, !dbg !469
  %or1255 = or i32 %shl1251, %shl1254, !dbg !469
  %636 = load i32*, i32** %mask.addr, align 8, !dbg !469
  %add.ptr1256 = getelementptr i32, i32* %636, i64 7, !dbg !469
  %637 = load i32, i32* %add.ptr1256, align 4, !dbg !469
  %and1257 = and i32 %637, 16711680, !dbg !469
  %shr1258 = lshr i32 %and1257, 8, !dbg !469
  %or1259 = or i32 %or1255, %shr1258, !dbg !469
  %638 = load i32*, i32** %mask.addr, align 8, !dbg !469
  %add.ptr1260 = getelementptr i32, i32* %638, i64 7, !dbg !469
  %639 = load i32, i32* %add.ptr1260, align 4, !dbg !469
  %and1261 = and i32 %639, -16777216, !dbg !469
  %shr1262 = lshr i32 %and1261, 24, !dbg !469
  %or1263 = or i32 %or1259, %shr1262, !dbg !469
  br label %cond.end1267, !dbg !469

cond.false1264:                                   ; preds = %if.end1245
  %640 = load i32*, i32** %mask.addr, align 8, !dbg !469
  %add.ptr1265 = getelementptr i32, i32* %640, i64 7, !dbg !469
  %641 = load i32, i32* %add.ptr1265, align 4, !dbg !469
  %call1266 = call i32 @__fswab32(i32 %641) #7, !dbg !469
  br label %cond.end1267, !dbg !469

cond.end1267:                                     ; preds = %cond.false1264, %cond.true1248
  %cond1268 = phi i32 [ %or1263, %cond.true1248 ], [ %call1266, %cond.false1264 ], !dbg !469
  %shr1269 = lshr i32 %cond1268, 16, !dbg !469
  %and1270 = and i32 %shr1269, 65535, !dbg !469
  %conv1271 = trunc i32 %and1270 to i16, !dbg !469
  store i16 %conv1271, i16* %m1246, align 2, !dbg !469
  %v1272 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %udp_sport, i32 0, i32 1, !dbg !469
  %642 = load i32*, i32** %value.addr, align 8, !dbg !469
  %add.ptr1273 = getelementptr i32, i32* %642, i64 7, !dbg !469
  %643 = load i32, i32* %add.ptr1273, align 4, !dbg !469
  %644 = call i1 @llvm.is.constant.i32(i32 %643), !dbg !469
  br i1 %644, label %cond.true1274, label %cond.false1290, !dbg !469

cond.true1274:                                    ; preds = %cond.end1267
  %645 = load i32*, i32** %value.addr, align 8, !dbg !469
  %add.ptr1275 = getelementptr i32, i32* %645, i64 7, !dbg !469
  %646 = load i32, i32* %add.ptr1275, align 4, !dbg !469
  %and1276 = and i32 %646, 255, !dbg !469
  %shl1277 = shl i32 %and1276, 24, !dbg !469
  %647 = load i32*, i32** %value.addr, align 8, !dbg !469
  %add.ptr1278 = getelementptr i32, i32* %647, i64 7, !dbg !469
  %648 = load i32, i32* %add.ptr1278, align 4, !dbg !469
  %and1279 = and i32 %648, 65280, !dbg !469
  %shl1280 = shl i32 %and1279, 8, !dbg !469
  %or1281 = or i32 %shl1277, %shl1280, !dbg !469
  %649 = load i32*, i32** %value.addr, align 8, !dbg !469
  %add.ptr1282 = getelementptr i32, i32* %649, i64 7, !dbg !469
  %650 = load i32, i32* %add.ptr1282, align 4, !dbg !469
  %and1283 = and i32 %650, 16711680, !dbg !469
  %shr1284 = lshr i32 %and1283, 8, !dbg !469
  %or1285 = or i32 %or1281, %shr1284, !dbg !469
  %651 = load i32*, i32** %value.addr, align 8, !dbg !469
  %add.ptr1286 = getelementptr i32, i32* %651, i64 7, !dbg !469
  %652 = load i32, i32* %add.ptr1286, align 4, !dbg !469
  %and1287 = and i32 %652, -16777216, !dbg !469
  %shr1288 = lshr i32 %and1287, 24, !dbg !469
  %or1289 = or i32 %or1285, %shr1288, !dbg !469
  br label %cond.end1293, !dbg !469

cond.false1290:                                   ; preds = %cond.end1267
  %653 = load i32*, i32** %value.addr, align 8, !dbg !469
  %add.ptr1291 = getelementptr i32, i32* %653, i64 7, !dbg !469
  %654 = load i32, i32* %add.ptr1291, align 4, !dbg !469
  %call1292 = call i32 @__fswab32(i32 %654) #7, !dbg !469
  br label %cond.end1293, !dbg !469

cond.end1293:                                     ; preds = %cond.false1290, %cond.true1274
  %cond1294 = phi i32 [ %or1289, %cond.true1274 ], [ %call1292, %cond.false1290 ], !dbg !469
  %shr1295 = lshr i32 %cond1294, 16, !dbg !469
  %and1296 = and i32 %shr1295, 65535, !dbg !469
  %conv1297 = trunc i32 %and1296 to i16, !dbg !469
  store i16 %conv1297, i16* %v1272, align 2, !dbg !469
  %m1298 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %udp_sport, i32 0, i32 0, !dbg !470
  %655 = load i16, i16* %m1298, align 2, !dbg !470
  %tobool1299 = icmp ne i16 %655, 0, !dbg !470
  br i1 %tobool1299, label %if.then1300, label %if.end1303, !dbg !473

if.then1300:                                      ; preds = %cond.end1293
  %656 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !470
  %v1301 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %udp_sport, i32 0, i32 1, !dbg !470
  %657 = load i16, i16* %v1301, align 2, !dbg !470
  %conv1302 = zext i16 %657 to i32, !dbg !470
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %656, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %conv1302) #6, !dbg !470
  br label %if.end1303, !dbg !470

if.end1303:                                       ; preds = %if.then1300, %cond.end1293
  call void @llvm.dbg.declare(metadata %struct.anon.17* %udp_dport, metadata !474, metadata !DIExpression()), !dbg !480
  %m1304 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %udp_dport, i32 0, i32 0, !dbg !480
  %658 = load i32*, i32** %mask.addr, align 8, !dbg !480
  %add.ptr1305 = getelementptr i32, i32* %658, i64 7, !dbg !480
  %659 = load i32, i32* %add.ptr1305, align 4, !dbg !480
  %660 = call i1 @llvm.is.constant.i32(i32 %659), !dbg !480
  br i1 %660, label %cond.true1306, label %cond.false1322, !dbg !480

cond.true1306:                                    ; preds = %if.end1303
  %661 = load i32*, i32** %mask.addr, align 8, !dbg !480
  %add.ptr1307 = getelementptr i32, i32* %661, i64 7, !dbg !480
  %662 = load i32, i32* %add.ptr1307, align 4, !dbg !480
  %and1308 = and i32 %662, 255, !dbg !480
  %shl1309 = shl i32 %and1308, 24, !dbg !480
  %663 = load i32*, i32** %mask.addr, align 8, !dbg !480
  %add.ptr1310 = getelementptr i32, i32* %663, i64 7, !dbg !480
  %664 = load i32, i32* %add.ptr1310, align 4, !dbg !480
  %and1311 = and i32 %664, 65280, !dbg !480
  %shl1312 = shl i32 %and1311, 8, !dbg !480
  %or1313 = or i32 %shl1309, %shl1312, !dbg !480
  %665 = load i32*, i32** %mask.addr, align 8, !dbg !480
  %add.ptr1314 = getelementptr i32, i32* %665, i64 7, !dbg !480
  %666 = load i32, i32* %add.ptr1314, align 4, !dbg !480
  %and1315 = and i32 %666, 16711680, !dbg !480
  %shr1316 = lshr i32 %and1315, 8, !dbg !480
  %or1317 = or i32 %or1313, %shr1316, !dbg !480
  %667 = load i32*, i32** %mask.addr, align 8, !dbg !480
  %add.ptr1318 = getelementptr i32, i32* %667, i64 7, !dbg !480
  %668 = load i32, i32* %add.ptr1318, align 4, !dbg !480
  %and1319 = and i32 %668, -16777216, !dbg !480
  %shr1320 = lshr i32 %and1319, 24, !dbg !480
  %or1321 = or i32 %or1317, %shr1320, !dbg !480
  br label %cond.end1325, !dbg !480

cond.false1322:                                   ; preds = %if.end1303
  %669 = load i32*, i32** %mask.addr, align 8, !dbg !480
  %add.ptr1323 = getelementptr i32, i32* %669, i64 7, !dbg !480
  %670 = load i32, i32* %add.ptr1323, align 4, !dbg !480
  %call1324 = call i32 @__fswab32(i32 %670) #7, !dbg !480
  br label %cond.end1325, !dbg !480

cond.end1325:                                     ; preds = %cond.false1322, %cond.true1306
  %cond1326 = phi i32 [ %or1321, %cond.true1306 ], [ %call1324, %cond.false1322 ], !dbg !480
  %shr1327 = lshr i32 %cond1326, 0, !dbg !480
  %and1328 = and i32 %shr1327, 65535, !dbg !480
  %conv1329 = trunc i32 %and1328 to i16, !dbg !480
  store i16 %conv1329, i16* %m1304, align 2, !dbg !480
  %v1330 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %udp_dport, i32 0, i32 1, !dbg !480
  %671 = load i32*, i32** %value.addr, align 8, !dbg !480
  %add.ptr1331 = getelementptr i32, i32* %671, i64 7, !dbg !480
  %672 = load i32, i32* %add.ptr1331, align 4, !dbg !480
  %673 = call i1 @llvm.is.constant.i32(i32 %672), !dbg !480
  br i1 %673, label %cond.true1332, label %cond.false1348, !dbg !480

cond.true1332:                                    ; preds = %cond.end1325
  %674 = load i32*, i32** %value.addr, align 8, !dbg !480
  %add.ptr1333 = getelementptr i32, i32* %674, i64 7, !dbg !480
  %675 = load i32, i32* %add.ptr1333, align 4, !dbg !480
  %and1334 = and i32 %675, 255, !dbg !480
  %shl1335 = shl i32 %and1334, 24, !dbg !480
  %676 = load i32*, i32** %value.addr, align 8, !dbg !480
  %add.ptr1336 = getelementptr i32, i32* %676, i64 7, !dbg !480
  %677 = load i32, i32* %add.ptr1336, align 4, !dbg !480
  %and1337 = and i32 %677, 65280, !dbg !480
  %shl1338 = shl i32 %and1337, 8, !dbg !480
  %or1339 = or i32 %shl1335, %shl1338, !dbg !480
  %678 = load i32*, i32** %value.addr, align 8, !dbg !480
  %add.ptr1340 = getelementptr i32, i32* %678, i64 7, !dbg !480
  %679 = load i32, i32* %add.ptr1340, align 4, !dbg !480
  %and1341 = and i32 %679, 16711680, !dbg !480
  %shr1342 = lshr i32 %and1341, 8, !dbg !480
  %or1343 = or i32 %or1339, %shr1342, !dbg !480
  %680 = load i32*, i32** %value.addr, align 8, !dbg !480
  %add.ptr1344 = getelementptr i32, i32* %680, i64 7, !dbg !480
  %681 = load i32, i32* %add.ptr1344, align 4, !dbg !480
  %and1345 = and i32 %681, -16777216, !dbg !480
  %shr1346 = lshr i32 %and1345, 24, !dbg !480
  %or1347 = or i32 %or1343, %shr1346, !dbg !480
  br label %cond.end1351, !dbg !480

cond.false1348:                                   ; preds = %cond.end1325
  %682 = load i32*, i32** %value.addr, align 8, !dbg !480
  %add.ptr1349 = getelementptr i32, i32* %682, i64 7, !dbg !480
  %683 = load i32, i32* %add.ptr1349, align 4, !dbg !480
  %call1350 = call i32 @__fswab32(i32 %683) #7, !dbg !480
  br label %cond.end1351, !dbg !480

cond.end1351:                                     ; preds = %cond.false1348, %cond.true1332
  %cond1352 = phi i32 [ %or1347, %cond.true1332 ], [ %call1350, %cond.false1348 ], !dbg !480
  %shr1353 = lshr i32 %cond1352, 0, !dbg !480
  %and1354 = and i32 %shr1353, 65535, !dbg !480
  %conv1355 = trunc i32 %and1354 to i16, !dbg !480
  store i16 %conv1355, i16* %v1330, align 2, !dbg !480
  %m1356 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %udp_dport, i32 0, i32 0, !dbg !481
  %684 = load i16, i16* %m1356, align 2, !dbg !481
  %tobool1357 = icmp ne i16 %684, 0, !dbg !481
  br i1 %tobool1357, label %if.then1358, label %if.end1361, !dbg !484

if.then1358:                                      ; preds = %cond.end1351
  %685 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !481
  %v1359 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %udp_dport, i32 0, i32 1, !dbg !481
  %686 = load i16, i16* %v1359, align 2, !dbg !481
  %conv1360 = zext i16 %686 to i32, !dbg !481
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %685, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %conv1360) #6, !dbg !481
  br label %if.end1361, !dbg !481

if.end1361:                                       ; preds = %if.then1358, %cond.end1351
  call void @llvm.dbg.declare(metadata %struct.anon.18* %first_vid, metadata !485, metadata !DIExpression()), !dbg !491
  %m1362 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %first_vid, i32 0, i32 0, !dbg !491
  %687 = load i32*, i32** %mask.addr, align 8, !dbg !491
  %add.ptr1363 = getelementptr i32, i32* %687, i64 3, !dbg !491
  %688 = load i32, i32* %add.ptr1363, align 4, !dbg !491
  %689 = call i1 @llvm.is.constant.i32(i32 %688), !dbg !491
  br i1 %689, label %cond.true1364, label %cond.false1380, !dbg !491

cond.true1364:                                    ; preds = %if.end1361
  %690 = load i32*, i32** %mask.addr, align 8, !dbg !491
  %add.ptr1365 = getelementptr i32, i32* %690, i64 3, !dbg !491
  %691 = load i32, i32* %add.ptr1365, align 4, !dbg !491
  %and1366 = and i32 %691, 255, !dbg !491
  %shl1367 = shl i32 %and1366, 24, !dbg !491
  %692 = load i32*, i32** %mask.addr, align 8, !dbg !491
  %add.ptr1368 = getelementptr i32, i32* %692, i64 3, !dbg !491
  %693 = load i32, i32* %add.ptr1368, align 4, !dbg !491
  %and1369 = and i32 %693, 65280, !dbg !491
  %shl1370 = shl i32 %and1369, 8, !dbg !491
  %or1371 = or i32 %shl1367, %shl1370, !dbg !491
  %694 = load i32*, i32** %mask.addr, align 8, !dbg !491
  %add.ptr1372 = getelementptr i32, i32* %694, i64 3, !dbg !491
  %695 = load i32, i32* %add.ptr1372, align 4, !dbg !491
  %and1373 = and i32 %695, 16711680, !dbg !491
  %shr1374 = lshr i32 %and1373, 8, !dbg !491
  %or1375 = or i32 %or1371, %shr1374, !dbg !491
  %696 = load i32*, i32** %mask.addr, align 8, !dbg !491
  %add.ptr1376 = getelementptr i32, i32* %696, i64 3, !dbg !491
  %697 = load i32, i32* %add.ptr1376, align 4, !dbg !491
  %and1377 = and i32 %697, -16777216, !dbg !491
  %shr1378 = lshr i32 %and1377, 24, !dbg !491
  %or1379 = or i32 %or1375, %shr1378, !dbg !491
  br label %cond.end1383, !dbg !491

cond.false1380:                                   ; preds = %if.end1361
  %698 = load i32*, i32** %mask.addr, align 8, !dbg !491
  %add.ptr1381 = getelementptr i32, i32* %698, i64 3, !dbg !491
  %699 = load i32, i32* %add.ptr1381, align 4, !dbg !491
  %call1382 = call i32 @__fswab32(i32 %699) #7, !dbg !491
  br label %cond.end1383, !dbg !491

cond.end1383:                                     ; preds = %cond.false1380, %cond.true1364
  %cond1384 = phi i32 [ %or1379, %cond.true1364 ], [ %call1382, %cond.false1380 ], !dbg !491
  %shr1385 = lshr i32 %cond1384, 0, !dbg !491
  %and1386 = and i32 %shr1385, 4095, !dbg !491
  %conv1387 = trunc i32 %and1386 to i16, !dbg !491
  store i16 %conv1387, i16* %m1362, align 2, !dbg !491
  %v1388 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %first_vid, i32 0, i32 1, !dbg !491
  %700 = load i32*, i32** %value.addr, align 8, !dbg !491
  %add.ptr1389 = getelementptr i32, i32* %700, i64 3, !dbg !491
  %701 = load i32, i32* %add.ptr1389, align 4, !dbg !491
  %702 = call i1 @llvm.is.constant.i32(i32 %701), !dbg !491
  br i1 %702, label %cond.true1390, label %cond.false1406, !dbg !491

cond.true1390:                                    ; preds = %cond.end1383
  %703 = load i32*, i32** %value.addr, align 8, !dbg !491
  %add.ptr1391 = getelementptr i32, i32* %703, i64 3, !dbg !491
  %704 = load i32, i32* %add.ptr1391, align 4, !dbg !491
  %and1392 = and i32 %704, 255, !dbg !491
  %shl1393 = shl i32 %and1392, 24, !dbg !491
  %705 = load i32*, i32** %value.addr, align 8, !dbg !491
  %add.ptr1394 = getelementptr i32, i32* %705, i64 3, !dbg !491
  %706 = load i32, i32* %add.ptr1394, align 4, !dbg !491
  %and1395 = and i32 %706, 65280, !dbg !491
  %shl1396 = shl i32 %and1395, 8, !dbg !491
  %or1397 = or i32 %shl1393, %shl1396, !dbg !491
  %707 = load i32*, i32** %value.addr, align 8, !dbg !491
  %add.ptr1398 = getelementptr i32, i32* %707, i64 3, !dbg !491
  %708 = load i32, i32* %add.ptr1398, align 4, !dbg !491
  %and1399 = and i32 %708, 16711680, !dbg !491
  %shr1400 = lshr i32 %and1399, 8, !dbg !491
  %or1401 = or i32 %or1397, %shr1400, !dbg !491
  %709 = load i32*, i32** %value.addr, align 8, !dbg !491
  %add.ptr1402 = getelementptr i32, i32* %709, i64 3, !dbg !491
  %710 = load i32, i32* %add.ptr1402, align 4, !dbg !491
  %and1403 = and i32 %710, -16777216, !dbg !491
  %shr1404 = lshr i32 %and1403, 24, !dbg !491
  %or1405 = or i32 %or1401, %shr1404, !dbg !491
  br label %cond.end1409, !dbg !491

cond.false1406:                                   ; preds = %cond.end1383
  %711 = load i32*, i32** %value.addr, align 8, !dbg !491
  %add.ptr1407 = getelementptr i32, i32* %711, i64 3, !dbg !491
  %712 = load i32, i32* %add.ptr1407, align 4, !dbg !491
  %call1408 = call i32 @__fswab32(i32 %712) #7, !dbg !491
  br label %cond.end1409, !dbg !491

cond.end1409:                                     ; preds = %cond.false1406, %cond.true1390
  %cond1410 = phi i32 [ %or1405, %cond.true1390 ], [ %call1408, %cond.false1406 ], !dbg !491
  %shr1411 = lshr i32 %cond1410, 0, !dbg !491
  %and1412 = and i32 %shr1411, 4095, !dbg !491
  %conv1413 = trunc i32 %and1412 to i16, !dbg !491
  store i16 %conv1413, i16* %v1388, align 2, !dbg !491
  %m1414 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %first_vid, i32 0, i32 0, !dbg !492
  %713 = load i16, i16* %m1414, align 2, !dbg !492
  %tobool1415 = icmp ne i16 %713, 0, !dbg !492
  br i1 %tobool1415, label %if.then1416, label %if.end1419, !dbg !495

if.then1416:                                      ; preds = %cond.end1409
  %714 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !492
  %v1417 = getelementptr inbounds %struct.anon.18, %struct.anon.18* %first_vid, i32 0, i32 1, !dbg !492
  %715 = load i16, i16* %v1417, align 2, !dbg !492
  %conv1418 = zext i16 %715 to i32, !dbg !492
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %714, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %conv1418) #6, !dbg !492
  br label %if.end1419, !dbg !492

if.end1419:                                       ; preds = %if.then1416, %cond.end1409
  call void @llvm.dbg.declare(metadata %struct.anon.19* %first_prio, metadata !496, metadata !DIExpression()), !dbg !502
  %m1420 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %first_prio, i32 0, i32 0, !dbg !502
  %716 = load i32*, i32** %mask.addr, align 8, !dbg !502
  %add.ptr1421 = getelementptr i32, i32* %716, i64 3, !dbg !502
  %717 = load i32, i32* %add.ptr1421, align 4, !dbg !502
  %718 = call i1 @llvm.is.constant.i32(i32 %717), !dbg !502
  br i1 %718, label %cond.true1422, label %cond.false1438, !dbg !502

cond.true1422:                                    ; preds = %if.end1419
  %719 = load i32*, i32** %mask.addr, align 8, !dbg !502
  %add.ptr1423 = getelementptr i32, i32* %719, i64 3, !dbg !502
  %720 = load i32, i32* %add.ptr1423, align 4, !dbg !502
  %and1424 = and i32 %720, 255, !dbg !502
  %shl1425 = shl i32 %and1424, 24, !dbg !502
  %721 = load i32*, i32** %mask.addr, align 8, !dbg !502
  %add.ptr1426 = getelementptr i32, i32* %721, i64 3, !dbg !502
  %722 = load i32, i32* %add.ptr1426, align 4, !dbg !502
  %and1427 = and i32 %722, 65280, !dbg !502
  %shl1428 = shl i32 %and1427, 8, !dbg !502
  %or1429 = or i32 %shl1425, %shl1428, !dbg !502
  %723 = load i32*, i32** %mask.addr, align 8, !dbg !502
  %add.ptr1430 = getelementptr i32, i32* %723, i64 3, !dbg !502
  %724 = load i32, i32* %add.ptr1430, align 4, !dbg !502
  %and1431 = and i32 %724, 16711680, !dbg !502
  %shr1432 = lshr i32 %and1431, 8, !dbg !502
  %or1433 = or i32 %or1429, %shr1432, !dbg !502
  %725 = load i32*, i32** %mask.addr, align 8, !dbg !502
  %add.ptr1434 = getelementptr i32, i32* %725, i64 3, !dbg !502
  %726 = load i32, i32* %add.ptr1434, align 4, !dbg !502
  %and1435 = and i32 %726, -16777216, !dbg !502
  %shr1436 = lshr i32 %and1435, 24, !dbg !502
  %or1437 = or i32 %or1433, %shr1436, !dbg !502
  br label %cond.end1441, !dbg !502

cond.false1438:                                   ; preds = %if.end1419
  %727 = load i32*, i32** %mask.addr, align 8, !dbg !502
  %add.ptr1439 = getelementptr i32, i32* %727, i64 3, !dbg !502
  %728 = load i32, i32* %add.ptr1439, align 4, !dbg !502
  %call1440 = call i32 @__fswab32(i32 %728) #7, !dbg !502
  br label %cond.end1441, !dbg !502

cond.end1441:                                     ; preds = %cond.false1438, %cond.true1422
  %cond1442 = phi i32 [ %or1437, %cond.true1422 ], [ %call1440, %cond.false1438 ], !dbg !502
  %shr1443 = lshr i32 %cond1442, 13, !dbg !502
  %and1444 = and i32 %shr1443, 7, !dbg !502
  %conv1445 = trunc i32 %and1444 to i8, !dbg !502
  store i8 %conv1445, i8* %m1420, align 1, !dbg !502
  %v1446 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %first_prio, i32 0, i32 1, !dbg !502
  %729 = load i32*, i32** %value.addr, align 8, !dbg !502
  %add.ptr1447 = getelementptr i32, i32* %729, i64 3, !dbg !502
  %730 = load i32, i32* %add.ptr1447, align 4, !dbg !502
  %731 = call i1 @llvm.is.constant.i32(i32 %730), !dbg !502
  br i1 %731, label %cond.true1448, label %cond.false1464, !dbg !502

cond.true1448:                                    ; preds = %cond.end1441
  %732 = load i32*, i32** %value.addr, align 8, !dbg !502
  %add.ptr1449 = getelementptr i32, i32* %732, i64 3, !dbg !502
  %733 = load i32, i32* %add.ptr1449, align 4, !dbg !502
  %and1450 = and i32 %733, 255, !dbg !502
  %shl1451 = shl i32 %and1450, 24, !dbg !502
  %734 = load i32*, i32** %value.addr, align 8, !dbg !502
  %add.ptr1452 = getelementptr i32, i32* %734, i64 3, !dbg !502
  %735 = load i32, i32* %add.ptr1452, align 4, !dbg !502
  %and1453 = and i32 %735, 65280, !dbg !502
  %shl1454 = shl i32 %and1453, 8, !dbg !502
  %or1455 = or i32 %shl1451, %shl1454, !dbg !502
  %736 = load i32*, i32** %value.addr, align 8, !dbg !502
  %add.ptr1456 = getelementptr i32, i32* %736, i64 3, !dbg !502
  %737 = load i32, i32* %add.ptr1456, align 4, !dbg !502
  %and1457 = and i32 %737, 16711680, !dbg !502
  %shr1458 = lshr i32 %and1457, 8, !dbg !502
  %or1459 = or i32 %or1455, %shr1458, !dbg !502
  %738 = load i32*, i32** %value.addr, align 8, !dbg !502
  %add.ptr1460 = getelementptr i32, i32* %738, i64 3, !dbg !502
  %739 = load i32, i32* %add.ptr1460, align 4, !dbg !502
  %and1461 = and i32 %739, -16777216, !dbg !502
  %shr1462 = lshr i32 %and1461, 24, !dbg !502
  %or1463 = or i32 %or1459, %shr1462, !dbg !502
  br label %cond.end1467, !dbg !502

cond.false1464:                                   ; preds = %cond.end1441
  %740 = load i32*, i32** %value.addr, align 8, !dbg !502
  %add.ptr1465 = getelementptr i32, i32* %740, i64 3, !dbg !502
  %741 = load i32, i32* %add.ptr1465, align 4, !dbg !502
  %call1466 = call i32 @__fswab32(i32 %741) #7, !dbg !502
  br label %cond.end1467, !dbg !502

cond.end1467:                                     ; preds = %cond.false1464, %cond.true1448
  %cond1468 = phi i32 [ %or1463, %cond.true1448 ], [ %call1466, %cond.false1464 ], !dbg !502
  %shr1469 = lshr i32 %cond1468, 13, !dbg !502
  %and1470 = and i32 %shr1469, 7, !dbg !502
  %conv1471 = trunc i32 %and1470 to i8, !dbg !502
  store i8 %conv1471, i8* %v1446, align 1, !dbg !502
  %m1472 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %first_prio, i32 0, i32 0, !dbg !503
  %742 = load i8, i8* %m1472, align 1, !dbg !503
  %tobool1473 = icmp ne i8 %742, 0, !dbg !503
  br i1 %tobool1473, label %if.then1474, label %if.end1477, !dbg !506

if.then1474:                                      ; preds = %cond.end1467
  %743 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !503
  %v1475 = getelementptr inbounds %struct.anon.19, %struct.anon.19* %first_prio, i32 0, i32 1, !dbg !503
  %744 = load i8, i8* %v1475, align 1, !dbg !503
  %conv1476 = zext i8 %744 to i32, !dbg !503
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %743, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %conv1476) #6, !dbg !503
  br label %if.end1477, !dbg !503

if.end1477:                                       ; preds = %if.then1474, %cond.end1467
  call void @llvm.dbg.declare(metadata %struct.anon.20* %first_cfi, metadata !507, metadata !DIExpression()), !dbg !513
  %m1478 = getelementptr inbounds %struct.anon.20, %struct.anon.20* %first_cfi, i32 0, i32 0, !dbg !513
  %745 = load i32*, i32** %mask.addr, align 8, !dbg !513
  %add.ptr1479 = getelementptr i32, i32* %745, i64 3, !dbg !513
  %746 = load i32, i32* %add.ptr1479, align 4, !dbg !513
  %747 = call i1 @llvm.is.constant.i32(i32 %746), !dbg !513
  br i1 %747, label %cond.true1480, label %cond.false1496, !dbg !513

cond.true1480:                                    ; preds = %if.end1477
  %748 = load i32*, i32** %mask.addr, align 8, !dbg !513
  %add.ptr1481 = getelementptr i32, i32* %748, i64 3, !dbg !513
  %749 = load i32, i32* %add.ptr1481, align 4, !dbg !513
  %and1482 = and i32 %749, 255, !dbg !513
  %shl1483 = shl i32 %and1482, 24, !dbg !513
  %750 = load i32*, i32** %mask.addr, align 8, !dbg !513
  %add.ptr1484 = getelementptr i32, i32* %750, i64 3, !dbg !513
  %751 = load i32, i32* %add.ptr1484, align 4, !dbg !513
  %and1485 = and i32 %751, 65280, !dbg !513
  %shl1486 = shl i32 %and1485, 8, !dbg !513
  %or1487 = or i32 %shl1483, %shl1486, !dbg !513
  %752 = load i32*, i32** %mask.addr, align 8, !dbg !513
  %add.ptr1488 = getelementptr i32, i32* %752, i64 3, !dbg !513
  %753 = load i32, i32* %add.ptr1488, align 4, !dbg !513
  %and1489 = and i32 %753, 16711680, !dbg !513
  %shr1490 = lshr i32 %and1489, 8, !dbg !513
  %or1491 = or i32 %or1487, %shr1490, !dbg !513
  %754 = load i32*, i32** %mask.addr, align 8, !dbg !513
  %add.ptr1492 = getelementptr i32, i32* %754, i64 3, !dbg !513
  %755 = load i32, i32* %add.ptr1492, align 4, !dbg !513
  %and1493 = and i32 %755, -16777216, !dbg !513
  %shr1494 = lshr i32 %and1493, 24, !dbg !513
  %or1495 = or i32 %or1491, %shr1494, !dbg !513
  br label %cond.end1499, !dbg !513

cond.false1496:                                   ; preds = %if.end1477
  %756 = load i32*, i32** %mask.addr, align 8, !dbg !513
  %add.ptr1497 = getelementptr i32, i32* %756, i64 3, !dbg !513
  %757 = load i32, i32* %add.ptr1497, align 4, !dbg !513
  %call1498 = call i32 @__fswab32(i32 %757) #7, !dbg !513
  br label %cond.end1499, !dbg !513

cond.end1499:                                     ; preds = %cond.false1496, %cond.true1480
  %cond1500 = phi i32 [ %or1495, %cond.true1480 ], [ %call1498, %cond.false1496 ], !dbg !513
  %shr1501 = lshr i32 %cond1500, 12, !dbg !513
  %and1502 = and i32 %shr1501, 1, !dbg !513
  %conv1503 = trunc i32 %and1502 to i8, !dbg !513
  store i8 %conv1503, i8* %m1478, align 1, !dbg !513
  %v1504 = getelementptr inbounds %struct.anon.20, %struct.anon.20* %first_cfi, i32 0, i32 1, !dbg !513
  %758 = load i32*, i32** %value.addr, align 8, !dbg !513
  %add.ptr1505 = getelementptr i32, i32* %758, i64 3, !dbg !513
  %759 = load i32, i32* %add.ptr1505, align 4, !dbg !513
  %760 = call i1 @llvm.is.constant.i32(i32 %759), !dbg !513
  br i1 %760, label %cond.true1506, label %cond.false1522, !dbg !513

cond.true1506:                                    ; preds = %cond.end1499
  %761 = load i32*, i32** %value.addr, align 8, !dbg !513
  %add.ptr1507 = getelementptr i32, i32* %761, i64 3, !dbg !513
  %762 = load i32, i32* %add.ptr1507, align 4, !dbg !513
  %and1508 = and i32 %762, 255, !dbg !513
  %shl1509 = shl i32 %and1508, 24, !dbg !513
  %763 = load i32*, i32** %value.addr, align 8, !dbg !513
  %add.ptr1510 = getelementptr i32, i32* %763, i64 3, !dbg !513
  %764 = load i32, i32* %add.ptr1510, align 4, !dbg !513
  %and1511 = and i32 %764, 65280, !dbg !513
  %shl1512 = shl i32 %and1511, 8, !dbg !513
  %or1513 = or i32 %shl1509, %shl1512, !dbg !513
  %765 = load i32*, i32** %value.addr, align 8, !dbg !513
  %add.ptr1514 = getelementptr i32, i32* %765, i64 3, !dbg !513
  %766 = load i32, i32* %add.ptr1514, align 4, !dbg !513
  %and1515 = and i32 %766, 16711680, !dbg !513
  %shr1516 = lshr i32 %and1515, 8, !dbg !513
  %or1517 = or i32 %or1513, %shr1516, !dbg !513
  %767 = load i32*, i32** %value.addr, align 8, !dbg !513
  %add.ptr1518 = getelementptr i32, i32* %767, i64 3, !dbg !513
  %768 = load i32, i32* %add.ptr1518, align 4, !dbg !513
  %and1519 = and i32 %768, -16777216, !dbg !513
  %shr1520 = lshr i32 %and1519, 24, !dbg !513
  %or1521 = or i32 %or1517, %shr1520, !dbg !513
  br label %cond.end1525, !dbg !513

cond.false1522:                                   ; preds = %cond.end1499
  %769 = load i32*, i32** %value.addr, align 8, !dbg !513
  %add.ptr1523 = getelementptr i32, i32* %769, i64 3, !dbg !513
  %770 = load i32, i32* %add.ptr1523, align 4, !dbg !513
  %call1524 = call i32 @__fswab32(i32 %770) #7, !dbg !513
  br label %cond.end1525, !dbg !513

cond.end1525:                                     ; preds = %cond.false1522, %cond.true1506
  %cond1526 = phi i32 [ %or1521, %cond.true1506 ], [ %call1524, %cond.false1522 ], !dbg !513
  %shr1527 = lshr i32 %cond1526, 12, !dbg !513
  %and1528 = and i32 %shr1527, 1, !dbg !513
  %conv1529 = trunc i32 %and1528 to i8, !dbg !513
  store i8 %conv1529, i8* %v1504, align 1, !dbg !513
  %m1530 = getelementptr inbounds %struct.anon.20, %struct.anon.20* %first_cfi, i32 0, i32 0, !dbg !514
  %771 = load i8, i8* %m1530, align 1, !dbg !514
  %tobool1531 = icmp ne i8 %771, 0, !dbg !514
  br i1 %tobool1531, label %if.then1532, label %if.end1535, !dbg !517

if.then1532:                                      ; preds = %cond.end1525
  %772 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !514
  %v1533 = getelementptr inbounds %struct.anon.20, %struct.anon.20* %first_cfi, i32 0, i32 1, !dbg !514
  %773 = load i8, i8* %v1533, align 1, !dbg !514
  %conv1534 = zext i8 %773 to i32, !dbg !514
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %772, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %conv1534) #6, !dbg !514
  br label %if.end1535, !dbg !514

if.end1535:                                       ; preds = %if.then1532, %cond.end1525
  call void @llvm.dbg.declare(metadata %struct.anon.21* %ip_dscp, metadata !518, metadata !DIExpression()), !dbg !524
  %m1536 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %ip_dscp, i32 0, i32 0, !dbg !524
  %774 = load i32*, i32** %mask.addr, align 8, !dbg !524
  %add.ptr1537 = getelementptr i32, i32* %774, i64 4, !dbg !524
  %775 = load i32, i32* %add.ptr1537, align 4, !dbg !524
  %776 = call i1 @llvm.is.constant.i32(i32 %775), !dbg !524
  br i1 %776, label %cond.true1538, label %cond.false1554, !dbg !524

cond.true1538:                                    ; preds = %if.end1535
  %777 = load i32*, i32** %mask.addr, align 8, !dbg !524
  %add.ptr1539 = getelementptr i32, i32* %777, i64 4, !dbg !524
  %778 = load i32, i32* %add.ptr1539, align 4, !dbg !524
  %and1540 = and i32 %778, 255, !dbg !524
  %shl1541 = shl i32 %and1540, 24, !dbg !524
  %779 = load i32*, i32** %mask.addr, align 8, !dbg !524
  %add.ptr1542 = getelementptr i32, i32* %779, i64 4, !dbg !524
  %780 = load i32, i32* %add.ptr1542, align 4, !dbg !524
  %and1543 = and i32 %780, 65280, !dbg !524
  %shl1544 = shl i32 %and1543, 8, !dbg !524
  %or1545 = or i32 %shl1541, %shl1544, !dbg !524
  %781 = load i32*, i32** %mask.addr, align 8, !dbg !524
  %add.ptr1546 = getelementptr i32, i32* %781, i64 4, !dbg !524
  %782 = load i32, i32* %add.ptr1546, align 4, !dbg !524
  %and1547 = and i32 %782, 16711680, !dbg !524
  %shr1548 = lshr i32 %and1547, 8, !dbg !524
  %or1549 = or i32 %or1545, %shr1548, !dbg !524
  %783 = load i32*, i32** %mask.addr, align 8, !dbg !524
  %add.ptr1550 = getelementptr i32, i32* %783, i64 4, !dbg !524
  %784 = load i32, i32* %add.ptr1550, align 4, !dbg !524
  %and1551 = and i32 %784, -16777216, !dbg !524
  %shr1552 = lshr i32 %and1551, 24, !dbg !524
  %or1553 = or i32 %or1549, %shr1552, !dbg !524
  br label %cond.end1557, !dbg !524

cond.false1554:                                   ; preds = %if.end1535
  %785 = load i32*, i32** %mask.addr, align 8, !dbg !524
  %add.ptr1555 = getelementptr i32, i32* %785, i64 4, !dbg !524
  %786 = load i32, i32* %add.ptr1555, align 4, !dbg !524
  %call1556 = call i32 @__fswab32(i32 %786) #7, !dbg !524
  br label %cond.end1557, !dbg !524

cond.end1557:                                     ; preds = %cond.false1554, %cond.true1538
  %cond1558 = phi i32 [ %or1553, %cond.true1538 ], [ %call1556, %cond.false1554 ], !dbg !524
  %shr1559 = lshr i32 %cond1558, 18, !dbg !524
  %and1560 = and i32 %shr1559, 63, !dbg !524
  %conv1561 = trunc i32 %and1560 to i8, !dbg !524
  store i8 %conv1561, i8* %m1536, align 1, !dbg !524
  %v1562 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %ip_dscp, i32 0, i32 1, !dbg !524
  %787 = load i32*, i32** %value.addr, align 8, !dbg !524
  %add.ptr1563 = getelementptr i32, i32* %787, i64 4, !dbg !524
  %788 = load i32, i32* %add.ptr1563, align 4, !dbg !524
  %789 = call i1 @llvm.is.constant.i32(i32 %788), !dbg !524
  br i1 %789, label %cond.true1564, label %cond.false1580, !dbg !524

cond.true1564:                                    ; preds = %cond.end1557
  %790 = load i32*, i32** %value.addr, align 8, !dbg !524
  %add.ptr1565 = getelementptr i32, i32* %790, i64 4, !dbg !524
  %791 = load i32, i32* %add.ptr1565, align 4, !dbg !524
  %and1566 = and i32 %791, 255, !dbg !524
  %shl1567 = shl i32 %and1566, 24, !dbg !524
  %792 = load i32*, i32** %value.addr, align 8, !dbg !524
  %add.ptr1568 = getelementptr i32, i32* %792, i64 4, !dbg !524
  %793 = load i32, i32* %add.ptr1568, align 4, !dbg !524
  %and1569 = and i32 %793, 65280, !dbg !524
  %shl1570 = shl i32 %and1569, 8, !dbg !524
  %or1571 = or i32 %shl1567, %shl1570, !dbg !524
  %794 = load i32*, i32** %value.addr, align 8, !dbg !524
  %add.ptr1572 = getelementptr i32, i32* %794, i64 4, !dbg !524
  %795 = load i32, i32* %add.ptr1572, align 4, !dbg !524
  %and1573 = and i32 %795, 16711680, !dbg !524
  %shr1574 = lshr i32 %and1573, 8, !dbg !524
  %or1575 = or i32 %or1571, %shr1574, !dbg !524
  %796 = load i32*, i32** %value.addr, align 8, !dbg !524
  %add.ptr1576 = getelementptr i32, i32* %796, i64 4, !dbg !524
  %797 = load i32, i32* %add.ptr1576, align 4, !dbg !524
  %and1577 = and i32 %797, -16777216, !dbg !524
  %shr1578 = lshr i32 %and1577, 24, !dbg !524
  %or1579 = or i32 %or1575, %shr1578, !dbg !524
  br label %cond.end1583, !dbg !524

cond.false1580:                                   ; preds = %cond.end1557
  %798 = load i32*, i32** %value.addr, align 8, !dbg !524
  %add.ptr1581 = getelementptr i32, i32* %798, i64 4, !dbg !524
  %799 = load i32, i32* %add.ptr1581, align 4, !dbg !524
  %call1582 = call i32 @__fswab32(i32 %799) #7, !dbg !524
  br label %cond.end1583, !dbg !524

cond.end1583:                                     ; preds = %cond.false1580, %cond.true1564
  %cond1584 = phi i32 [ %or1579, %cond.true1564 ], [ %call1582, %cond.false1580 ], !dbg !524
  %shr1585 = lshr i32 %cond1584, 18, !dbg !524
  %and1586 = and i32 %shr1585, 63, !dbg !524
  %conv1587 = trunc i32 %and1586 to i8, !dbg !524
  store i8 %conv1587, i8* %v1562, align 1, !dbg !524
  %m1588 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %ip_dscp, i32 0, i32 0, !dbg !525
  %800 = load i8, i8* %m1588, align 1, !dbg !525
  %tobool1589 = icmp ne i8 %800, 0, !dbg !525
  br i1 %tobool1589, label %if.then1590, label %if.end1593, !dbg !528

if.then1590:                                      ; preds = %cond.end1583
  %801 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !525
  %v1591 = getelementptr inbounds %struct.anon.21, %struct.anon.21* %ip_dscp, i32 0, i32 1, !dbg !525
  %802 = load i8, i8* %v1591, align 1, !dbg !525
  %conv1592 = zext i8 %802 to i32, !dbg !525
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %801, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %conv1592) #6, !dbg !525
  br label %if.end1593, !dbg !525

if.end1593:                                       ; preds = %if.then1590, %cond.end1583
  call void @llvm.dbg.declare(metadata %struct.anon.22* %ip_ecn, metadata !529, metadata !DIExpression()), !dbg !535
  %m1594 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %ip_ecn, i32 0, i32 0, !dbg !535
  %803 = load i32*, i32** %mask.addr, align 8, !dbg !535
  %add.ptr1595 = getelementptr i32, i32* %803, i64 4, !dbg !535
  %804 = load i32, i32* %add.ptr1595, align 4, !dbg !535
  %805 = call i1 @llvm.is.constant.i32(i32 %804), !dbg !535
  br i1 %805, label %cond.true1596, label %cond.false1612, !dbg !535

cond.true1596:                                    ; preds = %if.end1593
  %806 = load i32*, i32** %mask.addr, align 8, !dbg !535
  %add.ptr1597 = getelementptr i32, i32* %806, i64 4, !dbg !535
  %807 = load i32, i32* %add.ptr1597, align 4, !dbg !535
  %and1598 = and i32 %807, 255, !dbg !535
  %shl1599 = shl i32 %and1598, 24, !dbg !535
  %808 = load i32*, i32** %mask.addr, align 8, !dbg !535
  %add.ptr1600 = getelementptr i32, i32* %808, i64 4, !dbg !535
  %809 = load i32, i32* %add.ptr1600, align 4, !dbg !535
  %and1601 = and i32 %809, 65280, !dbg !535
  %shl1602 = shl i32 %and1601, 8, !dbg !535
  %or1603 = or i32 %shl1599, %shl1602, !dbg !535
  %810 = load i32*, i32** %mask.addr, align 8, !dbg !535
  %add.ptr1604 = getelementptr i32, i32* %810, i64 4, !dbg !535
  %811 = load i32, i32* %add.ptr1604, align 4, !dbg !535
  %and1605 = and i32 %811, 16711680, !dbg !535
  %shr1606 = lshr i32 %and1605, 8, !dbg !535
  %or1607 = or i32 %or1603, %shr1606, !dbg !535
  %812 = load i32*, i32** %mask.addr, align 8, !dbg !535
  %add.ptr1608 = getelementptr i32, i32* %812, i64 4, !dbg !535
  %813 = load i32, i32* %add.ptr1608, align 4, !dbg !535
  %and1609 = and i32 %813, -16777216, !dbg !535
  %shr1610 = lshr i32 %and1609, 24, !dbg !535
  %or1611 = or i32 %or1607, %shr1610, !dbg !535
  br label %cond.end1615, !dbg !535

cond.false1612:                                   ; preds = %if.end1593
  %814 = load i32*, i32** %mask.addr, align 8, !dbg !535
  %add.ptr1613 = getelementptr i32, i32* %814, i64 4, !dbg !535
  %815 = load i32, i32* %add.ptr1613, align 4, !dbg !535
  %call1614 = call i32 @__fswab32(i32 %815) #7, !dbg !535
  br label %cond.end1615, !dbg !535

cond.end1615:                                     ; preds = %cond.false1612, %cond.true1596
  %cond1616 = phi i32 [ %or1611, %cond.true1596 ], [ %call1614, %cond.false1612 ], !dbg !535
  %shr1617 = lshr i32 %cond1616, 16, !dbg !535
  %and1618 = and i32 %shr1617, 3, !dbg !535
  %conv1619 = trunc i32 %and1618 to i8, !dbg !535
  store i8 %conv1619, i8* %m1594, align 1, !dbg !535
  %v1620 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %ip_ecn, i32 0, i32 1, !dbg !535
  %816 = load i32*, i32** %value.addr, align 8, !dbg !535
  %add.ptr1621 = getelementptr i32, i32* %816, i64 4, !dbg !535
  %817 = load i32, i32* %add.ptr1621, align 4, !dbg !535
  %818 = call i1 @llvm.is.constant.i32(i32 %817), !dbg !535
  br i1 %818, label %cond.true1622, label %cond.false1638, !dbg !535

cond.true1622:                                    ; preds = %cond.end1615
  %819 = load i32*, i32** %value.addr, align 8, !dbg !535
  %add.ptr1623 = getelementptr i32, i32* %819, i64 4, !dbg !535
  %820 = load i32, i32* %add.ptr1623, align 4, !dbg !535
  %and1624 = and i32 %820, 255, !dbg !535
  %shl1625 = shl i32 %and1624, 24, !dbg !535
  %821 = load i32*, i32** %value.addr, align 8, !dbg !535
  %add.ptr1626 = getelementptr i32, i32* %821, i64 4, !dbg !535
  %822 = load i32, i32* %add.ptr1626, align 4, !dbg !535
  %and1627 = and i32 %822, 65280, !dbg !535
  %shl1628 = shl i32 %and1627, 8, !dbg !535
  %or1629 = or i32 %shl1625, %shl1628, !dbg !535
  %823 = load i32*, i32** %value.addr, align 8, !dbg !535
  %add.ptr1630 = getelementptr i32, i32* %823, i64 4, !dbg !535
  %824 = load i32, i32* %add.ptr1630, align 4, !dbg !535
  %and1631 = and i32 %824, 16711680, !dbg !535
  %shr1632 = lshr i32 %and1631, 8, !dbg !535
  %or1633 = or i32 %or1629, %shr1632, !dbg !535
  %825 = load i32*, i32** %value.addr, align 8, !dbg !535
  %add.ptr1634 = getelementptr i32, i32* %825, i64 4, !dbg !535
  %826 = load i32, i32* %add.ptr1634, align 4, !dbg !535
  %and1635 = and i32 %826, -16777216, !dbg !535
  %shr1636 = lshr i32 %and1635, 24, !dbg !535
  %or1637 = or i32 %or1633, %shr1636, !dbg !535
  br label %cond.end1641, !dbg !535

cond.false1638:                                   ; preds = %cond.end1615
  %827 = load i32*, i32** %value.addr, align 8, !dbg !535
  %add.ptr1639 = getelementptr i32, i32* %827, i64 4, !dbg !535
  %828 = load i32, i32* %add.ptr1639, align 4, !dbg !535
  %call1640 = call i32 @__fswab32(i32 %828) #7, !dbg !535
  br label %cond.end1641, !dbg !535

cond.end1641:                                     ; preds = %cond.false1638, %cond.true1622
  %cond1642 = phi i32 [ %or1637, %cond.true1622 ], [ %call1640, %cond.false1638 ], !dbg !535
  %shr1643 = lshr i32 %cond1642, 16, !dbg !535
  %and1644 = and i32 %shr1643, 3, !dbg !535
  %conv1645 = trunc i32 %and1644 to i8, !dbg !535
  store i8 %conv1645, i8* %v1620, align 1, !dbg !535
  %m1646 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %ip_ecn, i32 0, i32 0, !dbg !536
  %829 = load i8, i8* %m1646, align 1, !dbg !536
  %tobool1647 = icmp ne i8 %829, 0, !dbg !536
  br i1 %tobool1647, label %if.then1648, label %if.end1651, !dbg !539

if.then1648:                                      ; preds = %cond.end1641
  %830 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !536
  %v1649 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %ip_ecn, i32 0, i32 1, !dbg !536
  %831 = load i8, i8* %v1649, align 1, !dbg !536
  %conv1650 = zext i8 %831 to i32, !dbg !536
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %830, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 %conv1650) #6, !dbg !536
  br label %if.end1651, !dbg !536

if.end1651:                                       ; preds = %if.then1648, %cond.end1641
  call void @llvm.dbg.declare(metadata %struct.anon.23* %cvlan_tag, metadata !540, metadata !DIExpression()), !dbg !546
  %m1652 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %cvlan_tag, i32 0, i32 0, !dbg !546
  %832 = load i32*, i32** %mask.addr, align 8, !dbg !546
  %add.ptr1653 = getelementptr i32, i32* %832, i64 4, !dbg !546
  %833 = load i32, i32* %add.ptr1653, align 4, !dbg !546
  %834 = call i1 @llvm.is.constant.i32(i32 %833), !dbg !546
  br i1 %834, label %cond.true1654, label %cond.false1670, !dbg !546

cond.true1654:                                    ; preds = %if.end1651
  %835 = load i32*, i32** %mask.addr, align 8, !dbg !546
  %add.ptr1655 = getelementptr i32, i32* %835, i64 4, !dbg !546
  %836 = load i32, i32* %add.ptr1655, align 4, !dbg !546
  %and1656 = and i32 %836, 255, !dbg !546
  %shl1657 = shl i32 %and1656, 24, !dbg !546
  %837 = load i32*, i32** %mask.addr, align 8, !dbg !546
  %add.ptr1658 = getelementptr i32, i32* %837, i64 4, !dbg !546
  %838 = load i32, i32* %add.ptr1658, align 4, !dbg !546
  %and1659 = and i32 %838, 65280, !dbg !546
  %shl1660 = shl i32 %and1659, 8, !dbg !546
  %or1661 = or i32 %shl1657, %shl1660, !dbg !546
  %839 = load i32*, i32** %mask.addr, align 8, !dbg !546
  %add.ptr1662 = getelementptr i32, i32* %839, i64 4, !dbg !546
  %840 = load i32, i32* %add.ptr1662, align 4, !dbg !546
  %and1663 = and i32 %840, 16711680, !dbg !546
  %shr1664 = lshr i32 %and1663, 8, !dbg !546
  %or1665 = or i32 %or1661, %shr1664, !dbg !546
  %841 = load i32*, i32** %mask.addr, align 8, !dbg !546
  %add.ptr1666 = getelementptr i32, i32* %841, i64 4, !dbg !546
  %842 = load i32, i32* %add.ptr1666, align 4, !dbg !546
  %and1667 = and i32 %842, -16777216, !dbg !546
  %shr1668 = lshr i32 %and1667, 24, !dbg !546
  %or1669 = or i32 %or1665, %shr1668, !dbg !546
  br label %cond.end1673, !dbg !546

cond.false1670:                                   ; preds = %if.end1651
  %843 = load i32*, i32** %mask.addr, align 8, !dbg !546
  %add.ptr1671 = getelementptr i32, i32* %843, i64 4, !dbg !546
  %844 = load i32, i32* %add.ptr1671, align 4, !dbg !546
  %call1672 = call i32 @__fswab32(i32 %844) #7, !dbg !546
  br label %cond.end1673, !dbg !546

cond.end1673:                                     ; preds = %cond.false1670, %cond.true1654
  %cond1674 = phi i32 [ %or1669, %cond.true1654 ], [ %call1672, %cond.false1670 ], !dbg !546
  %shr1675 = lshr i32 %cond1674, 15, !dbg !546
  %and1676 = and i32 %shr1675, 1, !dbg !546
  %conv1677 = trunc i32 %and1676 to i8, !dbg !546
  store i8 %conv1677, i8* %m1652, align 1, !dbg !546
  %v1678 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %cvlan_tag, i32 0, i32 1, !dbg !546
  %845 = load i32*, i32** %value.addr, align 8, !dbg !546
  %add.ptr1679 = getelementptr i32, i32* %845, i64 4, !dbg !546
  %846 = load i32, i32* %add.ptr1679, align 4, !dbg !546
  %847 = call i1 @llvm.is.constant.i32(i32 %846), !dbg !546
  br i1 %847, label %cond.true1680, label %cond.false1696, !dbg !546

cond.true1680:                                    ; preds = %cond.end1673
  %848 = load i32*, i32** %value.addr, align 8, !dbg !546
  %add.ptr1681 = getelementptr i32, i32* %848, i64 4, !dbg !546
  %849 = load i32, i32* %add.ptr1681, align 4, !dbg !546
  %and1682 = and i32 %849, 255, !dbg !546
  %shl1683 = shl i32 %and1682, 24, !dbg !546
  %850 = load i32*, i32** %value.addr, align 8, !dbg !546
  %add.ptr1684 = getelementptr i32, i32* %850, i64 4, !dbg !546
  %851 = load i32, i32* %add.ptr1684, align 4, !dbg !546
  %and1685 = and i32 %851, 65280, !dbg !546
  %shl1686 = shl i32 %and1685, 8, !dbg !546
  %or1687 = or i32 %shl1683, %shl1686, !dbg !546
  %852 = load i32*, i32** %value.addr, align 8, !dbg !546
  %add.ptr1688 = getelementptr i32, i32* %852, i64 4, !dbg !546
  %853 = load i32, i32* %add.ptr1688, align 4, !dbg !546
  %and1689 = and i32 %853, 16711680, !dbg !546
  %shr1690 = lshr i32 %and1689, 8, !dbg !546
  %or1691 = or i32 %or1687, %shr1690, !dbg !546
  %854 = load i32*, i32** %value.addr, align 8, !dbg !546
  %add.ptr1692 = getelementptr i32, i32* %854, i64 4, !dbg !546
  %855 = load i32, i32* %add.ptr1692, align 4, !dbg !546
  %and1693 = and i32 %855, -16777216, !dbg !546
  %shr1694 = lshr i32 %and1693, 24, !dbg !546
  %or1695 = or i32 %or1691, %shr1694, !dbg !546
  br label %cond.end1699, !dbg !546

cond.false1696:                                   ; preds = %cond.end1673
  %856 = load i32*, i32** %value.addr, align 8, !dbg !546
  %add.ptr1697 = getelementptr i32, i32* %856, i64 4, !dbg !546
  %857 = load i32, i32* %add.ptr1697, align 4, !dbg !546
  %call1698 = call i32 @__fswab32(i32 %857) #7, !dbg !546
  br label %cond.end1699, !dbg !546

cond.end1699:                                     ; preds = %cond.false1696, %cond.true1680
  %cond1700 = phi i32 [ %or1695, %cond.true1680 ], [ %call1698, %cond.false1696 ], !dbg !546
  %shr1701 = lshr i32 %cond1700, 15, !dbg !546
  %and1702 = and i32 %shr1701, 1, !dbg !546
  %conv1703 = trunc i32 %and1702 to i8, !dbg !546
  store i8 %conv1703, i8* %v1678, align 1, !dbg !546
  %m1704 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %cvlan_tag, i32 0, i32 0, !dbg !547
  %858 = load i8, i8* %m1704, align 1, !dbg !547
  %tobool1705 = icmp ne i8 %858, 0, !dbg !547
  br i1 %tobool1705, label %if.then1706, label %if.end1709, !dbg !550

if.then1706:                                      ; preds = %cond.end1699
  %859 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !547
  %v1707 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %cvlan_tag, i32 0, i32 1, !dbg !547
  %860 = load i8, i8* %v1707, align 1, !dbg !547
  %conv1708 = zext i8 %860 to i32, !dbg !547
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %859, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %conv1708) #6, !dbg !547
  br label %if.end1709, !dbg !547

if.end1709:                                       ; preds = %if.then1706, %cond.end1699
  call void @llvm.dbg.declare(metadata %struct.anon.24* %svlan_tag, metadata !551, metadata !DIExpression()), !dbg !557
  %m1710 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %svlan_tag, i32 0, i32 0, !dbg !557
  %861 = load i32*, i32** %mask.addr, align 8, !dbg !557
  %add.ptr1711 = getelementptr i32, i32* %861, i64 4, !dbg !557
  %862 = load i32, i32* %add.ptr1711, align 4, !dbg !557
  %863 = call i1 @llvm.is.constant.i32(i32 %862), !dbg !557
  br i1 %863, label %cond.true1712, label %cond.false1728, !dbg !557

cond.true1712:                                    ; preds = %if.end1709
  %864 = load i32*, i32** %mask.addr, align 8, !dbg !557
  %add.ptr1713 = getelementptr i32, i32* %864, i64 4, !dbg !557
  %865 = load i32, i32* %add.ptr1713, align 4, !dbg !557
  %and1714 = and i32 %865, 255, !dbg !557
  %shl1715 = shl i32 %and1714, 24, !dbg !557
  %866 = load i32*, i32** %mask.addr, align 8, !dbg !557
  %add.ptr1716 = getelementptr i32, i32* %866, i64 4, !dbg !557
  %867 = load i32, i32* %add.ptr1716, align 4, !dbg !557
  %and1717 = and i32 %867, 65280, !dbg !557
  %shl1718 = shl i32 %and1717, 8, !dbg !557
  %or1719 = or i32 %shl1715, %shl1718, !dbg !557
  %868 = load i32*, i32** %mask.addr, align 8, !dbg !557
  %add.ptr1720 = getelementptr i32, i32* %868, i64 4, !dbg !557
  %869 = load i32, i32* %add.ptr1720, align 4, !dbg !557
  %and1721 = and i32 %869, 16711680, !dbg !557
  %shr1722 = lshr i32 %and1721, 8, !dbg !557
  %or1723 = or i32 %or1719, %shr1722, !dbg !557
  %870 = load i32*, i32** %mask.addr, align 8, !dbg !557
  %add.ptr1724 = getelementptr i32, i32* %870, i64 4, !dbg !557
  %871 = load i32, i32* %add.ptr1724, align 4, !dbg !557
  %and1725 = and i32 %871, -16777216, !dbg !557
  %shr1726 = lshr i32 %and1725, 24, !dbg !557
  %or1727 = or i32 %or1723, %shr1726, !dbg !557
  br label %cond.end1731, !dbg !557

cond.false1728:                                   ; preds = %if.end1709
  %872 = load i32*, i32** %mask.addr, align 8, !dbg !557
  %add.ptr1729 = getelementptr i32, i32* %872, i64 4, !dbg !557
  %873 = load i32, i32* %add.ptr1729, align 4, !dbg !557
  %call1730 = call i32 @__fswab32(i32 %873) #7, !dbg !557
  br label %cond.end1731, !dbg !557

cond.end1731:                                     ; preds = %cond.false1728, %cond.true1712
  %cond1732 = phi i32 [ %or1727, %cond.true1712 ], [ %call1730, %cond.false1728 ], !dbg !557
  %shr1733 = lshr i32 %cond1732, 14, !dbg !557
  %and1734 = and i32 %shr1733, 1, !dbg !557
  %conv1735 = trunc i32 %and1734 to i8, !dbg !557
  store i8 %conv1735, i8* %m1710, align 1, !dbg !557
  %v1736 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %svlan_tag, i32 0, i32 1, !dbg !557
  %874 = load i32*, i32** %value.addr, align 8, !dbg !557
  %add.ptr1737 = getelementptr i32, i32* %874, i64 4, !dbg !557
  %875 = load i32, i32* %add.ptr1737, align 4, !dbg !557
  %876 = call i1 @llvm.is.constant.i32(i32 %875), !dbg !557
  br i1 %876, label %cond.true1738, label %cond.false1754, !dbg !557

cond.true1738:                                    ; preds = %cond.end1731
  %877 = load i32*, i32** %value.addr, align 8, !dbg !557
  %add.ptr1739 = getelementptr i32, i32* %877, i64 4, !dbg !557
  %878 = load i32, i32* %add.ptr1739, align 4, !dbg !557
  %and1740 = and i32 %878, 255, !dbg !557
  %shl1741 = shl i32 %and1740, 24, !dbg !557
  %879 = load i32*, i32** %value.addr, align 8, !dbg !557
  %add.ptr1742 = getelementptr i32, i32* %879, i64 4, !dbg !557
  %880 = load i32, i32* %add.ptr1742, align 4, !dbg !557
  %and1743 = and i32 %880, 65280, !dbg !557
  %shl1744 = shl i32 %and1743, 8, !dbg !557
  %or1745 = or i32 %shl1741, %shl1744, !dbg !557
  %881 = load i32*, i32** %value.addr, align 8, !dbg !557
  %add.ptr1746 = getelementptr i32, i32* %881, i64 4, !dbg !557
  %882 = load i32, i32* %add.ptr1746, align 4, !dbg !557
  %and1747 = and i32 %882, 16711680, !dbg !557
  %shr1748 = lshr i32 %and1747, 8, !dbg !557
  %or1749 = or i32 %or1745, %shr1748, !dbg !557
  %883 = load i32*, i32** %value.addr, align 8, !dbg !557
  %add.ptr1750 = getelementptr i32, i32* %883, i64 4, !dbg !557
  %884 = load i32, i32* %add.ptr1750, align 4, !dbg !557
  %and1751 = and i32 %884, -16777216, !dbg !557
  %shr1752 = lshr i32 %and1751, 24, !dbg !557
  %or1753 = or i32 %or1749, %shr1752, !dbg !557
  br label %cond.end1757, !dbg !557

cond.false1754:                                   ; preds = %cond.end1731
  %885 = load i32*, i32** %value.addr, align 8, !dbg !557
  %add.ptr1755 = getelementptr i32, i32* %885, i64 4, !dbg !557
  %886 = load i32, i32* %add.ptr1755, align 4, !dbg !557
  %call1756 = call i32 @__fswab32(i32 %886) #7, !dbg !557
  br label %cond.end1757, !dbg !557

cond.end1757:                                     ; preds = %cond.false1754, %cond.true1738
  %cond1758 = phi i32 [ %or1753, %cond.true1738 ], [ %call1756, %cond.false1754 ], !dbg !557
  %shr1759 = lshr i32 %cond1758, 14, !dbg !557
  %and1760 = and i32 %shr1759, 1, !dbg !557
  %conv1761 = trunc i32 %and1760 to i8, !dbg !557
  store i8 %conv1761, i8* %v1736, align 1, !dbg !557
  %m1762 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %svlan_tag, i32 0, i32 0, !dbg !558
  %887 = load i8, i8* %m1762, align 1, !dbg !558
  %tobool1763 = icmp ne i8 %887, 0, !dbg !558
  br i1 %tobool1763, label %if.then1764, label %if.end1767, !dbg !561

if.then1764:                                      ; preds = %cond.end1757
  %888 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !558
  %v1765 = getelementptr inbounds %struct.anon.24, %struct.anon.24* %svlan_tag, i32 0, i32 1, !dbg !558
  %889 = load i8, i8* %v1765, align 1, !dbg !558
  %conv1766 = zext i8 %889 to i32, !dbg !558
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %888, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %conv1766) #6, !dbg !558
  br label %if.end1767, !dbg !558

if.end1767:                                       ; preds = %if.then1764, %cond.end1757
  call void @llvm.dbg.declare(metadata %struct.anon.25* %frag, metadata !562, metadata !DIExpression()), !dbg !568
  %m1768 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %frag, i32 0, i32 0, !dbg !568
  %890 = load i32*, i32** %mask.addr, align 8, !dbg !568
  %add.ptr1769 = getelementptr i32, i32* %890, i64 4, !dbg !568
  %891 = load i32, i32* %add.ptr1769, align 4, !dbg !568
  %892 = call i1 @llvm.is.constant.i32(i32 %891), !dbg !568
  br i1 %892, label %cond.true1770, label %cond.false1786, !dbg !568

cond.true1770:                                    ; preds = %if.end1767
  %893 = load i32*, i32** %mask.addr, align 8, !dbg !568
  %add.ptr1771 = getelementptr i32, i32* %893, i64 4, !dbg !568
  %894 = load i32, i32* %add.ptr1771, align 4, !dbg !568
  %and1772 = and i32 %894, 255, !dbg !568
  %shl1773 = shl i32 %and1772, 24, !dbg !568
  %895 = load i32*, i32** %mask.addr, align 8, !dbg !568
  %add.ptr1774 = getelementptr i32, i32* %895, i64 4, !dbg !568
  %896 = load i32, i32* %add.ptr1774, align 4, !dbg !568
  %and1775 = and i32 %896, 65280, !dbg !568
  %shl1776 = shl i32 %and1775, 8, !dbg !568
  %or1777 = or i32 %shl1773, %shl1776, !dbg !568
  %897 = load i32*, i32** %mask.addr, align 8, !dbg !568
  %add.ptr1778 = getelementptr i32, i32* %897, i64 4, !dbg !568
  %898 = load i32, i32* %add.ptr1778, align 4, !dbg !568
  %and1779 = and i32 %898, 16711680, !dbg !568
  %shr1780 = lshr i32 %and1779, 8, !dbg !568
  %or1781 = or i32 %or1777, %shr1780, !dbg !568
  %899 = load i32*, i32** %mask.addr, align 8, !dbg !568
  %add.ptr1782 = getelementptr i32, i32* %899, i64 4, !dbg !568
  %900 = load i32, i32* %add.ptr1782, align 4, !dbg !568
  %and1783 = and i32 %900, -16777216, !dbg !568
  %shr1784 = lshr i32 %and1783, 24, !dbg !568
  %or1785 = or i32 %or1781, %shr1784, !dbg !568
  br label %cond.end1789, !dbg !568

cond.false1786:                                   ; preds = %if.end1767
  %901 = load i32*, i32** %mask.addr, align 8, !dbg !568
  %add.ptr1787 = getelementptr i32, i32* %901, i64 4, !dbg !568
  %902 = load i32, i32* %add.ptr1787, align 4, !dbg !568
  %call1788 = call i32 @__fswab32(i32 %902) #7, !dbg !568
  br label %cond.end1789, !dbg !568

cond.end1789:                                     ; preds = %cond.false1786, %cond.true1770
  %cond1790 = phi i32 [ %or1785, %cond.true1770 ], [ %call1788, %cond.false1786 ], !dbg !568
  %shr1791 = lshr i32 %cond1790, 13, !dbg !568
  %and1792 = and i32 %shr1791, 1, !dbg !568
  %conv1793 = trunc i32 %and1792 to i8, !dbg !568
  store i8 %conv1793, i8* %m1768, align 1, !dbg !568
  %v1794 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %frag, i32 0, i32 1, !dbg !568
  %903 = load i32*, i32** %value.addr, align 8, !dbg !568
  %add.ptr1795 = getelementptr i32, i32* %903, i64 4, !dbg !568
  %904 = load i32, i32* %add.ptr1795, align 4, !dbg !568
  %905 = call i1 @llvm.is.constant.i32(i32 %904), !dbg !568
  br i1 %905, label %cond.true1796, label %cond.false1812, !dbg !568

cond.true1796:                                    ; preds = %cond.end1789
  %906 = load i32*, i32** %value.addr, align 8, !dbg !568
  %add.ptr1797 = getelementptr i32, i32* %906, i64 4, !dbg !568
  %907 = load i32, i32* %add.ptr1797, align 4, !dbg !568
  %and1798 = and i32 %907, 255, !dbg !568
  %shl1799 = shl i32 %and1798, 24, !dbg !568
  %908 = load i32*, i32** %value.addr, align 8, !dbg !568
  %add.ptr1800 = getelementptr i32, i32* %908, i64 4, !dbg !568
  %909 = load i32, i32* %add.ptr1800, align 4, !dbg !568
  %and1801 = and i32 %909, 65280, !dbg !568
  %shl1802 = shl i32 %and1801, 8, !dbg !568
  %or1803 = or i32 %shl1799, %shl1802, !dbg !568
  %910 = load i32*, i32** %value.addr, align 8, !dbg !568
  %add.ptr1804 = getelementptr i32, i32* %910, i64 4, !dbg !568
  %911 = load i32, i32* %add.ptr1804, align 4, !dbg !568
  %and1805 = and i32 %911, 16711680, !dbg !568
  %shr1806 = lshr i32 %and1805, 8, !dbg !568
  %or1807 = or i32 %or1803, %shr1806, !dbg !568
  %912 = load i32*, i32** %value.addr, align 8, !dbg !568
  %add.ptr1808 = getelementptr i32, i32* %912, i64 4, !dbg !568
  %913 = load i32, i32* %add.ptr1808, align 4, !dbg !568
  %and1809 = and i32 %913, -16777216, !dbg !568
  %shr1810 = lshr i32 %and1809, 24, !dbg !568
  %or1811 = or i32 %or1807, %shr1810, !dbg !568
  br label %cond.end1815, !dbg !568

cond.false1812:                                   ; preds = %cond.end1789
  %914 = load i32*, i32** %value.addr, align 8, !dbg !568
  %add.ptr1813 = getelementptr i32, i32* %914, i64 4, !dbg !568
  %915 = load i32, i32* %add.ptr1813, align 4, !dbg !568
  %call1814 = call i32 @__fswab32(i32 %915) #7, !dbg !568
  br label %cond.end1815, !dbg !568

cond.end1815:                                     ; preds = %cond.false1812, %cond.true1796
  %cond1816 = phi i32 [ %or1811, %cond.true1796 ], [ %call1814, %cond.false1812 ], !dbg !568
  %shr1817 = lshr i32 %cond1816, 13, !dbg !568
  %and1818 = and i32 %shr1817, 1, !dbg !568
  %conv1819 = trunc i32 %and1818 to i8, !dbg !568
  store i8 %conv1819, i8* %v1794, align 1, !dbg !568
  %m1820 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %frag, i32 0, i32 0, !dbg !569
  %916 = load i8, i8* %m1820, align 1, !dbg !569
  %tobool1821 = icmp ne i8 %916, 0, !dbg !569
  br i1 %tobool1821, label %if.then1822, label %if.end1825, !dbg !572

if.then1822:                                      ; preds = %cond.end1815
  %917 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !569
  %v1823 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %frag, i32 0, i32 1, !dbg !569
  %918 = load i8, i8* %v1823, align 1, !dbg !569
  %conv1824 = zext i8 %918 to i32, !dbg !569
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %917, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 %conv1824) #6, !dbg !569
  br label %if.end1825, !dbg !569

if.end1825:                                       ; preds = %if.then1822, %cond.end1815
  ret void, !dbg !573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @print_misc_parameters_hdrs(%struct.trace_seq* %p, i32* %mask, i32* %value) #0 !dbg !574 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %mask.addr = alloca i32*, align 8
  %value.addr = alloca i32*, align 8
  %gre_key = alloca %struct.anon.26, align 8
  %source_sqn = alloca %struct.anon.27, align 4
  %source_port = alloca %struct.anon.28, align 2
  %outer_second_prio = alloca %struct.anon.29, align 1
  %outer_second_cfi = alloca %struct.anon.30, align 1
  %outer_second_vid = alloca %struct.anon.31, align 2
  %inner_second_prio = alloca %struct.anon.32, align 1
  %inner_second_cfi = alloca %struct.anon.33, align 1
  %inner_second_vid = alloca %struct.anon.34, align 2
  %outer_second_cvlan_tag = alloca %struct.anon.35, align 1
  %inner_second_cvlan_tag = alloca %struct.anon.36, align 1
  %outer_second_svlan_tag = alloca %struct.anon.37, align 1
  %inner_second_svlan_tag = alloca %struct.anon.38, align 1
  %gre_protocol = alloca %struct.anon.39, align 1
  %vxlan_vni = alloca %struct.anon.40, align 4
  %outer_ipv6_flow_label = alloca %struct.anon.41, align 4
  %inner_ipv6_flow_label = alloca %struct.anon.42, align 4
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i32* %mask, i32** %mask.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %mask.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata %struct.anon.26* %gre_key, metadata !581, metadata !DIExpression()), !dbg !586
  %m = getelementptr inbounds %struct.anon.26, %struct.anon.26* %gre_key, i32 0, i32 0, !dbg !587
  %0 = load i32*, i32** %mask.addr, align 8, !dbg !588
  %add.ptr = getelementptr i32, i32* %0, i64 4, !dbg !588
  %1 = load i32, i32* %add.ptr, align 4, !dbg !588
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !588
  br i1 %2, label %cond.true, label %cond.false, !dbg !588

cond.true:                                        ; preds = %entry
  %3 = load i32*, i32** %mask.addr, align 8, !dbg !588
  %add.ptr1 = getelementptr i32, i32* %3, i64 4, !dbg !588
  %4 = load i32, i32* %add.ptr1, align 4, !dbg !588
  %and = and i32 %4, 255, !dbg !588
  %shl = shl i32 %and, 24, !dbg !588
  %5 = load i32*, i32** %mask.addr, align 8, !dbg !588
  %add.ptr2 = getelementptr i32, i32* %5, i64 4, !dbg !588
  %6 = load i32, i32* %add.ptr2, align 4, !dbg !588
  %and3 = and i32 %6, 65280, !dbg !588
  %shl4 = shl i32 %and3, 8, !dbg !588
  %or = or i32 %shl, %shl4, !dbg !588
  %7 = load i32*, i32** %mask.addr, align 8, !dbg !588
  %add.ptr5 = getelementptr i32, i32* %7, i64 4, !dbg !588
  %8 = load i32, i32* %add.ptr5, align 4, !dbg !588
  %and6 = and i32 %8, 16711680, !dbg !588
  %shr = lshr i32 %and6, 8, !dbg !588
  %or7 = or i32 %or, %shr, !dbg !588
  %9 = load i32*, i32** %mask.addr, align 8, !dbg !588
  %add.ptr8 = getelementptr i32, i32* %9, i64 4, !dbg !588
  %10 = load i32, i32* %add.ptr8, align 4, !dbg !588
  %and9 = and i32 %10, -16777216, !dbg !588
  %shr10 = lshr i32 %and9, 24, !dbg !588
  %or11 = or i32 %or7, %shr10, !dbg !588
  br label %cond.end, !dbg !588

cond.false:                                       ; preds = %entry
  %11 = load i32*, i32** %mask.addr, align 8, !dbg !588
  %add.ptr12 = getelementptr i32, i32* %11, i64 4, !dbg !588
  %12 = load i32, i32* %add.ptr12, align 4, !dbg !588
  %call = call i32 @__fswab32(i32 %12) #7, !dbg !588
  br label %cond.end, !dbg !588

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ %call, %cond.false ], !dbg !588
  %shr13 = lshr i32 %cond, 8, !dbg !588
  %and14 = and i32 %shr13, 16777215, !dbg !588
  %shl15 = shl i32 %and14, 8, !dbg !589
  %13 = load i32*, i32** %mask.addr, align 8, !dbg !590
  %add.ptr16 = getelementptr i32, i32* %13, i64 4, !dbg !590
  %14 = load i32, i32* %add.ptr16, align 4, !dbg !590
  %15 = call i1 @llvm.is.constant.i32(i32 %14), !dbg !590
  br i1 %15, label %cond.true17, label %cond.false33, !dbg !590

cond.true17:                                      ; preds = %cond.end
  %16 = load i32*, i32** %mask.addr, align 8, !dbg !590
  %add.ptr18 = getelementptr i32, i32* %16, i64 4, !dbg !590
  %17 = load i32, i32* %add.ptr18, align 4, !dbg !590
  %and19 = and i32 %17, 255, !dbg !590
  %shl20 = shl i32 %and19, 24, !dbg !590
  %18 = load i32*, i32** %mask.addr, align 8, !dbg !590
  %add.ptr21 = getelementptr i32, i32* %18, i64 4, !dbg !590
  %19 = load i32, i32* %add.ptr21, align 4, !dbg !590
  %and22 = and i32 %19, 65280, !dbg !590
  %shl23 = shl i32 %and22, 8, !dbg !590
  %or24 = or i32 %shl20, %shl23, !dbg !590
  %20 = load i32*, i32** %mask.addr, align 8, !dbg !590
  %add.ptr25 = getelementptr i32, i32* %20, i64 4, !dbg !590
  %21 = load i32, i32* %add.ptr25, align 4, !dbg !590
  %and26 = and i32 %21, 16711680, !dbg !590
  %shr27 = lshr i32 %and26, 8, !dbg !590
  %or28 = or i32 %or24, %shr27, !dbg !590
  %22 = load i32*, i32** %mask.addr, align 8, !dbg !590
  %add.ptr29 = getelementptr i32, i32* %22, i64 4, !dbg !590
  %23 = load i32, i32* %add.ptr29, align 4, !dbg !590
  %and30 = and i32 %23, -16777216, !dbg !590
  %shr31 = lshr i32 %and30, 24, !dbg !590
  %or32 = or i32 %or28, %shr31, !dbg !590
  br label %cond.end36, !dbg !590

cond.false33:                                     ; preds = %cond.end
  %24 = load i32*, i32** %mask.addr, align 8, !dbg !590
  %add.ptr34 = getelementptr i32, i32* %24, i64 4, !dbg !590
  %25 = load i32, i32* %add.ptr34, align 4, !dbg !590
  %call35 = call i32 @__fswab32(i32 %25) #7, !dbg !590
  br label %cond.end36, !dbg !590

cond.end36:                                       ; preds = %cond.false33, %cond.true17
  %cond37 = phi i32 [ %or32, %cond.true17 ], [ %call35, %cond.false33 ], !dbg !590
  %shr38 = lshr i32 %cond37, 0, !dbg !590
  %and39 = and i32 %shr38, 255, !dbg !590
  %or40 = or i32 %shl15, %and39, !dbg !591
  %conv = zext i32 %or40 to i64, !dbg !588
  store i64 %conv, i64* %m, align 8, !dbg !587
  %v = getelementptr inbounds %struct.anon.26, %struct.anon.26* %gre_key, i32 0, i32 1, !dbg !587
  %26 = load i32*, i32** %value.addr, align 8, !dbg !592
  %add.ptr41 = getelementptr i32, i32* %26, i64 4, !dbg !592
  %27 = load i32, i32* %add.ptr41, align 4, !dbg !592
  %28 = call i1 @llvm.is.constant.i32(i32 %27), !dbg !592
  br i1 %28, label %cond.true42, label %cond.false58, !dbg !592

cond.true42:                                      ; preds = %cond.end36
  %29 = load i32*, i32** %value.addr, align 8, !dbg !592
  %add.ptr43 = getelementptr i32, i32* %29, i64 4, !dbg !592
  %30 = load i32, i32* %add.ptr43, align 4, !dbg !592
  %and44 = and i32 %30, 255, !dbg !592
  %shl45 = shl i32 %and44, 24, !dbg !592
  %31 = load i32*, i32** %value.addr, align 8, !dbg !592
  %add.ptr46 = getelementptr i32, i32* %31, i64 4, !dbg !592
  %32 = load i32, i32* %add.ptr46, align 4, !dbg !592
  %and47 = and i32 %32, 65280, !dbg !592
  %shl48 = shl i32 %and47, 8, !dbg !592
  %or49 = or i32 %shl45, %shl48, !dbg !592
  %33 = load i32*, i32** %value.addr, align 8, !dbg !592
  %add.ptr50 = getelementptr i32, i32* %33, i64 4, !dbg !592
  %34 = load i32, i32* %add.ptr50, align 4, !dbg !592
  %and51 = and i32 %34, 16711680, !dbg !592
  %shr52 = lshr i32 %and51, 8, !dbg !592
  %or53 = or i32 %or49, %shr52, !dbg !592
  %35 = load i32*, i32** %value.addr, align 8, !dbg !592
  %add.ptr54 = getelementptr i32, i32* %35, i64 4, !dbg !592
  %36 = load i32, i32* %add.ptr54, align 4, !dbg !592
  %and55 = and i32 %36, -16777216, !dbg !592
  %shr56 = lshr i32 %and55, 24, !dbg !592
  %or57 = or i32 %or53, %shr56, !dbg !592
  br label %cond.end61, !dbg !592

cond.false58:                                     ; preds = %cond.end36
  %37 = load i32*, i32** %value.addr, align 8, !dbg !592
  %add.ptr59 = getelementptr i32, i32* %37, i64 4, !dbg !592
  %38 = load i32, i32* %add.ptr59, align 4, !dbg !592
  %call60 = call i32 @__fswab32(i32 %38) #7, !dbg !592
  br label %cond.end61, !dbg !592

cond.end61:                                       ; preds = %cond.false58, %cond.true42
  %cond62 = phi i32 [ %or57, %cond.true42 ], [ %call60, %cond.false58 ], !dbg !592
  %shr63 = lshr i32 %cond62, 8, !dbg !592
  %and64 = and i32 %shr63, 16777215, !dbg !592
  %shl65 = shl i32 %and64, 8, !dbg !593
  %39 = load i32*, i32** %value.addr, align 8, !dbg !594
  %add.ptr66 = getelementptr i32, i32* %39, i64 4, !dbg !594
  %40 = load i32, i32* %add.ptr66, align 4, !dbg !594
  %41 = call i1 @llvm.is.constant.i32(i32 %40), !dbg !594
  br i1 %41, label %cond.true67, label %cond.false83, !dbg !594

cond.true67:                                      ; preds = %cond.end61
  %42 = load i32*, i32** %value.addr, align 8, !dbg !594
  %add.ptr68 = getelementptr i32, i32* %42, i64 4, !dbg !594
  %43 = load i32, i32* %add.ptr68, align 4, !dbg !594
  %and69 = and i32 %43, 255, !dbg !594
  %shl70 = shl i32 %and69, 24, !dbg !594
  %44 = load i32*, i32** %value.addr, align 8, !dbg !594
  %add.ptr71 = getelementptr i32, i32* %44, i64 4, !dbg !594
  %45 = load i32, i32* %add.ptr71, align 4, !dbg !594
  %and72 = and i32 %45, 65280, !dbg !594
  %shl73 = shl i32 %and72, 8, !dbg !594
  %or74 = or i32 %shl70, %shl73, !dbg !594
  %46 = load i32*, i32** %value.addr, align 8, !dbg !594
  %add.ptr75 = getelementptr i32, i32* %46, i64 4, !dbg !594
  %47 = load i32, i32* %add.ptr75, align 4, !dbg !594
  %and76 = and i32 %47, 16711680, !dbg !594
  %shr77 = lshr i32 %and76, 8, !dbg !594
  %or78 = or i32 %or74, %shr77, !dbg !594
  %48 = load i32*, i32** %value.addr, align 8, !dbg !594
  %add.ptr79 = getelementptr i32, i32* %48, i64 4, !dbg !594
  %49 = load i32, i32* %add.ptr79, align 4, !dbg !594
  %and80 = and i32 %49, -16777216, !dbg !594
  %shr81 = lshr i32 %and80, 24, !dbg !594
  %or82 = or i32 %or78, %shr81, !dbg !594
  br label %cond.end86, !dbg !594

cond.false83:                                     ; preds = %cond.end61
  %50 = load i32*, i32** %value.addr, align 8, !dbg !594
  %add.ptr84 = getelementptr i32, i32* %50, i64 4, !dbg !594
  %51 = load i32, i32* %add.ptr84, align 4, !dbg !594
  %call85 = call i32 @__fswab32(i32 %51) #7, !dbg !594
  br label %cond.end86, !dbg !594

cond.end86:                                       ; preds = %cond.false83, %cond.true67
  %cond87 = phi i32 [ %or82, %cond.true67 ], [ %call85, %cond.false83 ], !dbg !594
  %shr88 = lshr i32 %cond87, 0, !dbg !594
  %and89 = and i32 %shr88, 255, !dbg !594
  %or90 = or i32 %shl65, %and89, !dbg !595
  %conv91 = zext i32 %or90 to i64, !dbg !592
  store i64 %conv91, i64* %v, align 8, !dbg !587
  %m92 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %gre_key, i32 0, i32 0, !dbg !596
  %52 = load i64, i64* %m92, align 8, !dbg !596
  %tobool = icmp ne i64 %52, 0, !dbg !596
  br i1 %tobool, label %if.then, label %if.end, !dbg !599

if.then:                                          ; preds = %cond.end86
  %53 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !596
  %v93 = getelementptr inbounds %struct.anon.26, %struct.anon.26* %gre_key, i32 0, i32 1, !dbg !596
  %54 = load i64, i64* %v93, align 8, !dbg !596
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i64 %54) #6, !dbg !596
  br label %if.end, !dbg !596

if.end:                                           ; preds = %if.then, %cond.end86
  call void @llvm.dbg.declare(metadata %struct.anon.27* %source_sqn, metadata !600, metadata !DIExpression()), !dbg !606
  %m94 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %source_sqn, i32 0, i32 0, !dbg !606
  %55 = load i32*, i32** %mask.addr, align 8, !dbg !606
  %add.ptr95 = getelementptr i32, i32* %55, i64 0, !dbg !606
  %56 = load i32, i32* %add.ptr95, align 4, !dbg !606
  %57 = call i1 @llvm.is.constant.i32(i32 %56), !dbg !606
  br i1 %57, label %cond.true96, label %cond.false112, !dbg !606

cond.true96:                                      ; preds = %if.end
  %58 = load i32*, i32** %mask.addr, align 8, !dbg !606
  %add.ptr97 = getelementptr i32, i32* %58, i64 0, !dbg !606
  %59 = load i32, i32* %add.ptr97, align 4, !dbg !606
  %and98 = and i32 %59, 255, !dbg !606
  %shl99 = shl i32 %and98, 24, !dbg !606
  %60 = load i32*, i32** %mask.addr, align 8, !dbg !606
  %add.ptr100 = getelementptr i32, i32* %60, i64 0, !dbg !606
  %61 = load i32, i32* %add.ptr100, align 4, !dbg !606
  %and101 = and i32 %61, 65280, !dbg !606
  %shl102 = shl i32 %and101, 8, !dbg !606
  %or103 = or i32 %shl99, %shl102, !dbg !606
  %62 = load i32*, i32** %mask.addr, align 8, !dbg !606
  %add.ptr104 = getelementptr i32, i32* %62, i64 0, !dbg !606
  %63 = load i32, i32* %add.ptr104, align 4, !dbg !606
  %and105 = and i32 %63, 16711680, !dbg !606
  %shr106 = lshr i32 %and105, 8, !dbg !606
  %or107 = or i32 %or103, %shr106, !dbg !606
  %64 = load i32*, i32** %mask.addr, align 8, !dbg !606
  %add.ptr108 = getelementptr i32, i32* %64, i64 0, !dbg !606
  %65 = load i32, i32* %add.ptr108, align 4, !dbg !606
  %and109 = and i32 %65, -16777216, !dbg !606
  %shr110 = lshr i32 %and109, 24, !dbg !606
  %or111 = or i32 %or107, %shr110, !dbg !606
  br label %cond.end115, !dbg !606

cond.false112:                                    ; preds = %if.end
  %66 = load i32*, i32** %mask.addr, align 8, !dbg !606
  %add.ptr113 = getelementptr i32, i32* %66, i64 0, !dbg !606
  %67 = load i32, i32* %add.ptr113, align 4, !dbg !606
  %call114 = call i32 @__fswab32(i32 %67) #7, !dbg !606
  br label %cond.end115, !dbg !606

cond.end115:                                      ; preds = %cond.false112, %cond.true96
  %cond116 = phi i32 [ %or111, %cond.true96 ], [ %call114, %cond.false112 ], !dbg !606
  %shr117 = lshr i32 %cond116, 0, !dbg !606
  %and118 = and i32 %shr117, 16777215, !dbg !606
  store i32 %and118, i32* %m94, align 4, !dbg !606
  %v119 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %source_sqn, i32 0, i32 1, !dbg !606
  %68 = load i32*, i32** %value.addr, align 8, !dbg !606
  %add.ptr120 = getelementptr i32, i32* %68, i64 0, !dbg !606
  %69 = load i32, i32* %add.ptr120, align 4, !dbg !606
  %70 = call i1 @llvm.is.constant.i32(i32 %69), !dbg !606
  br i1 %70, label %cond.true121, label %cond.false137, !dbg !606

cond.true121:                                     ; preds = %cond.end115
  %71 = load i32*, i32** %value.addr, align 8, !dbg !606
  %add.ptr122 = getelementptr i32, i32* %71, i64 0, !dbg !606
  %72 = load i32, i32* %add.ptr122, align 4, !dbg !606
  %and123 = and i32 %72, 255, !dbg !606
  %shl124 = shl i32 %and123, 24, !dbg !606
  %73 = load i32*, i32** %value.addr, align 8, !dbg !606
  %add.ptr125 = getelementptr i32, i32* %73, i64 0, !dbg !606
  %74 = load i32, i32* %add.ptr125, align 4, !dbg !606
  %and126 = and i32 %74, 65280, !dbg !606
  %shl127 = shl i32 %and126, 8, !dbg !606
  %or128 = or i32 %shl124, %shl127, !dbg !606
  %75 = load i32*, i32** %value.addr, align 8, !dbg !606
  %add.ptr129 = getelementptr i32, i32* %75, i64 0, !dbg !606
  %76 = load i32, i32* %add.ptr129, align 4, !dbg !606
  %and130 = and i32 %76, 16711680, !dbg !606
  %shr131 = lshr i32 %and130, 8, !dbg !606
  %or132 = or i32 %or128, %shr131, !dbg !606
  %77 = load i32*, i32** %value.addr, align 8, !dbg !606
  %add.ptr133 = getelementptr i32, i32* %77, i64 0, !dbg !606
  %78 = load i32, i32* %add.ptr133, align 4, !dbg !606
  %and134 = and i32 %78, -16777216, !dbg !606
  %shr135 = lshr i32 %and134, 24, !dbg !606
  %or136 = or i32 %or132, %shr135, !dbg !606
  br label %cond.end140, !dbg !606

cond.false137:                                    ; preds = %cond.end115
  %79 = load i32*, i32** %value.addr, align 8, !dbg !606
  %add.ptr138 = getelementptr i32, i32* %79, i64 0, !dbg !606
  %80 = load i32, i32* %add.ptr138, align 4, !dbg !606
  %call139 = call i32 @__fswab32(i32 %80) #7, !dbg !606
  br label %cond.end140, !dbg !606

cond.end140:                                      ; preds = %cond.false137, %cond.true121
  %cond141 = phi i32 [ %or136, %cond.true121 ], [ %call139, %cond.false137 ], !dbg !606
  %shr142 = lshr i32 %cond141, 0, !dbg !606
  %and143 = and i32 %shr142, 16777215, !dbg !606
  store i32 %and143, i32* %v119, align 4, !dbg !606
  %m144 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %source_sqn, i32 0, i32 0, !dbg !607
  %81 = load i32, i32* %m144, align 4, !dbg !607
  %tobool145 = icmp ne i32 %81, 0, !dbg !607
  br i1 %tobool145, label %if.then146, label %if.end148, !dbg !610

if.then146:                                       ; preds = %cond.end140
  %82 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !607
  %v147 = getelementptr inbounds %struct.anon.27, %struct.anon.27* %source_sqn, i32 0, i32 1, !dbg !607
  %83 = load i32, i32* %v147, align 4, !dbg !607
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %83) #6, !dbg !607
  br label %if.end148, !dbg !607

if.end148:                                        ; preds = %if.then146, %cond.end140
  call void @llvm.dbg.declare(metadata %struct.anon.28* %source_port, metadata !611, metadata !DIExpression()), !dbg !617
  %m149 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %source_port, i32 0, i32 0, !dbg !617
  %84 = load i32*, i32** %mask.addr, align 8, !dbg !617
  %add.ptr150 = getelementptr i32, i32* %84, i64 1, !dbg !617
  %85 = load i32, i32* %add.ptr150, align 4, !dbg !617
  %86 = call i1 @llvm.is.constant.i32(i32 %85), !dbg !617
  br i1 %86, label %cond.true151, label %cond.false167, !dbg !617

cond.true151:                                     ; preds = %if.end148
  %87 = load i32*, i32** %mask.addr, align 8, !dbg !617
  %add.ptr152 = getelementptr i32, i32* %87, i64 1, !dbg !617
  %88 = load i32, i32* %add.ptr152, align 4, !dbg !617
  %and153 = and i32 %88, 255, !dbg !617
  %shl154 = shl i32 %and153, 24, !dbg !617
  %89 = load i32*, i32** %mask.addr, align 8, !dbg !617
  %add.ptr155 = getelementptr i32, i32* %89, i64 1, !dbg !617
  %90 = load i32, i32* %add.ptr155, align 4, !dbg !617
  %and156 = and i32 %90, 65280, !dbg !617
  %shl157 = shl i32 %and156, 8, !dbg !617
  %or158 = or i32 %shl154, %shl157, !dbg !617
  %91 = load i32*, i32** %mask.addr, align 8, !dbg !617
  %add.ptr159 = getelementptr i32, i32* %91, i64 1, !dbg !617
  %92 = load i32, i32* %add.ptr159, align 4, !dbg !617
  %and160 = and i32 %92, 16711680, !dbg !617
  %shr161 = lshr i32 %and160, 8, !dbg !617
  %or162 = or i32 %or158, %shr161, !dbg !617
  %93 = load i32*, i32** %mask.addr, align 8, !dbg !617
  %add.ptr163 = getelementptr i32, i32* %93, i64 1, !dbg !617
  %94 = load i32, i32* %add.ptr163, align 4, !dbg !617
  %and164 = and i32 %94, -16777216, !dbg !617
  %shr165 = lshr i32 %and164, 24, !dbg !617
  %or166 = or i32 %or162, %shr165, !dbg !617
  br label %cond.end170, !dbg !617

cond.false167:                                    ; preds = %if.end148
  %95 = load i32*, i32** %mask.addr, align 8, !dbg !617
  %add.ptr168 = getelementptr i32, i32* %95, i64 1, !dbg !617
  %96 = load i32, i32* %add.ptr168, align 4, !dbg !617
  %call169 = call i32 @__fswab32(i32 %96) #7, !dbg !617
  br label %cond.end170, !dbg !617

cond.end170:                                      ; preds = %cond.false167, %cond.true151
  %cond171 = phi i32 [ %or166, %cond.true151 ], [ %call169, %cond.false167 ], !dbg !617
  %shr172 = lshr i32 %cond171, 0, !dbg !617
  %and173 = and i32 %shr172, 65535, !dbg !617
  %conv174 = trunc i32 %and173 to i16, !dbg !617
  store i16 %conv174, i16* %m149, align 2, !dbg !617
  %v175 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %source_port, i32 0, i32 1, !dbg !617
  %97 = load i32*, i32** %value.addr, align 8, !dbg !617
  %add.ptr176 = getelementptr i32, i32* %97, i64 1, !dbg !617
  %98 = load i32, i32* %add.ptr176, align 4, !dbg !617
  %99 = call i1 @llvm.is.constant.i32(i32 %98), !dbg !617
  br i1 %99, label %cond.true177, label %cond.false193, !dbg !617

cond.true177:                                     ; preds = %cond.end170
  %100 = load i32*, i32** %value.addr, align 8, !dbg !617
  %add.ptr178 = getelementptr i32, i32* %100, i64 1, !dbg !617
  %101 = load i32, i32* %add.ptr178, align 4, !dbg !617
  %and179 = and i32 %101, 255, !dbg !617
  %shl180 = shl i32 %and179, 24, !dbg !617
  %102 = load i32*, i32** %value.addr, align 8, !dbg !617
  %add.ptr181 = getelementptr i32, i32* %102, i64 1, !dbg !617
  %103 = load i32, i32* %add.ptr181, align 4, !dbg !617
  %and182 = and i32 %103, 65280, !dbg !617
  %shl183 = shl i32 %and182, 8, !dbg !617
  %or184 = or i32 %shl180, %shl183, !dbg !617
  %104 = load i32*, i32** %value.addr, align 8, !dbg !617
  %add.ptr185 = getelementptr i32, i32* %104, i64 1, !dbg !617
  %105 = load i32, i32* %add.ptr185, align 4, !dbg !617
  %and186 = and i32 %105, 16711680, !dbg !617
  %shr187 = lshr i32 %and186, 8, !dbg !617
  %or188 = or i32 %or184, %shr187, !dbg !617
  %106 = load i32*, i32** %value.addr, align 8, !dbg !617
  %add.ptr189 = getelementptr i32, i32* %106, i64 1, !dbg !617
  %107 = load i32, i32* %add.ptr189, align 4, !dbg !617
  %and190 = and i32 %107, -16777216, !dbg !617
  %shr191 = lshr i32 %and190, 24, !dbg !617
  %or192 = or i32 %or188, %shr191, !dbg !617
  br label %cond.end196, !dbg !617

cond.false193:                                    ; preds = %cond.end170
  %108 = load i32*, i32** %value.addr, align 8, !dbg !617
  %add.ptr194 = getelementptr i32, i32* %108, i64 1, !dbg !617
  %109 = load i32, i32* %add.ptr194, align 4, !dbg !617
  %call195 = call i32 @__fswab32(i32 %109) #7, !dbg !617
  br label %cond.end196, !dbg !617

cond.end196:                                      ; preds = %cond.false193, %cond.true177
  %cond197 = phi i32 [ %or192, %cond.true177 ], [ %call195, %cond.false193 ], !dbg !617
  %shr198 = lshr i32 %cond197, 0, !dbg !617
  %and199 = and i32 %shr198, 65535, !dbg !617
  %conv200 = trunc i32 %and199 to i16, !dbg !617
  store i16 %conv200, i16* %v175, align 2, !dbg !617
  %m201 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %source_port, i32 0, i32 0, !dbg !618
  %110 = load i16, i16* %m201, align 2, !dbg !618
  %tobool202 = icmp ne i16 %110, 0, !dbg !618
  br i1 %tobool202, label %if.then203, label %if.end206, !dbg !621

if.then203:                                       ; preds = %cond.end196
  %111 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !618
  %v204 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %source_port, i32 0, i32 1, !dbg !618
  %112 = load i16, i16* %v204, align 2, !dbg !618
  %conv205 = zext i16 %112 to i32, !dbg !618
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i32 %conv205) #6, !dbg !618
  br label %if.end206, !dbg !618

if.end206:                                        ; preds = %if.then203, %cond.end196
  call void @llvm.dbg.declare(metadata %struct.anon.29* %outer_second_prio, metadata !622, metadata !DIExpression()), !dbg !628
  %m207 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %outer_second_prio, i32 0, i32 0, !dbg !628
  %113 = load i32*, i32** %mask.addr, align 8, !dbg !628
  %add.ptr208 = getelementptr i32, i32* %113, i64 2, !dbg !628
  %114 = load i32, i32* %add.ptr208, align 4, !dbg !628
  %115 = call i1 @llvm.is.constant.i32(i32 %114), !dbg !628
  br i1 %115, label %cond.true209, label %cond.false225, !dbg !628

cond.true209:                                     ; preds = %if.end206
  %116 = load i32*, i32** %mask.addr, align 8, !dbg !628
  %add.ptr210 = getelementptr i32, i32* %116, i64 2, !dbg !628
  %117 = load i32, i32* %add.ptr210, align 4, !dbg !628
  %and211 = and i32 %117, 255, !dbg !628
  %shl212 = shl i32 %and211, 24, !dbg !628
  %118 = load i32*, i32** %mask.addr, align 8, !dbg !628
  %add.ptr213 = getelementptr i32, i32* %118, i64 2, !dbg !628
  %119 = load i32, i32* %add.ptr213, align 4, !dbg !628
  %and214 = and i32 %119, 65280, !dbg !628
  %shl215 = shl i32 %and214, 8, !dbg !628
  %or216 = or i32 %shl212, %shl215, !dbg !628
  %120 = load i32*, i32** %mask.addr, align 8, !dbg !628
  %add.ptr217 = getelementptr i32, i32* %120, i64 2, !dbg !628
  %121 = load i32, i32* %add.ptr217, align 4, !dbg !628
  %and218 = and i32 %121, 16711680, !dbg !628
  %shr219 = lshr i32 %and218, 8, !dbg !628
  %or220 = or i32 %or216, %shr219, !dbg !628
  %122 = load i32*, i32** %mask.addr, align 8, !dbg !628
  %add.ptr221 = getelementptr i32, i32* %122, i64 2, !dbg !628
  %123 = load i32, i32* %add.ptr221, align 4, !dbg !628
  %and222 = and i32 %123, -16777216, !dbg !628
  %shr223 = lshr i32 %and222, 24, !dbg !628
  %or224 = or i32 %or220, %shr223, !dbg !628
  br label %cond.end228, !dbg !628

cond.false225:                                    ; preds = %if.end206
  %124 = load i32*, i32** %mask.addr, align 8, !dbg !628
  %add.ptr226 = getelementptr i32, i32* %124, i64 2, !dbg !628
  %125 = load i32, i32* %add.ptr226, align 4, !dbg !628
  %call227 = call i32 @__fswab32(i32 %125) #7, !dbg !628
  br label %cond.end228, !dbg !628

cond.end228:                                      ; preds = %cond.false225, %cond.true209
  %cond229 = phi i32 [ %or224, %cond.true209 ], [ %call227, %cond.false225 ], !dbg !628
  %shr230 = lshr i32 %cond229, 29, !dbg !628
  %and231 = and i32 %shr230, 7, !dbg !628
  %conv232 = trunc i32 %and231 to i8, !dbg !628
  store i8 %conv232, i8* %m207, align 1, !dbg !628
  %v233 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %outer_second_prio, i32 0, i32 1, !dbg !628
  %126 = load i32*, i32** %value.addr, align 8, !dbg !628
  %add.ptr234 = getelementptr i32, i32* %126, i64 2, !dbg !628
  %127 = load i32, i32* %add.ptr234, align 4, !dbg !628
  %128 = call i1 @llvm.is.constant.i32(i32 %127), !dbg !628
  br i1 %128, label %cond.true235, label %cond.false251, !dbg !628

cond.true235:                                     ; preds = %cond.end228
  %129 = load i32*, i32** %value.addr, align 8, !dbg !628
  %add.ptr236 = getelementptr i32, i32* %129, i64 2, !dbg !628
  %130 = load i32, i32* %add.ptr236, align 4, !dbg !628
  %and237 = and i32 %130, 255, !dbg !628
  %shl238 = shl i32 %and237, 24, !dbg !628
  %131 = load i32*, i32** %value.addr, align 8, !dbg !628
  %add.ptr239 = getelementptr i32, i32* %131, i64 2, !dbg !628
  %132 = load i32, i32* %add.ptr239, align 4, !dbg !628
  %and240 = and i32 %132, 65280, !dbg !628
  %shl241 = shl i32 %and240, 8, !dbg !628
  %or242 = or i32 %shl238, %shl241, !dbg !628
  %133 = load i32*, i32** %value.addr, align 8, !dbg !628
  %add.ptr243 = getelementptr i32, i32* %133, i64 2, !dbg !628
  %134 = load i32, i32* %add.ptr243, align 4, !dbg !628
  %and244 = and i32 %134, 16711680, !dbg !628
  %shr245 = lshr i32 %and244, 8, !dbg !628
  %or246 = or i32 %or242, %shr245, !dbg !628
  %135 = load i32*, i32** %value.addr, align 8, !dbg !628
  %add.ptr247 = getelementptr i32, i32* %135, i64 2, !dbg !628
  %136 = load i32, i32* %add.ptr247, align 4, !dbg !628
  %and248 = and i32 %136, -16777216, !dbg !628
  %shr249 = lshr i32 %and248, 24, !dbg !628
  %or250 = or i32 %or246, %shr249, !dbg !628
  br label %cond.end254, !dbg !628

cond.false251:                                    ; preds = %cond.end228
  %137 = load i32*, i32** %value.addr, align 8, !dbg !628
  %add.ptr252 = getelementptr i32, i32* %137, i64 2, !dbg !628
  %138 = load i32, i32* %add.ptr252, align 4, !dbg !628
  %call253 = call i32 @__fswab32(i32 %138) #7, !dbg !628
  br label %cond.end254, !dbg !628

cond.end254:                                      ; preds = %cond.false251, %cond.true235
  %cond255 = phi i32 [ %or250, %cond.true235 ], [ %call253, %cond.false251 ], !dbg !628
  %shr256 = lshr i32 %cond255, 29, !dbg !628
  %and257 = and i32 %shr256, 7, !dbg !628
  %conv258 = trunc i32 %and257 to i8, !dbg !628
  store i8 %conv258, i8* %v233, align 1, !dbg !628
  %m259 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %outer_second_prio, i32 0, i32 0, !dbg !629
  %139 = load i8, i8* %m259, align 1, !dbg !629
  %tobool260 = icmp ne i8 %139, 0, !dbg !629
  br i1 %tobool260, label %if.then261, label %if.end264, !dbg !632

if.then261:                                       ; preds = %cond.end254
  %140 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !629
  %v262 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %outer_second_prio, i32 0, i32 1, !dbg !629
  %141 = load i8, i8* %v262, align 1, !dbg !629
  %conv263 = zext i8 %141 to i32, !dbg !629
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 %conv263) #6, !dbg !629
  br label %if.end264, !dbg !629

if.end264:                                        ; preds = %if.then261, %cond.end254
  call void @llvm.dbg.declare(metadata %struct.anon.30* %outer_second_cfi, metadata !633, metadata !DIExpression()), !dbg !639
  %m265 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %outer_second_cfi, i32 0, i32 0, !dbg !639
  %142 = load i32*, i32** %mask.addr, align 8, !dbg !639
  %add.ptr266 = getelementptr i32, i32* %142, i64 2, !dbg !639
  %143 = load i32, i32* %add.ptr266, align 4, !dbg !639
  %144 = call i1 @llvm.is.constant.i32(i32 %143), !dbg !639
  br i1 %144, label %cond.true267, label %cond.false283, !dbg !639

cond.true267:                                     ; preds = %if.end264
  %145 = load i32*, i32** %mask.addr, align 8, !dbg !639
  %add.ptr268 = getelementptr i32, i32* %145, i64 2, !dbg !639
  %146 = load i32, i32* %add.ptr268, align 4, !dbg !639
  %and269 = and i32 %146, 255, !dbg !639
  %shl270 = shl i32 %and269, 24, !dbg !639
  %147 = load i32*, i32** %mask.addr, align 8, !dbg !639
  %add.ptr271 = getelementptr i32, i32* %147, i64 2, !dbg !639
  %148 = load i32, i32* %add.ptr271, align 4, !dbg !639
  %and272 = and i32 %148, 65280, !dbg !639
  %shl273 = shl i32 %and272, 8, !dbg !639
  %or274 = or i32 %shl270, %shl273, !dbg !639
  %149 = load i32*, i32** %mask.addr, align 8, !dbg !639
  %add.ptr275 = getelementptr i32, i32* %149, i64 2, !dbg !639
  %150 = load i32, i32* %add.ptr275, align 4, !dbg !639
  %and276 = and i32 %150, 16711680, !dbg !639
  %shr277 = lshr i32 %and276, 8, !dbg !639
  %or278 = or i32 %or274, %shr277, !dbg !639
  %151 = load i32*, i32** %mask.addr, align 8, !dbg !639
  %add.ptr279 = getelementptr i32, i32* %151, i64 2, !dbg !639
  %152 = load i32, i32* %add.ptr279, align 4, !dbg !639
  %and280 = and i32 %152, -16777216, !dbg !639
  %shr281 = lshr i32 %and280, 24, !dbg !639
  %or282 = or i32 %or278, %shr281, !dbg !639
  br label %cond.end286, !dbg !639

cond.false283:                                    ; preds = %if.end264
  %153 = load i32*, i32** %mask.addr, align 8, !dbg !639
  %add.ptr284 = getelementptr i32, i32* %153, i64 2, !dbg !639
  %154 = load i32, i32* %add.ptr284, align 4, !dbg !639
  %call285 = call i32 @__fswab32(i32 %154) #7, !dbg !639
  br label %cond.end286, !dbg !639

cond.end286:                                      ; preds = %cond.false283, %cond.true267
  %cond287 = phi i32 [ %or282, %cond.true267 ], [ %call285, %cond.false283 ], !dbg !639
  %shr288 = lshr i32 %cond287, 28, !dbg !639
  %and289 = and i32 %shr288, 1, !dbg !639
  %conv290 = trunc i32 %and289 to i8, !dbg !639
  store i8 %conv290, i8* %m265, align 1, !dbg !639
  %v291 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %outer_second_cfi, i32 0, i32 1, !dbg !639
  %155 = load i32*, i32** %value.addr, align 8, !dbg !639
  %add.ptr292 = getelementptr i32, i32* %155, i64 2, !dbg !639
  %156 = load i32, i32* %add.ptr292, align 4, !dbg !639
  %157 = call i1 @llvm.is.constant.i32(i32 %156), !dbg !639
  br i1 %157, label %cond.true293, label %cond.false309, !dbg !639

cond.true293:                                     ; preds = %cond.end286
  %158 = load i32*, i32** %value.addr, align 8, !dbg !639
  %add.ptr294 = getelementptr i32, i32* %158, i64 2, !dbg !639
  %159 = load i32, i32* %add.ptr294, align 4, !dbg !639
  %and295 = and i32 %159, 255, !dbg !639
  %shl296 = shl i32 %and295, 24, !dbg !639
  %160 = load i32*, i32** %value.addr, align 8, !dbg !639
  %add.ptr297 = getelementptr i32, i32* %160, i64 2, !dbg !639
  %161 = load i32, i32* %add.ptr297, align 4, !dbg !639
  %and298 = and i32 %161, 65280, !dbg !639
  %shl299 = shl i32 %and298, 8, !dbg !639
  %or300 = or i32 %shl296, %shl299, !dbg !639
  %162 = load i32*, i32** %value.addr, align 8, !dbg !639
  %add.ptr301 = getelementptr i32, i32* %162, i64 2, !dbg !639
  %163 = load i32, i32* %add.ptr301, align 4, !dbg !639
  %and302 = and i32 %163, 16711680, !dbg !639
  %shr303 = lshr i32 %and302, 8, !dbg !639
  %or304 = or i32 %or300, %shr303, !dbg !639
  %164 = load i32*, i32** %value.addr, align 8, !dbg !639
  %add.ptr305 = getelementptr i32, i32* %164, i64 2, !dbg !639
  %165 = load i32, i32* %add.ptr305, align 4, !dbg !639
  %and306 = and i32 %165, -16777216, !dbg !639
  %shr307 = lshr i32 %and306, 24, !dbg !639
  %or308 = or i32 %or304, %shr307, !dbg !639
  br label %cond.end312, !dbg !639

cond.false309:                                    ; preds = %cond.end286
  %166 = load i32*, i32** %value.addr, align 8, !dbg !639
  %add.ptr310 = getelementptr i32, i32* %166, i64 2, !dbg !639
  %167 = load i32, i32* %add.ptr310, align 4, !dbg !639
  %call311 = call i32 @__fswab32(i32 %167) #7, !dbg !639
  br label %cond.end312, !dbg !639

cond.end312:                                      ; preds = %cond.false309, %cond.true293
  %cond313 = phi i32 [ %or308, %cond.true293 ], [ %call311, %cond.false309 ], !dbg !639
  %shr314 = lshr i32 %cond313, 28, !dbg !639
  %and315 = and i32 %shr314, 1, !dbg !639
  %conv316 = trunc i32 %and315 to i8, !dbg !639
  store i8 %conv316, i8* %v291, align 1, !dbg !639
  %m317 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %outer_second_cfi, i32 0, i32 0, !dbg !640
  %168 = load i8, i8* %m317, align 1, !dbg !640
  %tobool318 = icmp ne i8 %168, 0, !dbg !640
  br i1 %tobool318, label %if.then319, label %if.end322, !dbg !643

if.then319:                                       ; preds = %cond.end312
  %169 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !640
  %v320 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %outer_second_cfi, i32 0, i32 1, !dbg !640
  %170 = load i8, i8* %v320, align 1, !dbg !640
  %conv321 = zext i8 %170 to i32, !dbg !640
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i32 %conv321) #6, !dbg !640
  br label %if.end322, !dbg !640

if.end322:                                        ; preds = %if.then319, %cond.end312
  call void @llvm.dbg.declare(metadata %struct.anon.31* %outer_second_vid, metadata !644, metadata !DIExpression()), !dbg !650
  %m323 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %outer_second_vid, i32 0, i32 0, !dbg !650
  %171 = load i32*, i32** %mask.addr, align 8, !dbg !650
  %add.ptr324 = getelementptr i32, i32* %171, i64 2, !dbg !650
  %172 = load i32, i32* %add.ptr324, align 4, !dbg !650
  %173 = call i1 @llvm.is.constant.i32(i32 %172), !dbg !650
  br i1 %173, label %cond.true325, label %cond.false341, !dbg !650

cond.true325:                                     ; preds = %if.end322
  %174 = load i32*, i32** %mask.addr, align 8, !dbg !650
  %add.ptr326 = getelementptr i32, i32* %174, i64 2, !dbg !650
  %175 = load i32, i32* %add.ptr326, align 4, !dbg !650
  %and327 = and i32 %175, 255, !dbg !650
  %shl328 = shl i32 %and327, 24, !dbg !650
  %176 = load i32*, i32** %mask.addr, align 8, !dbg !650
  %add.ptr329 = getelementptr i32, i32* %176, i64 2, !dbg !650
  %177 = load i32, i32* %add.ptr329, align 4, !dbg !650
  %and330 = and i32 %177, 65280, !dbg !650
  %shl331 = shl i32 %and330, 8, !dbg !650
  %or332 = or i32 %shl328, %shl331, !dbg !650
  %178 = load i32*, i32** %mask.addr, align 8, !dbg !650
  %add.ptr333 = getelementptr i32, i32* %178, i64 2, !dbg !650
  %179 = load i32, i32* %add.ptr333, align 4, !dbg !650
  %and334 = and i32 %179, 16711680, !dbg !650
  %shr335 = lshr i32 %and334, 8, !dbg !650
  %or336 = or i32 %or332, %shr335, !dbg !650
  %180 = load i32*, i32** %mask.addr, align 8, !dbg !650
  %add.ptr337 = getelementptr i32, i32* %180, i64 2, !dbg !650
  %181 = load i32, i32* %add.ptr337, align 4, !dbg !650
  %and338 = and i32 %181, -16777216, !dbg !650
  %shr339 = lshr i32 %and338, 24, !dbg !650
  %or340 = or i32 %or336, %shr339, !dbg !650
  br label %cond.end344, !dbg !650

cond.false341:                                    ; preds = %if.end322
  %182 = load i32*, i32** %mask.addr, align 8, !dbg !650
  %add.ptr342 = getelementptr i32, i32* %182, i64 2, !dbg !650
  %183 = load i32, i32* %add.ptr342, align 4, !dbg !650
  %call343 = call i32 @__fswab32(i32 %183) #7, !dbg !650
  br label %cond.end344, !dbg !650

cond.end344:                                      ; preds = %cond.false341, %cond.true325
  %cond345 = phi i32 [ %or340, %cond.true325 ], [ %call343, %cond.false341 ], !dbg !650
  %shr346 = lshr i32 %cond345, 16, !dbg !650
  %and347 = and i32 %shr346, 4095, !dbg !650
  %conv348 = trunc i32 %and347 to i16, !dbg !650
  store i16 %conv348, i16* %m323, align 2, !dbg !650
  %v349 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %outer_second_vid, i32 0, i32 1, !dbg !650
  %184 = load i32*, i32** %value.addr, align 8, !dbg !650
  %add.ptr350 = getelementptr i32, i32* %184, i64 2, !dbg !650
  %185 = load i32, i32* %add.ptr350, align 4, !dbg !650
  %186 = call i1 @llvm.is.constant.i32(i32 %185), !dbg !650
  br i1 %186, label %cond.true351, label %cond.false367, !dbg !650

cond.true351:                                     ; preds = %cond.end344
  %187 = load i32*, i32** %value.addr, align 8, !dbg !650
  %add.ptr352 = getelementptr i32, i32* %187, i64 2, !dbg !650
  %188 = load i32, i32* %add.ptr352, align 4, !dbg !650
  %and353 = and i32 %188, 255, !dbg !650
  %shl354 = shl i32 %and353, 24, !dbg !650
  %189 = load i32*, i32** %value.addr, align 8, !dbg !650
  %add.ptr355 = getelementptr i32, i32* %189, i64 2, !dbg !650
  %190 = load i32, i32* %add.ptr355, align 4, !dbg !650
  %and356 = and i32 %190, 65280, !dbg !650
  %shl357 = shl i32 %and356, 8, !dbg !650
  %or358 = or i32 %shl354, %shl357, !dbg !650
  %191 = load i32*, i32** %value.addr, align 8, !dbg !650
  %add.ptr359 = getelementptr i32, i32* %191, i64 2, !dbg !650
  %192 = load i32, i32* %add.ptr359, align 4, !dbg !650
  %and360 = and i32 %192, 16711680, !dbg !650
  %shr361 = lshr i32 %and360, 8, !dbg !650
  %or362 = or i32 %or358, %shr361, !dbg !650
  %193 = load i32*, i32** %value.addr, align 8, !dbg !650
  %add.ptr363 = getelementptr i32, i32* %193, i64 2, !dbg !650
  %194 = load i32, i32* %add.ptr363, align 4, !dbg !650
  %and364 = and i32 %194, -16777216, !dbg !650
  %shr365 = lshr i32 %and364, 24, !dbg !650
  %or366 = or i32 %or362, %shr365, !dbg !650
  br label %cond.end370, !dbg !650

cond.false367:                                    ; preds = %cond.end344
  %195 = load i32*, i32** %value.addr, align 8, !dbg !650
  %add.ptr368 = getelementptr i32, i32* %195, i64 2, !dbg !650
  %196 = load i32, i32* %add.ptr368, align 4, !dbg !650
  %call369 = call i32 @__fswab32(i32 %196) #7, !dbg !650
  br label %cond.end370, !dbg !650

cond.end370:                                      ; preds = %cond.false367, %cond.true351
  %cond371 = phi i32 [ %or366, %cond.true351 ], [ %call369, %cond.false367 ], !dbg !650
  %shr372 = lshr i32 %cond371, 16, !dbg !650
  %and373 = and i32 %shr372, 4095, !dbg !650
  %conv374 = trunc i32 %and373 to i16, !dbg !650
  store i16 %conv374, i16* %v349, align 2, !dbg !650
  %m375 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %outer_second_vid, i32 0, i32 0, !dbg !651
  %197 = load i16, i16* %m375, align 2, !dbg !651
  %tobool376 = icmp ne i16 %197, 0, !dbg !651
  br i1 %tobool376, label %if.then377, label %if.end380, !dbg !654

if.then377:                                       ; preds = %cond.end370
  %198 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !651
  %v378 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %outer_second_vid, i32 0, i32 1, !dbg !651
  %199 = load i16, i16* %v378, align 2, !dbg !651
  %conv379 = zext i16 %199 to i32, !dbg !651
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i32 %conv379) #6, !dbg !651
  br label %if.end380, !dbg !651

if.end380:                                        ; preds = %if.then377, %cond.end370
  call void @llvm.dbg.declare(metadata %struct.anon.32* %inner_second_prio, metadata !655, metadata !DIExpression()), !dbg !661
  %m381 = getelementptr inbounds %struct.anon.32, %struct.anon.32* %inner_second_prio, i32 0, i32 0, !dbg !661
  %200 = load i32*, i32** %mask.addr, align 8, !dbg !661
  %add.ptr382 = getelementptr i32, i32* %200, i64 2, !dbg !661
  %201 = load i32, i32* %add.ptr382, align 4, !dbg !661
  %202 = call i1 @llvm.is.constant.i32(i32 %201), !dbg !661
  br i1 %202, label %cond.true383, label %cond.false399, !dbg !661

cond.true383:                                     ; preds = %if.end380
  %203 = load i32*, i32** %mask.addr, align 8, !dbg !661
  %add.ptr384 = getelementptr i32, i32* %203, i64 2, !dbg !661
  %204 = load i32, i32* %add.ptr384, align 4, !dbg !661
  %and385 = and i32 %204, 255, !dbg !661
  %shl386 = shl i32 %and385, 24, !dbg !661
  %205 = load i32*, i32** %mask.addr, align 8, !dbg !661
  %add.ptr387 = getelementptr i32, i32* %205, i64 2, !dbg !661
  %206 = load i32, i32* %add.ptr387, align 4, !dbg !661
  %and388 = and i32 %206, 65280, !dbg !661
  %shl389 = shl i32 %and388, 8, !dbg !661
  %or390 = or i32 %shl386, %shl389, !dbg !661
  %207 = load i32*, i32** %mask.addr, align 8, !dbg !661
  %add.ptr391 = getelementptr i32, i32* %207, i64 2, !dbg !661
  %208 = load i32, i32* %add.ptr391, align 4, !dbg !661
  %and392 = and i32 %208, 16711680, !dbg !661
  %shr393 = lshr i32 %and392, 8, !dbg !661
  %or394 = or i32 %or390, %shr393, !dbg !661
  %209 = load i32*, i32** %mask.addr, align 8, !dbg !661
  %add.ptr395 = getelementptr i32, i32* %209, i64 2, !dbg !661
  %210 = load i32, i32* %add.ptr395, align 4, !dbg !661
  %and396 = and i32 %210, -16777216, !dbg !661
  %shr397 = lshr i32 %and396, 24, !dbg !661
  %or398 = or i32 %or394, %shr397, !dbg !661
  br label %cond.end402, !dbg !661

cond.false399:                                    ; preds = %if.end380
  %211 = load i32*, i32** %mask.addr, align 8, !dbg !661
  %add.ptr400 = getelementptr i32, i32* %211, i64 2, !dbg !661
  %212 = load i32, i32* %add.ptr400, align 4, !dbg !661
  %call401 = call i32 @__fswab32(i32 %212) #7, !dbg !661
  br label %cond.end402, !dbg !661

cond.end402:                                      ; preds = %cond.false399, %cond.true383
  %cond403 = phi i32 [ %or398, %cond.true383 ], [ %call401, %cond.false399 ], !dbg !661
  %shr404 = lshr i32 %cond403, 13, !dbg !661
  %and405 = and i32 %shr404, 7, !dbg !661
  %conv406 = trunc i32 %and405 to i8, !dbg !661
  store i8 %conv406, i8* %m381, align 1, !dbg !661
  %v407 = getelementptr inbounds %struct.anon.32, %struct.anon.32* %inner_second_prio, i32 0, i32 1, !dbg !661
  %213 = load i32*, i32** %value.addr, align 8, !dbg !661
  %add.ptr408 = getelementptr i32, i32* %213, i64 2, !dbg !661
  %214 = load i32, i32* %add.ptr408, align 4, !dbg !661
  %215 = call i1 @llvm.is.constant.i32(i32 %214), !dbg !661
  br i1 %215, label %cond.true409, label %cond.false425, !dbg !661

cond.true409:                                     ; preds = %cond.end402
  %216 = load i32*, i32** %value.addr, align 8, !dbg !661
  %add.ptr410 = getelementptr i32, i32* %216, i64 2, !dbg !661
  %217 = load i32, i32* %add.ptr410, align 4, !dbg !661
  %and411 = and i32 %217, 255, !dbg !661
  %shl412 = shl i32 %and411, 24, !dbg !661
  %218 = load i32*, i32** %value.addr, align 8, !dbg !661
  %add.ptr413 = getelementptr i32, i32* %218, i64 2, !dbg !661
  %219 = load i32, i32* %add.ptr413, align 4, !dbg !661
  %and414 = and i32 %219, 65280, !dbg !661
  %shl415 = shl i32 %and414, 8, !dbg !661
  %or416 = or i32 %shl412, %shl415, !dbg !661
  %220 = load i32*, i32** %value.addr, align 8, !dbg !661
  %add.ptr417 = getelementptr i32, i32* %220, i64 2, !dbg !661
  %221 = load i32, i32* %add.ptr417, align 4, !dbg !661
  %and418 = and i32 %221, 16711680, !dbg !661
  %shr419 = lshr i32 %and418, 8, !dbg !661
  %or420 = or i32 %or416, %shr419, !dbg !661
  %222 = load i32*, i32** %value.addr, align 8, !dbg !661
  %add.ptr421 = getelementptr i32, i32* %222, i64 2, !dbg !661
  %223 = load i32, i32* %add.ptr421, align 4, !dbg !661
  %and422 = and i32 %223, -16777216, !dbg !661
  %shr423 = lshr i32 %and422, 24, !dbg !661
  %or424 = or i32 %or420, %shr423, !dbg !661
  br label %cond.end428, !dbg !661

cond.false425:                                    ; preds = %cond.end402
  %224 = load i32*, i32** %value.addr, align 8, !dbg !661
  %add.ptr426 = getelementptr i32, i32* %224, i64 2, !dbg !661
  %225 = load i32, i32* %add.ptr426, align 4, !dbg !661
  %call427 = call i32 @__fswab32(i32 %225) #7, !dbg !661
  br label %cond.end428, !dbg !661

cond.end428:                                      ; preds = %cond.false425, %cond.true409
  %cond429 = phi i32 [ %or424, %cond.true409 ], [ %call427, %cond.false425 ], !dbg !661
  %shr430 = lshr i32 %cond429, 13, !dbg !661
  %and431 = and i32 %shr430, 7, !dbg !661
  %conv432 = trunc i32 %and431 to i8, !dbg !661
  store i8 %conv432, i8* %v407, align 1, !dbg !661
  %m433 = getelementptr inbounds %struct.anon.32, %struct.anon.32* %inner_second_prio, i32 0, i32 0, !dbg !662
  %226 = load i8, i8* %m433, align 1, !dbg !662
  %tobool434 = icmp ne i8 %226, 0, !dbg !662
  br i1 %tobool434, label %if.then435, label %if.end438, !dbg !665

if.then435:                                       ; preds = %cond.end428
  %227 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !662
  %v436 = getelementptr inbounds %struct.anon.32, %struct.anon.32* %inner_second_prio, i32 0, i32 1, !dbg !662
  %228 = load i8, i8* %v436, align 1, !dbg !662
  %conv437 = zext i8 %228 to i32, !dbg !662
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %227, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 %conv437) #6, !dbg !662
  br label %if.end438, !dbg !662

if.end438:                                        ; preds = %if.then435, %cond.end428
  call void @llvm.dbg.declare(metadata %struct.anon.33* %inner_second_cfi, metadata !666, metadata !DIExpression()), !dbg !672
  %m439 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %inner_second_cfi, i32 0, i32 0, !dbg !672
  %229 = load i32*, i32** %mask.addr, align 8, !dbg !672
  %add.ptr440 = getelementptr i32, i32* %229, i64 2, !dbg !672
  %230 = load i32, i32* %add.ptr440, align 4, !dbg !672
  %231 = call i1 @llvm.is.constant.i32(i32 %230), !dbg !672
  br i1 %231, label %cond.true441, label %cond.false457, !dbg !672

cond.true441:                                     ; preds = %if.end438
  %232 = load i32*, i32** %mask.addr, align 8, !dbg !672
  %add.ptr442 = getelementptr i32, i32* %232, i64 2, !dbg !672
  %233 = load i32, i32* %add.ptr442, align 4, !dbg !672
  %and443 = and i32 %233, 255, !dbg !672
  %shl444 = shl i32 %and443, 24, !dbg !672
  %234 = load i32*, i32** %mask.addr, align 8, !dbg !672
  %add.ptr445 = getelementptr i32, i32* %234, i64 2, !dbg !672
  %235 = load i32, i32* %add.ptr445, align 4, !dbg !672
  %and446 = and i32 %235, 65280, !dbg !672
  %shl447 = shl i32 %and446, 8, !dbg !672
  %or448 = or i32 %shl444, %shl447, !dbg !672
  %236 = load i32*, i32** %mask.addr, align 8, !dbg !672
  %add.ptr449 = getelementptr i32, i32* %236, i64 2, !dbg !672
  %237 = load i32, i32* %add.ptr449, align 4, !dbg !672
  %and450 = and i32 %237, 16711680, !dbg !672
  %shr451 = lshr i32 %and450, 8, !dbg !672
  %or452 = or i32 %or448, %shr451, !dbg !672
  %238 = load i32*, i32** %mask.addr, align 8, !dbg !672
  %add.ptr453 = getelementptr i32, i32* %238, i64 2, !dbg !672
  %239 = load i32, i32* %add.ptr453, align 4, !dbg !672
  %and454 = and i32 %239, -16777216, !dbg !672
  %shr455 = lshr i32 %and454, 24, !dbg !672
  %or456 = or i32 %or452, %shr455, !dbg !672
  br label %cond.end460, !dbg !672

cond.false457:                                    ; preds = %if.end438
  %240 = load i32*, i32** %mask.addr, align 8, !dbg !672
  %add.ptr458 = getelementptr i32, i32* %240, i64 2, !dbg !672
  %241 = load i32, i32* %add.ptr458, align 4, !dbg !672
  %call459 = call i32 @__fswab32(i32 %241) #7, !dbg !672
  br label %cond.end460, !dbg !672

cond.end460:                                      ; preds = %cond.false457, %cond.true441
  %cond461 = phi i32 [ %or456, %cond.true441 ], [ %call459, %cond.false457 ], !dbg !672
  %shr462 = lshr i32 %cond461, 12, !dbg !672
  %and463 = and i32 %shr462, 1, !dbg !672
  %conv464 = trunc i32 %and463 to i8, !dbg !672
  store i8 %conv464, i8* %m439, align 1, !dbg !672
  %v465 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %inner_second_cfi, i32 0, i32 1, !dbg !672
  %242 = load i32*, i32** %value.addr, align 8, !dbg !672
  %add.ptr466 = getelementptr i32, i32* %242, i64 2, !dbg !672
  %243 = load i32, i32* %add.ptr466, align 4, !dbg !672
  %244 = call i1 @llvm.is.constant.i32(i32 %243), !dbg !672
  br i1 %244, label %cond.true467, label %cond.false483, !dbg !672

cond.true467:                                     ; preds = %cond.end460
  %245 = load i32*, i32** %value.addr, align 8, !dbg !672
  %add.ptr468 = getelementptr i32, i32* %245, i64 2, !dbg !672
  %246 = load i32, i32* %add.ptr468, align 4, !dbg !672
  %and469 = and i32 %246, 255, !dbg !672
  %shl470 = shl i32 %and469, 24, !dbg !672
  %247 = load i32*, i32** %value.addr, align 8, !dbg !672
  %add.ptr471 = getelementptr i32, i32* %247, i64 2, !dbg !672
  %248 = load i32, i32* %add.ptr471, align 4, !dbg !672
  %and472 = and i32 %248, 65280, !dbg !672
  %shl473 = shl i32 %and472, 8, !dbg !672
  %or474 = or i32 %shl470, %shl473, !dbg !672
  %249 = load i32*, i32** %value.addr, align 8, !dbg !672
  %add.ptr475 = getelementptr i32, i32* %249, i64 2, !dbg !672
  %250 = load i32, i32* %add.ptr475, align 4, !dbg !672
  %and476 = and i32 %250, 16711680, !dbg !672
  %shr477 = lshr i32 %and476, 8, !dbg !672
  %or478 = or i32 %or474, %shr477, !dbg !672
  %251 = load i32*, i32** %value.addr, align 8, !dbg !672
  %add.ptr479 = getelementptr i32, i32* %251, i64 2, !dbg !672
  %252 = load i32, i32* %add.ptr479, align 4, !dbg !672
  %and480 = and i32 %252, -16777216, !dbg !672
  %shr481 = lshr i32 %and480, 24, !dbg !672
  %or482 = or i32 %or478, %shr481, !dbg !672
  br label %cond.end486, !dbg !672

cond.false483:                                    ; preds = %cond.end460
  %253 = load i32*, i32** %value.addr, align 8, !dbg !672
  %add.ptr484 = getelementptr i32, i32* %253, i64 2, !dbg !672
  %254 = load i32, i32* %add.ptr484, align 4, !dbg !672
  %call485 = call i32 @__fswab32(i32 %254) #7, !dbg !672
  br label %cond.end486, !dbg !672

cond.end486:                                      ; preds = %cond.false483, %cond.true467
  %cond487 = phi i32 [ %or482, %cond.true467 ], [ %call485, %cond.false483 ], !dbg !672
  %shr488 = lshr i32 %cond487, 12, !dbg !672
  %and489 = and i32 %shr488, 1, !dbg !672
  %conv490 = trunc i32 %and489 to i8, !dbg !672
  store i8 %conv490, i8* %v465, align 1, !dbg !672
  %m491 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %inner_second_cfi, i32 0, i32 0, !dbg !673
  %255 = load i8, i8* %m491, align 1, !dbg !673
  %tobool492 = icmp ne i8 %255, 0, !dbg !673
  br i1 %tobool492, label %if.then493, label %if.end496, !dbg !676

if.then493:                                       ; preds = %cond.end486
  %256 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !673
  %v494 = getelementptr inbounds %struct.anon.33, %struct.anon.33* %inner_second_cfi, i32 0, i32 1, !dbg !673
  %257 = load i8, i8* %v494, align 1, !dbg !673
  %conv495 = zext i8 %257 to i32, !dbg !673
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i32 %conv495) #6, !dbg !673
  br label %if.end496, !dbg !673

if.end496:                                        ; preds = %if.then493, %cond.end486
  call void @llvm.dbg.declare(metadata %struct.anon.34* %inner_second_vid, metadata !677, metadata !DIExpression()), !dbg !683
  %m497 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %inner_second_vid, i32 0, i32 0, !dbg !683
  %258 = load i32*, i32** %mask.addr, align 8, !dbg !683
  %add.ptr498 = getelementptr i32, i32* %258, i64 2, !dbg !683
  %259 = load i32, i32* %add.ptr498, align 4, !dbg !683
  %260 = call i1 @llvm.is.constant.i32(i32 %259), !dbg !683
  br i1 %260, label %cond.true499, label %cond.false515, !dbg !683

cond.true499:                                     ; preds = %if.end496
  %261 = load i32*, i32** %mask.addr, align 8, !dbg !683
  %add.ptr500 = getelementptr i32, i32* %261, i64 2, !dbg !683
  %262 = load i32, i32* %add.ptr500, align 4, !dbg !683
  %and501 = and i32 %262, 255, !dbg !683
  %shl502 = shl i32 %and501, 24, !dbg !683
  %263 = load i32*, i32** %mask.addr, align 8, !dbg !683
  %add.ptr503 = getelementptr i32, i32* %263, i64 2, !dbg !683
  %264 = load i32, i32* %add.ptr503, align 4, !dbg !683
  %and504 = and i32 %264, 65280, !dbg !683
  %shl505 = shl i32 %and504, 8, !dbg !683
  %or506 = or i32 %shl502, %shl505, !dbg !683
  %265 = load i32*, i32** %mask.addr, align 8, !dbg !683
  %add.ptr507 = getelementptr i32, i32* %265, i64 2, !dbg !683
  %266 = load i32, i32* %add.ptr507, align 4, !dbg !683
  %and508 = and i32 %266, 16711680, !dbg !683
  %shr509 = lshr i32 %and508, 8, !dbg !683
  %or510 = or i32 %or506, %shr509, !dbg !683
  %267 = load i32*, i32** %mask.addr, align 8, !dbg !683
  %add.ptr511 = getelementptr i32, i32* %267, i64 2, !dbg !683
  %268 = load i32, i32* %add.ptr511, align 4, !dbg !683
  %and512 = and i32 %268, -16777216, !dbg !683
  %shr513 = lshr i32 %and512, 24, !dbg !683
  %or514 = or i32 %or510, %shr513, !dbg !683
  br label %cond.end518, !dbg !683

cond.false515:                                    ; preds = %if.end496
  %269 = load i32*, i32** %mask.addr, align 8, !dbg !683
  %add.ptr516 = getelementptr i32, i32* %269, i64 2, !dbg !683
  %270 = load i32, i32* %add.ptr516, align 4, !dbg !683
  %call517 = call i32 @__fswab32(i32 %270) #7, !dbg !683
  br label %cond.end518, !dbg !683

cond.end518:                                      ; preds = %cond.false515, %cond.true499
  %cond519 = phi i32 [ %or514, %cond.true499 ], [ %call517, %cond.false515 ], !dbg !683
  %shr520 = lshr i32 %cond519, 0, !dbg !683
  %and521 = and i32 %shr520, 4095, !dbg !683
  %conv522 = trunc i32 %and521 to i16, !dbg !683
  store i16 %conv522, i16* %m497, align 2, !dbg !683
  %v523 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %inner_second_vid, i32 0, i32 1, !dbg !683
  %271 = load i32*, i32** %value.addr, align 8, !dbg !683
  %add.ptr524 = getelementptr i32, i32* %271, i64 2, !dbg !683
  %272 = load i32, i32* %add.ptr524, align 4, !dbg !683
  %273 = call i1 @llvm.is.constant.i32(i32 %272), !dbg !683
  br i1 %273, label %cond.true525, label %cond.false541, !dbg !683

cond.true525:                                     ; preds = %cond.end518
  %274 = load i32*, i32** %value.addr, align 8, !dbg !683
  %add.ptr526 = getelementptr i32, i32* %274, i64 2, !dbg !683
  %275 = load i32, i32* %add.ptr526, align 4, !dbg !683
  %and527 = and i32 %275, 255, !dbg !683
  %shl528 = shl i32 %and527, 24, !dbg !683
  %276 = load i32*, i32** %value.addr, align 8, !dbg !683
  %add.ptr529 = getelementptr i32, i32* %276, i64 2, !dbg !683
  %277 = load i32, i32* %add.ptr529, align 4, !dbg !683
  %and530 = and i32 %277, 65280, !dbg !683
  %shl531 = shl i32 %and530, 8, !dbg !683
  %or532 = or i32 %shl528, %shl531, !dbg !683
  %278 = load i32*, i32** %value.addr, align 8, !dbg !683
  %add.ptr533 = getelementptr i32, i32* %278, i64 2, !dbg !683
  %279 = load i32, i32* %add.ptr533, align 4, !dbg !683
  %and534 = and i32 %279, 16711680, !dbg !683
  %shr535 = lshr i32 %and534, 8, !dbg !683
  %or536 = or i32 %or532, %shr535, !dbg !683
  %280 = load i32*, i32** %value.addr, align 8, !dbg !683
  %add.ptr537 = getelementptr i32, i32* %280, i64 2, !dbg !683
  %281 = load i32, i32* %add.ptr537, align 4, !dbg !683
  %and538 = and i32 %281, -16777216, !dbg !683
  %shr539 = lshr i32 %and538, 24, !dbg !683
  %or540 = or i32 %or536, %shr539, !dbg !683
  br label %cond.end544, !dbg !683

cond.false541:                                    ; preds = %cond.end518
  %282 = load i32*, i32** %value.addr, align 8, !dbg !683
  %add.ptr542 = getelementptr i32, i32* %282, i64 2, !dbg !683
  %283 = load i32, i32* %add.ptr542, align 4, !dbg !683
  %call543 = call i32 @__fswab32(i32 %283) #7, !dbg !683
  br label %cond.end544, !dbg !683

cond.end544:                                      ; preds = %cond.false541, %cond.true525
  %cond545 = phi i32 [ %or540, %cond.true525 ], [ %call543, %cond.false541 ], !dbg !683
  %shr546 = lshr i32 %cond545, 0, !dbg !683
  %and547 = and i32 %shr546, 4095, !dbg !683
  %conv548 = trunc i32 %and547 to i16, !dbg !683
  store i16 %conv548, i16* %v523, align 2, !dbg !683
  %m549 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %inner_second_vid, i32 0, i32 0, !dbg !684
  %284 = load i16, i16* %m549, align 2, !dbg !684
  %tobool550 = icmp ne i16 %284, 0, !dbg !684
  br i1 %tobool550, label %if.then551, label %if.end554, !dbg !687

if.then551:                                       ; preds = %cond.end544
  %285 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !684
  %v552 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %inner_second_vid, i32 0, i32 1, !dbg !684
  %286 = load i16, i16* %v552, align 2, !dbg !684
  %conv553 = zext i16 %286 to i32, !dbg !684
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %285, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i32 %conv553) #6, !dbg !684
  br label %if.end554, !dbg !684

if.end554:                                        ; preds = %if.then551, %cond.end544
  call void @llvm.dbg.declare(metadata %struct.anon.35* %outer_second_cvlan_tag, metadata !688, metadata !DIExpression()), !dbg !694
  %m555 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %outer_second_cvlan_tag, i32 0, i32 0, !dbg !694
  %287 = load i32*, i32** %mask.addr, align 8, !dbg !694
  %add.ptr556 = getelementptr i32, i32* %287, i64 3, !dbg !694
  %288 = load i32, i32* %add.ptr556, align 4, !dbg !694
  %289 = call i1 @llvm.is.constant.i32(i32 %288), !dbg !694
  br i1 %289, label %cond.true557, label %cond.false573, !dbg !694

cond.true557:                                     ; preds = %if.end554
  %290 = load i32*, i32** %mask.addr, align 8, !dbg !694
  %add.ptr558 = getelementptr i32, i32* %290, i64 3, !dbg !694
  %291 = load i32, i32* %add.ptr558, align 4, !dbg !694
  %and559 = and i32 %291, 255, !dbg !694
  %shl560 = shl i32 %and559, 24, !dbg !694
  %292 = load i32*, i32** %mask.addr, align 8, !dbg !694
  %add.ptr561 = getelementptr i32, i32* %292, i64 3, !dbg !694
  %293 = load i32, i32* %add.ptr561, align 4, !dbg !694
  %and562 = and i32 %293, 65280, !dbg !694
  %shl563 = shl i32 %and562, 8, !dbg !694
  %or564 = or i32 %shl560, %shl563, !dbg !694
  %294 = load i32*, i32** %mask.addr, align 8, !dbg !694
  %add.ptr565 = getelementptr i32, i32* %294, i64 3, !dbg !694
  %295 = load i32, i32* %add.ptr565, align 4, !dbg !694
  %and566 = and i32 %295, 16711680, !dbg !694
  %shr567 = lshr i32 %and566, 8, !dbg !694
  %or568 = or i32 %or564, %shr567, !dbg !694
  %296 = load i32*, i32** %mask.addr, align 8, !dbg !694
  %add.ptr569 = getelementptr i32, i32* %296, i64 3, !dbg !694
  %297 = load i32, i32* %add.ptr569, align 4, !dbg !694
  %and570 = and i32 %297, -16777216, !dbg !694
  %shr571 = lshr i32 %and570, 24, !dbg !694
  %or572 = or i32 %or568, %shr571, !dbg !694
  br label %cond.end576, !dbg !694

cond.false573:                                    ; preds = %if.end554
  %298 = load i32*, i32** %mask.addr, align 8, !dbg !694
  %add.ptr574 = getelementptr i32, i32* %298, i64 3, !dbg !694
  %299 = load i32, i32* %add.ptr574, align 4, !dbg !694
  %call575 = call i32 @__fswab32(i32 %299) #7, !dbg !694
  br label %cond.end576, !dbg !694

cond.end576:                                      ; preds = %cond.false573, %cond.true557
  %cond577 = phi i32 [ %or572, %cond.true557 ], [ %call575, %cond.false573 ], !dbg !694
  %shr578 = lshr i32 %cond577, 31, !dbg !694
  %and579 = and i32 %shr578, 1, !dbg !694
  %conv580 = trunc i32 %and579 to i8, !dbg !694
  store i8 %conv580, i8* %m555, align 1, !dbg !694
  %v581 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %outer_second_cvlan_tag, i32 0, i32 1, !dbg !694
  %300 = load i32*, i32** %value.addr, align 8, !dbg !694
  %add.ptr582 = getelementptr i32, i32* %300, i64 3, !dbg !694
  %301 = load i32, i32* %add.ptr582, align 4, !dbg !694
  %302 = call i1 @llvm.is.constant.i32(i32 %301), !dbg !694
  br i1 %302, label %cond.true583, label %cond.false599, !dbg !694

cond.true583:                                     ; preds = %cond.end576
  %303 = load i32*, i32** %value.addr, align 8, !dbg !694
  %add.ptr584 = getelementptr i32, i32* %303, i64 3, !dbg !694
  %304 = load i32, i32* %add.ptr584, align 4, !dbg !694
  %and585 = and i32 %304, 255, !dbg !694
  %shl586 = shl i32 %and585, 24, !dbg !694
  %305 = load i32*, i32** %value.addr, align 8, !dbg !694
  %add.ptr587 = getelementptr i32, i32* %305, i64 3, !dbg !694
  %306 = load i32, i32* %add.ptr587, align 4, !dbg !694
  %and588 = and i32 %306, 65280, !dbg !694
  %shl589 = shl i32 %and588, 8, !dbg !694
  %or590 = or i32 %shl586, %shl589, !dbg !694
  %307 = load i32*, i32** %value.addr, align 8, !dbg !694
  %add.ptr591 = getelementptr i32, i32* %307, i64 3, !dbg !694
  %308 = load i32, i32* %add.ptr591, align 4, !dbg !694
  %and592 = and i32 %308, 16711680, !dbg !694
  %shr593 = lshr i32 %and592, 8, !dbg !694
  %or594 = or i32 %or590, %shr593, !dbg !694
  %309 = load i32*, i32** %value.addr, align 8, !dbg !694
  %add.ptr595 = getelementptr i32, i32* %309, i64 3, !dbg !694
  %310 = load i32, i32* %add.ptr595, align 4, !dbg !694
  %and596 = and i32 %310, -16777216, !dbg !694
  %shr597 = lshr i32 %and596, 24, !dbg !694
  %or598 = or i32 %or594, %shr597, !dbg !694
  br label %cond.end602, !dbg !694

cond.false599:                                    ; preds = %cond.end576
  %311 = load i32*, i32** %value.addr, align 8, !dbg !694
  %add.ptr600 = getelementptr i32, i32* %311, i64 3, !dbg !694
  %312 = load i32, i32* %add.ptr600, align 4, !dbg !694
  %call601 = call i32 @__fswab32(i32 %312) #7, !dbg !694
  br label %cond.end602, !dbg !694

cond.end602:                                      ; preds = %cond.false599, %cond.true583
  %cond603 = phi i32 [ %or598, %cond.true583 ], [ %call601, %cond.false599 ], !dbg !694
  %shr604 = lshr i32 %cond603, 31, !dbg !694
  %and605 = and i32 %shr604, 1, !dbg !694
  %conv606 = trunc i32 %and605 to i8, !dbg !694
  store i8 %conv606, i8* %v581, align 1, !dbg !694
  %m607 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %outer_second_cvlan_tag, i32 0, i32 0, !dbg !695
  %313 = load i8, i8* %m607, align 1, !dbg !695
  %tobool608 = icmp ne i8 %313, 0, !dbg !695
  br i1 %tobool608, label %if.then609, label %if.end612, !dbg !698

if.then609:                                       ; preds = %cond.end602
  %314 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !695
  %v610 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %outer_second_cvlan_tag, i32 0, i32 1, !dbg !695
  %315 = load i8, i8* %v610, align 1, !dbg !695
  %conv611 = zext i8 %315 to i32, !dbg !695
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %314, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 %conv611) #6, !dbg !695
  br label %if.end612, !dbg !695

if.end612:                                        ; preds = %if.then609, %cond.end602
  call void @llvm.dbg.declare(metadata %struct.anon.36* %inner_second_cvlan_tag, metadata !699, metadata !DIExpression()), !dbg !705
  %m613 = getelementptr inbounds %struct.anon.36, %struct.anon.36* %inner_second_cvlan_tag, i32 0, i32 0, !dbg !705
  %316 = load i32*, i32** %mask.addr, align 8, !dbg !705
  %add.ptr614 = getelementptr i32, i32* %316, i64 3, !dbg !705
  %317 = load i32, i32* %add.ptr614, align 4, !dbg !705
  %318 = call i1 @llvm.is.constant.i32(i32 %317), !dbg !705
  br i1 %318, label %cond.true615, label %cond.false631, !dbg !705

cond.true615:                                     ; preds = %if.end612
  %319 = load i32*, i32** %mask.addr, align 8, !dbg !705
  %add.ptr616 = getelementptr i32, i32* %319, i64 3, !dbg !705
  %320 = load i32, i32* %add.ptr616, align 4, !dbg !705
  %and617 = and i32 %320, 255, !dbg !705
  %shl618 = shl i32 %and617, 24, !dbg !705
  %321 = load i32*, i32** %mask.addr, align 8, !dbg !705
  %add.ptr619 = getelementptr i32, i32* %321, i64 3, !dbg !705
  %322 = load i32, i32* %add.ptr619, align 4, !dbg !705
  %and620 = and i32 %322, 65280, !dbg !705
  %shl621 = shl i32 %and620, 8, !dbg !705
  %or622 = or i32 %shl618, %shl621, !dbg !705
  %323 = load i32*, i32** %mask.addr, align 8, !dbg !705
  %add.ptr623 = getelementptr i32, i32* %323, i64 3, !dbg !705
  %324 = load i32, i32* %add.ptr623, align 4, !dbg !705
  %and624 = and i32 %324, 16711680, !dbg !705
  %shr625 = lshr i32 %and624, 8, !dbg !705
  %or626 = or i32 %or622, %shr625, !dbg !705
  %325 = load i32*, i32** %mask.addr, align 8, !dbg !705
  %add.ptr627 = getelementptr i32, i32* %325, i64 3, !dbg !705
  %326 = load i32, i32* %add.ptr627, align 4, !dbg !705
  %and628 = and i32 %326, -16777216, !dbg !705
  %shr629 = lshr i32 %and628, 24, !dbg !705
  %or630 = or i32 %or626, %shr629, !dbg !705
  br label %cond.end634, !dbg !705

cond.false631:                                    ; preds = %if.end612
  %327 = load i32*, i32** %mask.addr, align 8, !dbg !705
  %add.ptr632 = getelementptr i32, i32* %327, i64 3, !dbg !705
  %328 = load i32, i32* %add.ptr632, align 4, !dbg !705
  %call633 = call i32 @__fswab32(i32 %328) #7, !dbg !705
  br label %cond.end634, !dbg !705

cond.end634:                                      ; preds = %cond.false631, %cond.true615
  %cond635 = phi i32 [ %or630, %cond.true615 ], [ %call633, %cond.false631 ], !dbg !705
  %shr636 = lshr i32 %cond635, 30, !dbg !705
  %and637 = and i32 %shr636, 1, !dbg !705
  %conv638 = trunc i32 %and637 to i8, !dbg !705
  store i8 %conv638, i8* %m613, align 1, !dbg !705
  %v639 = getelementptr inbounds %struct.anon.36, %struct.anon.36* %inner_second_cvlan_tag, i32 0, i32 1, !dbg !705
  %329 = load i32*, i32** %value.addr, align 8, !dbg !705
  %add.ptr640 = getelementptr i32, i32* %329, i64 3, !dbg !705
  %330 = load i32, i32* %add.ptr640, align 4, !dbg !705
  %331 = call i1 @llvm.is.constant.i32(i32 %330), !dbg !705
  br i1 %331, label %cond.true641, label %cond.false657, !dbg !705

cond.true641:                                     ; preds = %cond.end634
  %332 = load i32*, i32** %value.addr, align 8, !dbg !705
  %add.ptr642 = getelementptr i32, i32* %332, i64 3, !dbg !705
  %333 = load i32, i32* %add.ptr642, align 4, !dbg !705
  %and643 = and i32 %333, 255, !dbg !705
  %shl644 = shl i32 %and643, 24, !dbg !705
  %334 = load i32*, i32** %value.addr, align 8, !dbg !705
  %add.ptr645 = getelementptr i32, i32* %334, i64 3, !dbg !705
  %335 = load i32, i32* %add.ptr645, align 4, !dbg !705
  %and646 = and i32 %335, 65280, !dbg !705
  %shl647 = shl i32 %and646, 8, !dbg !705
  %or648 = or i32 %shl644, %shl647, !dbg !705
  %336 = load i32*, i32** %value.addr, align 8, !dbg !705
  %add.ptr649 = getelementptr i32, i32* %336, i64 3, !dbg !705
  %337 = load i32, i32* %add.ptr649, align 4, !dbg !705
  %and650 = and i32 %337, 16711680, !dbg !705
  %shr651 = lshr i32 %and650, 8, !dbg !705
  %or652 = or i32 %or648, %shr651, !dbg !705
  %338 = load i32*, i32** %value.addr, align 8, !dbg !705
  %add.ptr653 = getelementptr i32, i32* %338, i64 3, !dbg !705
  %339 = load i32, i32* %add.ptr653, align 4, !dbg !705
  %and654 = and i32 %339, -16777216, !dbg !705
  %shr655 = lshr i32 %and654, 24, !dbg !705
  %or656 = or i32 %or652, %shr655, !dbg !705
  br label %cond.end660, !dbg !705

cond.false657:                                    ; preds = %cond.end634
  %340 = load i32*, i32** %value.addr, align 8, !dbg !705
  %add.ptr658 = getelementptr i32, i32* %340, i64 3, !dbg !705
  %341 = load i32, i32* %add.ptr658, align 4, !dbg !705
  %call659 = call i32 @__fswab32(i32 %341) #7, !dbg !705
  br label %cond.end660, !dbg !705

cond.end660:                                      ; preds = %cond.false657, %cond.true641
  %cond661 = phi i32 [ %or656, %cond.true641 ], [ %call659, %cond.false657 ], !dbg !705
  %shr662 = lshr i32 %cond661, 30, !dbg !705
  %and663 = and i32 %shr662, 1, !dbg !705
  %conv664 = trunc i32 %and663 to i8, !dbg !705
  store i8 %conv664, i8* %v639, align 1, !dbg !705
  %m665 = getelementptr inbounds %struct.anon.36, %struct.anon.36* %inner_second_cvlan_tag, i32 0, i32 0, !dbg !706
  %342 = load i8, i8* %m665, align 1, !dbg !706
  %tobool666 = icmp ne i8 %342, 0, !dbg !706
  br i1 %tobool666, label %if.then667, label %if.end670, !dbg !709

if.then667:                                       ; preds = %cond.end660
  %343 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !706
  %v668 = getelementptr inbounds %struct.anon.36, %struct.anon.36* %inner_second_cvlan_tag, i32 0, i32 1, !dbg !706
  %344 = load i8, i8* %v668, align 1, !dbg !706
  %conv669 = zext i8 %344 to i32, !dbg !706
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %343, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i32 %conv669) #6, !dbg !706
  br label %if.end670, !dbg !706

if.end670:                                        ; preds = %if.then667, %cond.end660
  call void @llvm.dbg.declare(metadata %struct.anon.37* %outer_second_svlan_tag, metadata !710, metadata !DIExpression()), !dbg !716
  %m671 = getelementptr inbounds %struct.anon.37, %struct.anon.37* %outer_second_svlan_tag, i32 0, i32 0, !dbg !716
  %345 = load i32*, i32** %mask.addr, align 8, !dbg !716
  %add.ptr672 = getelementptr i32, i32* %345, i64 3, !dbg !716
  %346 = load i32, i32* %add.ptr672, align 4, !dbg !716
  %347 = call i1 @llvm.is.constant.i32(i32 %346), !dbg !716
  br i1 %347, label %cond.true673, label %cond.false689, !dbg !716

cond.true673:                                     ; preds = %if.end670
  %348 = load i32*, i32** %mask.addr, align 8, !dbg !716
  %add.ptr674 = getelementptr i32, i32* %348, i64 3, !dbg !716
  %349 = load i32, i32* %add.ptr674, align 4, !dbg !716
  %and675 = and i32 %349, 255, !dbg !716
  %shl676 = shl i32 %and675, 24, !dbg !716
  %350 = load i32*, i32** %mask.addr, align 8, !dbg !716
  %add.ptr677 = getelementptr i32, i32* %350, i64 3, !dbg !716
  %351 = load i32, i32* %add.ptr677, align 4, !dbg !716
  %and678 = and i32 %351, 65280, !dbg !716
  %shl679 = shl i32 %and678, 8, !dbg !716
  %or680 = or i32 %shl676, %shl679, !dbg !716
  %352 = load i32*, i32** %mask.addr, align 8, !dbg !716
  %add.ptr681 = getelementptr i32, i32* %352, i64 3, !dbg !716
  %353 = load i32, i32* %add.ptr681, align 4, !dbg !716
  %and682 = and i32 %353, 16711680, !dbg !716
  %shr683 = lshr i32 %and682, 8, !dbg !716
  %or684 = or i32 %or680, %shr683, !dbg !716
  %354 = load i32*, i32** %mask.addr, align 8, !dbg !716
  %add.ptr685 = getelementptr i32, i32* %354, i64 3, !dbg !716
  %355 = load i32, i32* %add.ptr685, align 4, !dbg !716
  %and686 = and i32 %355, -16777216, !dbg !716
  %shr687 = lshr i32 %and686, 24, !dbg !716
  %or688 = or i32 %or684, %shr687, !dbg !716
  br label %cond.end692, !dbg !716

cond.false689:                                    ; preds = %if.end670
  %356 = load i32*, i32** %mask.addr, align 8, !dbg !716
  %add.ptr690 = getelementptr i32, i32* %356, i64 3, !dbg !716
  %357 = load i32, i32* %add.ptr690, align 4, !dbg !716
  %call691 = call i32 @__fswab32(i32 %357) #7, !dbg !716
  br label %cond.end692, !dbg !716

cond.end692:                                      ; preds = %cond.false689, %cond.true673
  %cond693 = phi i32 [ %or688, %cond.true673 ], [ %call691, %cond.false689 ], !dbg !716
  %shr694 = lshr i32 %cond693, 29, !dbg !716
  %and695 = and i32 %shr694, 1, !dbg !716
  %conv696 = trunc i32 %and695 to i8, !dbg !716
  store i8 %conv696, i8* %m671, align 1, !dbg !716
  %v697 = getelementptr inbounds %struct.anon.37, %struct.anon.37* %outer_second_svlan_tag, i32 0, i32 1, !dbg !716
  %358 = load i32*, i32** %value.addr, align 8, !dbg !716
  %add.ptr698 = getelementptr i32, i32* %358, i64 3, !dbg !716
  %359 = load i32, i32* %add.ptr698, align 4, !dbg !716
  %360 = call i1 @llvm.is.constant.i32(i32 %359), !dbg !716
  br i1 %360, label %cond.true699, label %cond.false715, !dbg !716

cond.true699:                                     ; preds = %cond.end692
  %361 = load i32*, i32** %value.addr, align 8, !dbg !716
  %add.ptr700 = getelementptr i32, i32* %361, i64 3, !dbg !716
  %362 = load i32, i32* %add.ptr700, align 4, !dbg !716
  %and701 = and i32 %362, 255, !dbg !716
  %shl702 = shl i32 %and701, 24, !dbg !716
  %363 = load i32*, i32** %value.addr, align 8, !dbg !716
  %add.ptr703 = getelementptr i32, i32* %363, i64 3, !dbg !716
  %364 = load i32, i32* %add.ptr703, align 4, !dbg !716
  %and704 = and i32 %364, 65280, !dbg !716
  %shl705 = shl i32 %and704, 8, !dbg !716
  %or706 = or i32 %shl702, %shl705, !dbg !716
  %365 = load i32*, i32** %value.addr, align 8, !dbg !716
  %add.ptr707 = getelementptr i32, i32* %365, i64 3, !dbg !716
  %366 = load i32, i32* %add.ptr707, align 4, !dbg !716
  %and708 = and i32 %366, 16711680, !dbg !716
  %shr709 = lshr i32 %and708, 8, !dbg !716
  %or710 = or i32 %or706, %shr709, !dbg !716
  %367 = load i32*, i32** %value.addr, align 8, !dbg !716
  %add.ptr711 = getelementptr i32, i32* %367, i64 3, !dbg !716
  %368 = load i32, i32* %add.ptr711, align 4, !dbg !716
  %and712 = and i32 %368, -16777216, !dbg !716
  %shr713 = lshr i32 %and712, 24, !dbg !716
  %or714 = or i32 %or710, %shr713, !dbg !716
  br label %cond.end718, !dbg !716

cond.false715:                                    ; preds = %cond.end692
  %369 = load i32*, i32** %value.addr, align 8, !dbg !716
  %add.ptr716 = getelementptr i32, i32* %369, i64 3, !dbg !716
  %370 = load i32, i32* %add.ptr716, align 4, !dbg !716
  %call717 = call i32 @__fswab32(i32 %370) #7, !dbg !716
  br label %cond.end718, !dbg !716

cond.end718:                                      ; preds = %cond.false715, %cond.true699
  %cond719 = phi i32 [ %or714, %cond.true699 ], [ %call717, %cond.false715 ], !dbg !716
  %shr720 = lshr i32 %cond719, 29, !dbg !716
  %and721 = and i32 %shr720, 1, !dbg !716
  %conv722 = trunc i32 %and721 to i8, !dbg !716
  store i8 %conv722, i8* %v697, align 1, !dbg !716
  %m723 = getelementptr inbounds %struct.anon.37, %struct.anon.37* %outer_second_svlan_tag, i32 0, i32 0, !dbg !717
  %371 = load i8, i8* %m723, align 1, !dbg !717
  %tobool724 = icmp ne i8 %371, 0, !dbg !717
  br i1 %tobool724, label %if.then725, label %if.end728, !dbg !720

if.then725:                                       ; preds = %cond.end718
  %372 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !717
  %v726 = getelementptr inbounds %struct.anon.37, %struct.anon.37* %outer_second_svlan_tag, i32 0, i32 1, !dbg !717
  %373 = load i8, i8* %v726, align 1, !dbg !717
  %conv727 = zext i8 %373 to i32, !dbg !717
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %372, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i32 %conv727) #6, !dbg !717
  br label %if.end728, !dbg !717

if.end728:                                        ; preds = %if.then725, %cond.end718
  call void @llvm.dbg.declare(metadata %struct.anon.38* %inner_second_svlan_tag, metadata !721, metadata !DIExpression()), !dbg !727
  %m729 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %inner_second_svlan_tag, i32 0, i32 0, !dbg !727
  %374 = load i32*, i32** %mask.addr, align 8, !dbg !727
  %add.ptr730 = getelementptr i32, i32* %374, i64 3, !dbg !727
  %375 = load i32, i32* %add.ptr730, align 4, !dbg !727
  %376 = call i1 @llvm.is.constant.i32(i32 %375), !dbg !727
  br i1 %376, label %cond.true731, label %cond.false747, !dbg !727

cond.true731:                                     ; preds = %if.end728
  %377 = load i32*, i32** %mask.addr, align 8, !dbg !727
  %add.ptr732 = getelementptr i32, i32* %377, i64 3, !dbg !727
  %378 = load i32, i32* %add.ptr732, align 4, !dbg !727
  %and733 = and i32 %378, 255, !dbg !727
  %shl734 = shl i32 %and733, 24, !dbg !727
  %379 = load i32*, i32** %mask.addr, align 8, !dbg !727
  %add.ptr735 = getelementptr i32, i32* %379, i64 3, !dbg !727
  %380 = load i32, i32* %add.ptr735, align 4, !dbg !727
  %and736 = and i32 %380, 65280, !dbg !727
  %shl737 = shl i32 %and736, 8, !dbg !727
  %or738 = or i32 %shl734, %shl737, !dbg !727
  %381 = load i32*, i32** %mask.addr, align 8, !dbg !727
  %add.ptr739 = getelementptr i32, i32* %381, i64 3, !dbg !727
  %382 = load i32, i32* %add.ptr739, align 4, !dbg !727
  %and740 = and i32 %382, 16711680, !dbg !727
  %shr741 = lshr i32 %and740, 8, !dbg !727
  %or742 = or i32 %or738, %shr741, !dbg !727
  %383 = load i32*, i32** %mask.addr, align 8, !dbg !727
  %add.ptr743 = getelementptr i32, i32* %383, i64 3, !dbg !727
  %384 = load i32, i32* %add.ptr743, align 4, !dbg !727
  %and744 = and i32 %384, -16777216, !dbg !727
  %shr745 = lshr i32 %and744, 24, !dbg !727
  %or746 = or i32 %or742, %shr745, !dbg !727
  br label %cond.end750, !dbg !727

cond.false747:                                    ; preds = %if.end728
  %385 = load i32*, i32** %mask.addr, align 8, !dbg !727
  %add.ptr748 = getelementptr i32, i32* %385, i64 3, !dbg !727
  %386 = load i32, i32* %add.ptr748, align 4, !dbg !727
  %call749 = call i32 @__fswab32(i32 %386) #7, !dbg !727
  br label %cond.end750, !dbg !727

cond.end750:                                      ; preds = %cond.false747, %cond.true731
  %cond751 = phi i32 [ %or746, %cond.true731 ], [ %call749, %cond.false747 ], !dbg !727
  %shr752 = lshr i32 %cond751, 28, !dbg !727
  %and753 = and i32 %shr752, 1, !dbg !727
  %conv754 = trunc i32 %and753 to i8, !dbg !727
  store i8 %conv754, i8* %m729, align 1, !dbg !727
  %v755 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %inner_second_svlan_tag, i32 0, i32 1, !dbg !727
  %387 = load i32*, i32** %value.addr, align 8, !dbg !727
  %add.ptr756 = getelementptr i32, i32* %387, i64 3, !dbg !727
  %388 = load i32, i32* %add.ptr756, align 4, !dbg !727
  %389 = call i1 @llvm.is.constant.i32(i32 %388), !dbg !727
  br i1 %389, label %cond.true757, label %cond.false773, !dbg !727

cond.true757:                                     ; preds = %cond.end750
  %390 = load i32*, i32** %value.addr, align 8, !dbg !727
  %add.ptr758 = getelementptr i32, i32* %390, i64 3, !dbg !727
  %391 = load i32, i32* %add.ptr758, align 4, !dbg !727
  %and759 = and i32 %391, 255, !dbg !727
  %shl760 = shl i32 %and759, 24, !dbg !727
  %392 = load i32*, i32** %value.addr, align 8, !dbg !727
  %add.ptr761 = getelementptr i32, i32* %392, i64 3, !dbg !727
  %393 = load i32, i32* %add.ptr761, align 4, !dbg !727
  %and762 = and i32 %393, 65280, !dbg !727
  %shl763 = shl i32 %and762, 8, !dbg !727
  %or764 = or i32 %shl760, %shl763, !dbg !727
  %394 = load i32*, i32** %value.addr, align 8, !dbg !727
  %add.ptr765 = getelementptr i32, i32* %394, i64 3, !dbg !727
  %395 = load i32, i32* %add.ptr765, align 4, !dbg !727
  %and766 = and i32 %395, 16711680, !dbg !727
  %shr767 = lshr i32 %and766, 8, !dbg !727
  %or768 = or i32 %or764, %shr767, !dbg !727
  %396 = load i32*, i32** %value.addr, align 8, !dbg !727
  %add.ptr769 = getelementptr i32, i32* %396, i64 3, !dbg !727
  %397 = load i32, i32* %add.ptr769, align 4, !dbg !727
  %and770 = and i32 %397, -16777216, !dbg !727
  %shr771 = lshr i32 %and770, 24, !dbg !727
  %or772 = or i32 %or768, %shr771, !dbg !727
  br label %cond.end776, !dbg !727

cond.false773:                                    ; preds = %cond.end750
  %398 = load i32*, i32** %value.addr, align 8, !dbg !727
  %add.ptr774 = getelementptr i32, i32* %398, i64 3, !dbg !727
  %399 = load i32, i32* %add.ptr774, align 4, !dbg !727
  %call775 = call i32 @__fswab32(i32 %399) #7, !dbg !727
  br label %cond.end776, !dbg !727

cond.end776:                                      ; preds = %cond.false773, %cond.true757
  %cond777 = phi i32 [ %or772, %cond.true757 ], [ %call775, %cond.false773 ], !dbg !727
  %shr778 = lshr i32 %cond777, 28, !dbg !727
  %and779 = and i32 %shr778, 1, !dbg !727
  %conv780 = trunc i32 %and779 to i8, !dbg !727
  store i8 %conv780, i8* %v755, align 1, !dbg !727
  %m781 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %inner_second_svlan_tag, i32 0, i32 0, !dbg !728
  %400 = load i8, i8* %m781, align 1, !dbg !728
  %tobool782 = icmp ne i8 %400, 0, !dbg !728
  br i1 %tobool782, label %if.then783, label %if.end786, !dbg !731

if.then783:                                       ; preds = %cond.end776
  %401 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !728
  %v784 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %inner_second_svlan_tag, i32 0, i32 1, !dbg !728
  %402 = load i8, i8* %v784, align 1, !dbg !728
  %conv785 = zext i8 %402 to i32, !dbg !728
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %401, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 %conv785) #6, !dbg !728
  br label %if.end786, !dbg !728

if.end786:                                        ; preds = %if.then783, %cond.end776
  call void @llvm.dbg.declare(metadata %struct.anon.39* %gre_protocol, metadata !732, metadata !DIExpression()), !dbg !738
  %m787 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %gre_protocol, i32 0, i32 0, !dbg !738
  %403 = load i32*, i32** %mask.addr, align 8, !dbg !738
  %add.ptr788 = getelementptr i32, i32* %403, i64 3, !dbg !738
  %404 = load i32, i32* %add.ptr788, align 4, !dbg !738
  %405 = call i1 @llvm.is.constant.i32(i32 %404), !dbg !738
  br i1 %405, label %cond.true789, label %cond.false805, !dbg !738

cond.true789:                                     ; preds = %if.end786
  %406 = load i32*, i32** %mask.addr, align 8, !dbg !738
  %add.ptr790 = getelementptr i32, i32* %406, i64 3, !dbg !738
  %407 = load i32, i32* %add.ptr790, align 4, !dbg !738
  %and791 = and i32 %407, 255, !dbg !738
  %shl792 = shl i32 %and791, 24, !dbg !738
  %408 = load i32*, i32** %mask.addr, align 8, !dbg !738
  %add.ptr793 = getelementptr i32, i32* %408, i64 3, !dbg !738
  %409 = load i32, i32* %add.ptr793, align 4, !dbg !738
  %and794 = and i32 %409, 65280, !dbg !738
  %shl795 = shl i32 %and794, 8, !dbg !738
  %or796 = or i32 %shl792, %shl795, !dbg !738
  %410 = load i32*, i32** %mask.addr, align 8, !dbg !738
  %add.ptr797 = getelementptr i32, i32* %410, i64 3, !dbg !738
  %411 = load i32, i32* %add.ptr797, align 4, !dbg !738
  %and798 = and i32 %411, 16711680, !dbg !738
  %shr799 = lshr i32 %and798, 8, !dbg !738
  %or800 = or i32 %or796, %shr799, !dbg !738
  %412 = load i32*, i32** %mask.addr, align 8, !dbg !738
  %add.ptr801 = getelementptr i32, i32* %412, i64 3, !dbg !738
  %413 = load i32, i32* %add.ptr801, align 4, !dbg !738
  %and802 = and i32 %413, -16777216, !dbg !738
  %shr803 = lshr i32 %and802, 24, !dbg !738
  %or804 = or i32 %or800, %shr803, !dbg !738
  br label %cond.end808, !dbg !738

cond.false805:                                    ; preds = %if.end786
  %414 = load i32*, i32** %mask.addr, align 8, !dbg !738
  %add.ptr806 = getelementptr i32, i32* %414, i64 3, !dbg !738
  %415 = load i32, i32* %add.ptr806, align 4, !dbg !738
  %call807 = call i32 @__fswab32(i32 %415) #7, !dbg !738
  br label %cond.end808, !dbg !738

cond.end808:                                      ; preds = %cond.false805, %cond.true789
  %cond809 = phi i32 [ %or804, %cond.true789 ], [ %call807, %cond.false805 ], !dbg !738
  %shr810 = lshr i32 %cond809, 0, !dbg !738
  %and811 = and i32 %shr810, 65535, !dbg !738
  %conv812 = trunc i32 %and811 to i8, !dbg !738
  store i8 %conv812, i8* %m787, align 1, !dbg !738
  %v813 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %gre_protocol, i32 0, i32 1, !dbg !738
  %416 = load i32*, i32** %value.addr, align 8, !dbg !738
  %add.ptr814 = getelementptr i32, i32* %416, i64 3, !dbg !738
  %417 = load i32, i32* %add.ptr814, align 4, !dbg !738
  %418 = call i1 @llvm.is.constant.i32(i32 %417), !dbg !738
  br i1 %418, label %cond.true815, label %cond.false831, !dbg !738

cond.true815:                                     ; preds = %cond.end808
  %419 = load i32*, i32** %value.addr, align 8, !dbg !738
  %add.ptr816 = getelementptr i32, i32* %419, i64 3, !dbg !738
  %420 = load i32, i32* %add.ptr816, align 4, !dbg !738
  %and817 = and i32 %420, 255, !dbg !738
  %shl818 = shl i32 %and817, 24, !dbg !738
  %421 = load i32*, i32** %value.addr, align 8, !dbg !738
  %add.ptr819 = getelementptr i32, i32* %421, i64 3, !dbg !738
  %422 = load i32, i32* %add.ptr819, align 4, !dbg !738
  %and820 = and i32 %422, 65280, !dbg !738
  %shl821 = shl i32 %and820, 8, !dbg !738
  %or822 = or i32 %shl818, %shl821, !dbg !738
  %423 = load i32*, i32** %value.addr, align 8, !dbg !738
  %add.ptr823 = getelementptr i32, i32* %423, i64 3, !dbg !738
  %424 = load i32, i32* %add.ptr823, align 4, !dbg !738
  %and824 = and i32 %424, 16711680, !dbg !738
  %shr825 = lshr i32 %and824, 8, !dbg !738
  %or826 = or i32 %or822, %shr825, !dbg !738
  %425 = load i32*, i32** %value.addr, align 8, !dbg !738
  %add.ptr827 = getelementptr i32, i32* %425, i64 3, !dbg !738
  %426 = load i32, i32* %add.ptr827, align 4, !dbg !738
  %and828 = and i32 %426, -16777216, !dbg !738
  %shr829 = lshr i32 %and828, 24, !dbg !738
  %or830 = or i32 %or826, %shr829, !dbg !738
  br label %cond.end834, !dbg !738

cond.false831:                                    ; preds = %cond.end808
  %427 = load i32*, i32** %value.addr, align 8, !dbg !738
  %add.ptr832 = getelementptr i32, i32* %427, i64 3, !dbg !738
  %428 = load i32, i32* %add.ptr832, align 4, !dbg !738
  %call833 = call i32 @__fswab32(i32 %428) #7, !dbg !738
  br label %cond.end834, !dbg !738

cond.end834:                                      ; preds = %cond.false831, %cond.true815
  %cond835 = phi i32 [ %or830, %cond.true815 ], [ %call833, %cond.false831 ], !dbg !738
  %shr836 = lshr i32 %cond835, 0, !dbg !738
  %and837 = and i32 %shr836, 65535, !dbg !738
  %conv838 = trunc i32 %and837 to i8, !dbg !738
  store i8 %conv838, i8* %v813, align 1, !dbg !738
  %m839 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %gre_protocol, i32 0, i32 0, !dbg !739
  %429 = load i8, i8* %m839, align 1, !dbg !739
  %tobool840 = icmp ne i8 %429, 0, !dbg !739
  br i1 %tobool840, label %if.then841, label %if.end844, !dbg !742

if.then841:                                       ; preds = %cond.end834
  %430 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !739
  %v842 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %gre_protocol, i32 0, i32 1, !dbg !739
  %431 = load i8, i8* %v842, align 1, !dbg !739
  %conv843 = zext i8 %431 to i32, !dbg !739
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %430, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i32 %conv843) #6, !dbg !739
  br label %if.end844, !dbg !739

if.end844:                                        ; preds = %if.then841, %cond.end834
  call void @llvm.dbg.declare(metadata %struct.anon.40* %vxlan_vni, metadata !743, metadata !DIExpression()), !dbg !749
  %m845 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %vxlan_vni, i32 0, i32 0, !dbg !749
  %432 = load i32*, i32** %mask.addr, align 8, !dbg !749
  %add.ptr846 = getelementptr i32, i32* %432, i64 5, !dbg !749
  %433 = load i32, i32* %add.ptr846, align 4, !dbg !749
  %434 = call i1 @llvm.is.constant.i32(i32 %433), !dbg !749
  br i1 %434, label %cond.true847, label %cond.false863, !dbg !749

cond.true847:                                     ; preds = %if.end844
  %435 = load i32*, i32** %mask.addr, align 8, !dbg !749
  %add.ptr848 = getelementptr i32, i32* %435, i64 5, !dbg !749
  %436 = load i32, i32* %add.ptr848, align 4, !dbg !749
  %and849 = and i32 %436, 255, !dbg !749
  %shl850 = shl i32 %and849, 24, !dbg !749
  %437 = load i32*, i32** %mask.addr, align 8, !dbg !749
  %add.ptr851 = getelementptr i32, i32* %437, i64 5, !dbg !749
  %438 = load i32, i32* %add.ptr851, align 4, !dbg !749
  %and852 = and i32 %438, 65280, !dbg !749
  %shl853 = shl i32 %and852, 8, !dbg !749
  %or854 = or i32 %shl850, %shl853, !dbg !749
  %439 = load i32*, i32** %mask.addr, align 8, !dbg !749
  %add.ptr855 = getelementptr i32, i32* %439, i64 5, !dbg !749
  %440 = load i32, i32* %add.ptr855, align 4, !dbg !749
  %and856 = and i32 %440, 16711680, !dbg !749
  %shr857 = lshr i32 %and856, 8, !dbg !749
  %or858 = or i32 %or854, %shr857, !dbg !749
  %441 = load i32*, i32** %mask.addr, align 8, !dbg !749
  %add.ptr859 = getelementptr i32, i32* %441, i64 5, !dbg !749
  %442 = load i32, i32* %add.ptr859, align 4, !dbg !749
  %and860 = and i32 %442, -16777216, !dbg !749
  %shr861 = lshr i32 %and860, 24, !dbg !749
  %or862 = or i32 %or858, %shr861, !dbg !749
  br label %cond.end866, !dbg !749

cond.false863:                                    ; preds = %if.end844
  %443 = load i32*, i32** %mask.addr, align 8, !dbg !749
  %add.ptr864 = getelementptr i32, i32* %443, i64 5, !dbg !749
  %444 = load i32, i32* %add.ptr864, align 4, !dbg !749
  %call865 = call i32 @__fswab32(i32 %444) #7, !dbg !749
  br label %cond.end866, !dbg !749

cond.end866:                                      ; preds = %cond.false863, %cond.true847
  %cond867 = phi i32 [ %or862, %cond.true847 ], [ %call865, %cond.false863 ], !dbg !749
  %shr868 = lshr i32 %cond867, 8, !dbg !749
  %and869 = and i32 %shr868, 16777215, !dbg !749
  store i32 %and869, i32* %m845, align 4, !dbg !749
  %v870 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %vxlan_vni, i32 0, i32 1, !dbg !749
  %445 = load i32*, i32** %value.addr, align 8, !dbg !749
  %add.ptr871 = getelementptr i32, i32* %445, i64 5, !dbg !749
  %446 = load i32, i32* %add.ptr871, align 4, !dbg !749
  %447 = call i1 @llvm.is.constant.i32(i32 %446), !dbg !749
  br i1 %447, label %cond.true872, label %cond.false888, !dbg !749

cond.true872:                                     ; preds = %cond.end866
  %448 = load i32*, i32** %value.addr, align 8, !dbg !749
  %add.ptr873 = getelementptr i32, i32* %448, i64 5, !dbg !749
  %449 = load i32, i32* %add.ptr873, align 4, !dbg !749
  %and874 = and i32 %449, 255, !dbg !749
  %shl875 = shl i32 %and874, 24, !dbg !749
  %450 = load i32*, i32** %value.addr, align 8, !dbg !749
  %add.ptr876 = getelementptr i32, i32* %450, i64 5, !dbg !749
  %451 = load i32, i32* %add.ptr876, align 4, !dbg !749
  %and877 = and i32 %451, 65280, !dbg !749
  %shl878 = shl i32 %and877, 8, !dbg !749
  %or879 = or i32 %shl875, %shl878, !dbg !749
  %452 = load i32*, i32** %value.addr, align 8, !dbg !749
  %add.ptr880 = getelementptr i32, i32* %452, i64 5, !dbg !749
  %453 = load i32, i32* %add.ptr880, align 4, !dbg !749
  %and881 = and i32 %453, 16711680, !dbg !749
  %shr882 = lshr i32 %and881, 8, !dbg !749
  %or883 = or i32 %or879, %shr882, !dbg !749
  %454 = load i32*, i32** %value.addr, align 8, !dbg !749
  %add.ptr884 = getelementptr i32, i32* %454, i64 5, !dbg !749
  %455 = load i32, i32* %add.ptr884, align 4, !dbg !749
  %and885 = and i32 %455, -16777216, !dbg !749
  %shr886 = lshr i32 %and885, 24, !dbg !749
  %or887 = or i32 %or883, %shr886, !dbg !749
  br label %cond.end891, !dbg !749

cond.false888:                                    ; preds = %cond.end866
  %456 = load i32*, i32** %value.addr, align 8, !dbg !749
  %add.ptr889 = getelementptr i32, i32* %456, i64 5, !dbg !749
  %457 = load i32, i32* %add.ptr889, align 4, !dbg !749
  %call890 = call i32 @__fswab32(i32 %457) #7, !dbg !749
  br label %cond.end891, !dbg !749

cond.end891:                                      ; preds = %cond.false888, %cond.true872
  %cond892 = phi i32 [ %or887, %cond.true872 ], [ %call890, %cond.false888 ], !dbg !749
  %shr893 = lshr i32 %cond892, 8, !dbg !749
  %and894 = and i32 %shr893, 16777215, !dbg !749
  store i32 %and894, i32* %v870, align 4, !dbg !749
  %m895 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %vxlan_vni, i32 0, i32 0, !dbg !750
  %458 = load i32, i32* %m895, align 4, !dbg !750
  %tobool896 = icmp ne i32 %458, 0, !dbg !750
  br i1 %tobool896, label %if.then897, label %if.end899, !dbg !753

if.then897:                                       ; preds = %cond.end891
  %459 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !750
  %v898 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %vxlan_vni, i32 0, i32 1, !dbg !750
  %460 = load i32, i32* %v898, align 4, !dbg !750
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %459, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32 %460) #6, !dbg !750
  br label %if.end899, !dbg !750

if.end899:                                        ; preds = %if.then897, %cond.end891
  call void @llvm.dbg.declare(metadata %struct.anon.41* %outer_ipv6_flow_label, metadata !754, metadata !DIExpression()), !dbg !760
  %m900 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %outer_ipv6_flow_label, i32 0, i32 0, !dbg !760
  %461 = load i32*, i32** %mask.addr, align 8, !dbg !760
  %add.ptr901 = getelementptr i32, i32* %461, i64 7, !dbg !760
  %462 = load i32, i32* %add.ptr901, align 4, !dbg !760
  %463 = call i1 @llvm.is.constant.i32(i32 %462), !dbg !760
  br i1 %463, label %cond.true902, label %cond.false918, !dbg !760

cond.true902:                                     ; preds = %if.end899
  %464 = load i32*, i32** %mask.addr, align 8, !dbg !760
  %add.ptr903 = getelementptr i32, i32* %464, i64 7, !dbg !760
  %465 = load i32, i32* %add.ptr903, align 4, !dbg !760
  %and904 = and i32 %465, 255, !dbg !760
  %shl905 = shl i32 %and904, 24, !dbg !760
  %466 = load i32*, i32** %mask.addr, align 8, !dbg !760
  %add.ptr906 = getelementptr i32, i32* %466, i64 7, !dbg !760
  %467 = load i32, i32* %add.ptr906, align 4, !dbg !760
  %and907 = and i32 %467, 65280, !dbg !760
  %shl908 = shl i32 %and907, 8, !dbg !760
  %or909 = or i32 %shl905, %shl908, !dbg !760
  %468 = load i32*, i32** %mask.addr, align 8, !dbg !760
  %add.ptr910 = getelementptr i32, i32* %468, i64 7, !dbg !760
  %469 = load i32, i32* %add.ptr910, align 4, !dbg !760
  %and911 = and i32 %469, 16711680, !dbg !760
  %shr912 = lshr i32 %and911, 8, !dbg !760
  %or913 = or i32 %or909, %shr912, !dbg !760
  %470 = load i32*, i32** %mask.addr, align 8, !dbg !760
  %add.ptr914 = getelementptr i32, i32* %470, i64 7, !dbg !760
  %471 = load i32, i32* %add.ptr914, align 4, !dbg !760
  %and915 = and i32 %471, -16777216, !dbg !760
  %shr916 = lshr i32 %and915, 24, !dbg !760
  %or917 = or i32 %or913, %shr916, !dbg !760
  br label %cond.end921, !dbg !760

cond.false918:                                    ; preds = %if.end899
  %472 = load i32*, i32** %mask.addr, align 8, !dbg !760
  %add.ptr919 = getelementptr i32, i32* %472, i64 7, !dbg !760
  %473 = load i32, i32* %add.ptr919, align 4, !dbg !760
  %call920 = call i32 @__fswab32(i32 %473) #7, !dbg !760
  br label %cond.end921, !dbg !760

cond.end921:                                      ; preds = %cond.false918, %cond.true902
  %cond922 = phi i32 [ %or917, %cond.true902 ], [ %call920, %cond.false918 ], !dbg !760
  %shr923 = lshr i32 %cond922, 0, !dbg !760
  %and924 = and i32 %shr923, 1048575, !dbg !760
  store i32 %and924, i32* %m900, align 4, !dbg !760
  %v925 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %outer_ipv6_flow_label, i32 0, i32 1, !dbg !760
  %474 = load i32*, i32** %value.addr, align 8, !dbg !760
  %add.ptr926 = getelementptr i32, i32* %474, i64 7, !dbg !760
  %475 = load i32, i32* %add.ptr926, align 4, !dbg !760
  %476 = call i1 @llvm.is.constant.i32(i32 %475), !dbg !760
  br i1 %476, label %cond.true927, label %cond.false943, !dbg !760

cond.true927:                                     ; preds = %cond.end921
  %477 = load i32*, i32** %value.addr, align 8, !dbg !760
  %add.ptr928 = getelementptr i32, i32* %477, i64 7, !dbg !760
  %478 = load i32, i32* %add.ptr928, align 4, !dbg !760
  %and929 = and i32 %478, 255, !dbg !760
  %shl930 = shl i32 %and929, 24, !dbg !760
  %479 = load i32*, i32** %value.addr, align 8, !dbg !760
  %add.ptr931 = getelementptr i32, i32* %479, i64 7, !dbg !760
  %480 = load i32, i32* %add.ptr931, align 4, !dbg !760
  %and932 = and i32 %480, 65280, !dbg !760
  %shl933 = shl i32 %and932, 8, !dbg !760
  %or934 = or i32 %shl930, %shl933, !dbg !760
  %481 = load i32*, i32** %value.addr, align 8, !dbg !760
  %add.ptr935 = getelementptr i32, i32* %481, i64 7, !dbg !760
  %482 = load i32, i32* %add.ptr935, align 4, !dbg !760
  %and936 = and i32 %482, 16711680, !dbg !760
  %shr937 = lshr i32 %and936, 8, !dbg !760
  %or938 = or i32 %or934, %shr937, !dbg !760
  %483 = load i32*, i32** %value.addr, align 8, !dbg !760
  %add.ptr939 = getelementptr i32, i32* %483, i64 7, !dbg !760
  %484 = load i32, i32* %add.ptr939, align 4, !dbg !760
  %and940 = and i32 %484, -16777216, !dbg !760
  %shr941 = lshr i32 %and940, 24, !dbg !760
  %or942 = or i32 %or938, %shr941, !dbg !760
  br label %cond.end946, !dbg !760

cond.false943:                                    ; preds = %cond.end921
  %485 = load i32*, i32** %value.addr, align 8, !dbg !760
  %add.ptr944 = getelementptr i32, i32* %485, i64 7, !dbg !760
  %486 = load i32, i32* %add.ptr944, align 4, !dbg !760
  %call945 = call i32 @__fswab32(i32 %486) #7, !dbg !760
  br label %cond.end946, !dbg !760

cond.end946:                                      ; preds = %cond.false943, %cond.true927
  %cond947 = phi i32 [ %or942, %cond.true927 ], [ %call945, %cond.false943 ], !dbg !760
  %shr948 = lshr i32 %cond947, 0, !dbg !760
  %and949 = and i32 %shr948, 1048575, !dbg !760
  store i32 %and949, i32* %v925, align 4, !dbg !760
  %m950 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %outer_ipv6_flow_label, i32 0, i32 0, !dbg !761
  %487 = load i32, i32* %m950, align 4, !dbg !761
  %tobool951 = icmp ne i32 %487, 0, !dbg !761
  br i1 %tobool951, label %if.then952, label %if.end954, !dbg !764

if.then952:                                       ; preds = %cond.end946
  %488 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !761
  %v953 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %outer_ipv6_flow_label, i32 0, i32 1, !dbg !761
  %489 = load i32, i32* %v953, align 4, !dbg !761
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i32 %489) #6, !dbg !761
  br label %if.end954, !dbg !761

if.end954:                                        ; preds = %if.then952, %cond.end946
  call void @llvm.dbg.declare(metadata %struct.anon.42* %inner_ipv6_flow_label, metadata !765, metadata !DIExpression()), !dbg !771
  %m955 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %inner_ipv6_flow_label, i32 0, i32 0, !dbg !771
  %490 = load i32*, i32** %mask.addr, align 8, !dbg !771
  %add.ptr956 = getelementptr i32, i32* %490, i64 8, !dbg !771
  %491 = load i32, i32* %add.ptr956, align 4, !dbg !771
  %492 = call i1 @llvm.is.constant.i32(i32 %491), !dbg !771
  br i1 %492, label %cond.true957, label %cond.false973, !dbg !771

cond.true957:                                     ; preds = %if.end954
  %493 = load i32*, i32** %mask.addr, align 8, !dbg !771
  %add.ptr958 = getelementptr i32, i32* %493, i64 8, !dbg !771
  %494 = load i32, i32* %add.ptr958, align 4, !dbg !771
  %and959 = and i32 %494, 255, !dbg !771
  %shl960 = shl i32 %and959, 24, !dbg !771
  %495 = load i32*, i32** %mask.addr, align 8, !dbg !771
  %add.ptr961 = getelementptr i32, i32* %495, i64 8, !dbg !771
  %496 = load i32, i32* %add.ptr961, align 4, !dbg !771
  %and962 = and i32 %496, 65280, !dbg !771
  %shl963 = shl i32 %and962, 8, !dbg !771
  %or964 = or i32 %shl960, %shl963, !dbg !771
  %497 = load i32*, i32** %mask.addr, align 8, !dbg !771
  %add.ptr965 = getelementptr i32, i32* %497, i64 8, !dbg !771
  %498 = load i32, i32* %add.ptr965, align 4, !dbg !771
  %and966 = and i32 %498, 16711680, !dbg !771
  %shr967 = lshr i32 %and966, 8, !dbg !771
  %or968 = or i32 %or964, %shr967, !dbg !771
  %499 = load i32*, i32** %mask.addr, align 8, !dbg !771
  %add.ptr969 = getelementptr i32, i32* %499, i64 8, !dbg !771
  %500 = load i32, i32* %add.ptr969, align 4, !dbg !771
  %and970 = and i32 %500, -16777216, !dbg !771
  %shr971 = lshr i32 %and970, 24, !dbg !771
  %or972 = or i32 %or968, %shr971, !dbg !771
  br label %cond.end976, !dbg !771

cond.false973:                                    ; preds = %if.end954
  %501 = load i32*, i32** %mask.addr, align 8, !dbg !771
  %add.ptr974 = getelementptr i32, i32* %501, i64 8, !dbg !771
  %502 = load i32, i32* %add.ptr974, align 4, !dbg !771
  %call975 = call i32 @__fswab32(i32 %502) #7, !dbg !771
  br label %cond.end976, !dbg !771

cond.end976:                                      ; preds = %cond.false973, %cond.true957
  %cond977 = phi i32 [ %or972, %cond.true957 ], [ %call975, %cond.false973 ], !dbg !771
  %shr978 = lshr i32 %cond977, 0, !dbg !771
  %and979 = and i32 %shr978, 1048575, !dbg !771
  store i32 %and979, i32* %m955, align 4, !dbg !771
  %v980 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %inner_ipv6_flow_label, i32 0, i32 1, !dbg !771
  %503 = load i32*, i32** %value.addr, align 8, !dbg !771
  %add.ptr981 = getelementptr i32, i32* %503, i64 8, !dbg !771
  %504 = load i32, i32* %add.ptr981, align 4, !dbg !771
  %505 = call i1 @llvm.is.constant.i32(i32 %504), !dbg !771
  br i1 %505, label %cond.true982, label %cond.false998, !dbg !771

cond.true982:                                     ; preds = %cond.end976
  %506 = load i32*, i32** %value.addr, align 8, !dbg !771
  %add.ptr983 = getelementptr i32, i32* %506, i64 8, !dbg !771
  %507 = load i32, i32* %add.ptr983, align 4, !dbg !771
  %and984 = and i32 %507, 255, !dbg !771
  %shl985 = shl i32 %and984, 24, !dbg !771
  %508 = load i32*, i32** %value.addr, align 8, !dbg !771
  %add.ptr986 = getelementptr i32, i32* %508, i64 8, !dbg !771
  %509 = load i32, i32* %add.ptr986, align 4, !dbg !771
  %and987 = and i32 %509, 65280, !dbg !771
  %shl988 = shl i32 %and987, 8, !dbg !771
  %or989 = or i32 %shl985, %shl988, !dbg !771
  %510 = load i32*, i32** %value.addr, align 8, !dbg !771
  %add.ptr990 = getelementptr i32, i32* %510, i64 8, !dbg !771
  %511 = load i32, i32* %add.ptr990, align 4, !dbg !771
  %and991 = and i32 %511, 16711680, !dbg !771
  %shr992 = lshr i32 %and991, 8, !dbg !771
  %or993 = or i32 %or989, %shr992, !dbg !771
  %512 = load i32*, i32** %value.addr, align 8, !dbg !771
  %add.ptr994 = getelementptr i32, i32* %512, i64 8, !dbg !771
  %513 = load i32, i32* %add.ptr994, align 4, !dbg !771
  %and995 = and i32 %513, -16777216, !dbg !771
  %shr996 = lshr i32 %and995, 24, !dbg !771
  %or997 = or i32 %or993, %shr996, !dbg !771
  br label %cond.end1001, !dbg !771

cond.false998:                                    ; preds = %cond.end976
  %514 = load i32*, i32** %value.addr, align 8, !dbg !771
  %add.ptr999 = getelementptr i32, i32* %514, i64 8, !dbg !771
  %515 = load i32, i32* %add.ptr999, align 4, !dbg !771
  %call1000 = call i32 @__fswab32(i32 %515) #7, !dbg !771
  br label %cond.end1001, !dbg !771

cond.end1001:                                     ; preds = %cond.false998, %cond.true982
  %cond1002 = phi i32 [ %or997, %cond.true982 ], [ %call1000, %cond.false998 ], !dbg !771
  %shr1003 = lshr i32 %cond1002, 0, !dbg !771
  %and1004 = and i32 %shr1003, 1048575, !dbg !771
  store i32 %and1004, i32* %v980, align 4, !dbg !771
  %m1005 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %inner_ipv6_flow_label, i32 0, i32 0, !dbg !772
  %516 = load i32, i32* %m1005, align 4, !dbg !772
  %tobool1006 = icmp ne i32 %516, 0, !dbg !772
  br i1 %tobool1006, label %if.then1007, label %if.end1009, !dbg !775

if.then1007:                                      ; preds = %cond.end1001
  %517 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !772
  %v1008 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %inner_ipv6_flow_label, i32 0, i32 1, !dbg !772
  %518 = load i32, i32* %v1008, align 4, !dbg !772
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %517, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i32 %518) #6, !dbg !772
  br label %if.end1009, !dbg !772

if.end1009:                                       ; preds = %if.then1007, %cond.end1001
  ret void, !dbg !776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_seq_putc(%struct.trace_seq* %s, i8 zeroext %c) #0 !dbg !777 {
entry:
  %s.addr = alloca %struct.trace_seq*, align 8
  %c.addr = alloca i8, align 1
  store %struct.trace_seq* %s, %struct.trace_seq** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %s.addr, metadata !780, metadata !DIExpression()), !dbg !781
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !782, metadata !DIExpression()), !dbg !783
  ret void, !dbg !784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @parse_fs_dst(%struct.trace_seq* %p, %struct.mlx5_flow_destination* %dst, i32 %counter_id) #0 !dbg !785 {
entry:
  %p.addr = alloca %struct.trace_seq*, align 8
  %dst.addr = alloca %struct.mlx5_flow_destination*, align 8
  %counter_id.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.trace_seq* %p, %struct.trace_seq** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_seq** %p.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  store %struct.mlx5_flow_destination* %dst, %struct.mlx5_flow_destination** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mlx5_flow_destination** %dst.addr, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i32 %counter_id, i32* %counter_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %counter_id.addr, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !1017, metadata !DIExpression()), !dbg !1018
  %0 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1019
  %call = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %0) #6, !dbg !1020
  store i8* %call, i8** %ret, align 8, !dbg !1018
  %1 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %dst.addr, align 8, !dbg !1021
  %type = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %1, i32 0, i32 0, !dbg !1022
  %2 = load i32, i32* %type, align 8, !dbg !1022
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 257, label %sw.bb2
    i32 2, label %sw.bb3
    i32 256, label %sw.bb4
    i32 153, label %sw.bb5
  ], !dbg !1023

sw.bb:                                            ; preds = %entry
  %3 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1024
  %4 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %dst.addr, align 8, !dbg !1026
  %5 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %4, i32 0, i32 1, !dbg !1027
  %vport = bitcast %union.anon* %5 to %struct.anon.1*, !dbg !1027
  %num = getelementptr inbounds %struct.anon.1, %struct.anon.1* %vport, i32 0, i32 0, !dbg !1028
  %6 = load i16, i16* %num, align 8, !dbg !1028
  %conv = zext i16 %6 to i32, !dbg !1026
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %conv) #6, !dbg !1029
  br label %sw.epilog, !dbg !1030

sw.bb1:                                           ; preds = %entry
  %7 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1031
  %8 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %dst.addr, align 8, !dbg !1032
  %9 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %8, i32 0, i32 1, !dbg !1033
  %ft = bitcast %union.anon* %9 to %struct.mlx5_flow_table**, !dbg !1033
  %10 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %ft, align 8, !dbg !1033
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.mlx5_flow_table* %10) #6, !dbg !1034
  br label %sw.epilog, !dbg !1035

sw.bb2:                                           ; preds = %entry
  %11 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1036
  %12 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %dst.addr, align 8, !dbg !1037
  %13 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %12, i32 0, i32 1, !dbg !1038
  %ft_num = bitcast %union.anon* %13 to i32*, !dbg !1038
  %14 = load i32, i32* %ft_num, align 8, !dbg !1038
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %14) #6, !dbg !1039
  br label %sw.epilog, !dbg !1040

sw.bb3:                                           ; preds = %entry
  %15 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1041
  %16 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %dst.addr, align 8, !dbg !1042
  %17 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %16, i32 0, i32 1, !dbg !1043
  %tir_num = bitcast %union.anon* %17 to i32*, !dbg !1043
  %18 = load i32, i32* %tir_num, align 8, !dbg !1043
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %18) #6, !dbg !1044
  br label %sw.epilog, !dbg !1045

sw.bb4:                                           ; preds = %entry
  %19 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1046
  %20 = load i32, i32* %counter_id.addr, align 4, !dbg !1047
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %20) #6, !dbg !1048
  br label %sw.epilog, !dbg !1049

sw.bb5:                                           ; preds = %entry
  %21 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1050
  call void (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1051
  br label %sw.epilog, !dbg !1052

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %22 = load %struct.trace_seq*, %struct.trace_seq** %p.addr, align 8, !dbg !1053
  call void @trace_seq_putc(%struct.trace_seq* %22, i8 zeroext 0) #6, !dbg !1054
  %23 = load i8*, i8** %ret, align 8, !dbg !1055
  ret i8* %23, !dbg !1056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @seq_buf_used(%struct.seq_buf* %s) #0 !dbg !1057 {
entry:
  %s.addr = alloca %struct.seq_buf*, align 8
  %__UNIQUE_ID___x198 = alloca i64, align 8
  %__UNIQUE_ID___y199 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.seq_buf* %s, %struct.seq_buf** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_buf** %s.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x198, metadata !1063, metadata !DIExpression()), !dbg !1065
  %0 = load %struct.seq_buf*, %struct.seq_buf** %s.addr, align 8, !dbg !1065
  %len = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %0, i32 0, i32 2, !dbg !1065
  %1 = load i64, i64* %len, align 8, !dbg !1065
  store i64 %1, i64* %__UNIQUE_ID___x198, align 8, !dbg !1065
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y199, metadata !1066, metadata !DIExpression()), !dbg !1065
  %2 = load %struct.seq_buf*, %struct.seq_buf** %s.addr, align 8, !dbg !1065
  %size = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %2, i32 0, i32 1, !dbg !1065
  %3 = load i64, i64* %size, align 8, !dbg !1065
  store i64 %3, i64* %__UNIQUE_ID___y199, align 8, !dbg !1065
  %4 = load i64, i64* %__UNIQUE_ID___x198, align 8, !dbg !1065
  %5 = load i64, i64* %__UNIQUE_ID___y199, align 8, !dbg !1065
  %cmp = icmp ult i64 %4, %5, !dbg !1065
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1065

cond.true:                                        ; preds = %entry
  %6 = load i64, i64* %__UNIQUE_ID___x198, align 8, !dbg !1065
  br label %cond.end, !dbg !1065

cond.false:                                       ; preds = %entry
  %7 = load i64, i64* %__UNIQUE_ID___y199, align 8, !dbg !1065
  br label %cond.end, !dbg !1065

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !1065
  store i64 %cond, i64* %tmp, align 8, !dbg !1065
  %8 = load i64, i64* %tmp, align 8, !dbg !1065
  %conv = trunc i64 %8 to i32, !dbg !1067
  ret i32 %conv, !dbg !1068
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #3 !dbg !1069 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load i32, i32* %val.addr, align 4, !dbg !1075
  %call = call i32 @__arch_swab32(i32 %0) #7, !dbg !1076
  ret i32 %call, !dbg !1077
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #3 !dbg !1078 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1080, metadata !DIExpression()), !dbg !1081
  %0 = load i32, i32* %val.addr, align 4, !dbg !1082
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !dbg !1083, !srcloc !1084
  store i32 %1, i32* %val.addr, align 4, !dbg !1083
  %2 = load i32, i32* %val.addr, align 4, !dbg !1085
  ret i32 %2, !dbg !1086
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind readnone }
attributes #8 = { nounwind readnone }

!llvm.dbg.cu = !{!43}
!llvm.module.flags = !{!146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "full_ones", scope: !2, file: !3, line: 100, type: !124, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "print_lyr_2_4_hdrs", scope: !3, file: !3, line: 63, type: !4, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!3 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlx5/core/diag/fs_tracepoint.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !36, !36}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !8, line: 14, size: 33088, elements: !9)
!8 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !15, !34}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !7, file: !8, line: 15, baseType: !11, size: 32768)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32768, elements: !13)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!14}
!14 = !DISubrange(count: 4096)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !7, file: !8, line: 16, baseType: !16, size: 256, offset: 32768)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !17, line: 19, size: 256, elements: !18)
!17 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !22, !29, !30}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !16, file: !17, line: 20, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !16, file: !17, line: 21, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 55, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !26, line: 72, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !26, line: 16, baseType: !28)
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !16, file: !17, line: 22, baseType: !23, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !16, file: !17, line: 23, baseType: !31, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !24, line: 46, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !26, line: 88, baseType: !33)
!33 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !7, file: !8, line: 17, baseType: !35, size: 32, offset: 33024)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !39, line: 21, baseType: !40)
!39 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !41, line: 27, baseType: !42)
!41 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !111, globals: !122, splitDebugInlining: false, nameTableKind: None)
!44 = !{!45, !52, !60, !70, !82, !86, !91}
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 7913, baseType: !42, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mlx5/mlx5_ifc.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_OUTER_HEADERS", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_INNER_HEADERS", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "MLX5_CREATE_FLOW_GROUP_IN_MATCH_CRITERIA_ENABLE_MISC_PARAMETERS_2", value: 3, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlx5_flow_destination_type", file: !46, line: 1622, baseType: !42, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !DIEnumerator(name: "MLX5_FLOW_DESTINATION_TYPE_VPORT", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "MLX5_FLOW_DESTINATION_TYPE_TIR", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "MLX5_FLOW_DESTINATION_TYPE_PORT", value: 153, isUnsigned: true)
!58 = !DIEnumerator(name: "MLX5_FLOW_DESTINATION_TYPE_COUNTER", value: 256, isUnsigned: true)
!59 = !DIEnumerator(name: "MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM", value: 257, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_node_type", file: !61, line: 80, baseType: !42, size: 32, elements: !62)
!61 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlx5/core/diag/../fs_core.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !DIEnumerator(name: "FS_TYPE_NAMESPACE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "FS_TYPE_PRIO", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "FS_TYPE_PRIO_CHAINS", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "FS_TYPE_FLOW_TABLE", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "FS_TYPE_FLOW_GROUP", value: 4, isUnsigned: true)
!68 = !DIEnumerator(name: "FS_TYPE_FLOW_ENTRY", value: 5, isUnsigned: true)
!69 = !DIEnumerator(name: "FS_TYPE_FLOW_DEST", value: 6, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_flow_table_type", file: !61, line: 90, baseType: !42, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!72 = !DIEnumerator(name: "FS_FT_NIC_RX", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "FS_FT_NIC_TX", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "FS_FT_ESW_EGRESS_ACL", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "FS_FT_ESW_INGRESS_ACL", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "FS_FT_FDB", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "FS_FT_SNIFFER_RX", value: 5, isUnsigned: true)
!78 = !DIEnumerator(name: "FS_FT_SNIFFER_TX", value: 6, isUnsigned: true)
!79 = !DIEnumerator(name: "FS_FT_RDMA_RX", value: 7, isUnsigned: true)
!80 = !DIEnumerator(name: "FS_FT_RDMA_TX", value: 8, isUnsigned: true)
!81 = !DIEnumerator(name: "FS_FT_MAX_TYPE", value: 8, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fs_flow_table_op_mod", file: !61, line: 103, baseType: !42, size: 32, elements: !83)
!83 = !{!84, !85}
!84 = !DIEnumerator(name: "FS_FT_OP_MOD_NORMAL", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "FS_FT_OP_MOD_LAG_DEMUX", value: 1, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlx5_flow_table_miss_action", file: !46, line: 1632, baseType: !42, size: 32, elements: !87)
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "MLX5_FLOW_TABLE_MISS_ACTION_DEF", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "MLX5_FLOW_TABLE_MISS_ACTION_FWD", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "MLX5_FLOW_TABLE_MISS_ACTION_SWITCH_DOMAIN", value: 2, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mlx5_flow_namespace_type", file: !92, line: 65, baseType: !42, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/mlx5/fs.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!94 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_BYPASS", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_LAG", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_OFFLOADS", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_ETHTOOL", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_KERNEL", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_LEFTOVERS", value: 5, isUnsigned: true)
!100 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_ANCHOR", value: 6, isUnsigned: true)
!101 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_FDB", value: 7, isUnsigned: true)
!102 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_ESW_EGRESS", value: 8, isUnsigned: true)
!103 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_ESW_INGRESS", value: 9, isUnsigned: true)
!104 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_SNIFFER_RX", value: 10, isUnsigned: true)
!105 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_SNIFFER_TX", value: 11, isUnsigned: true)
!106 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_EGRESS", value: 12, isUnsigned: true)
!107 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_EGRESS_KERNEL", value: 13, isUnsigned: true)
!108 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_RDMA_RX", value: 14, isUnsigned: true)
!109 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_RDMA_RX_KERNEL", value: 15, isUnsigned: true)
!110 = !DIEnumerator(name: "MLX5_FLOW_NAMESPACE_RDMA_TX", value: 16, isUnsigned: true)
!111 = !{!40, !112, !114, !38, !115, !118, !119, !120}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !113, line: 32, baseType: !40)
!113 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !39, line: 17, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !41, line: 21, baseType: !12)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 102, baseType: !116)
!122 = !{!0}
!123 = !{}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !126, line: 33, size: 128, elements: !127)
!126 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !125, file: !126, line: 40, baseType: !129, size: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !126, line: 34, size: 128, elements: !130)
!130 = !{!131, !135, !142}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !129, file: !126, line: 35, baseType: !132, size: 128)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !129, file: !126, line: 37, baseType: !136, size: 128)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !140)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !113, line: 30, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !41, line: 24, baseType: !139)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !{!141}
!141 = !DISubrange(count: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !129, file: !126, line: 38, baseType: !143, size: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 4)
!146 = !{i32 7, !"Dwarf Version", i32 4}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"Code Model", i32 2}
!150 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!151 = distinct !DISubprogram(name: "parse_fs_hdrs", scope: !3, file: !3, line: 200, type: !152, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !123)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !6, !116, !36, !36, !36, !36, !36, !36}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!156 = !DILocalVariable(name: "p", arg: 1, scope: !151, file: !3, line: 200, type: !6)
!157 = !DILocation(line: 200, column: 45, scope: !151)
!158 = !DILocalVariable(name: "match_criteria_enable", arg: 2, scope: !151, file: !3, line: 201, type: !116)
!159 = !DILocation(line: 201, column: 9, scope: !151)
!160 = !DILocalVariable(name: "mask_outer", arg: 3, scope: !151, file: !3, line: 202, type: !36)
!161 = !DILocation(line: 202, column: 17, scope: !151)
!162 = !DILocalVariable(name: "mask_misc", arg: 4, scope: !151, file: !3, line: 203, type: !36)
!163 = !DILocation(line: 203, column: 17, scope: !151)
!164 = !DILocalVariable(name: "mask_inner", arg: 5, scope: !151, file: !3, line: 204, type: !36)
!165 = !DILocation(line: 204, column: 17, scope: !151)
!166 = !DILocalVariable(name: "value_outer", arg: 6, scope: !151, file: !3, line: 205, type: !36)
!167 = !DILocation(line: 205, column: 17, scope: !151)
!168 = !DILocalVariable(name: "value_misc", arg: 7, scope: !151, file: !3, line: 206, type: !36)
!169 = !DILocation(line: 206, column: 17, scope: !151)
!170 = !DILocalVariable(name: "value_inner", arg: 8, scope: !151, file: !3, line: 207, type: !36)
!171 = !DILocation(line: 207, column: 17, scope: !151)
!172 = !DILocalVariable(name: "ret", scope: !151, file: !3, line: 209, type: !154)
!173 = !DILocation(line: 209, column: 14, scope: !151)
!174 = !DILocation(line: 209, column: 41, scope: !151)
!175 = !DILocation(line: 209, column: 20, scope: !151)
!176 = !DILocation(line: 211, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !151, file: !3, line: 211, column: 6)
!178 = !DILocation(line: 211, column: 28, scope: !177)
!179 = !DILocation(line: 211, column: 6, scope: !151)
!180 = !DILocation(line: 213, column: 20, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 212, column: 74)
!182 = !DILocation(line: 213, column: 3, scope: !181)
!183 = !DILocation(line: 214, column: 22, scope: !181)
!184 = !DILocation(line: 214, column: 25, scope: !181)
!185 = !DILocation(line: 214, column: 37, scope: !181)
!186 = !DILocation(line: 214, column: 3, scope: !181)
!187 = !DILocation(line: 215, column: 2, scope: !181)
!188 = !DILocation(line: 217, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !151, file: !3, line: 217, column: 6)
!190 = !DILocation(line: 217, column: 28, scope: !189)
!191 = !DILocation(line: 217, column: 6, scope: !151)
!192 = !DILocation(line: 219, column: 20, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 218, column: 76)
!194 = !DILocation(line: 219, column: 3, scope: !193)
!195 = !DILocation(line: 220, column: 30, scope: !193)
!196 = !DILocation(line: 220, column: 33, scope: !193)
!197 = !DILocation(line: 220, column: 44, scope: !193)
!198 = !DILocation(line: 220, column: 3, scope: !193)
!199 = !DILocation(line: 221, column: 2, scope: !193)
!200 = !DILocation(line: 222, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !151, file: !3, line: 222, column: 6)
!202 = !DILocation(line: 222, column: 28, scope: !201)
!203 = !DILocation(line: 222, column: 6, scope: !151)
!204 = !DILocation(line: 224, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !3, line: 223, column: 74)
!206 = !DILocation(line: 224, column: 3, scope: !205)
!207 = !DILocation(line: 225, column: 22, scope: !205)
!208 = !DILocation(line: 225, column: 25, scope: !205)
!209 = !DILocation(line: 225, column: 37, scope: !205)
!210 = !DILocation(line: 225, column: 3, scope: !205)
!211 = !DILocation(line: 226, column: 2, scope: !205)
!212 = !DILocation(line: 227, column: 17, scope: !151)
!213 = !DILocation(line: 227, column: 2, scope: !151)
!214 = !DILocation(line: 228, column: 9, scope: !151)
!215 = !DILocation(line: 228, column: 2, scope: !151)
!216 = distinct !DISubprogram(name: "trace_seq_buffer_ptr", scope: !8, file: !8, line: 55, type: !217, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !6}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!220 = !DILocalVariable(name: "s", arg: 1, scope: !216, file: !8, line: 55, type: !6)
!221 = !DILocation(line: 55, column: 40, scope: !216)
!222 = !DILocation(line: 57, column: 9, scope: !216)
!223 = !DILocation(line: 57, column: 12, scope: !216)
!224 = !DILocation(line: 57, column: 35, scope: !216)
!225 = !DILocation(line: 57, column: 38, scope: !216)
!226 = !DILocation(line: 57, column: 21, scope: !216)
!227 = !DILocation(line: 57, column: 19, scope: !216)
!228 = !DILocation(line: 57, column: 2, scope: !216)
!229 = distinct !DISubprogram(name: "trace_seq_printf", scope: !8, file: !8, line: 100, type: !230, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !6, !154, null}
!232 = !DILocalVariable(name: "s", arg: 1, scope: !229, file: !8, line: 100, type: !6)
!233 = !DILocation(line: 100, column: 55, scope: !229)
!234 = !DILocalVariable(name: "fmt", arg: 2, scope: !229, file: !8, line: 100, type: !154)
!235 = !DILocation(line: 100, column: 70, scope: !229)
!236 = !DILocation(line: 102, column: 1, scope: !229)
!237 = !DILocalVariable(name: "p", arg: 1, scope: !2, file: !3, line: 63, type: !6)
!238 = !DILocation(line: 63, column: 50, scope: !2)
!239 = !DILocalVariable(name: "mask", arg: 2, scope: !2, file: !3, line: 64, type: !36)
!240 = !DILocation(line: 64, column: 22, scope: !2)
!241 = !DILocalVariable(name: "value", arg: 3, scope: !2, file: !3, line: 64, type: !36)
!242 = !DILocation(line: 64, column: 39, scope: !2)
!243 = !DILocalVariable(name: "smac", scope: !2, file: !3, line: 68, type: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 68, size: 128, elements: !245)
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !244, file: !3, line: 68, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !39, line: 23, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !41, line: 31, baseType: !249)
!249 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !244, file: !3, line: 68, baseType: !247, size: 64, offset: 64)
!251 = !DILocation(line: 68, column: 2, scope: !2)
!252 = !DILocation(line: 68, column: 32, scope: !2)
!253 = !DILocation(line: 69, column: 8, scope: !2)
!254 = !DILocation(line: 69, column: 58, scope: !2)
!255 = !DILocation(line: 70, column: 8, scope: !2)
!256 = !DILocation(line: 69, column: 64, scope: !2)
!257 = !DILocation(line: 71, column: 8, scope: !2)
!258 = !DILocation(line: 71, column: 59, scope: !2)
!259 = !DILocation(line: 72, column: 8, scope: !2)
!260 = !DILocation(line: 71, column: 65, scope: !2)
!261 = !DILocalVariable(name: "dmac", scope: !2, file: !3, line: 73, type: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 73, size: 128, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !262, file: !3, line: 73, baseType: !247, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !262, file: !3, line: 73, baseType: !247, size: 64, offset: 64)
!266 = !DILocation(line: 73, column: 2, scope: !2)
!267 = !DILocation(line: 73, column: 32, scope: !2)
!268 = !DILocation(line: 74, column: 8, scope: !2)
!269 = !DILocation(line: 74, column: 58, scope: !2)
!270 = !DILocation(line: 75, column: 8, scope: !2)
!271 = !DILocation(line: 74, column: 64, scope: !2)
!272 = !DILocation(line: 76, column: 8, scope: !2)
!273 = !DILocation(line: 76, column: 59, scope: !2)
!274 = !DILocation(line: 77, column: 8, scope: !2)
!275 = !DILocation(line: 76, column: 65, scope: !2)
!276 = !DILocalVariable(name: "ethertype", scope: !2, file: !3, line: 78, type: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 78, size: 32, elements: !278)
!278 = !{!279, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !277, file: !3, line: 78, baseType: !280, size: 16)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !39, line: 19, baseType: !138)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !277, file: !3, line: 78, baseType: !280, size: 16, offset: 16)
!282 = !DILocation(line: 78, column: 2, scope: !2)
!283 = !DILocalVariable(name: "ip_version", scope: !2, file: !3, line: 79, type: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 79, size: 16, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !284, file: !3, line: 79, baseType: !116, size: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !284, file: !3, line: 79, baseType: !116, size: 8, offset: 8)
!288 = !DILocation(line: 79, column: 2, scope: !2)
!289 = !DILocation(line: 81, column: 2, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 81, column: 2)
!291 = distinct !DILexicalBlock(scope: !2, file: !3, line: 81, column: 2)
!292 = !DILocation(line: 81, column: 2, scope: !291)
!293 = !DILocation(line: 82, column: 2, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 82, column: 2)
!295 = distinct !DILexicalBlock(scope: !2, file: !3, line: 82, column: 2)
!296 = !DILocation(line: 82, column: 2, scope: !295)
!297 = !DILocation(line: 83, column: 2, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 83, column: 2)
!299 = distinct !DILexicalBlock(scope: !2, file: !3, line: 83, column: 2)
!300 = !DILocation(line: 83, column: 2, scope: !299)
!301 = !DILocation(line: 85, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !2, file: !3, line: 85, column: 6)
!303 = !DILocation(line: 85, column: 7, scope: !302)
!304 = !DILocation(line: 85, column: 19, scope: !302)
!305 = !DILocation(line: 85, column: 29, scope: !302)
!306 = !DILocation(line: 85, column: 42, scope: !302)
!307 = !DILocation(line: 85, column: 32, scope: !302)
!308 = !DILocation(line: 85, column: 44, scope: !302)
!309 = !DILocation(line: 85, column: 57, scope: !302)
!310 = !DILocation(line: 86, column: 18, scope: !302)
!311 = !DILocation(line: 86, column: 7, scope: !302)
!312 = !DILocation(line: 86, column: 20, scope: !302)
!313 = !DILocation(line: 86, column: 27, scope: !302)
!314 = !DILocation(line: 86, column: 41, scope: !302)
!315 = !DILocation(line: 86, column: 30, scope: !302)
!316 = !DILocation(line: 86, column: 43, scope: !302)
!317 = !DILocation(line: 85, column: 6, scope: !2)
!318 = !DILocalVariable(name: "src_ipv4", scope: !319, file: !3, line: 89, type: !320)
!319 = distinct !DILexicalBlock(scope: !302, file: !3, line: 86, column: 50)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 89, size: 64, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !320, file: !3, line: 89, baseType: !38, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !320, file: !3, line: 89, baseType: !38, size: 32, offset: 32)
!324 = !DILocation(line: 89, column: 3, scope: !319)
!325 = !DILocalVariable(name: "tmp", scope: !326, file: !3, line: 89, type: !38)
!326 = distinct !DILexicalBlock(scope: !319, file: !3, line: 89, column: 3)
!327 = !DILocation(line: 89, column: 3, scope: !326)
!328 = !DILocalVariable(name: "tmp", scope: !329, file: !3, line: 89, type: !38)
!329 = distinct !DILexicalBlock(scope: !319, file: !3, line: 89, column: 3)
!330 = !DILocation(line: 89, column: 3, scope: !329)
!331 = !DILocalVariable(name: "dst_ipv4", scope: !319, file: !3, line: 91, type: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 91, size: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !332, file: !3, line: 91, baseType: !38, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !332, file: !3, line: 91, baseType: !38, size: 32, offset: 32)
!336 = !DILocation(line: 91, column: 3, scope: !319)
!337 = !DILocalVariable(name: "tmp", scope: !338, file: !3, line: 91, type: !38)
!338 = distinct !DILexicalBlock(scope: !319, file: !3, line: 91, column: 3)
!339 = !DILocation(line: 91, column: 3, scope: !338)
!340 = !DILocalVariable(name: "tmp", scope: !341, file: !3, line: 91, type: !38)
!341 = distinct !DILexicalBlock(scope: !319, file: !3, line: 91, column: 3)
!342 = !DILocation(line: 91, column: 3, scope: !341)
!343 = !DILocation(line: 94, column: 3, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 94, column: 3)
!345 = distinct !DILexicalBlock(scope: !319, file: !3, line: 94, column: 3)
!346 = !DILocation(line: 94, column: 3, scope: !345)
!347 = !DILocation(line: 96, column: 3, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 96, column: 3)
!349 = distinct !DILexicalBlock(scope: !319, file: !3, line: 96, column: 3)
!350 = !DILocation(line: 96, column: 3, scope: !349)
!351 = !DILocation(line: 98, column: 2, scope: !319)
!352 = !DILocation(line: 98, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !302, file: !3, line: 98, column: 13)
!354 = !DILocation(line: 98, column: 14, scope: !353)
!355 = !DILocation(line: 98, column: 26, scope: !353)
!356 = !DILocation(line: 98, column: 36, scope: !353)
!357 = !DILocation(line: 98, column: 49, scope: !353)
!358 = !DILocation(line: 98, column: 39, scope: !353)
!359 = !DILocation(line: 98, column: 51, scope: !353)
!360 = !DILocation(line: 98, column: 66, scope: !353)
!361 = !DILocation(line: 99, column: 18, scope: !353)
!362 = !DILocation(line: 99, column: 7, scope: !353)
!363 = !DILocation(line: 99, column: 20, scope: !353)
!364 = !DILocation(line: 99, column: 27, scope: !353)
!365 = !DILocation(line: 99, column: 41, scope: !353)
!366 = !DILocation(line: 99, column: 30, scope: !353)
!367 = !DILocation(line: 99, column: 43, scope: !353)
!368 = !DILocation(line: 98, column: 13, scope: !302)
!369 = !DILocalVariable(name: "src_ipv6", scope: !370, file: !3, line: 106, type: !371)
!370 = distinct !DILexicalBlock(scope: !353, file: !3, line: 99, column: 50)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 106, size: 256, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !371, file: !3, line: 106, baseType: !125, size: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !371, file: !3, line: 106, baseType: !125, size: 128, offset: 128)
!375 = !DILocation(line: 106, column: 3, scope: !370)
!376 = !DILocalVariable(name: "dst_ipv6", scope: !370, file: !3, line: 107, type: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 107, size: 256, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !377, file: !3, line: 107, baseType: !125, size: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !377, file: !3, line: 107, baseType: !125, size: 128, offset: 128)
!381 = !DILocation(line: 107, column: 3, scope: !370)
!382 = !DILocation(line: 109, column: 19, scope: !370)
!383 = !DILocation(line: 109, column: 21, scope: !370)
!384 = !DILocation(line: 109, column: 27, scope: !370)
!385 = !DILocation(line: 109, column: 3, scope: !370)
!386 = !DILocation(line: 110, column: 10, scope: !370)
!387 = !DILocation(line: 113, column: 19, scope: !370)
!388 = !DILocation(line: 113, column: 21, scope: !370)
!389 = !DILocation(line: 113, column: 27, scope: !370)
!390 = !DILocation(line: 113, column: 3, scope: !370)
!391 = !DILocation(line: 114, column: 10, scope: !370)
!392 = !DILocation(line: 117, column: 19, scope: !370)
!393 = !DILocation(line: 117, column: 21, scope: !370)
!394 = !DILocation(line: 117, column: 27, scope: !370)
!395 = !DILocation(line: 117, column: 3, scope: !370)
!396 = !DILocation(line: 118, column: 10, scope: !370)
!397 = !DILocation(line: 121, column: 19, scope: !370)
!398 = !DILocation(line: 121, column: 21, scope: !370)
!399 = !DILocation(line: 121, column: 27, scope: !370)
!400 = !DILocation(line: 121, column: 3, scope: !370)
!401 = !DILocation(line: 122, column: 10, scope: !370)
!402 = !DILocation(line: 126, column: 25, scope: !403)
!403 = distinct !DILexicalBlock(scope: !370, file: !3, line: 126, column: 7)
!404 = !DILocation(line: 126, column: 15, scope: !403)
!405 = !DILocation(line: 126, column: 8, scope: !403)
!406 = !DILocation(line: 126, column: 7, scope: !370)
!407 = !DILocation(line: 127, column: 21, scope: !403)
!408 = !DILocation(line: 128, column: 17, scope: !403)
!409 = !DILocation(line: 127, column: 4, scope: !403)
!410 = !DILocation(line: 129, column: 25, scope: !411)
!411 = distinct !DILexicalBlock(scope: !370, file: !3, line: 129, column: 7)
!412 = !DILocation(line: 129, column: 15, scope: !411)
!413 = !DILocation(line: 129, column: 8, scope: !411)
!414 = !DILocation(line: 129, column: 7, scope: !370)
!415 = !DILocation(line: 130, column: 21, scope: !411)
!416 = !DILocation(line: 131, column: 17, scope: !411)
!417 = !DILocation(line: 130, column: 4, scope: !411)
!418 = !DILocation(line: 132, column: 2, scope: !370)
!419 = !DILocalVariable(name: "ip_protocol", scope: !420, file: !3, line: 139, type: !421)
!420 = distinct !DILexicalBlock(scope: !2, file: !3, line: 139, column: 2)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 139, size: 16, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !421, file: !3, line: 139, baseType: !116, size: 8)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !421, file: !3, line: 139, baseType: !116, size: 8, offset: 8)
!425 = !DILocation(line: 139, column: 2, scope: !420)
!426 = !DILocation(line: 139, column: 2, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 139, column: 2)
!428 = distinct !DILexicalBlock(scope: !420, file: !3, line: 139, column: 2)
!429 = !DILocation(line: 139, column: 2, scope: !428)
!430 = !DILocalVariable(name: "tcp_flags", scope: !431, file: !3, line: 140, type: !432)
!431 = distinct !DILexicalBlock(scope: !2, file: !3, line: 140, column: 2)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 140, size: 32, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !432, file: !3, line: 140, baseType: !280, size: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !432, file: !3, line: 140, baseType: !280, size: 16, offset: 16)
!436 = !DILocation(line: 140, column: 2, scope: !431)
!437 = !DILocation(line: 140, column: 2, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 140, column: 2)
!439 = distinct !DILexicalBlock(scope: !431, file: !3, line: 140, column: 2)
!440 = !DILocation(line: 140, column: 2, scope: !439)
!441 = !DILocalVariable(name: "tcp_sport", scope: !442, file: !3, line: 141, type: !443)
!442 = distinct !DILexicalBlock(scope: !2, file: !3, line: 141, column: 2)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 141, size: 32, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !443, file: !3, line: 141, baseType: !280, size: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !443, file: !3, line: 141, baseType: !280, size: 16, offset: 16)
!447 = !DILocation(line: 141, column: 2, scope: !442)
!448 = !DILocation(line: 141, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 141, column: 2)
!450 = distinct !DILexicalBlock(scope: !442, file: !3, line: 141, column: 2)
!451 = !DILocation(line: 141, column: 2, scope: !450)
!452 = !DILocalVariable(name: "tcp_dport", scope: !453, file: !3, line: 142, type: !454)
!453 = distinct !DILexicalBlock(scope: !2, file: !3, line: 142, column: 2)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 142, size: 32, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !454, file: !3, line: 142, baseType: !280, size: 16)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !454, file: !3, line: 142, baseType: !280, size: 16, offset: 16)
!458 = !DILocation(line: 142, column: 2, scope: !453)
!459 = !DILocation(line: 142, column: 2, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 142, column: 2)
!461 = distinct !DILexicalBlock(scope: !453, file: !3, line: 142, column: 2)
!462 = !DILocation(line: 142, column: 2, scope: !461)
!463 = !DILocalVariable(name: "udp_sport", scope: !464, file: !3, line: 143, type: !465)
!464 = distinct !DILexicalBlock(scope: !2, file: !3, line: 143, column: 2)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 143, size: 32, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !465, file: !3, line: 143, baseType: !280, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !465, file: !3, line: 143, baseType: !280, size: 16, offset: 16)
!469 = !DILocation(line: 143, column: 2, scope: !464)
!470 = !DILocation(line: 143, column: 2, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 143, column: 2)
!472 = distinct !DILexicalBlock(scope: !464, file: !3, line: 143, column: 2)
!473 = !DILocation(line: 143, column: 2, scope: !472)
!474 = !DILocalVariable(name: "udp_dport", scope: !475, file: !3, line: 144, type: !476)
!475 = distinct !DILexicalBlock(scope: !2, file: !3, line: 144, column: 2)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 144, size: 32, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !476, file: !3, line: 144, baseType: !280, size: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !476, file: !3, line: 144, baseType: !280, size: 16, offset: 16)
!480 = !DILocation(line: 144, column: 2, scope: !475)
!481 = !DILocation(line: 144, column: 2, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 144, column: 2)
!483 = distinct !DILexicalBlock(scope: !475, file: !3, line: 144, column: 2)
!484 = !DILocation(line: 144, column: 2, scope: !483)
!485 = !DILocalVariable(name: "first_vid", scope: !486, file: !3, line: 145, type: !487)
!486 = distinct !DILexicalBlock(scope: !2, file: !3, line: 145, column: 2)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 145, size: 32, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !487, file: !3, line: 145, baseType: !280, size: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !487, file: !3, line: 145, baseType: !280, size: 16, offset: 16)
!491 = !DILocation(line: 145, column: 2, scope: !486)
!492 = !DILocation(line: 145, column: 2, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 145, column: 2)
!494 = distinct !DILexicalBlock(scope: !486, file: !3, line: 145, column: 2)
!495 = !DILocation(line: 145, column: 2, scope: !494)
!496 = !DILocalVariable(name: "first_prio", scope: !497, file: !3, line: 146, type: !498)
!497 = distinct !DILexicalBlock(scope: !2, file: !3, line: 146, column: 2)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 146, size: 16, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !498, file: !3, line: 146, baseType: !116, size: 8)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !498, file: !3, line: 146, baseType: !116, size: 8, offset: 8)
!502 = !DILocation(line: 146, column: 2, scope: !497)
!503 = !DILocation(line: 146, column: 2, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 146, column: 2)
!505 = distinct !DILexicalBlock(scope: !497, file: !3, line: 146, column: 2)
!506 = !DILocation(line: 146, column: 2, scope: !505)
!507 = !DILocalVariable(name: "first_cfi", scope: !508, file: !3, line: 147, type: !509)
!508 = distinct !DILexicalBlock(scope: !2, file: !3, line: 147, column: 2)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 147, size: 16, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !509, file: !3, line: 147, baseType: !116, size: 8)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !509, file: !3, line: 147, baseType: !116, size: 8, offset: 8)
!513 = !DILocation(line: 147, column: 2, scope: !508)
!514 = !DILocation(line: 147, column: 2, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 147, column: 2)
!516 = distinct !DILexicalBlock(scope: !508, file: !3, line: 147, column: 2)
!517 = !DILocation(line: 147, column: 2, scope: !516)
!518 = !DILocalVariable(name: "ip_dscp", scope: !519, file: !3, line: 148, type: !520)
!519 = distinct !DILexicalBlock(scope: !2, file: !3, line: 148, column: 2)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 148, size: 16, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !520, file: !3, line: 148, baseType: !116, size: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !520, file: !3, line: 148, baseType: !116, size: 8, offset: 8)
!524 = !DILocation(line: 148, column: 2, scope: !519)
!525 = !DILocation(line: 148, column: 2, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 148, column: 2)
!527 = distinct !DILexicalBlock(scope: !519, file: !3, line: 148, column: 2)
!528 = !DILocation(line: 148, column: 2, scope: !527)
!529 = !DILocalVariable(name: "ip_ecn", scope: !530, file: !3, line: 149, type: !531)
!530 = distinct !DILexicalBlock(scope: !2, file: !3, line: 149, column: 2)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 149, size: 16, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !531, file: !3, line: 149, baseType: !116, size: 8)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !531, file: !3, line: 149, baseType: !116, size: 8, offset: 8)
!535 = !DILocation(line: 149, column: 2, scope: !530)
!536 = !DILocation(line: 149, column: 2, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 149, column: 2)
!538 = distinct !DILexicalBlock(scope: !530, file: !3, line: 149, column: 2)
!539 = !DILocation(line: 149, column: 2, scope: !538)
!540 = !DILocalVariable(name: "cvlan_tag", scope: !541, file: !3, line: 150, type: !542)
!541 = distinct !DILexicalBlock(scope: !2, file: !3, line: 150, column: 2)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 150, size: 16, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !542, file: !3, line: 150, baseType: !116, size: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !542, file: !3, line: 150, baseType: !116, size: 8, offset: 8)
!546 = !DILocation(line: 150, column: 2, scope: !541)
!547 = !DILocation(line: 150, column: 2, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 150, column: 2)
!549 = distinct !DILexicalBlock(scope: !541, file: !3, line: 150, column: 2)
!550 = !DILocation(line: 150, column: 2, scope: !549)
!551 = !DILocalVariable(name: "svlan_tag", scope: !552, file: !3, line: 151, type: !553)
!552 = distinct !DILexicalBlock(scope: !2, file: !3, line: 151, column: 2)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 151, size: 16, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !553, file: !3, line: 151, baseType: !116, size: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !553, file: !3, line: 151, baseType: !116, size: 8, offset: 8)
!557 = !DILocation(line: 151, column: 2, scope: !552)
!558 = !DILocation(line: 151, column: 2, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 151, column: 2)
!560 = distinct !DILexicalBlock(scope: !552, file: !3, line: 151, column: 2)
!561 = !DILocation(line: 151, column: 2, scope: !560)
!562 = !DILocalVariable(name: "frag", scope: !563, file: !3, line: 152, type: !564)
!563 = distinct !DILexicalBlock(scope: !2, file: !3, line: 152, column: 2)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 152, size: 16, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !564, file: !3, line: 152, baseType: !116, size: 8)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !564, file: !3, line: 152, baseType: !116, size: 8, offset: 8)
!568 = !DILocation(line: 152, column: 2, scope: !563)
!569 = !DILocation(line: 152, column: 2, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 152, column: 2)
!571 = distinct !DILexicalBlock(scope: !563, file: !3, line: 152, column: 2)
!572 = !DILocation(line: 152, column: 2, scope: !571)
!573 = !DILocation(line: 153, column: 1, scope: !2)
!574 = distinct !DISubprogram(name: "print_misc_parameters_hdrs", scope: !3, file: !3, line: 155, type: !4, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!575 = !DILocalVariable(name: "p", arg: 1, scope: !574, file: !3, line: 155, type: !6)
!576 = !DILocation(line: 155, column: 58, scope: !574)
!577 = !DILocalVariable(name: "mask", arg: 2, scope: !574, file: !3, line: 156, type: !36)
!578 = !DILocation(line: 156, column: 23, scope: !574)
!579 = !DILocalVariable(name: "value", arg: 3, scope: !574, file: !3, line: 156, type: !36)
!580 = !DILocation(line: 156, column: 40, scope: !574)
!581 = !DILocalVariable(name: "gre_key", scope: !574, file: !3, line: 164, type: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 164, size: 128, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !582, file: !3, line: 164, baseType: !247, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !582, file: !3, line: 164, baseType: !247, size: 64, offset: 64)
!586 = !DILocation(line: 164, column: 2, scope: !574)
!587 = !DILocation(line: 164, column: 35, scope: !574)
!588 = !DILocation(line: 165, column: 8, scope: !574)
!589 = !DILocation(line: 165, column: 61, scope: !574)
!590 = !DILocation(line: 166, column: 8, scope: !574)
!591 = !DILocation(line: 165, column: 66, scope: !574)
!592 = !DILocation(line: 167, column: 8, scope: !574)
!593 = !DILocation(line: 167, column: 62, scope: !574)
!594 = !DILocation(line: 168, column: 8, scope: !574)
!595 = !DILocation(line: 167, column: 67, scope: !574)
!596 = !DILocation(line: 170, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 170, column: 2)
!598 = distinct !DILexicalBlock(scope: !574, file: !3, line: 170, column: 2)
!599 = !DILocation(line: 170, column: 2, scope: !598)
!600 = !DILocalVariable(name: "source_sqn", scope: !601, file: !3, line: 171, type: !602)
!601 = distinct !DILexicalBlock(scope: !574, file: !3, line: 171, column: 2)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 171, size: 64, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !602, file: !3, line: 171, baseType: !38, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !602, file: !3, line: 171, baseType: !38, size: 32, offset: 32)
!606 = !DILocation(line: 171, column: 2, scope: !601)
!607 = !DILocation(line: 171, column: 2, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 171, column: 2)
!609 = distinct !DILexicalBlock(scope: !601, file: !3, line: 171, column: 2)
!610 = !DILocation(line: 171, column: 2, scope: !609)
!611 = !DILocalVariable(name: "source_port", scope: !612, file: !3, line: 172, type: !613)
!612 = distinct !DILexicalBlock(scope: !574, file: !3, line: 172, column: 2)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 172, size: 32, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !613, file: !3, line: 172, baseType: !280, size: 16)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !613, file: !3, line: 172, baseType: !280, size: 16, offset: 16)
!617 = !DILocation(line: 172, column: 2, scope: !612)
!618 = !DILocation(line: 172, column: 2, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 172, column: 2)
!620 = distinct !DILexicalBlock(scope: !612, file: !3, line: 172, column: 2)
!621 = !DILocation(line: 172, column: 2, scope: !620)
!622 = !DILocalVariable(name: "outer_second_prio", scope: !623, file: !3, line: 173, type: !624)
!623 = distinct !DILexicalBlock(scope: !574, file: !3, line: 173, column: 2)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 173, size: 16, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !624, file: !3, line: 173, baseType: !116, size: 8)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !624, file: !3, line: 173, baseType: !116, size: 8, offset: 8)
!628 = !DILocation(line: 173, column: 2, scope: !623)
!629 = !DILocation(line: 173, column: 2, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 173, column: 2)
!631 = distinct !DILexicalBlock(scope: !623, file: !3, line: 173, column: 2)
!632 = !DILocation(line: 173, column: 2, scope: !631)
!633 = !DILocalVariable(name: "outer_second_cfi", scope: !634, file: !3, line: 175, type: !635)
!634 = distinct !DILexicalBlock(scope: !574, file: !3, line: 175, column: 2)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 175, size: 16, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !635, file: !3, line: 175, baseType: !116, size: 8)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !635, file: !3, line: 175, baseType: !116, size: 8, offset: 8)
!639 = !DILocation(line: 175, column: 2, scope: !634)
!640 = !DILocation(line: 175, column: 2, scope: !641)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 175, column: 2)
!642 = distinct !DILexicalBlock(scope: !634, file: !3, line: 175, column: 2)
!643 = !DILocation(line: 175, column: 2, scope: !642)
!644 = !DILocalVariable(name: "outer_second_vid", scope: !645, file: !3, line: 176, type: !646)
!645 = distinct !DILexicalBlock(scope: !574, file: !3, line: 176, column: 2)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 176, size: 32, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !646, file: !3, line: 176, baseType: !280, size: 16)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !646, file: !3, line: 176, baseType: !280, size: 16, offset: 16)
!650 = !DILocation(line: 176, column: 2, scope: !645)
!651 = !DILocation(line: 176, column: 2, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 176, column: 2)
!653 = distinct !DILexicalBlock(scope: !645, file: !3, line: 176, column: 2)
!654 = !DILocation(line: 176, column: 2, scope: !653)
!655 = !DILocalVariable(name: "inner_second_prio", scope: !656, file: !3, line: 177, type: !657)
!656 = distinct !DILexicalBlock(scope: !574, file: !3, line: 177, column: 2)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 177, size: 16, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !657, file: !3, line: 177, baseType: !116, size: 8)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !657, file: !3, line: 177, baseType: !116, size: 8, offset: 8)
!661 = !DILocation(line: 177, column: 2, scope: !656)
!662 = !DILocation(line: 177, column: 2, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 177, column: 2)
!664 = distinct !DILexicalBlock(scope: !656, file: !3, line: 177, column: 2)
!665 = !DILocation(line: 177, column: 2, scope: !664)
!666 = !DILocalVariable(name: "inner_second_cfi", scope: !667, file: !3, line: 179, type: !668)
!667 = distinct !DILexicalBlock(scope: !574, file: !3, line: 179, column: 2)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 179, size: 16, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !668, file: !3, line: 179, baseType: !116, size: 8)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !668, file: !3, line: 179, baseType: !116, size: 8, offset: 8)
!672 = !DILocation(line: 179, column: 2, scope: !667)
!673 = !DILocation(line: 179, column: 2, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 179, column: 2)
!675 = distinct !DILexicalBlock(scope: !667, file: !3, line: 179, column: 2)
!676 = !DILocation(line: 179, column: 2, scope: !675)
!677 = !DILocalVariable(name: "inner_second_vid", scope: !678, file: !3, line: 180, type: !679)
!678 = distinct !DILexicalBlock(scope: !574, file: !3, line: 180, column: 2)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 180, size: 32, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !679, file: !3, line: 180, baseType: !280, size: 16)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !679, file: !3, line: 180, baseType: !280, size: 16, offset: 16)
!683 = !DILocation(line: 180, column: 2, scope: !678)
!684 = !DILocation(line: 180, column: 2, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 180, column: 2)
!686 = distinct !DILexicalBlock(scope: !678, file: !3, line: 180, column: 2)
!687 = !DILocation(line: 180, column: 2, scope: !686)
!688 = !DILocalVariable(name: "outer_second_cvlan_tag", scope: !689, file: !3, line: 182, type: !690)
!689 = distinct !DILexicalBlock(scope: !574, file: !3, line: 182, column: 2)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 182, size: 16, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !690, file: !3, line: 182, baseType: !116, size: 8)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !690, file: !3, line: 182, baseType: !116, size: 8, offset: 8)
!694 = !DILocation(line: 182, column: 2, scope: !689)
!695 = !DILocation(line: 182, column: 2, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 182, column: 2)
!697 = distinct !DILexicalBlock(scope: !689, file: !3, line: 182, column: 2)
!698 = !DILocation(line: 182, column: 2, scope: !697)
!699 = !DILocalVariable(name: "inner_second_cvlan_tag", scope: !700, file: !3, line: 184, type: !701)
!700 = distinct !DILexicalBlock(scope: !574, file: !3, line: 184, column: 2)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 184, size: 16, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !701, file: !3, line: 184, baseType: !116, size: 8)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !701, file: !3, line: 184, baseType: !116, size: 8, offset: 8)
!705 = !DILocation(line: 184, column: 2, scope: !700)
!706 = !DILocation(line: 184, column: 2, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 184, column: 2)
!708 = distinct !DILexicalBlock(scope: !700, file: !3, line: 184, column: 2)
!709 = !DILocation(line: 184, column: 2, scope: !708)
!710 = !DILocalVariable(name: "outer_second_svlan_tag", scope: !711, file: !3, line: 186, type: !712)
!711 = distinct !DILexicalBlock(scope: !574, file: !3, line: 186, column: 2)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 186, size: 16, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !712, file: !3, line: 186, baseType: !116, size: 8)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !712, file: !3, line: 186, baseType: !116, size: 8, offset: 8)
!716 = !DILocation(line: 186, column: 2, scope: !711)
!717 = !DILocation(line: 186, column: 2, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 186, column: 2)
!719 = distinct !DILexicalBlock(scope: !711, file: !3, line: 186, column: 2)
!720 = !DILocation(line: 186, column: 2, scope: !719)
!721 = !DILocalVariable(name: "inner_second_svlan_tag", scope: !722, file: !3, line: 188, type: !723)
!722 = distinct !DILexicalBlock(scope: !574, file: !3, line: 188, column: 2)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 188, size: 16, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !723, file: !3, line: 188, baseType: !116, size: 8)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !723, file: !3, line: 188, baseType: !116, size: 8, offset: 8)
!727 = !DILocation(line: 188, column: 2, scope: !722)
!728 = !DILocation(line: 188, column: 2, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 188, column: 2)
!730 = distinct !DILexicalBlock(scope: !722, file: !3, line: 188, column: 2)
!731 = !DILocation(line: 188, column: 2, scope: !730)
!732 = !DILocalVariable(name: "gre_protocol", scope: !733, file: !3, line: 191, type: !734)
!733 = distinct !DILexicalBlock(scope: !574, file: !3, line: 191, column: 2)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 191, size: 16, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !734, file: !3, line: 191, baseType: !116, size: 8)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !734, file: !3, line: 191, baseType: !116, size: 8, offset: 8)
!738 = !DILocation(line: 191, column: 2, scope: !733)
!739 = !DILocation(line: 191, column: 2, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 191, column: 2)
!741 = distinct !DILexicalBlock(scope: !733, file: !3, line: 191, column: 2)
!742 = !DILocation(line: 191, column: 2, scope: !741)
!743 = !DILocalVariable(name: "vxlan_vni", scope: !744, file: !3, line: 193, type: !745)
!744 = distinct !DILexicalBlock(scope: !574, file: !3, line: 193, column: 2)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 193, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !745, file: !3, line: 193, baseType: !38, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !745, file: !3, line: 193, baseType: !38, size: 32, offset: 32)
!749 = !DILocation(line: 193, column: 2, scope: !744)
!750 = !DILocation(line: 193, column: 2, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 193, column: 2)
!752 = distinct !DILexicalBlock(scope: !744, file: !3, line: 193, column: 2)
!753 = !DILocation(line: 193, column: 2, scope: !752)
!754 = !DILocalVariable(name: "outer_ipv6_flow_label", scope: !755, file: !3, line: 194, type: !756)
!755 = distinct !DILexicalBlock(scope: !574, file: !3, line: 194, column: 2)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 194, size: 64, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !756, file: !3, line: 194, baseType: !38, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !756, file: !3, line: 194, baseType: !38, size: 32, offset: 32)
!760 = !DILocation(line: 194, column: 2, scope: !755)
!761 = !DILocation(line: 194, column: 2, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 194, column: 2)
!763 = distinct !DILexicalBlock(scope: !755, file: !3, line: 194, column: 2)
!764 = !DILocation(line: 194, column: 2, scope: !763)
!765 = !DILocalVariable(name: "inner_ipv6_flow_label", scope: !766, file: !3, line: 196, type: !767)
!766 = distinct !DILexicalBlock(scope: !574, file: !3, line: 196, column: 2)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !574, file: !3, line: 196, size: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !767, file: !3, line: 196, baseType: !38, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !767, file: !3, line: 196, baseType: !38, size: 32, offset: 32)
!771 = !DILocation(line: 196, column: 2, scope: !766)
!772 = !DILocation(line: 196, column: 2, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 196, column: 2)
!774 = distinct !DILexicalBlock(scope: !766, file: !3, line: 196, column: 2)
!775 = !DILocation(line: 196, column: 2, scope: !774)
!776 = !DILocation(line: 198, column: 1, scope: !574)
!777 = distinct !DISubprogram(name: "trace_seq_putc", scope: !8, file: !8, line: 126, type: !778, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !6, !12}
!780 = !DILocalVariable(name: "s", arg: 1, scope: !777, file: !8, line: 126, type: !6)
!781 = !DILocation(line: 126, column: 53, scope: !777)
!782 = !DILocalVariable(name: "c", arg: 2, scope: !777, file: !8, line: 126, type: !12)
!783 = !DILocation(line: 126, column: 70, scope: !777)
!784 = !DILocation(line: 128, column: 1, scope: !777)
!785 = distinct !DISubprogram(name: "parse_fs_dst", scope: !3, file: !3, line: 231, type: !786, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !123)
!786 = !DISubroutineType(types: !787)
!787 = !{!154, !6, !788, !38}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5_flow_destination", file: !92, line: 122, size: 256, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !92, line: 123, baseType: !52, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !92, line: 124, baseType: !794, size: 192, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !92, line: 124, size: 192, elements: !795)
!795 = !{!796, !797, !798, !990, !991}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "tir_num", scope: !794, file: !92, line: 125, baseType: !38, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ft_num", scope: !794, file: !92, line: 126, baseType: !38, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ft", scope: !794, file: !92, line: 127, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5_flow_table", file: !61, line: 166, size: 3008, elements: !801)
!801 = !{!802, !859, !870, !871, !872, !873, !874, !875, !876, !884, !898, !899, !900, !983, !984}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !800, file: !61, line: 167, baseType: !803, size: 960)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_node", file: !61, line: 134, size: 960, elements: !804)
!804 = !{!805, !811, !812, !813, !815, !816, !840, !850, !853, !857, !858}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !803, file: !61, line: 135, baseType: !806, size: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !24, line: 178, size: 128, elements: !807)
!807 = !{!808, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !806, file: !24, line: 179, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !806, file: !24, line: 179, baseType: !809, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !803, file: !61, line: 136, baseType: !806, size: 128, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !61, line: 137, baseType: !60, size: 32, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !803, file: !61, line: 138, baseType: !814, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !803, file: !61, line: 139, baseType: !814, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !803, file: !61, line: 141, baseType: !817, size: 256, offset: 448)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !818, line: 35, size: 256, elements: !819)
!818 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !829, !830, !839}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !817, file: !818, line: 36, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !822, line: 13, baseType: !823)
!822 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !24, line: 175, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 173, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !824, file: !24, line: 174, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !39, line: 22, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !41, line: 30, baseType: !33)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !817, file: !818, line: 42, baseType: !821, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !817, file: !818, line: 46, baseType: !831, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !832, line: 29, baseType: !833)
!832 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !832, line: 20, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !833, file: !832, line: 21, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !837, line: 25, baseType: !838)
!837 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 25, elements: !123)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !817, file: !818, line: 47, baseType: !806, size: 128, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !803, file: !61, line: 142, baseType: !841, size: 32, offset: 704)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !842, line: 113, baseType: !843)
!842 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !842, line: 111, size: 32, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !843, file: !842, line: 112, baseType: !846, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !24, line: 168, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 166, size: 32, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !847, file: !24, line: 167, baseType: !35, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !803, file: !61, line: 143, baseType: !851, size: 8, offset: 736)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 30, baseType: !852)
!852 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "del_hw_func", scope: !803, file: !61, line: 144, baseType: !854, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !814}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "del_sw_func", scope: !803, file: !61, line: 145, baseType: !854, size: 64, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !803, file: !61, line: 146, baseType: !846, size: 32, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fs_dr_table", scope: !800, file: !61, line: 168, baseType: !860, size: 128, offset: 960)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5_fs_dr_table", file: !861, line: 36, size: 128, elements: !862)
!861 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlx5/core/steering/fs_dr.h", directory: "/home/lizy2001/genbc/linux")
!862 = !{!863, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dr_table", scope: !860, file: !861, line: 37, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5dr_table", file: !866, line: 8, flags: DIFlagFwdDecl)
!866 = !DIFile(filename: "drivers/net/ethernet/mellanox/mlx5/core/steering/mlx5dr.h", directory: "/home/lizy2001/genbc/linux")
!867 = !DIDerivedType(tag: DW_TAG_member, name: "miss_action", scope: !860, file: !861, line: 38, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5dr_action", file: !866, line: 11, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !800, file: !61, line: 169, baseType: !38, size: 32, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "vport", scope: !800, file: !61, line: 170, baseType: !280, size: 16, offset: 1120)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "max_fte", scope: !800, file: !61, line: 171, baseType: !42, size: 32, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !800, file: !61, line: 172, baseType: !42, size: 32, offset: 1184)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !61, line: 173, baseType: !70, size: 32, offset: 1216)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "op_mod", scope: !800, file: !61, line: 174, baseType: !82, size: 32, offset: 1248)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "autogroup", scope: !800, file: !61, line: 181, baseType: !877, size: 160, offset: 1280)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !61, line: 175, size: 160, elements: !878)
!878 = !{!879, !880, !881, !882, !883}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !877, file: !61, line: 176, baseType: !851, size: 8)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "required_groups", scope: !877, file: !61, line: 177, baseType: !42, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "group_size", scope: !877, file: !61, line: 178, baseType: !42, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_groups", scope: !877, file: !61, line: 179, baseType: !42, size: 32, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "max_fte", scope: !877, file: !61, line: 180, baseType: !42, size: 32, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !800, file: !61, line: 183, baseType: !885, size: 192, offset: 1472)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !886, line: 53, size: 192, elements: !887)
!886 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !889, !897}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !885, file: !886, line: 54, baseType: !821, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !885, file: !886, line: 55, baseType: !890, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !832, line: 83, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !832, line: 71, elements: !892)
!892 = !{!893}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !832, line: 72, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !832, line: 72, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !894, file: !832, line: 73, baseType: !833)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !885, file: !886, line: 59, baseType: !806, size: 128, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "fwd_rules", scope: !800, file: !61, line: 185, baseType: !806, size: 128, offset: 1664)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !61, line: 186, baseType: !38, size: 32, offset: 1792)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "fgs_hash", scope: !800, file: !61, line: 187, baseType: !901, size: 1024, offset: 1856)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhltable", file: !902, line: 97, size: 1024, elements: !903)
!902 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/lizy2001/genbc/linux")
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !901, file: !902, line: 98, baseType: !905, size: 1024)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !902, line: 81, size: 1024, elements: !906)
!906 = !{!907, !935, !936, !937, !967, !968, !980, !981, !982}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !905, file: !902, line: 82, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !910, line: 76, size: 448, elements: !911)
!910 = !DIFile(filename: "./include/linux/rhashtable.h", directory: "/home/lizy2001/genbc/linux")
!911 = !{!912, !913, !914, !915, !916, !925, !926, !929}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !909, file: !910, line: 77, baseType: !42, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "nest", scope: !909, file: !910, line: 78, baseType: !42, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "hash_rnd", scope: !909, file: !910, line: 79, baseType: !38, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "walkers", scope: !909, file: !910, line: 80, baseType: !806, size: 128, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !909, file: !910, line: 81, baseType: !917, size: 128, align: 64, offset: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !24, line: 216, size: 128, align: 64, elements: !918)
!918 = !{!919, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !917, file: !24, line: 217, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !917, file: !24, line: 218, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !920}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "future_tbl", scope: !909, file: !910, line: 83, baseType: !908, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !909, file: !910, line: 85, baseType: !927, offset: 448)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !928, line: 192, elements: !123)
!928 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !909, file: !910, line: 87, baseType: !930, offset: 448)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, elements: !933)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_lock_head", file: !910, line: 47, elements: !123)
!933 = !{!934}
!934 = !DISubrange(count: -1)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !905, file: !902, line: 83, baseType: !42, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !905, file: !902, line: 84, baseType: !42, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !905, file: !902, line: 85, baseType: !938, size: 320, offset: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !902, line: 56, size: 320, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947, !954, !956}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !938, file: !902, line: 57, baseType: !280, size: 16)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !938, file: !902, line: 58, baseType: !280, size: 16, offset: 16)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !938, file: !902, line: 59, baseType: !280, size: 16, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !938, file: !902, line: 60, baseType: !280, size: 16, offset: 48)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !938, file: !902, line: 61, baseType: !42, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !938, file: !902, line: 62, baseType: !280, size: 16, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !938, file: !902, line: 63, baseType: !851, size: 8, offset: 112)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !938, file: !902, line: 64, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !902, line: 38, baseType: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!38, !952, !38, !38}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !938, file: !902, line: 65, baseType: !955, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !902, line: 39, baseType: !949)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !938, file: !902, line: 66, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !902, line: 40, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!35, !961, !952}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !902, line: 33, size: 128, elements: !963)
!963 = !{!964, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !962, file: !902, line: 34, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !962, file: !902, line: 35, baseType: !952, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !905, file: !902, line: 86, baseType: !851, size: 8, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !905, file: !902, line: 87, baseType: !969, size: 256, offset: 512)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !970, line: 102, size: 256, elements: !971)
!970 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !969, file: !970, line: 103, baseType: !821, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !969, file: !970, line: 104, baseType: !806, size: 128, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !969, file: !970, line: 105, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !970, line: 21, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !905, file: !902, line: 88, baseType: !885, size: 192, offset: 768)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !902, line: 89, baseType: !890, offset: 960)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !905, file: !902, line: 90, baseType: !846, size: 32, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "def_miss_action", scope: !800, file: !61, line: 188, baseType: !86, size: 32, offset: 2880)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !800, file: !61, line: 189, baseType: !985, size: 64, offset: 2944)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5_flow_namespace", file: !61, line: 234, size: 1024, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !986, file: !61, line: 236, baseType: !803, size: 960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "def_miss_action", scope: !986, file: !61, line: 237, baseType: !86, size: 32, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "counter_id", scope: !794, file: !92, line: 128, baseType: !38, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vport", scope: !794, file: !92, line: 134, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !92, line: 129, size: 192, elements: !993)
!993 = !{!994, !995, !996, !1010}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !992, file: !92, line: 130, baseType: !280, size: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vhca_id", scope: !992, file: !92, line: 131, baseType: !280, size: 16, offset: 16)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_reformat", scope: !992, file: !92, line: 132, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5_pkt_reformat", file: !61, line: 60, size: 128, elements: !999)
!999 = !{!1000, !1001, !1002}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !998, file: !61, line: 61, baseType: !91, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "reformat_type", scope: !998, file: !61, line: 62, baseType: !35, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !61, line: 63, baseType: !1003, size: 64, offset: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !61, line: 63, size: 64, elements: !1004)
!1004 = !{!1005, !1009}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1003, file: !61, line: 64, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mlx5_fs_dr_action", file: !861, line: 13, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dr_action", scope: !1006, file: !861, line: 14, baseType: !868, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1003, file: !61, line: 65, baseType: !38, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !92, line: 133, baseType: !116, size: 8, offset: 128)
!1011 = !DILocalVariable(name: "p", arg: 1, scope: !785, file: !3, line: 231, type: !6)
!1012 = !DILocation(line: 231, column: 44, scope: !785)
!1013 = !DILocalVariable(name: "dst", arg: 2, scope: !785, file: !3, line: 232, type: !788)
!1014 = !DILocation(line: 232, column: 41, scope: !785)
!1015 = !DILocalVariable(name: "counter_id", arg: 3, scope: !785, file: !3, line: 233, type: !38)
!1016 = !DILocation(line: 233, column: 9, scope: !785)
!1017 = !DILocalVariable(name: "ret", scope: !785, file: !3, line: 235, type: !154)
!1018 = !DILocation(line: 235, column: 14, scope: !785)
!1019 = !DILocation(line: 235, column: 41, scope: !785)
!1020 = !DILocation(line: 235, column: 20, scope: !785)
!1021 = !DILocation(line: 237, column: 10, scope: !785)
!1022 = !DILocation(line: 237, column: 15, scope: !785)
!1023 = !DILocation(line: 237, column: 2, scope: !785)
!1024 = !DILocation(line: 239, column: 20, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !785, file: !3, line: 237, column: 21)
!1026 = !DILocation(line: 239, column: 37, scope: !1025)
!1027 = !DILocation(line: 239, column: 42, scope: !1025)
!1028 = !DILocation(line: 239, column: 48, scope: !1025)
!1029 = !DILocation(line: 239, column: 3, scope: !1025)
!1030 = !DILocation(line: 240, column: 3, scope: !1025)
!1031 = !DILocation(line: 242, column: 20, scope: !1025)
!1032 = !DILocation(line: 242, column: 34, scope: !1025)
!1033 = !DILocation(line: 242, column: 39, scope: !1025)
!1034 = !DILocation(line: 242, column: 3, scope: !1025)
!1035 = !DILocation(line: 243, column: 3, scope: !1025)
!1036 = !DILocation(line: 245, column: 20, scope: !1025)
!1037 = !DILocation(line: 245, column: 38, scope: !1025)
!1038 = !DILocation(line: 245, column: 43, scope: !1025)
!1039 = !DILocation(line: 245, column: 3, scope: !1025)
!1040 = !DILocation(line: 246, column: 3, scope: !1025)
!1041 = !DILocation(line: 248, column: 20, scope: !1025)
!1042 = !DILocation(line: 248, column: 35, scope: !1025)
!1043 = !DILocation(line: 248, column: 40, scope: !1025)
!1044 = !DILocation(line: 248, column: 3, scope: !1025)
!1045 = !DILocation(line: 249, column: 3, scope: !1025)
!1046 = !DILocation(line: 251, column: 20, scope: !1025)
!1047 = !DILocation(line: 251, column: 42, scope: !1025)
!1048 = !DILocation(line: 251, column: 3, scope: !1025)
!1049 = !DILocation(line: 252, column: 3, scope: !1025)
!1050 = !DILocation(line: 254, column: 20, scope: !1025)
!1051 = !DILocation(line: 254, column: 3, scope: !1025)
!1052 = !DILocation(line: 255, column: 3, scope: !1025)
!1053 = !DILocation(line: 258, column: 17, scope: !785)
!1054 = !DILocation(line: 258, column: 2, scope: !785)
!1055 = !DILocation(line: 259, column: 9, scope: !785)
!1056 = !DILocation(line: 259, column: 2, scope: !785)
!1057 = distinct !DISubprogram(name: "seq_buf_used", scope: !17, file: !17, line: 69, type: !1058, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!42, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1061 = !DILocalVariable(name: "s", arg: 1, scope: !1057, file: !17, line: 69, type: !1060)
!1062 = !DILocation(line: 69, column: 57, scope: !1057)
!1063 = !DILocalVariable(name: "__UNIQUE_ID___x198", scope: !1064, file: !17, line: 71, type: !23)
!1064 = distinct !DILexicalBlock(scope: !1057, file: !17, line: 71, column: 9)
!1065 = !DILocation(line: 71, column: 9, scope: !1064)
!1066 = !DILocalVariable(name: "__UNIQUE_ID___y199", scope: !1064, file: !17, line: 71, type: !23)
!1067 = !DILocation(line: 71, column: 9, scope: !1057)
!1068 = !DILocation(line: 71, column: 2, scope: !1057)
!1069 = distinct !DISubprogram(name: "__fswab32", scope: !1070, file: !1070, line: 57, type: !1071, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!1070 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!40, !40}
!1073 = !DILocalVariable(name: "val", arg: 1, scope: !1069, file: !1070, line: 57, type: !40)
!1074 = !DILocation(line: 57, column: 57, scope: !1069)
!1075 = !DILocation(line: 60, column: 23, scope: !1069)
!1076 = !DILocation(line: 60, column: 9, scope: !1069)
!1077 = !DILocation(line: 60, column: 2, scope: !1069)
!1078 = distinct !DISubprogram(name: "__arch_swab32", scope: !1079, file: !1079, line: 8, type: !1071, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !43, retainedNodes: !123)
!1079 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!1080 = !DILocalVariable(name: "val", arg: 1, scope: !1078, file: !1079, line: 8, type: !40)
!1081 = !DILocation(line: 8, column: 61, scope: !1078)
!1082 = !DILocation(line: 10, column: 38, scope: !1078)
!1083 = !DILocation(line: 10, column: 2, scope: !1078)
!1084 = !{i32 447065}
!1085 = !DILocation(line: 11, column: 9, scope: !1078)
!1086 = !DILocation(line: 11, column: 2, scope: !1078)
