; ModuleID = '../bcout/drivers/acpi/acpica/nswalk.llvm.bc'
source_filename = "drivers/acpi/acpica/nswalk.c"
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

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node* %child_node) #0 !dbg !22 {
entry:
  %retval = alloca %struct.acpi_namespace_node*, align 8
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %child_node.addr = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !788, metadata !DIExpression()), !dbg !789
  store %struct.acpi_namespace_node* %child_node, %struct.acpi_namespace_node** %child_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node.addr, align 8, !dbg !792
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !792
  br i1 %tobool, label %if.end, label %if.then, !dbg !794

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !795
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %1, i32 0, i32 6, !dbg !797
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !797
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %retval, align 8, !dbg !798
  br label %return, !dbg !798

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node.addr, align 8, !dbg !799
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 7, !dbg !800
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer, align 8, !dbg !800
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %retval, align 8, !dbg !801
  br label %return, !dbg !801

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %retval, align 8, !dbg !802
  ret %struct.acpi_namespace_node* %5, !dbg !802
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node_typed(i32 %type, %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node* %child_node) #0 !dbg !803 {
entry:
  %retval = alloca %struct.acpi_namespace_node*, align 8
  %type.addr = alloca i32, align 4
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %child_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %next_node = alloca %struct.acpi_namespace_node*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !807, metadata !DIExpression()), !dbg !808
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !809, metadata !DIExpression()), !dbg !810
  store %struct.acpi_namespace_node* %child_node, %struct.acpi_namespace_node** %child_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node.addr, metadata !811, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %next_node, metadata !813, metadata !DIExpression()), !dbg !814
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %next_node, align 8, !dbg !814
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !815
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node.addr, align 8, !dbg !816
  %call = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %0, %struct.acpi_namespace_node* %1) #3, !dbg !817
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %next_node, align 8, !dbg !818
  %2 = load i32, i32* %type.addr, align 4, !dbg !819
  %cmp = icmp eq i32 %2, 0, !dbg !821
  br i1 %cmp, label %if.then, label %if.end, !dbg !822

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !823
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %retval, align 8, !dbg !825
  br label %return, !dbg !825

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !826

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !827
  %tobool = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !826
  br i1 %tobool, label %while.body, label %while.end, !dbg !826

while.body:                                       ; preds = %while.cond
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !828
  %type1 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 2, !dbg !831
  %6 = load i8, i8* %type1, align 1, !dbg !831
  %conv = zext i8 %6 to i32, !dbg !828
  %7 = load i32, i32* %type.addr, align 4, !dbg !832
  %cmp2 = icmp eq i32 %conv, %7, !dbg !833
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !834

if.then4:                                         ; preds = %while.body
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !835
  store %struct.acpi_namespace_node* %8, %struct.acpi_namespace_node** %retval, align 8, !dbg !837
  br label %return, !dbg !837

if.end5:                                          ; preds = %while.body
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %next_node, align 8, !dbg !838
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 7, !dbg !839
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer, align 8, !dbg !839
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %next_node, align 8, !dbg !840
  br label %while.cond, !dbg !826, !llvm.loop !841

while.end:                                        ; preds = %while.cond
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %retval, align 8, !dbg !843
  br label %return, !dbg !843

return:                                           ; preds = %while.end, %if.then4, %if.then
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %retval, align 8, !dbg !844
  ret %struct.acpi_namespace_node* %11, !dbg !844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_walk_namespace(i32 %type, i8* %start_node, i32 %max_depth, i32 %flags, i32 (i8*, i32, i8*, i8**)* %descending_callback, i32 (i8*, i32, i8*, i8**)* %ascending_callback, i8* %context, i8** %return_value) #0 !dbg !845 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %start_node.addr = alloca i8*, align 8
  %max_depth.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %descending_callback.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %ascending_callback.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %mutex_status = alloca i32, align 4
  %child_node = alloca %struct.acpi_namespace_node*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %child_type = alloca i32, align 4
  %level = alloca i32, align 4
  %node_previously_visited = alloca i8, align 1
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !849, metadata !DIExpression()), !dbg !850
  store i8* %start_node, i8** %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start_node.addr, metadata !851, metadata !DIExpression()), !dbg !852
  store i32 %max_depth, i32* %max_depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_depth.addr, metadata !853, metadata !DIExpression()), !dbg !854
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !855, metadata !DIExpression()), !dbg !856
  store i32 (i8*, i32, i8*, i8**)* %descending_callback, i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, metadata !857, metadata !DIExpression()), !dbg !858
  store i32 (i8*, i32, i8*, i8**)* %ascending_callback, i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, metadata !859, metadata !DIExpression()), !dbg !860
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !861, metadata !DIExpression()), !dbg !862
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata i32* %status, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata i32* %mutex_status, metadata !867, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !871, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata i32* %child_type, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata i32* %level, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata i8* %node_previously_visited, metadata !877, metadata !DIExpression()), !dbg !878
  store i8 0, i8* %node_previously_visited, align 1, !dbg !878
  %0 = load i8*, i8** %start_node.addr, align 8, !dbg !879
  %cmp = icmp eq i8* %0, inttoptr (i64 -1 to i8*), !dbg !881
  br i1 %cmp, label %if.then, label %if.end, !dbg !882

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !883
  %2 = bitcast %struct.acpi_namespace_node* %1 to i8*, !dbg !883
  store i8* %2, i8** %start_node.addr, align 8, !dbg !885
  br label %if.end, !dbg !886

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %start_node.addr, align 8, !dbg !887
  %4 = bitcast i8* %3 to %struct.acpi_namespace_node*, !dbg !887
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !888
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !889
  %call = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %5, %struct.acpi_namespace_node* null) #3, !dbg !890
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %child_node, align 8, !dbg !891
  store i32 0, i32* %child_type, align 4, !dbg !892
  store i32 1, i32* %level, align 4, !dbg !893
  br label %while.cond, !dbg !894

while.cond:                                       ; preds = %if.end66, %if.then60, %if.then55, %if.end
  %6 = load i32, i32* %level, align 4, !dbg !895
  %cmp1 = icmp ugt i32 %6, 0, !dbg !896
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !897

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !898
  %tobool = icmp ne %struct.acpi_namespace_node* %7, null, !dbg !897
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !899
  br i1 %8, label %while.body, label %while.end, !dbg !894

while.body:                                       ; preds = %land.end
  store i32 0, i32* %status, align 4, !dbg !900
  %9 = load i32, i32* %type.addr, align 4, !dbg !902
  %cmp2 = icmp ne i32 %9, 0, !dbg !904
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !905

if.then3:                                         ; preds = %while.body
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !906
  %type4 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 2, !dbg !908
  %11 = load i8, i8* %type4, align 1, !dbg !908
  %conv = zext i8 %11 to i32, !dbg !906
  store i32 %conv, i32* %child_type, align 4, !dbg !909
  br label %if.end5, !dbg !910

if.end5:                                          ; preds = %if.then3, %while.body
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !911
  %flags6 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 3, !dbg !913
  %13 = load i16, i16* %flags6, align 2, !dbg !913
  %conv7 = zext i16 %13 to i32, !dbg !911
  %and = and i32 %conv7, 2, !dbg !914
  %tobool8 = icmp ne i32 %and, 0, !dbg !914
  br i1 %tobool8, label %land.lhs.true, label %if.else, !dbg !915

land.lhs.true:                                    ; preds = %if.end5
  %14 = load i32, i32* %flags.addr, align 4, !dbg !916
  %and9 = and i32 %14, 2, !dbg !917
  %tobool10 = icmp ne i32 %and9, 0, !dbg !917
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !918

if.then11:                                        ; preds = %land.lhs.true
  store i32 16390, i32* %status, align 4, !dbg !919
  br label %if.end45, !dbg !921

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %15 = load i32, i32* %child_type, align 4, !dbg !922
  %16 = load i32, i32* %type.addr, align 4, !dbg !924
  %cmp12 = icmp eq i32 %15, %16, !dbg !925
  br i1 %cmp12, label %if.then14, label %if.end44, !dbg !926

if.then14:                                        ; preds = %if.else
  %17 = load i32, i32* %flags.addr, align 4, !dbg !927
  %and15 = and i32 %17, 1, !dbg !930
  %tobool16 = icmp ne i32 %and15, 0, !dbg !930
  br i1 %tobool16, label %if.then17, label %if.end22, !dbg !931

if.then17:                                        ; preds = %if.then14
  %call18 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !932
  store i32 %call18, i32* %mutex_status, align 4, !dbg !934
  %18 = load i32, i32* %mutex_status, align 4, !dbg !935
  %tobool19 = icmp ne i32 %18, 0, !dbg !935
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !937

if.then20:                                        ; preds = %if.then17
  %19 = load i32, i32* %mutex_status, align 4, !dbg !938
  store i32 %19, i32* %retval, align 4, !dbg !938
  br label %return, !dbg !938

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !940

if.end22:                                         ; preds = %if.end21, %if.then14
  %20 = load i8, i8* %node_previously_visited, align 1, !dbg !941
  %tobool23 = icmp ne i8 %20, 0, !dbg !941
  br i1 %tobool23, label %if.else29, label %if.then24, !dbg !943

if.then24:                                        ; preds = %if.end22
  %21 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, align 8, !dbg !944
  %tobool25 = icmp ne i32 (i8*, i32, i8*, i8**)* %21, null, !dbg !944
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !947

if.then26:                                        ; preds = %if.then24
  %22 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %descending_callback.addr, align 8, !dbg !948
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !950
  %24 = bitcast %struct.acpi_namespace_node* %23 to i8*, !dbg !950
  %25 = load i32, i32* %level, align 4, !dbg !951
  %26 = load i8*, i8** %context.addr, align 8, !dbg !952
  %27 = load i8**, i8*** %return_value.addr, align 8, !dbg !953
  %call27 = call i32 %22(i8* %24, i32 %25, i8* %26, i8** %27) #3, !dbg !948
  store i32 %call27, i32* %status, align 4, !dbg !954
  br label %if.end28, !dbg !955

if.end28:                                         ; preds = %if.then26, %if.then24
  br label %if.end34, !dbg !956

if.else29:                                        ; preds = %if.end22
  %28 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, align 8, !dbg !957
  %tobool30 = icmp ne i32 (i8*, i32, i8*, i8**)* %28, null, !dbg !957
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !960

if.then31:                                        ; preds = %if.else29
  %29 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %ascending_callback.addr, align 8, !dbg !961
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !963
  %31 = bitcast %struct.acpi_namespace_node* %30 to i8*, !dbg !963
  %32 = load i32, i32* %level, align 4, !dbg !964
  %33 = load i8*, i8** %context.addr, align 8, !dbg !965
  %34 = load i8**, i8*** %return_value.addr, align 8, !dbg !966
  %call32 = call i32 %29(i8* %31, i32 %32, i8* %33, i8** %34) #3, !dbg !961
  store i32 %call32, i32* %status, align 4, !dbg !967
  br label %if.end33, !dbg !968

if.end33:                                         ; preds = %if.then31, %if.else29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end28
  %35 = load i32, i32* %flags.addr, align 4, !dbg !969
  %and35 = and i32 %35, 1, !dbg !971
  %tobool36 = icmp ne i32 %and35, 0, !dbg !971
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !972

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !973
  store i32 %call38, i32* %mutex_status, align 4, !dbg !975
  %36 = load i32, i32* %mutex_status, align 4, !dbg !976
  %tobool39 = icmp ne i32 %36, 0, !dbg !976
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !978

if.then40:                                        ; preds = %if.then37
  %37 = load i32, i32* %mutex_status, align 4, !dbg !979
  store i32 %37, i32* %retval, align 4, !dbg !979
  br label %return, !dbg !979

if.end41:                                         ; preds = %if.then37
  br label %if.end42, !dbg !981

if.end42:                                         ; preds = %if.end41, %if.end34
  %38 = load i32, i32* %status, align 4, !dbg !982
  switch i32 %38, label %sw.default [
    i32 0, label %sw.bb
    i32 16390, label %sw.bb
    i32 16387, label %sw.bb43
  ], !dbg !983

sw.bb:                                            ; preds = %if.end42, %if.end42
  br label %sw.epilog, !dbg !984

sw.bb43:                                          ; preds = %if.end42
  store i32 0, i32* %retval, align 4, !dbg !986
  br label %return, !dbg !986

sw.default:                                       ; preds = %if.end42
  %39 = load i32, i32* %status, align 4, !dbg !987
  store i32 %39, i32* %retval, align 4, !dbg !987
  br label %return, !dbg !987

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end44, !dbg !988

if.end44:                                         ; preds = %sw.epilog, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then11
  %40 = load i8, i8* %node_previously_visited, align 1, !dbg !989
  %tobool46 = icmp ne i8 %40, 0, !dbg !989
  br i1 %tobool46, label %if.end58, label %land.lhs.true47, !dbg !991

land.lhs.true47:                                  ; preds = %if.end45
  %41 = load i32, i32* %level, align 4, !dbg !992
  %42 = load i32, i32* %max_depth.addr, align 4, !dbg !993
  %cmp48 = icmp ult i32 %41, %42, !dbg !994
  br i1 %cmp48, label %land.lhs.true50, label %if.end58, !dbg !995

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %43 = load i32, i32* %status, align 4, !dbg !996
  %cmp51 = icmp ne i32 %43, 16390, !dbg !997
  br i1 %cmp51, label %if.then53, label %if.end58, !dbg !998

if.then53:                                        ; preds = %land.lhs.true50
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !999
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %44, i32 0, i32 6, !dbg !1002
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !1002
  %tobool54 = icmp ne %struct.acpi_namespace_node* %45, null, !dbg !999
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !1003

if.then55:                                        ; preds = %if.then53
  %46 = load i32, i32* %level, align 4, !dbg !1004
  %inc = add i32 %46, 1, !dbg !1004
  store i32 %inc, i32* %level, align 4, !dbg !1004
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1006
  store %struct.acpi_namespace_node* %47, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1007
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1008
  %call56 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %48, %struct.acpi_namespace_node* null) #3, !dbg !1009
  store %struct.acpi_namespace_node* %call56, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1010
  br label %while.cond, !dbg !1011, !llvm.loop !1012

if.end57:                                         ; preds = %if.then53
  br label %if.end58, !dbg !1014

if.end58:                                         ; preds = %if.end57, %land.lhs.true50, %land.lhs.true47, %if.end45
  %49 = load i8, i8* %node_previously_visited, align 1, !dbg !1015
  %tobool59 = icmp ne i8 %49, 0, !dbg !1015
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !1017

if.then60:                                        ; preds = %if.end58
  store i8 1, i8* %node_previously_visited, align 1, !dbg !1018
  br label %while.cond, !dbg !1020, !llvm.loop !1012

if.end61:                                         ; preds = %if.end58
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1021
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1022
  %call62 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %50, %struct.acpi_namespace_node* %51) #3, !dbg !1023
  store %struct.acpi_namespace_node* %call62, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1024
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1025
  %tobool63 = icmp ne %struct.acpi_namespace_node* %52, null, !dbg !1025
  br i1 %tobool63, label %if.then64, label %if.else65, !dbg !1027

if.then64:                                        ; preds = %if.end61
  store i8 0, i8* %node_previously_visited, align 1, !dbg !1028
  br label %if.end66, !dbg !1030

if.else65:                                        ; preds = %if.end61
  %53 = load i32, i32* %level, align 4, !dbg !1031
  %dec = add i32 %53, -1, !dbg !1031
  store i32 %dec, i32* %level, align 4, !dbg !1031
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1033
  store %struct.acpi_namespace_node* %54, %struct.acpi_namespace_node** %child_node, align 8, !dbg !1034
  %55 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1035
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %55, i32 0, i32 5, !dbg !1036
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1036
  store %struct.acpi_namespace_node* %56, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1037
  store i8 1, i8* %node_previously_visited, align 1, !dbg !1038
  br label %if.end66

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %while.cond, !dbg !894, !llvm.loop !1012

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

return:                                           ; preds = %while.end, %sw.default, %sw.bb43, %if.then40, %if.then20
  %57 = load i32, i32* %retval, align 4, !dbg !1040
  ret i32 %57, !dbg !1040
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/nswalk.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !6, !7, !8, !13}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5, line: 424, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !5, line: 127, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !16)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"Code Model", i32 2}
!21 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!22 = distinct !DISubprogram(name: "acpi_ns_get_next_node", scope: !1, file: !1, line: 34, type: !23, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !27, line: 133, size: 384, elements: !28)
!27 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!28 = !{!29, !775, !776, !777, !778, !784, !785, !786, !787}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !26, file: !27, line: 134, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !32, line: 367, size: 576, elements: !33)
!32 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !48, !61, !73, !87, !101, !110, !426, !443, !458, !471, !549, !561, !575, !585, !603, !625, !644, !663, !682, !695, !721, !738, !751, !765, !774}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !31, file: !32, line: 368, baseType: !35, size: 128)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !32, line: 73, size: 128, elements: !36)
!36 = !{!37, !38, !42, !43, !47}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !35, file: !32, line: 74, baseType: !30, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !35, file: !32, line: 74, baseType: !44, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !31, file: !32, line: 369, baseType: !49, size: 192)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !32, line: 76, size: 192, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !32, line: 77, baseType: !30, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !32, line: 77, baseType: !39, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !32, line: 77, baseType: !39, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !32, line: 77, baseType: !44, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !32, line: 77, baseType: !39, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !49, file: !32, line: 77, baseType: !57, size: 24, offset: 104)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !49, file: !32, line: 78, baseType: !8, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !31, file: !32, line: 370, baseType: !62, size: 256)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !32, line: 93, size: 256, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !72}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !32, line: 94, baseType: !30, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !32, line: 94, baseType: !39, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !32, line: 94, baseType: !39, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !32, line: 94, baseType: !44, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !32, line: 94, baseType: !39, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !62, file: !32, line: 94, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !32, line: 94, baseType: !14, size: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !31, file: !32, line: 371, baseType: !74, size: 384)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !32, line: 97, size: 384, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !83, !84, !85, !86}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !32, line: 98, baseType: !30, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !32, line: 98, baseType: !39, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !32, line: 98, baseType: !39, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !32, line: 98, baseType: !44, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !32, line: 98, baseType: !39, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !32, line: 98, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !32, line: 98, baseType: !14, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !74, file: !32, line: 99, baseType: !14, size: 32, offset: 224)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !74, file: !32, line: 100, baseType: !82, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !74, file: !32, line: 101, baseType: !25, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !31, file: !32, line: 372, baseType: !88, size: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !32, line: 104, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !98, !99, !100}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !32, line: 105, baseType: !30, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !32, line: 105, baseType: !39, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !32, line: 105, baseType: !39, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !32, line: 105, baseType: !44, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !32, line: 105, baseType: !39, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !32, line: 105, baseType: !25, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !88, file: !32, line: 106, baseType: !97, size: 64, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !88, file: !32, line: 107, baseType: !82, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !88, file: !32, line: 108, baseType: !14, size: 32, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !88, file: !32, line: 109, baseType: !14, size: 32, offset: 352)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !31, file: !32, line: 373, baseType: !102, size: 192)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !32, line: 118, size: 192, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !32, line: 119, baseType: !30, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !32, line: 119, baseType: !39, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !32, line: 119, baseType: !39, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !32, line: 119, baseType: !44, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !32, line: 119, baseType: !39, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !102, file: !32, line: 119, baseType: !6, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !31, file: !32, line: 374, baseType: !111, size: 448)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !32, line: 143, size: 448, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !423, !424, !425}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !32, line: 144, baseType: !30, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !32, line: 144, baseType: !39, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !32, line: 144, baseType: !39, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !32, line: 144, baseType: !44, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !32, line: 144, baseType: !39, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !111, file: !32, line: 144, baseType: !39, size: 8, offset: 104)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !111, file: !32, line: 145, baseType: !39, size: 8, offset: 112)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !111, file: !32, line: 146, baseType: !39, size: 8, offset: 120)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !111, file: !32, line: 147, baseType: !30, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !32, line: 148, baseType: !30, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !32, line: 149, baseType: !82, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !111, file: !32, line: 153, baseType: !125, size: 64, offset: 320)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !111, file: !32, line: 150, size: 64, elements: !126)
!126 = !{!127, !422}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !125, file: !32, line: 151, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !27, line: 248, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!13, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !134, line: 37, size: 9024, elements: !135)
!134 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !368, !369, !370, !371, !372, !376, !378, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !405, !406, !407, !408, !409, !410, !411, !412, !414, !420}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !134, line: 38, baseType: !132, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !134, line: 39, baseType: !39, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !133, file: !134, line: 40, baseType: !39, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !133, file: !134, line: 41, baseType: !44, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !133, file: !134, line: 42, baseType: !39, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !133, file: !134, line: 43, baseType: !39, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !133, file: !134, line: 44, baseType: !39, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !133, file: !134, line: 45, baseType: !144, size: 16, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !5, line: 445, baseType: !44)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !133, file: !134, line: 46, baseType: !39, size: 8, offset: 144)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !133, file: !134, line: 47, baseType: !39, size: 8, offset: 152)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !133, file: !134, line: 48, baseType: !39, size: 8, offset: 160)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !133, file: !134, line: 49, baseType: !39, size: 8, offset: 168)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !133, file: !134, line: 50, baseType: !39, size: 8, offset: 176)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !133, file: !134, line: 51, baseType: !39, size: 8, offset: 184)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !133, file: !134, line: 52, baseType: !39, size: 8, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !133, file: !134, line: 53, baseType: !39, size: 8, offset: 200)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !133, file: !134, line: 54, baseType: !82, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !133, file: !134, line: 55, baseType: !14, size: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !133, file: !134, line: 56, baseType: !14, size: 32, offset: 352)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !133, file: !134, line: 57, baseType: !14, size: 32, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !133, file: !134, line: 58, baseType: !14, size: 32, offset: 416)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !133, file: !134, line: 60, baseType: !159, size: 640, offset: 448)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !27, line: 893, size: 640, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !250, !251, !366, !367}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !159, file: !27, line: 894, baseType: !82, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !159, file: !27, line: 895, baseType: !82, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !159, file: !27, line: 896, baseType: !82, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !159, file: !27, line: 897, baseType: !82, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !159, file: !27, line: 898, baseType: !82, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !159, file: !27, line: 899, baseType: !167, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !27, line: 875, size: 1600, elements: !169)
!169 = !{!170, !190, !206}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !168, file: !27, line: 876, baseType: !171, size: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !27, line: 828, size: 448, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !189}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !27, line: 829, baseType: !167, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !171, file: !27, line: 829, baseType: !39, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !171, file: !27, line: 829, baseType: !39, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !171, file: !27, line: 829, baseType: !44, size: 16, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !171, file: !27, line: 829, baseType: !82, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !171, file: !27, line: 829, baseType: !167, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !171, file: !27, line: 829, baseType: !25, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !171, file: !27, line: 829, baseType: !181, size: 64, offset: 320)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !27, line: 716, size: 64, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !181, file: !27, line: 717, baseType: !8, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !27, line: 718, baseType: !14, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !181, file: !27, line: 719, baseType: !70, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !181, file: !27, line: 720, baseType: !82, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !27, line: 721, baseType: !70, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !181, file: !27, line: 722, baseType: !167, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !171, file: !27, line: 829, baseType: !39, size: 8, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !168, file: !27, line: 877, baseType: !191, size: 640)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !27, line: 835, size: 640, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !27, line: 836, baseType: !167, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !27, line: 836, baseType: !39, size: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !27, line: 836, baseType: !39, size: 8, offset: 72)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !191, file: !27, line: 836, baseType: !44, size: 16, offset: 80)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !191, file: !27, line: 836, baseType: !82, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !27, line: 836, baseType: !167, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !27, line: 836, baseType: !25, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !191, file: !27, line: 836, baseType: !181, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !191, file: !27, line: 836, baseType: !39, size: 8, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !191, file: !27, line: 836, baseType: !70, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !191, file: !27, line: 837, baseType: !82, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !191, file: !27, line: 838, baseType: !14, size: 32, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !27, line: 839, baseType: !14, size: 32, offset: 608)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !168, file: !27, line: 878, baseType: !207, size: 1600)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !27, line: 846, size: 1600, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !27, line: 847, baseType: !167, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !27, line: 847, baseType: !39, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !27, line: 847, baseType: !39, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !207, file: !27, line: 847, baseType: !44, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !207, file: !27, line: 847, baseType: !82, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !27, line: 847, baseType: !167, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !27, line: 847, baseType: !25, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !27, line: 847, baseType: !181, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !207, file: !27, line: 847, baseType: !39, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !207, file: !27, line: 847, baseType: !167, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !207, file: !27, line: 848, baseType: !167, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !207, file: !27, line: 849, baseType: !70, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !207, file: !27, line: 850, baseType: !39, size: 8, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !207, file: !27, line: 851, baseType: !70, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !207, file: !27, line: 852, baseType: !70, size: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !207, file: !27, line: 853, baseType: !70, size: 64, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !207, file: !27, line: 854, baseType: !226, size: 32, offset: 896)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 32, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 4)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !207, file: !27, line: 855, baseType: !14, size: 32, offset: 928)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !207, file: !27, line: 856, baseType: !14, size: 32, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !207, file: !27, line: 857, baseType: !14, size: 32, offset: 992)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !207, file: !27, line: 858, baseType: !14, size: 32, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !207, file: !27, line: 859, baseType: !14, size: 32, offset: 1056)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !207, file: !27, line: 860, baseType: !14, size: 32, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !207, file: !27, line: 861, baseType: !14, size: 32, offset: 1120)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !207, file: !27, line: 862, baseType: !14, size: 32, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !207, file: !27, line: 863, baseType: !14, size: 32, offset: 1184)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !207, file: !27, line: 864, baseType: !14, size: 32, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !207, file: !27, line: 865, baseType: !14, size: 32, offset: 1248)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !207, file: !27, line: 866, baseType: !14, size: 32, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !207, file: !27, line: 867, baseType: !14, size: 32, offset: 1312)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !207, file: !27, line: 868, baseType: !44, size: 16, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !207, file: !27, line: 869, baseType: !39, size: 8, offset: 1360)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !207, file: !27, line: 870, baseType: !39, size: 8, offset: 1368)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !207, file: !27, line: 871, baseType: !39, size: 8, offset: 1376)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !207, file: !27, line: 872, baseType: !247, size: 160, offset: 1384)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 160, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 20)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !159, file: !27, line: 900, baseType: !25, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !159, file: !27, line: 901, baseType: !252, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !27, line: 663, size: 640, elements: !254)
!254 = !{!255, !263, !276, !285, !294, !307, !321, !333, !345}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !253, file: !27, line: 664, baseType: !256, size: 128)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !27, line: 567, size: 128, elements: !257)
!257 = !{!258, !259, !260, !261, !262}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !27, line: 568, baseType: !6, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !27, line: 568, baseType: !39, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !27, line: 568, baseType: !39, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !27, line: 568, baseType: !44, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !27, line: 568, baseType: !44, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !253, file: !27, line: 665, baseType: !264, size: 384)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !27, line: 593, size: 384, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !27, line: 594, baseType: !6, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !27, line: 594, baseType: !39, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !27, line: 594, baseType: !39, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !27, line: 594, baseType: !44, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !27, line: 594, baseType: !44, size: 16, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !264, file: !27, line: 594, baseType: !44, size: 16, offset: 112)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !264, file: !27, line: 595, baseType: !167, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !264, file: !27, line: 596, baseType: !82, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !264, file: !27, line: 597, baseType: !82, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !264, file: !27, line: 598, baseType: !8, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !253, file: !27, line: 666, baseType: !277, size: 192)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !27, line: 573, size: 192, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !27, line: 574, baseType: !6, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !27, line: 574, baseType: !39, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !27, line: 574, baseType: !39, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !27, line: 574, baseType: !44, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !27, line: 574, baseType: !44, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !277, file: !27, line: 574, baseType: !30, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !253, file: !27, line: 667, baseType: !286, size: 192)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !27, line: 604, size: 192, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !27, line: 605, baseType: !6, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !27, line: 605, baseType: !39, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !27, line: 605, baseType: !39, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !27, line: 605, baseType: !44, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !27, line: 605, baseType: !44, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !286, file: !27, line: 605, baseType: !25, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !253, file: !27, line: 668, baseType: !295, size: 448)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !27, line: 608, size: 448, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !27, line: 609, baseType: !6, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !27, line: 609, baseType: !39, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !27, line: 609, baseType: !39, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !27, line: 609, baseType: !44, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !27, line: 609, baseType: !44, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !295, file: !27, line: 609, baseType: !14, size: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !295, file: !27, line: 610, baseType: !167, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !295, file: !27, line: 611, baseType: !82, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !295, file: !27, line: 612, baseType: !82, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !295, file: !27, line: 613, baseType: !14, size: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !253, file: !27, line: 669, baseType: !308, size: 512)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !27, line: 580, size: 512, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !27, line: 581, baseType: !6, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !27, line: 581, baseType: !39, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !27, line: 581, baseType: !39, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !27, line: 581, baseType: !44, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !27, line: 581, baseType: !44, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !308, file: !27, line: 581, baseType: !14, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !308, file: !27, line: 582, baseType: !30, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !308, file: !27, line: 583, baseType: !30, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !308, file: !27, line: 584, baseType: !132, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !308, file: !27, line: 585, baseType: !6, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !308, file: !27, line: 586, baseType: !14, size: 32, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !253, file: !27, line: 670, baseType: !322, size: 320)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !27, line: 620, size: 320, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !27, line: 621, baseType: !6, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !27, line: 621, baseType: !39, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !27, line: 621, baseType: !39, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !27, line: 621, baseType: !44, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !27, line: 621, baseType: !44, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !322, file: !27, line: 621, baseType: !39, size: 8, offset: 112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !322, file: !27, line: 622, baseType: !132, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !322, file: !27, line: 623, baseType: !30, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !322, file: !27, line: 624, baseType: !8, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !253, file: !27, line: 671, baseType: !334, size: 640)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !27, line: 631, size: 640, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !27, line: 632, baseType: !6, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !27, line: 632, baseType: !39, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !27, line: 632, baseType: !39, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !27, line: 632, baseType: !44, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !27, line: 632, baseType: !44, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !334, file: !27, line: 633, baseType: !342, size: 512, offset: 128)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 8)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !253, file: !27, line: 672, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !27, line: 654, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !27, line: 655, baseType: !6, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !27, line: 655, baseType: !39, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !27, line: 655, baseType: !39, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !27, line: 655, baseType: !44, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !27, line: 655, baseType: !44, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !346, file: !27, line: 655, baseType: !39, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !346, file: !27, line: 656, baseType: !25, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !346, file: !27, line: 657, baseType: !30, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !346, file: !27, line: 658, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !27, line: 645, size: 128, elements: !359)
!359 = !{!360, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !358, file: !27, line: 646, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !5, line: 1052, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !4, !14, !6}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !358, file: !27, line: 647, baseType: !6, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !159, file: !27, line: 902, baseType: !167, size: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !159, file: !27, line: 903, baseType: !14, size: 32, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !133, file: !134, line: 61, baseType: !14, size: 32, offset: 1088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !133, file: !134, line: 62, baseType: !14, size: 32, offset: 1120)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !133, file: !134, line: 63, baseType: !44, size: 16, offset: 1152)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !133, file: !134, line: 64, baseType: !39, size: 8, offset: 1168)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !133, file: !134, line: 66, baseType: !373, size: 2688, offset: 1216)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2688, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 7)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !133, file: !134, line: 67, baseType: !377, size: 3072, offset: 3904)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 3072, elements: !343)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !133, file: !134, line: 68, baseType: !379, size: 576, offset: 6976)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 576, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 9)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !133, file: !134, line: 69, baseType: !97, size: 64, offset: 7552)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !133, file: !134, line: 71, baseType: !82, size: 64, offset: 7616)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !133, file: !134, line: 72, baseType: !97, size: 64, offset: 7680)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !133, file: !134, line: 73, baseType: !252, size: 64, offset: 7744)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !133, file: !134, line: 74, baseType: !25, size: 64, offset: 7808)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !133, file: !134, line: 75, baseType: !30, size: 64, offset: 7872)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !133, file: !134, line: 76, baseType: !25, size: 64, offset: 7936)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !133, file: !134, line: 77, baseType: !167, size: 64, offset: 8000)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !133, file: !134, line: 78, baseType: !30, size: 64, offset: 8064)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !133, file: !134, line: 79, baseType: !25, size: 64, offset: 8128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !133, file: !134, line: 80, baseType: !70, size: 64, offset: 8192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !133, file: !134, line: 81, baseType: !167, size: 64, offset: 8256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !133, file: !134, line: 82, baseType: !395, size: 64, offset: 8320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !27, line: 702, size: 128, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !397, file: !27, line: 706, baseType: !14, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !397, file: !27, line: 707, baseType: !14, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !27, line: 708, baseType: !44, size: 16, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !397, file: !27, line: 709, baseType: !39, size: 8, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !397, file: !27, line: 710, baseType: !39, size: 8, offset: 88)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !397, file: !27, line: 711, baseType: !39, size: 8, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !133, file: !134, line: 83, baseType: !167, size: 64, offset: 8384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !133, file: !134, line: 84, baseType: !30, size: 64, offset: 8448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !133, file: !134, line: 85, baseType: !252, size: 64, offset: 8512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !133, file: !134, line: 86, baseType: !30, size: 64, offset: 8576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !133, file: !134, line: 87, baseType: !252, size: 64, offset: 8640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !133, file: !134, line: 88, baseType: !167, size: 64, offset: 8704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !133, file: !134, line: 89, baseType: !167, size: 64, offset: 8768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !133, file: !134, line: 90, baseType: !413, size: 64, offset: 8832)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !133, file: !134, line: 91, baseType: !415, size: 64, offset: 8896)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !27, line: 637, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!13, !132, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !133, file: !134, line: 92, baseType: !421, size: 64, offset: 8960)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !27, line: 641, baseType: !129)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !125, file: !32, line: 152, baseType: !30, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !32, line: 155, baseType: !14, size: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !111, file: !32, line: 156, baseType: !144, size: 16, offset: 416)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !111, file: !32, line: 157, baseType: !39, size: 8, offset: 432)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !31, file: !32, line: 375, baseType: !427, size: 576)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !32, line: 122, size: 576, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !427, file: !32, line: 123, baseType: !30, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !427, file: !32, line: 123, baseType: !39, size: 8, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !32, line: 123, baseType: !39, size: 8, offset: 72)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !427, file: !32, line: 123, baseType: !44, size: 16, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !32, line: 123, baseType: !39, size: 8, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !427, file: !32, line: 123, baseType: !39, size: 8, offset: 104)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !427, file: !32, line: 124, baseType: !44, size: 16, offset: 112)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !427, file: !32, line: 125, baseType: !6, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !427, file: !32, line: 126, baseType: !8, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !427, file: !32, line: 127, baseType: !413, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !427, file: !32, line: 128, baseType: !30, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !32, line: 129, baseType: !30, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !427, file: !32, line: 130, baseType: !25, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !427, file: !32, line: 131, baseType: !39, size: 8, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !31, file: !32, line: 376, baseType: !444, size: 448)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !32, line: 134, size: 448, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !457}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !444, file: !32, line: 135, baseType: !30, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !32, line: 135, baseType: !39, size: 8, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !32, line: 135, baseType: !39, size: 8, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !444, file: !32, line: 135, baseType: !44, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !32, line: 135, baseType: !39, size: 8, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !444, file: !32, line: 135, baseType: !39, size: 8, offset: 104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !32, line: 136, baseType: !25, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !444, file: !32, line: 137, baseType: !30, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !32, line: 138, baseType: !30, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !444, file: !32, line: 139, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !5, line: 129, baseType: !8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !444, file: !32, line: 140, baseType: !14, size: 32, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !31, file: !32, line: 377, baseType: !459, size: 320)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !32, line: 184, size: 320, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !470}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !32, line: 185, baseType: !30, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !32, line: 185, baseType: !39, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !32, line: 185, baseType: !39, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !32, line: 185, baseType: !44, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !32, line: 185, baseType: !39, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !459, file: !32, line: 185, baseType: !467, size: 128, offset: 128)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 2)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !32, line: 185, baseType: !30, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !31, file: !32, line: 378, baseType: !472, size: 384)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !32, line: 187, size: 384, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !32, line: 188, baseType: !30, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !32, line: 188, baseType: !39, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !32, line: 188, baseType: !39, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !32, line: 188, baseType: !44, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !32, line: 188, baseType: !39, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !32, line: 189, baseType: !467, size: 128, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !32, line: 189, baseType: !30, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !472, file: !32, line: 189, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !27, line: 480, size: 576, elements: !484)
!484 = !{!485, !486, !487, !488, !496, !511, !543, !544, !545, !546, !547, !548}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !483, file: !27, line: 481, baseType: !25, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !483, file: !27, line: 482, baseType: !482, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !27, line: 483, baseType: !482, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !483, file: !27, line: 484, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !27, line: 497, size: 256, elements: !491)
!491 = !{!492, !493, !494, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !490, file: !27, line: 498, baseType: !489, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !27, line: 499, baseType: !489, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !490, file: !27, line: 500, baseType: !482, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !490, file: !27, line: 501, baseType: !14, size: 32, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !483, file: !27, line: 485, baseType: !497, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !27, line: 466, size: 320, elements: !499)
!499 = !{!500, !505, !506, !507, !508, !509, !510}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !498, file: !27, line: 467, baseType: !501, size: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !27, line: 459, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !501, file: !27, line: 460, baseType: !39, size: 8)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !501, file: !27, line: 461, baseType: !8, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !498, file: !27, line: 468, baseType: !501, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !498, file: !27, line: 469, baseType: !44, size: 16, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !498, file: !27, line: 470, baseType: !39, size: 8, offset: 272)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !498, file: !27, line: 471, baseType: !39, size: 8, offset: 280)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !498, file: !27, line: 472, baseType: !39, size: 8, offset: 288)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !498, file: !27, line: 473, baseType: !39, size: 8, offset: 296)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !483, file: !27, line: 486, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !27, line: 448, size: 192, elements: !514)
!514 = !{!515, !538, !539, !540, !541, !542}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !513, file: !27, line: 449, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !27, line: 438, size: 64, elements: !517)
!517 = !{!518, !519, !532}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !516, file: !27, line: 439, baseType: !25, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !516, file: !27, line: 440, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !27, line: 419, size: 256, elements: !522)
!522 = !{!523, !528, !529, !530, !531}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !521, file: !27, line: 420, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !5, line: 1049, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!14, !4, !14, !6}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !521, file: !27, line: 421, baseType: !6, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !521, file: !27, line: 422, baseType: !25, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !521, file: !27, line: 423, baseType: !39, size: 8, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !521, file: !27, line: 424, baseType: !39, size: 8, offset: 200)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !516, file: !27, line: 441, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !27, line: 429, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !534, file: !27, line: 430, baseType: !25, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !27, line: 431, baseType: !533, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !513, file: !27, line: 450, baseType: !497, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !27, line: 451, baseType: !39, size: 8, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !513, file: !27, line: 452, baseType: !39, size: 8, offset: 136)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !513, file: !27, line: 453, baseType: !39, size: 8, offset: 144)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !513, file: !27, line: 454, baseType: !39, size: 8, offset: 152)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !483, file: !27, line: 487, baseType: !8, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !483, file: !27, line: 488, baseType: !14, size: 32, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !483, file: !27, line: 489, baseType: !44, size: 16, offset: 480)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !483, file: !27, line: 490, baseType: !44, size: 16, offset: 496)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !483, file: !27, line: 491, baseType: !39, size: 8, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !483, file: !27, line: 492, baseType: !39, size: 8, offset: 520)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !31, file: !32, line: 379, baseType: !550, size: 384)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !32, line: 192, size: 384, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !550, file: !32, line: 193, baseType: !30, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !550, file: !32, line: 193, baseType: !39, size: 8, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !550, file: !32, line: 193, baseType: !39, size: 8, offset: 72)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !550, file: !32, line: 193, baseType: !44, size: 16, offset: 80)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !32, line: 193, baseType: !39, size: 8, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !550, file: !32, line: 193, baseType: !467, size: 128, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !550, file: !32, line: 193, baseType: !30, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !550, file: !32, line: 193, baseType: !14, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !550, file: !32, line: 194, baseType: !14, size: 32, offset: 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !31, file: !32, line: 380, baseType: !562, size: 384)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !32, line: 197, size: 384, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !572, !573}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !562, file: !32, line: 198, baseType: !30, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !562, file: !32, line: 198, baseType: !39, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !562, file: !32, line: 198, baseType: !39, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !562, file: !32, line: 198, baseType: !44, size: 16, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !32, line: 198, baseType: !39, size: 8, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !562, file: !32, line: 200, baseType: !39, size: 8, offset: 104)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !562, file: !32, line: 201, baseType: !39, size: 8, offset: 112)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !562, file: !32, line: 202, baseType: !467, size: 128, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !562, file: !32, line: 202, baseType: !30, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !562, file: !32, line: 202, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5, line: 128, baseType: !8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !31, file: !32, line: 381, baseType: !576, size: 320)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !32, line: 205, size: 320, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !32, line: 206, baseType: !30, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !32, line: 206, baseType: !39, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !32, line: 206, baseType: !39, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !32, line: 206, baseType: !44, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !32, line: 206, baseType: !39, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !32, line: 206, baseType: !467, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !32, line: 206, baseType: !30, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !31, file: !32, line: 382, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !32, line: 233, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !32, line: 234, baseType: !30, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !32, line: 234, baseType: !44, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 104)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 112)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 120)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !586, file: !32, line: 234, baseType: !25, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !586, file: !32, line: 234, baseType: !14, size: 32, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !586, file: !32, line: 234, baseType: !14, size: 32, offset: 224)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !586, file: !32, line: 234, baseType: !14, size: 32, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 288)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !586, file: !32, line: 234, baseType: !39, size: 8, offset: 296)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !586, file: !32, line: 234, baseType: !30, size: 64, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !31, file: !32, line: 383, baseType: !604, size: 576)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !32, line: 237, size: 576, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !32, line: 238, baseType: !30, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !32, line: 238, baseType: !44, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 104)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 120)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !32, line: 238, baseType: !25, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !604, file: !32, line: 238, baseType: !14, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !604, file: !32, line: 238, baseType: !14, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !32, line: 238, baseType: !14, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !604, file: !32, line: 238, baseType: !39, size: 8, offset: 296)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !604, file: !32, line: 238, baseType: !44, size: 16, offset: 304)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !604, file: !32, line: 239, baseType: !30, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !604, file: !32, line: 240, baseType: !82, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !604, file: !32, line: 241, baseType: !44, size: 16, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !604, file: !32, line: 242, baseType: !82, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !31, file: !32, line: 384, baseType: !626, size: 384)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !32, line: 262, size: 384, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !32, line: 263, baseType: !30, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !32, line: 263, baseType: !44, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 120)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !32, line: 263, baseType: !25, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !626, file: !32, line: 263, baseType: !14, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !626, file: !32, line: 263, baseType: !14, size: 32, offset: 224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !626, file: !32, line: 263, baseType: !14, size: 32, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 288)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 296)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !626, file: !32, line: 263, baseType: !39, size: 8, offset: 304)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !626, file: !32, line: 264, baseType: !30, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !31, file: !32, line: 385, baseType: !645, size: 448)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !32, line: 245, size: 448, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !32, line: 246, baseType: !30, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !32, line: 246, baseType: !44, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !32, line: 246, baseType: !25, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !32, line: 246, baseType: !14, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !32, line: 246, baseType: !14, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !32, line: 246, baseType: !14, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !32, line: 246, baseType: !39, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !645, file: !32, line: 246, baseType: !30, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !645, file: !32, line: 247, baseType: !30, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !31, file: !32, line: 386, baseType: !664, size: 448)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !32, line: 250, size: 448, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !32, line: 251, baseType: !30, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !32, line: 251, baseType: !44, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 104)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 120)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !664, file: !32, line: 251, baseType: !25, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !664, file: !32, line: 251, baseType: !14, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !664, file: !32, line: 251, baseType: !14, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !32, line: 251, baseType: !14, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !664, file: !32, line: 251, baseType: !39, size: 8, offset: 296)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !664, file: !32, line: 256, baseType: !30, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !664, file: !32, line: 257, baseType: !30, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !31, file: !32, line: 387, baseType: !683, size: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !32, line: 273, size: 512, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !32, line: 274, baseType: !30, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !32, line: 274, baseType: !39, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !32, line: 274, baseType: !39, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !32, line: 274, baseType: !44, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !32, line: 274, baseType: !39, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !32, line: 274, baseType: !25, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !683, file: !32, line: 275, baseType: !14, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !683, file: !32, line: 276, baseType: !361, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !683, file: !32, line: 277, baseType: !6, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !32, line: 278, baseType: !467, size: 128, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !31, file: !32, line: 388, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !32, line: 281, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !711, !712, !713, !719, !720}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !32, line: 282, baseType: !30, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !32, line: 282, baseType: !39, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !32, line: 282, baseType: !39, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !32, line: 282, baseType: !44, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !32, line: 282, baseType: !39, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !696, file: !32, line: 282, baseType: !39, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !696, file: !32, line: 283, baseType: !39, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !32, line: 284, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !5, line: 1084, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!13, !14, !456, !14, !710, !6, !6}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !32, line: 285, baseType: !25, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !32, line: 286, baseType: !6, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !696, file: !32, line: 287, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !5, line: 1102, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!13, !4, !14, !6, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !696, file: !32, line: 288, baseType: !30, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !32, line: 289, baseType: !30, size: 64, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !31, file: !32, line: 389, baseType: !722, size: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !32, line: 307, size: 512, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !32, line: 308, baseType: !30, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !32, line: 308, baseType: !39, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !32, line: 308, baseType: !39, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !32, line: 308, baseType: !44, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !32, line: 308, baseType: !39, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !722, file: !32, line: 308, baseType: !39, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !722, file: !32, line: 309, baseType: !39, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !722, file: !32, line: 310, baseType: !39, size: 8, offset: 120)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !722, file: !32, line: 311, baseType: !6, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !32, line: 312, baseType: !25, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !722, file: !32, line: 313, baseType: !97, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !722, file: !32, line: 314, baseType: !82, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !722, file: !32, line: 315, baseType: !82, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !722, file: !32, line: 316, baseType: !14, size: 32, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !31, file: !32, line: 390, baseType: !739, size: 448)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !32, line: 340, size: 448, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !32, line: 341, baseType: !30, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !32, line: 341, baseType: !39, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !32, line: 341, baseType: !39, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !32, line: 341, baseType: !44, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !32, line: 341, baseType: !39, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !739, file: !32, line: 341, baseType: !25, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !739, file: !32, line: 342, baseType: !25, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !739, file: !32, line: 343, baseType: !6, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !739, file: !32, line: 344, baseType: !82, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !739, file: !32, line: 345, baseType: !14, size: 32, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !32, line: 391, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !32, line: 350, size: 256, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !764}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !32, line: 351, baseType: !30, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !32, line: 351, baseType: !39, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !32, line: 351, baseType: !39, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !32, line: 351, baseType: !44, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !32, line: 351, baseType: !39, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !752, file: !32, line: 351, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !5, line: 1055, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !4, !6}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !752, file: !32, line: 352, baseType: !6, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !31, file: !32, line: 392, baseType: !766, size: 192)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !32, line: 357, size: 192, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !32, line: 358, baseType: !30, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !32, line: 358, baseType: !39, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !32, line: 358, baseType: !39, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !32, line: 358, baseType: !44, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !32, line: 358, baseType: !39, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !32, line: 358, baseType: !30, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !31, file: !32, line: 399, baseType: !26, size: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !26, file: !27, line: 135, baseType: !39, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !27, line: 136, baseType: !39, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !27, line: 137, baseType: !44, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !27, line: 138, baseType: !779, size: 32, offset: 96)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !780, line: 327, size: 32, elements: !781)
!780 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !779, file: !780, line: 328, baseType: !14, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !779, file: !780, line: 329, baseType: !226, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !26, file: !27, line: 139, baseType: !25, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !26, file: !27, line: 140, baseType: !25, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !26, file: !27, line: 141, baseType: !25, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !26, file: !27, line: 142, baseType: !144, size: 16, offset: 320)
!788 = !DILocalVariable(name: "parent_node", arg: 1, scope: !22, file: !1, line: 35, type: !25)
!789 = !DILocation(line: 35, column: 10, scope: !22)
!790 = !DILocalVariable(name: "child_node", arg: 2, scope: !22, file: !1, line: 37, type: !25)
!791 = !DILocation(line: 37, column: 10, scope: !22)
!792 = !DILocation(line: 41, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !22, file: !1, line: 41, column: 6)
!794 = !DILocation(line: 41, column: 6, scope: !22)
!795 = !DILocation(line: 45, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !793, file: !1, line: 41, column: 19)
!797 = !DILocation(line: 45, column: 24, scope: !796)
!798 = !DILocation(line: 45, column: 3, scope: !796)
!799 = !DILocation(line: 50, column: 10, scope: !22)
!800 = !DILocation(line: 50, column: 22, scope: !22)
!801 = !DILocation(line: 50, column: 2, scope: !22)
!802 = !DILocation(line: 51, column: 1, scope: !22)
!803 = distinct !DISubprogram(name: "acpi_ns_get_next_node_typed", scope: !1, file: !1, line: 72, type: !804, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!804 = !DISubroutineType(types: !805)
!805 = !{!25, !806, !25, !25}
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !5, line: 635, baseType: !14)
!807 = !DILocalVariable(name: "type", arg: 1, scope: !803, file: !1, line: 72, type: !806)
!808 = !DILocation(line: 72, column: 74, scope: !803)
!809 = !DILocalVariable(name: "parent_node", arg: 2, scope: !803, file: !1, line: 75, type: !25)
!810 = !DILocation(line: 75, column: 9, scope: !803)
!811 = !DILocalVariable(name: "child_node", arg: 3, scope: !803, file: !1, line: 78, type: !25)
!812 = !DILocation(line: 78, column: 9, scope: !803)
!813 = !DILocalVariable(name: "next_node", scope: !803, file: !1, line: 80, type: !25)
!814 = !DILocation(line: 80, column: 30, scope: !803)
!815 = !DILocation(line: 84, column: 36, scope: !803)
!816 = !DILocation(line: 84, column: 49, scope: !803)
!817 = !DILocation(line: 84, column: 14, scope: !803)
!818 = !DILocation(line: 84, column: 12, scope: !803)
!819 = !DILocation(line: 89, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !803, file: !1, line: 89, column: 6)
!821 = !DILocation(line: 89, column: 11, scope: !820)
!822 = !DILocation(line: 89, column: 6, scope: !803)
!823 = !DILocation(line: 93, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !1, line: 89, column: 29)
!825 = !DILocation(line: 93, column: 3, scope: !824)
!826 = !DILocation(line: 98, column: 2, scope: !803)
!827 = !DILocation(line: 98, column: 9, scope: !803)
!828 = !DILocation(line: 102, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 102, column: 7)
!830 = distinct !DILexicalBlock(scope: !803, file: !1, line: 98, column: 20)
!831 = !DILocation(line: 102, column: 18, scope: !829)
!832 = !DILocation(line: 102, column: 26, scope: !829)
!833 = !DILocation(line: 102, column: 23, scope: !829)
!834 = !DILocation(line: 102, column: 7, scope: !830)
!835 = !DILocation(line: 103, column: 12, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !1, line: 102, column: 32)
!837 = !DILocation(line: 103, column: 4, scope: !836)
!838 = !DILocation(line: 108, column: 15, scope: !830)
!839 = !DILocation(line: 108, column: 26, scope: !830)
!840 = !DILocation(line: 108, column: 13, scope: !830)
!841 = distinct !{!841, !826, !842}
!842 = !DILocation(line: 109, column: 2, scope: !803)
!843 = !DILocation(line: 113, column: 2, scope: !803)
!844 = !DILocation(line: 114, column: 1, scope: !803)
!845 = distinct !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1, file: !1, line: 150, type: !846, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!846 = !DISubroutineType(types: !847)
!847 = !{!13, !806, !4, !14, !14, !848, !848, !6, !718}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !5, line: 1111, baseType: !715)
!849 = !DILocalVariable(name: "type", arg: 1, scope: !845, file: !1, line: 150, type: !806)
!850 = !DILocation(line: 150, column: 41, scope: !845)
!851 = !DILocalVariable(name: "start_node", arg: 2, scope: !845, file: !1, line: 151, type: !4)
!852 = !DILocation(line: 151, column: 22, scope: !845)
!853 = !DILocalVariable(name: "max_depth", arg: 3, scope: !845, file: !1, line: 152, type: !14)
!854 = !DILocation(line: 152, column: 14, scope: !845)
!855 = !DILocalVariable(name: "flags", arg: 4, scope: !845, file: !1, line: 153, type: !14)
!856 = !DILocation(line: 153, column: 14, scope: !845)
!857 = !DILocalVariable(name: "descending_callback", arg: 5, scope: !845, file: !1, line: 154, type: !848)
!858 = !DILocation(line: 154, column: 29, scope: !845)
!859 = !DILocalVariable(name: "ascending_callback", arg: 6, scope: !845, file: !1, line: 155, type: !848)
!860 = !DILocation(line: 155, column: 29, scope: !845)
!861 = !DILocalVariable(name: "context", arg: 7, scope: !845, file: !1, line: 156, type: !6)
!862 = !DILocation(line: 156, column: 16, scope: !845)
!863 = !DILocalVariable(name: "return_value", arg: 8, scope: !845, file: !1, line: 156, type: !718)
!864 = !DILocation(line: 156, column: 32, scope: !845)
!865 = !DILocalVariable(name: "status", scope: !845, file: !1, line: 158, type: !13)
!866 = !DILocation(line: 158, column: 14, scope: !845)
!867 = !DILocalVariable(name: "mutex_status", scope: !845, file: !1, line: 159, type: !13)
!868 = !DILocation(line: 159, column: 14, scope: !845)
!869 = !DILocalVariable(name: "child_node", scope: !845, file: !1, line: 160, type: !25)
!870 = !DILocation(line: 160, column: 30, scope: !845)
!871 = !DILocalVariable(name: "parent_node", scope: !845, file: !1, line: 161, type: !25)
!872 = !DILocation(line: 161, column: 30, scope: !845)
!873 = !DILocalVariable(name: "child_type", scope: !845, file: !1, line: 162, type: !806)
!874 = !DILocation(line: 162, column: 19, scope: !845)
!875 = !DILocalVariable(name: "level", scope: !845, file: !1, line: 163, type: !14)
!876 = !DILocation(line: 163, column: 6, scope: !845)
!877 = !DILocalVariable(name: "node_previously_visited", scope: !845, file: !1, line: 164, type: !39)
!878 = !DILocation(line: 164, column: 5, scope: !845)
!879 = !DILocation(line: 170, column: 6, scope: !880)
!880 = distinct !DILexicalBlock(scope: !845, file: !1, line: 170, column: 6)
!881 = !DILocation(line: 170, column: 17, scope: !880)
!882 = !DILocation(line: 170, column: 6, scope: !845)
!883 = !DILocation(line: 171, column: 16, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !1, line: 170, column: 38)
!885 = !DILocation(line: 171, column: 14, scope: !884)
!886 = !DILocation(line: 172, column: 2, scope: !884)
!887 = !DILocation(line: 176, column: 16, scope: !845)
!888 = !DILocation(line: 176, column: 14, scope: !845)
!889 = !DILocation(line: 177, column: 37, scope: !845)
!890 = !DILocation(line: 177, column: 15, scope: !845)
!891 = !DILocation(line: 177, column: 13, scope: !845)
!892 = !DILocation(line: 178, column: 13, scope: !845)
!893 = !DILocation(line: 179, column: 8, scope: !845)
!894 = !DILocation(line: 186, column: 2, scope: !845)
!895 = !DILocation(line: 186, column: 9, scope: !845)
!896 = !DILocation(line: 186, column: 15, scope: !845)
!897 = !DILocation(line: 186, column: 19, scope: !845)
!898 = !DILocation(line: 186, column: 22, scope: !845)
!899 = !DILocation(line: 0, scope: !845)
!900 = !DILocation(line: 187, column: 10, scope: !901)
!901 = distinct !DILexicalBlock(scope: !845, file: !1, line: 186, column: 34)
!902 = !DILocation(line: 191, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !1, line: 191, column: 7)
!904 = !DILocation(line: 191, column: 12, scope: !903)
!905 = !DILocation(line: 191, column: 7, scope: !901)
!906 = !DILocation(line: 192, column: 17, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !1, line: 191, column: 30)
!908 = !DILocation(line: 192, column: 29, scope: !907)
!909 = !DILocation(line: 192, column: 15, scope: !907)
!910 = !DILocation(line: 193, column: 3, scope: !907)
!911 = !DILocation(line: 203, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !901, file: !1, line: 203, column: 7)
!913 = !DILocation(line: 203, column: 20, scope: !912)
!914 = !DILocation(line: 203, column: 26, scope: !912)
!915 = !DILocation(line: 203, column: 45, scope: !912)
!916 = !DILocation(line: 204, column: 9, scope: !912)
!917 = !DILocation(line: 204, column: 15, scope: !912)
!918 = !DILocation(line: 203, column: 7, scope: !901)
!919 = !DILocation(line: 205, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !912, file: !1, line: 204, column: 43)
!921 = !DILocation(line: 206, column: 3, scope: !920)
!922 = !DILocation(line: 210, column: 12, scope: !923)
!923 = distinct !DILexicalBlock(scope: !912, file: !1, line: 210, column: 12)
!924 = !DILocation(line: 210, column: 26, scope: !923)
!925 = !DILocation(line: 210, column: 23, scope: !923)
!926 = !DILocation(line: 210, column: 12, scope: !912)
!927 = !DILocation(line: 215, column: 8, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !1, line: 215, column: 8)
!929 = distinct !DILexicalBlock(scope: !923, file: !1, line: 210, column: 32)
!930 = !DILocation(line: 215, column: 14, scope: !928)
!931 = !DILocation(line: 215, column: 8, scope: !929)
!932 = !DILocation(line: 217, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !1, line: 215, column: 37)
!934 = !DILocation(line: 216, column: 18, scope: !933)
!935 = !DILocation(line: 218, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !1, line: 218, column: 9)
!937 = !DILocation(line: 218, column: 9, scope: !933)
!938 = !DILocation(line: 219, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !1, line: 218, column: 37)
!940 = !DILocation(line: 221, column: 4, scope: !933)
!941 = !DILocation(line: 227, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !929, file: !1, line: 227, column: 8)
!943 = !DILocation(line: 227, column: 8, scope: !929)
!944 = !DILocation(line: 228, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !1, line: 228, column: 9)
!946 = distinct !DILexicalBlock(scope: !942, file: !1, line: 227, column: 34)
!947 = !DILocation(line: 228, column: 9, scope: !946)
!948 = !DILocation(line: 230, column: 10, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !1, line: 228, column: 30)
!950 = !DILocation(line: 230, column: 30, scope: !949)
!951 = !DILocation(line: 231, column: 9, scope: !949)
!952 = !DILocation(line: 231, column: 16, scope: !949)
!953 = !DILocation(line: 232, column: 9, scope: !949)
!954 = !DILocation(line: 229, column: 13, scope: !949)
!955 = !DILocation(line: 233, column: 5, scope: !949)
!956 = !DILocation(line: 234, column: 4, scope: !946)
!957 = !DILocation(line: 235, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 235, column: 9)
!959 = distinct !DILexicalBlock(scope: !942, file: !1, line: 234, column: 11)
!960 = !DILocation(line: 235, column: 9, scope: !959)
!961 = !DILocation(line: 237, column: 10, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !1, line: 235, column: 29)
!963 = !DILocation(line: 237, column: 29, scope: !962)
!964 = !DILocation(line: 238, column: 15, scope: !962)
!965 = !DILocation(line: 238, column: 22, scope: !962)
!966 = !DILocation(line: 239, column: 15, scope: !962)
!967 = !DILocation(line: 236, column: 13, scope: !962)
!968 = !DILocation(line: 240, column: 5, scope: !962)
!969 = !DILocation(line: 243, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !929, file: !1, line: 243, column: 8)
!971 = !DILocation(line: 243, column: 14, scope: !970)
!972 = !DILocation(line: 243, column: 8, scope: !929)
!973 = !DILocation(line: 245, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !1, line: 243, column: 37)
!975 = !DILocation(line: 244, column: 18, scope: !974)
!976 = !DILocation(line: 246, column: 9, scope: !977)
!977 = distinct !DILexicalBlock(scope: !974, file: !1, line: 246, column: 9)
!978 = !DILocation(line: 246, column: 9, scope: !974)
!979 = !DILocation(line: 247, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !1, line: 246, column: 37)
!981 = !DILocation(line: 249, column: 4, scope: !974)
!982 = !DILocation(line: 251, column: 12, scope: !929)
!983 = !DILocation(line: 251, column: 4, scope: !929)
!984 = !DILocation(line: 256, column: 5, scope: !985)
!985 = distinct !DILexicalBlock(scope: !929, file: !1, line: 251, column: 20)
!986 = !DILocation(line: 262, column: 5, scope: !985)
!987 = !DILocation(line: 268, column: 5, scope: !985)
!988 = !DILocation(line: 270, column: 3, scope: !929)
!989 = !DILocation(line: 278, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !901, file: !1, line: 278, column: 7)
!991 = !DILocation(line: 278, column: 32, scope: !990)
!992 = !DILocation(line: 279, column: 8, scope: !990)
!993 = !DILocation(line: 279, column: 16, scope: !990)
!994 = !DILocation(line: 279, column: 14, scope: !990)
!995 = !DILocation(line: 279, column: 27, scope: !990)
!996 = !DILocation(line: 279, column: 31, scope: !990)
!997 = !DILocation(line: 279, column: 38, scope: !990)
!998 = !DILocation(line: 278, column: 7, scope: !901)
!999 = !DILocation(line: 280, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 280, column: 8)
!1001 = distinct !DILexicalBlock(scope: !990, file: !1, line: 279, column: 57)
!1002 = !DILocation(line: 280, column: 20, scope: !1000)
!1003 = !DILocation(line: 280, column: 8, scope: !1001)
!1004 = !DILocation(line: 284, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 280, column: 27)
!1006 = !DILocation(line: 285, column: 19, scope: !1005)
!1007 = !DILocation(line: 285, column: 17, scope: !1005)
!1008 = !DILocation(line: 287, column: 31, scope: !1005)
!1009 = !DILocation(line: 287, column: 9, scope: !1005)
!1010 = !DILocation(line: 286, column: 16, scope: !1005)
!1011 = !DILocation(line: 288, column: 5, scope: !1005)
!1012 = distinct !{!1012, !894, !1013}
!1013 = !DILocation(line: 319, column: 2, scope: !845)
!1014 = !DILocation(line: 290, column: 3, scope: !1001)
!1015 = !DILocation(line: 294, column: 8, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !901, file: !1, line: 294, column: 7)
!1017 = !DILocation(line: 294, column: 7, scope: !901)
!1018 = !DILocation(line: 295, column: 28, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 294, column: 33)
!1020 = !DILocation(line: 296, column: 4, scope: !1019)
!1021 = !DILocation(line: 301, column: 38, scope: !901)
!1022 = !DILocation(line: 301, column: 51, scope: !901)
!1023 = !DILocation(line: 301, column: 16, scope: !901)
!1024 = !DILocation(line: 301, column: 14, scope: !901)
!1025 = !DILocation(line: 302, column: 7, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !901, file: !1, line: 302, column: 7)
!1027 = !DILocation(line: 302, column: 7, scope: !901)
!1028 = !DILocation(line: 303, column: 28, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 302, column: 19)
!1030 = !DILocation(line: 304, column: 3, scope: !1029)
!1031 = !DILocation(line: 313, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 308, column: 8)
!1033 = !DILocation(line: 314, column: 17, scope: !1032)
!1034 = !DILocation(line: 314, column: 15, scope: !1032)
!1035 = !DILocation(line: 315, column: 18, scope: !1032)
!1036 = !DILocation(line: 315, column: 31, scope: !1032)
!1037 = !DILocation(line: 315, column: 16, scope: !1032)
!1038 = !DILocation(line: 317, column: 28, scope: !1032)
!1039 = !DILocation(line: 323, column: 2, scope: !845)
!1040 = !DILocation(line: 324, column: 1, scope: !845)
