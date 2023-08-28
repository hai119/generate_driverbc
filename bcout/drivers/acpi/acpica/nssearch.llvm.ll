; ModuleID = '../bcout/drivers/acpi/acpica/nssearch.llvm.bc'
source_filename = "drivers/acpi/acpica/nssearch.c"
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

@_acpi_module_name = internal constant [9 x i8] c"nssearch\00", align 1, !dbg !0
@.str = private unnamed_addr constant [48 x i8] c"Null parameter: Node %p Name 0x%X ReturnNode %p\00", align 1
@acpi_gbl_runtime_namespace_override = external dso_local global i8, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_search_one_scope(i32 %target_name, %struct.acpi_namespace_node* %parent_node, i32 %type, %struct.acpi_namespace_node** %return_node) #0 !dbg !794 {
entry:
  %retval = alloca i32, align 4
  %target_name.addr = alloca i32, align 4
  %parent_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %type.addr = alloca i32, align 4
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i32 %target_name, i32* %target_name.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_name.addr, metadata !800, metadata !DIExpression()), !dbg !801
  store %struct.acpi_namespace_node* %parent_node, %struct.acpi_namespace_node** %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node.addr, metadata !802, metadata !DIExpression()), !dbg !803
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node.addr, align 8, !dbg !810
  %child = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 6, !dbg !811
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child, align 8, !dbg !811
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !812
  br label %while.cond, !dbg !813

while.cond:                                       ; preds = %if.end3, %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !814
  %tobool = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !813
  br i1 %tobool, label %while.body, label %while.end, !dbg !813

while.body:                                       ; preds = %while.cond
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !815
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 4, !dbg !818
  %integer = bitcast %union.acpi_name_union* %name to i32*, !dbg !819
  %4 = load i32, i32* %integer, align 4, !dbg !819
  %5 = load i32, i32* %target_name.addr, align 4, !dbg !820
  %cmp = icmp eq i32 %4, %5, !dbg !821
  br i1 %cmp, label %if.then, label %if.end3, !dbg !822

if.then:                                          ; preds = %while.body
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !823
  %call = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %6) #3, !dbg !826
  %cmp1 = icmp eq i32 %call, 22, !dbg !827
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !828

if.then2:                                         ; preds = %if.then
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !829
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 0, !dbg !829
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !829
  %9 = bitcast %union.acpi_operand_object* %8 to i8*, !dbg !829
  %10 = bitcast i8* %9 to %struct.acpi_namespace_node*, !dbg !829
  store %struct.acpi_namespace_node* %10, %struct.acpi_namespace_node** %node, align 8, !dbg !831
  br label %if.end, !dbg !832

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !833
  %12 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !834
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %12, align 8, !dbg !835
  store i32 0, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

if.end3:                                          ; preds = %while.body
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !837
  %peer = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %13, i32 0, i32 7, !dbg !838
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %peer, align 8, !dbg !838
  store %struct.acpi_namespace_node* %14, %struct.acpi_namespace_node** %node, align 8, !dbg !839
  br label %while.cond, !dbg !813, !llvm.loop !840

while.end:                                        ; preds = %while.cond
  store i32 5, i32* %retval, align 4, !dbg !842
  br label %return, !dbg !842

return:                                           ; preds = %while.end, %if.end
  %15 = load i32, i32* %retval, align 4, !dbg !843
  ret i32 %15, !dbg !843
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_search_and_enter(i32 %target_name, %struct.acpi_walk_state* %walk_state, %struct.acpi_namespace_node* %node, i32 %interpreter_mode, i32 %type, i32 %flags, %struct.acpi_namespace_node** %return_node) #0 !dbg !844 {
entry:
  %retval = alloca i32, align 4
  %target_name.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %interpreter_mode.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %status = alloca i32, align 4
  %new_node = alloca %struct.acpi_namespace_node*, align 8
  store i32 %target_name, i32* %target_name.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_name.addr, metadata !848, metadata !DIExpression()), !dbg !849
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !850, metadata !DIExpression()), !dbg !851
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !852, metadata !DIExpression()), !dbg !853
  store i32 %interpreter_mode, i32* %interpreter_mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interpreter_mode.addr, metadata !854, metadata !DIExpression()), !dbg !855
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !856, metadata !DIExpression()), !dbg !857
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata i32* %status, metadata !862, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %new_node, metadata !864, metadata !DIExpression()), !dbg !865
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !866
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !866
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !868

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %target_name.addr, align 4, !dbg !869
  %tobool1 = icmp ne i32 %1, 0, !dbg !869
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !870

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !871
  %tobool3 = icmp ne %struct.acpi_namespace_node** %2, null, !dbg !871
  br i1 %tobool3, label %if.end, label %if.then, !dbg !872

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !873
  %4 = load i32, i32* %target_name.addr, align 4, !dbg !873
  %5 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !873
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 266, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.acpi_namespace_node* %3, i32 %4, %struct.acpi_namespace_node** %5) #3, !dbg !873
  store i32 4097, i32* %retval, align 4, !dbg !875
  br label %return, !dbg !875

if.end:                                           ; preds = %lor.lhs.false2
  %6 = bitcast i32* %target_name.addr to i8*, !dbg !876
  call void @acpi_ut_repair_name(i8* %6) #3, !dbg !877
  %7 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !878
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %7, align 8, !dbg !879
  %8 = load i32, i32* %target_name.addr, align 4, !dbg !880
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !881
  %10 = load i32, i32* %type.addr, align 4, !dbg !882
  %11 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !883
  %call = call i32 @acpi_ns_search_one_scope(i32 %8, %struct.acpi_namespace_node* %9, i32 %10, %struct.acpi_namespace_node** %11) #3, !dbg !884
  store i32 %call, i32* %status, align 4, !dbg !885
  %12 = load i32, i32* %status, align 4, !dbg !886
  %cmp = icmp ne i32 %12, 5, !dbg !888
  br i1 %cmp, label %if.then4, label %if.end21, !dbg !889

if.then4:                                         ; preds = %if.end
  %13 = load i32, i32* %status, align 4, !dbg !890
  %cmp5 = icmp eq i32 %13, 0, !dbg !893
  br i1 %cmp5, label %if.then6, label %if.end20, !dbg !894

if.then6:                                         ; preds = %if.then4
  %14 = load i32, i32* %flags.addr, align 4, !dbg !895
  %and = and i32 %14, 128, !dbg !898
  %tobool7 = icmp ne i32 %and, 0, !dbg !898
  br i1 %tobool7, label %if.then8, label %if.else14, !dbg !899

if.then8:                                         ; preds = %if.then6
  %15 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !900
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %15, align 8, !dbg !902
  call void @acpi_ns_delete_children(%struct.acpi_namespace_node* %16) #3, !dbg !903
  %17 = load i8, i8* @acpi_gbl_runtime_namespace_override, align 1, !dbg !904
  %tobool9 = icmp ne i8 %17, 0, !dbg !904
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !906

if.then10:                                        ; preds = %if.then8
  %18 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !907
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %18, align 8, !dbg !909
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 0, !dbg !910
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !910
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %20) #3, !dbg !911
  %21 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !912
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %21, align 8, !dbg !913
  %object11 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %22, i32 0, i32 0, !dbg !914
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %object11, align 8, !dbg !915
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !916
  %owner_id = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 7, !dbg !917
  %24 = load i16, i16* %owner_id, align 8, !dbg !917
  %25 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !918
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %25, align 8, !dbg !919
  %owner_id12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 8, !dbg !920
  store i16 %24, i16* %owner_id12, align 8, !dbg !921
  br label %if.end13, !dbg !922

if.else:                                          ; preds = %if.then8
  %27 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !923
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %27, align 8, !dbg !925
  call void @acpi_ns_remove_node(%struct.acpi_namespace_node* %28) #3, !dbg !926
  %29 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !927
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %29, align 8, !dbg !928
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %if.end19, !dbg !929

if.else14:                                        ; preds = %if.then6
  %30 = load i32, i32* %flags.addr, align 4, !dbg !930
  %and15 = and i32 %30, 8, !dbg !932
  %tobool16 = icmp ne i32 %and15, 0, !dbg !932
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !933

if.then17:                                        ; preds = %if.else14
  store i32 7, i32* %status, align 4, !dbg !934
  br label %if.end18, !dbg !936

if.end18:                                         ; preds = %if.then17, %if.else14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  br label %if.end20, !dbg !937

if.end20:                                         ; preds = %if.end19, %if.then4
  %31 = load i32, i32* %status, align 4, !dbg !938
  store i32 %31, i32* %retval, align 4, !dbg !938
  br label %return, !dbg !938

if.end21:                                         ; preds = %if.end
  %32 = load i32, i32* %interpreter_mode.addr, align 4, !dbg !939
  %cmp22 = icmp ne i32 %32, 1, !dbg !941
  br i1 %cmp22, label %land.lhs.true, label %if.end30, !dbg !942

land.lhs.true:                                    ; preds = %if.end21
  %33 = load i32, i32* %flags.addr, align 4, !dbg !943
  %and23 = and i32 %33, 1, !dbg !944
  %tobool24 = icmp ne i32 %and23, 0, !dbg !944
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !945

if.then25:                                        ; preds = %land.lhs.true
  %34 = load i32, i32* %target_name.addr, align 4, !dbg !946
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !948
  %36 = load i32, i32* %type.addr, align 4, !dbg !949
  %37 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !950
  %call26 = call i32 @acpi_ns_search_parent_tree(i32 %34, %struct.acpi_namespace_node* %35, i32 %36, %struct.acpi_namespace_node** %37) #3, !dbg !951
  store i32 %call26, i32* %status, align 4, !dbg !952
  %38 = load i32, i32* %status, align 4, !dbg !953
  %tobool27 = icmp ne i32 %38, 0, !dbg !953
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !955

if.then28:                                        ; preds = %if.then25
  %39 = load i32, i32* %status, align 4, !dbg !956
  store i32 %39, i32* %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end29:                                         ; preds = %if.then25
  br label %if.end30, !dbg !958

if.end30:                                         ; preds = %if.end29, %land.lhs.true, %if.end21
  %40 = load i32, i32* %interpreter_mode.addr, align 4, !dbg !959
  %cmp31 = icmp eq i32 %40, 3, !dbg !961
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !962

if.then32:                                        ; preds = %if.end30
  store i32 5, i32* %retval, align 4, !dbg !963
  br label %return, !dbg !963

if.end33:                                         ; preds = %if.end30
  %41 = load i32, i32* %target_name.addr, align 4, !dbg !965
  %call34 = call %struct.acpi_namespace_node* @acpi_ns_create_node(i32 %41) #3, !dbg !966
  store %struct.acpi_namespace_node* %call34, %struct.acpi_namespace_node** %new_node, align 8, !dbg !967
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !968
  %tobool35 = icmp ne %struct.acpi_namespace_node* %42, null, !dbg !968
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !970

if.then36:                                        ; preds = %if.end33
  store i32 4, i32* %retval, align 4, !dbg !971
  br label %return, !dbg !971

if.end37:                                         ; preds = %if.end33
  %43 = load i32, i32* %flags.addr, align 4, !dbg !973
  %and38 = and i32 %43, 64, !dbg !975
  %tobool39 = icmp ne i32 %and38, 0, !dbg !975
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !976

if.then40:                                        ; preds = %if.end37
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !977
  %flags41 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %44, i32 0, i32 3, !dbg !979
  %45 = load i16, i16* %flags41, align 2, !dbg !980
  %conv = zext i16 %45 to i32, !dbg !980
  %or = or i32 %conv, 2, !dbg !980
  %conv42 = trunc i32 %or to i16, !dbg !980
  store i16 %conv42, i16* %flags41, align 2, !dbg !980
  br label %if.end43, !dbg !981

if.end43:                                         ; preds = %if.then40, %if.end37
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !982
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !983
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !984
  %49 = load i32, i32* %type.addr, align 4, !dbg !985
  call void @acpi_ns_install_node(%struct.acpi_walk_state* %46, %struct.acpi_namespace_node* %47, %struct.acpi_namespace_node* %48, i32 %49) #3, !dbg !986
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %new_node, align 8, !dbg !987
  %51 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !988
  store %struct.acpi_namespace_node* %50, %struct.acpi_namespace_node** %51, align 8, !dbg !989
  store i32 0, i32* %retval, align 4, !dbg !990
  br label %return, !dbg !990

return:                                           ; preds = %if.end43, %if.then36, %if.then32, %if.then28, %if.end20, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !991
  ret i32 %52, !dbg !991
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_repair_name(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_children(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_remove_node(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ns_search_parent_tree(i32 %target_name, %struct.acpi_namespace_node* %node, i32 %type, %struct.acpi_namespace_node** %return_node) #0 !dbg !992 {
entry:
  %retval = alloca i32, align 4
  %target_name.addr = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %type.addr = alloca i32, align 4
  %return_node.addr = alloca %struct.acpi_namespace_node**, align 8
  %status = alloca i32, align 4
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  store i32 %target_name, i32* %target_name.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_name.addr, metadata !993, metadata !DIExpression()), !dbg !994
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !995, metadata !DIExpression()), !dbg !996
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !997, metadata !DIExpression()), !dbg !998
  store %struct.acpi_namespace_node** %return_node, %struct.acpi_namespace_node*** %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %return_node.addr, metadata !999, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !1003, metadata !DIExpression()), !dbg !1004
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1005
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 5, !dbg !1006
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !1006
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1007
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1008
  %tobool = icmp ne %struct.acpi_namespace_node* %2, null, !dbg !1008
  br i1 %tobool, label %if.end, label %if.then, !dbg !1010

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval, align 4, !dbg !1011
  br label %return, !dbg !1011

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %type.addr, align 4, !dbg !1013
  %call = call i32 @acpi_ns_local(i32 %3) #3, !dbg !1015
  %tobool1 = icmp ne i32 %call, 0, !dbg !1015
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1016

if.then2:                                         ; preds = %if.end
  store i32 5, i32* %retval, align 4, !dbg !1017
  br label %return, !dbg !1017

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !1019

while.cond:                                       ; preds = %if.end8, %if.end3
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1020
  %tobool4 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !1019
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1019

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %target_name.addr, align 4, !dbg !1021
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1023
  %7 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %return_node.addr, align 8, !dbg !1024
  %call5 = call i32 @acpi_ns_search_one_scope(i32 %5, %struct.acpi_namespace_node* %6, i32 0, %struct.acpi_namespace_node** %7) #3, !dbg !1025
  store i32 %call5, i32* %status, align 4, !dbg !1026
  %8 = load i32, i32* %status, align 4, !dbg !1027
  %tobool6 = icmp ne i32 %8, 0, !dbg !1027
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1029

if.then7:                                         ; preds = %while.body
  %9 = load i32, i32* %status, align 4, !dbg !1030
  store i32 %9, i32* %retval, align 4, !dbg !1030
  br label %return, !dbg !1030

if.end8:                                          ; preds = %while.body
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1032
  %parent9 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 5, !dbg !1033
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent9, align 8, !dbg !1033
  store %struct.acpi_namespace_node* %11, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !1034
  br label %while.cond, !dbg !1019, !llvm.loop !1035

while.end:                                        ; preds = %while.cond
  store i32 5, i32* %retval, align 4, !dbg !1037
  br label %return, !dbg !1037

return:                                           ; preds = %while.end, %if.then7, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !1038
  ret i32 %12, !dbg !1038
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_create_node(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_install_node(%struct.acpi_walk_state*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_local(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!789, !790, !791, !792}
!llvm.ident = !{!793}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !787, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !786, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nssearch.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !104, !127, !62}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !15)
!15 = !{!16, !773, !774, !775, !776, !782, !783, !784, !785}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !14, file: !6, line: 134, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !19, line: 367, size: 576, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !37, !53, !67, !81, !95, !105, !424, !441, !456, !469, !547, !559, !573, !583, !601, !623, !642, !661, !680, !693, !719, !736, !749, !763, !772}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !18, file: !19, line: 368, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !19, line: 73, size: 128, elements: !23)
!23 = !{!24, !25, !31, !32, !36}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !22, file: !19, line: 74, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 72)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !22, file: !19, line: 74, baseType: !33, size: 16, offset: 80)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !18, file: !19, line: 369, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !19, line: 76, size: 192, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !19, line: 77, baseType: !17, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !19, line: 77, baseType: !26, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !19, line: 77, baseType: !26, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !19, line: 77, baseType: !33, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !19, line: 77, baseType: !26, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !38, file: !19, line: 77, baseType: !46, size: 24, offset: 104)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !19, line: 78, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !52)
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !18, file: !19, line: 370, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !19, line: 93, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !19, line: 94, baseType: !17, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !19, line: 94, baseType: !26, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !19, line: 94, baseType: !26, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !19, line: 94, baseType: !33, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !19, line: 94, baseType: !26, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !19, line: 94, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !19, line: 94, baseType: !65, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !18, file: !19, line: 371, baseType: !68, size: 384)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !19, line: 97, size: 384, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !77, !78, !79, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !19, line: 98, baseType: !17, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !19, line: 98, baseType: !26, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !19, line: 98, baseType: !26, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !19, line: 98, baseType: !33, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !19, line: 98, baseType: !26, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !19, line: 98, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !19, line: 98, baseType: !65, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !68, file: !19, line: 99, baseType: !65, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !68, file: !19, line: 100, baseType: !76, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !68, file: !19, line: 101, baseType: !13, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !18, file: !19, line: 372, baseType: !82, size: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !19, line: 104, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !19, line: 105, baseType: !17, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !19, line: 105, baseType: !26, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !19, line: 105, baseType: !26, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !19, line: 105, baseType: !33, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !19, line: 105, baseType: !26, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !19, line: 105, baseType: !13, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !82, file: !19, line: 106, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !82, file: !19, line: 107, baseType: !76, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !82, file: !19, line: 108, baseType: !65, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !82, file: !19, line: 109, baseType: !65, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !18, file: !19, line: 373, baseType: !96, size: 192)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !19, line: 118, size: 192, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !19, line: 119, baseType: !17, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !19, line: 119, baseType: !26, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !19, line: 119, baseType: !26, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !19, line: 119, baseType: !33, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !19, line: 119, baseType: !26, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !96, file: !19, line: 119, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !18, file: !19, line: 374, baseType: !106, size: 448)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !19, line: 143, size: 448, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !421, !422, !423}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !19, line: 144, baseType: !17, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !19, line: 144, baseType: !26, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !19, line: 144, baseType: !26, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !19, line: 144, baseType: !33, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !19, line: 144, baseType: !26, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !106, file: !19, line: 144, baseType: !26, size: 8, offset: 104)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !106, file: !19, line: 145, baseType: !26, size: 8, offset: 112)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !106, file: !19, line: 146, baseType: !26, size: 8, offset: 120)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !19, line: 147, baseType: !17, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !19, line: 148, baseType: !17, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !19, line: 149, baseType: !76, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !106, file: !19, line: 153, baseType: !120, size: 64, offset: 320)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !19, line: 150, size: 64, elements: !121)
!121 = !{!122, !420}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !120, file: !19, line: 151, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !128, line: 421, baseType: !65)
!128 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !131, line: 37, size: 9024, elements: !132)
!131 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !366, !367, !368, !369, !370, !374, !376, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !403, !404, !405, !406, !407, !408, !409, !410, !412, !418}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !131, line: 38, baseType: !129, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !131, line: 39, baseType: !26, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !130, file: !131, line: 40, baseType: !26, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !130, file: !131, line: 41, baseType: !33, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !130, file: !131, line: 42, baseType: !26, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !130, file: !131, line: 43, baseType: !26, size: 8, offset: 104)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !130, file: !131, line: 44, baseType: !26, size: 8, offset: 112)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !130, file: !131, line: 45, baseType: !141, size: 16, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !128, line: 445, baseType: !33)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !130, file: !131, line: 46, baseType: !26, size: 8, offset: 144)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !130, file: !131, line: 47, baseType: !26, size: 8, offset: 152)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !130, file: !131, line: 48, baseType: !26, size: 8, offset: 160)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !130, file: !131, line: 49, baseType: !26, size: 8, offset: 168)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !130, file: !131, line: 50, baseType: !26, size: 8, offset: 176)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !130, file: !131, line: 51, baseType: !26, size: 8, offset: 184)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !130, file: !131, line: 52, baseType: !26, size: 8, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !130, file: !131, line: 53, baseType: !26, size: 8, offset: 200)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !130, file: !131, line: 54, baseType: !76, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !130, file: !131, line: 55, baseType: !65, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !130, file: !131, line: 56, baseType: !65, size: 32, offset: 352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !130, file: !131, line: 57, baseType: !65, size: 32, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !130, file: !131, line: 58, baseType: !65, size: 32, offset: 416)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !130, file: !131, line: 60, baseType: !156, size: 640, offset: 448)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !247, !248, !364, !365}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !156, file: !6, line: 894, baseType: !76, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !156, file: !6, line: 895, baseType: !76, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !156, file: !6, line: 896, baseType: !76, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !156, file: !6, line: 897, baseType: !76, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !156, file: !6, line: 898, baseType: !76, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !156, file: !6, line: 899, baseType: !164, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !166)
!166 = !{!167, !187, !203}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !165, file: !6, line: 876, baseType: !168, size: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !186}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !6, line: 829, baseType: !164, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !6, line: 829, baseType: !26, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !6, line: 829, baseType: !26, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !168, file: !6, line: 829, baseType: !33, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !168, file: !6, line: 829, baseType: !76, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !6, line: 829, baseType: !164, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !6, line: 829, baseType: !13, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !168, file: !6, line: 829, baseType: !178, size: 64, offset: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !178, file: !6, line: 717, baseType: !50, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !178, file: !6, line: 718, baseType: !65, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !178, file: !6, line: 719, baseType: !62, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !178, file: !6, line: 720, baseType: !76, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !6, line: 721, baseType: !62, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !178, file: !6, line: 722, baseType: !164, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !168, file: !6, line: 829, baseType: !26, size: 8, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !165, file: !6, line: 877, baseType: !188, size: 640)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !6, line: 836, baseType: !164, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !6, line: 836, baseType: !26, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !6, line: 836, baseType: !26, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !6, line: 836, baseType: !33, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !6, line: 836, baseType: !76, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !6, line: 836, baseType: !164, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !6, line: 836, baseType: !13, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !6, line: 836, baseType: !178, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !6, line: 836, baseType: !26, size: 8, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !188, file: !6, line: 836, baseType: !62, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !188, file: !6, line: 837, baseType: !76, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !188, file: !6, line: 838, baseType: !65, size: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !6, line: 839, baseType: !65, size: 32, offset: 608)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !165, file: !6, line: 878, baseType: !204, size: 1600)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !6, line: 847, baseType: !164, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !6, line: 847, baseType: !26, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !6, line: 847, baseType: !26, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !204, file: !6, line: 847, baseType: !33, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !204, file: !6, line: 847, baseType: !76, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !6, line: 847, baseType: !164, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !6, line: 847, baseType: !13, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !6, line: 847, baseType: !178, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !204, file: !6, line: 847, baseType: !26, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !204, file: !6, line: 847, baseType: !164, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !204, file: !6, line: 848, baseType: !164, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !204, file: !6, line: 849, baseType: !62, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !204, file: !6, line: 850, baseType: !26, size: 8, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !204, file: !6, line: 851, baseType: !62, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !204, file: !6, line: 852, baseType: !62, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !204, file: !6, line: 853, baseType: !62, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !204, file: !6, line: 854, baseType: !223, size: 32, offset: 896)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 4)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !204, file: !6, line: 855, baseType: !65, size: 32, offset: 928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !204, file: !6, line: 856, baseType: !65, size: 32, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !204, file: !6, line: 857, baseType: !65, size: 32, offset: 992)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !204, file: !6, line: 858, baseType: !65, size: 32, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !204, file: !6, line: 859, baseType: !65, size: 32, offset: 1056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !204, file: !6, line: 860, baseType: !65, size: 32, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !204, file: !6, line: 861, baseType: !65, size: 32, offset: 1120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !204, file: !6, line: 862, baseType: !65, size: 32, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !204, file: !6, line: 863, baseType: !65, size: 32, offset: 1184)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !204, file: !6, line: 864, baseType: !65, size: 32, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !204, file: !6, line: 865, baseType: !65, size: 32, offset: 1248)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !204, file: !6, line: 866, baseType: !65, size: 32, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !204, file: !6, line: 867, baseType: !65, size: 32, offset: 1312)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !204, file: !6, line: 868, baseType: !33, size: 16, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !204, file: !6, line: 869, baseType: !26, size: 8, offset: 1360)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !204, file: !6, line: 870, baseType: !26, size: 8, offset: 1368)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !204, file: !6, line: 871, baseType: !26, size: 8, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !204, file: !6, line: 872, baseType: !244, size: 160, offset: 1384)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 20)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !156, file: !6, line: 900, baseType: !13, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !156, file: !6, line: 901, baseType: !249, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !251)
!251 = !{!252, !260, !273, !282, !291, !304, !318, !330, !342}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !250, file: !6, line: 664, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !254)
!254 = !{!255, !256, !257, !258, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !6, line: 568, baseType: !104, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !253, file: !6, line: 568, baseType: !26, size: 8, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !6, line: 568, baseType: !26, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !253, file: !6, line: 568, baseType: !33, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !253, file: !6, line: 568, baseType: !33, size: 16, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !250, file: !6, line: 665, baseType: !261, size: 384)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !6, line: 594, baseType: !104, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !6, line: 594, baseType: !26, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !6, line: 594, baseType: !26, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !6, line: 594, baseType: !33, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !261, file: !6, line: 594, baseType: !33, size: 16, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !261, file: !6, line: 594, baseType: !33, size: 16, offset: 112)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !261, file: !6, line: 595, baseType: !164, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !261, file: !6, line: 596, baseType: !76, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !261, file: !6, line: 597, baseType: !76, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !261, file: !6, line: 598, baseType: !50, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !250, file: !6, line: 666, baseType: !274, size: 192)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !6, line: 574, baseType: !104, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !6, line: 574, baseType: !26, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !6, line: 574, baseType: !26, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !6, line: 574, baseType: !33, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !6, line: 574, baseType: !33, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !274, file: !6, line: 574, baseType: !17, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !250, file: !6, line: 667, baseType: !283, size: 192)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !6, line: 605, baseType: !104, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !6, line: 605, baseType: !26, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !6, line: 605, baseType: !26, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !6, line: 605, baseType: !33, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !6, line: 605, baseType: !33, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !283, file: !6, line: 605, baseType: !13, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !250, file: !6, line: 668, baseType: !292, size: 448)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 609, baseType: !104, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !6, line: 609, baseType: !26, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !6, line: 609, baseType: !26, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !6, line: 609, baseType: !33, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !6, line: 609, baseType: !33, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !292, file: !6, line: 609, baseType: !65, size: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !292, file: !6, line: 610, baseType: !164, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !292, file: !6, line: 611, baseType: !76, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !292, file: !6, line: 612, baseType: !76, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !292, file: !6, line: 613, baseType: !65, size: 32, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !250, file: !6, line: 669, baseType: !305, size: 512)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 581, baseType: !104, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 581, baseType: !26, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 581, baseType: !26, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 581, baseType: !33, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 581, baseType: !33, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !305, file: !6, line: 581, baseType: !65, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !305, file: !6, line: 582, baseType: !17, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !305, file: !6, line: 583, baseType: !17, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !305, file: !6, line: 584, baseType: !129, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !305, file: !6, line: 585, baseType: !104, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !305, file: !6, line: 586, baseType: !65, size: 32, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !250, file: !6, line: 670, baseType: !319, size: 320)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !6, line: 621, baseType: !104, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !6, line: 621, baseType: !26, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !6, line: 621, baseType: !26, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !6, line: 621, baseType: !33, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !6, line: 621, baseType: !33, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !319, file: !6, line: 621, baseType: !26, size: 8, offset: 112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !319, file: !6, line: 622, baseType: !129, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !319, file: !6, line: 623, baseType: !17, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !319, file: !6, line: 624, baseType: !50, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !250, file: !6, line: 671, baseType: !331, size: 640)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 632, baseType: !104, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 632, baseType: !26, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 632, baseType: !26, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 632, baseType: !33, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 632, baseType: !33, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !331, file: !6, line: 633, baseType: !339, size: 512, offset: 128)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !250, file: !6, line: 672, baseType: !343, size: 320)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !6, line: 655, baseType: !104, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !6, line: 655, baseType: !26, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !6, line: 655, baseType: !26, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !6, line: 655, baseType: !33, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !6, line: 655, baseType: !33, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !343, file: !6, line: 655, baseType: !26, size: 8, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !343, file: !6, line: 656, baseType: !13, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !343, file: !6, line: 657, baseType: !17, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !343, file: !6, line: 658, baseType: !354, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !356)
!356 = !{!357, !363}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !355, file: !6, line: 646, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !128, line: 1052, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362, !65, !104}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !128, line: 424, baseType: !104)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !355, file: !6, line: 647, baseType: !104, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !156, file: !6, line: 902, baseType: !164, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !156, file: !6, line: 903, baseType: !65, size: 32, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !130, file: !131, line: 61, baseType: !65, size: 32, offset: 1088)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !130, file: !131, line: 62, baseType: !65, size: 32, offset: 1120)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !130, file: !131, line: 63, baseType: !33, size: 16, offset: 1152)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !130, file: !131, line: 64, baseType: !26, size: 8, offset: 1168)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !130, file: !131, line: 66, baseType: !371, size: 2688, offset: 1216)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2688, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !130, file: !131, line: 67, baseType: !375, size: 3072, offset: 3904)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3072, elements: !340)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !130, file: !131, line: 68, baseType: !377, size: 576, offset: 6976)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 9)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !130, file: !131, line: 69, baseType: !91, size: 64, offset: 7552)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !130, file: !131, line: 71, baseType: !76, size: 64, offset: 7616)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !130, file: !131, line: 72, baseType: !91, size: 64, offset: 7680)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !130, file: !131, line: 73, baseType: !249, size: 64, offset: 7744)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !130, file: !131, line: 74, baseType: !13, size: 64, offset: 7808)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !130, file: !131, line: 75, baseType: !17, size: 64, offset: 7872)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !130, file: !131, line: 76, baseType: !13, size: 64, offset: 7936)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !130, file: !131, line: 77, baseType: !164, size: 64, offset: 8000)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !130, file: !131, line: 78, baseType: !17, size: 64, offset: 8064)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !130, file: !131, line: 79, baseType: !13, size: 64, offset: 8128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !130, file: !131, line: 80, baseType: !62, size: 64, offset: 8192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !130, file: !131, line: 81, baseType: !164, size: 64, offset: 8256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !130, file: !131, line: 82, baseType: !393, size: 64, offset: 8320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !395, file: !6, line: 706, baseType: !65, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !395, file: !6, line: 707, baseType: !65, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !6, line: 708, baseType: !33, size: 16, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !395, file: !6, line: 709, baseType: !26, size: 8, offset: 80)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !395, file: !6, line: 710, baseType: !26, size: 8, offset: 88)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !395, file: !6, line: 711, baseType: !26, size: 8, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !130, file: !131, line: 83, baseType: !164, size: 64, offset: 8384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !130, file: !131, line: 84, baseType: !17, size: 64, offset: 8448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !130, file: !131, line: 85, baseType: !249, size: 64, offset: 8512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !130, file: !131, line: 86, baseType: !17, size: 64, offset: 8576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !130, file: !131, line: 87, baseType: !249, size: 64, offset: 8640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !130, file: !131, line: 88, baseType: !164, size: 64, offset: 8704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !130, file: !131, line: 89, baseType: !164, size: 64, offset: 8768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !130, file: !131, line: 90, baseType: !411, size: 64, offset: 8832)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !130, file: !131, line: 91, baseType: !413, size: 64, offset: 8896)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!127, !129, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !130, file: !131, line: 92, baseType: !419, size: 64, offset: 8960)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !124)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !120, file: !19, line: 152, baseType: !17, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !19, line: 155, baseType: !65, size: 32, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !106, file: !19, line: 156, baseType: !141, size: 16, offset: 416)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !106, file: !19, line: 157, baseType: !26, size: 8, offset: 432)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 375, baseType: !425, size: 576)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !19, line: 122, size: 576, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !425, file: !19, line: 123, baseType: !17, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !425, file: !19, line: 123, baseType: !33, size: 16, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 104)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !425, file: !19, line: 124, baseType: !33, size: 16, offset: 112)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !425, file: !19, line: 125, baseType: !104, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !425, file: !19, line: 126, baseType: !50, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !425, file: !19, line: 127, baseType: !411, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !425, file: !19, line: 128, baseType: !17, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !19, line: 129, baseType: !17, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !425, file: !19, line: 130, baseType: !13, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !425, file: !19, line: 131, baseType: !26, size: 8, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !18, file: !19, line: 376, baseType: !442, size: 448)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !19, line: 134, size: 448, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !455}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !19, line: 135, baseType: !17, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !19, line: 135, baseType: !33, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !19, line: 136, baseType: !13, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !442, file: !19, line: 137, baseType: !17, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !19, line: 138, baseType: !17, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !442, file: !19, line: 139, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !128, line: 129, baseType: !50)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !442, file: !19, line: 140, baseType: !65, size: 32, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !18, file: !19, line: 377, baseType: !457, size: 320)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !19, line: 184, size: 320, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !468}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !19, line: 185, baseType: !17, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !19, line: 185, baseType: !26, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !19, line: 185, baseType: !26, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !19, line: 185, baseType: !33, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !19, line: 185, baseType: !26, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !457, file: !19, line: 185, baseType: !465, size: 128, offset: 128)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !19, line: 185, baseType: !17, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !18, file: !19, line: 378, baseType: !470, size: 384)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !19, line: 187, size: 384, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !19, line: 188, baseType: !17, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !19, line: 188, baseType: !26, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !19, line: 188, baseType: !26, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !19, line: 188, baseType: !33, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !19, line: 188, baseType: !26, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !470, file: !19, line: 189, baseType: !465, size: 128, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !19, line: 189, baseType: !17, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !470, file: !19, line: 189, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !482)
!482 = !{!483, !484, !485, !486, !494, !509, !541, !542, !543, !544, !545, !546}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !481, file: !6, line: 481, baseType: !13, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !481, file: !6, line: 482, baseType: !480, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !481, file: !6, line: 483, baseType: !480, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !481, file: !6, line: 484, baseType: !487, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !488, file: !6, line: 498, baseType: !487, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !488, file: !6, line: 499, baseType: !487, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !488, file: !6, line: 500, baseType: !480, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !488, file: !6, line: 501, baseType: !65, size: 32, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !481, file: !6, line: 485, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !497)
!497 = !{!498, !503, !504, !505, !506, !507, !508}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !496, file: !6, line: 467, baseType: !499, size: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !499, file: !6, line: 460, baseType: !26, size: 8)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !6, line: 461, baseType: !50, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !496, file: !6, line: 468, baseType: !499, size: 128, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !496, file: !6, line: 469, baseType: !33, size: 16, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !496, file: !6, line: 470, baseType: !26, size: 8, offset: 272)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !496, file: !6, line: 471, baseType: !26, size: 8, offset: 280)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !496, file: !6, line: 472, baseType: !26, size: 8, offset: 288)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !496, file: !6, line: 473, baseType: !26, size: 8, offset: 296)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !481, file: !6, line: 486, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !512)
!512 = !{!513, !536, !537, !538, !539, !540}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !511, file: !6, line: 449, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !515)
!515 = !{!516, !517, !530}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !514, file: !6, line: 439, baseType: !13, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !514, file: !6, line: 440, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !520)
!520 = !{!521, !526, !527, !528, !529}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !519, file: !6, line: 420, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !128, line: 1049, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!65, !362, !65, !104}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !519, file: !6, line: 421, baseType: !104, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !519, file: !6, line: 422, baseType: !13, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !519, file: !6, line: 423, baseType: !26, size: 8, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !519, file: !6, line: 424, baseType: !26, size: 8, offset: 200)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !514, file: !6, line: 441, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !532, file: !6, line: 430, baseType: !13, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !532, file: !6, line: 431, baseType: !531, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !511, file: !6, line: 450, baseType: !495, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !6, line: 451, baseType: !26, size: 8, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !511, file: !6, line: 452, baseType: !26, size: 8, offset: 136)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !511, file: !6, line: 453, baseType: !26, size: 8, offset: 144)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !511, file: !6, line: 454, baseType: !26, size: 8, offset: 152)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !481, file: !6, line: 487, baseType: !50, size: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !481, file: !6, line: 488, baseType: !65, size: 32, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !481, file: !6, line: 489, baseType: !33, size: 16, offset: 480)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !481, file: !6, line: 490, baseType: !33, size: 16, offset: 496)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !481, file: !6, line: 491, baseType: !26, size: 8, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !481, file: !6, line: 492, baseType: !26, size: 8, offset: 520)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !18, file: !19, line: 379, baseType: !548, size: 384)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !19, line: 192, size: 384, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !548, file: !19, line: 193, baseType: !17, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !548, file: !19, line: 193, baseType: !26, size: 8, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !548, file: !19, line: 193, baseType: !26, size: 8, offset: 72)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !548, file: !19, line: 193, baseType: !33, size: 16, offset: 80)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !19, line: 193, baseType: !26, size: 8, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !548, file: !19, line: 193, baseType: !465, size: 128, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !548, file: !19, line: 193, baseType: !17, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !548, file: !19, line: 193, baseType: !65, size: 32, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !548, file: !19, line: 194, baseType: !65, size: 32, offset: 352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !18, file: !19, line: 380, baseType: !560, size: 384)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !19, line: 197, size: 384, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !560, file: !19, line: 198, baseType: !17, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !560, file: !19, line: 198, baseType: !26, size: 8, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !19, line: 198, baseType: !26, size: 8, offset: 72)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !560, file: !19, line: 198, baseType: !33, size: 16, offset: 80)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !19, line: 198, baseType: !26, size: 8, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !560, file: !19, line: 200, baseType: !26, size: 8, offset: 104)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !560, file: !19, line: 201, baseType: !26, size: 8, offset: 112)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !560, file: !19, line: 202, baseType: !465, size: 128, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !560, file: !19, line: 202, baseType: !17, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !560, file: !19, line: 202, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !128, line: 128, baseType: !50)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !18, file: !19, line: 381, baseType: !574, size: 320)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !19, line: 205, size: 320, elements: !575)
!575 = !{!576, !577, !578, !579, !580, !581, !582}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !574, file: !19, line: 206, baseType: !17, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !574, file: !19, line: 206, baseType: !26, size: 8, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !19, line: 206, baseType: !26, size: 8, offset: 72)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !574, file: !19, line: 206, baseType: !33, size: 16, offset: 80)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !19, line: 206, baseType: !26, size: 8, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !574, file: !19, line: 206, baseType: !465, size: 128, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !574, file: !19, line: 206, baseType: !17, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !18, file: !19, line: 382, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !19, line: 233, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !19, line: 234, baseType: !17, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !19, line: 234, baseType: !33, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 112)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 120)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !584, file: !19, line: 234, baseType: !13, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !584, file: !19, line: 234, baseType: !65, size: 32, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !584, file: !19, line: 234, baseType: !65, size: 32, offset: 224)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !584, file: !19, line: 234, baseType: !65, size: 32, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 288)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !584, file: !19, line: 234, baseType: !26, size: 8, offset: 296)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !584, file: !19, line: 234, baseType: !17, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !18, file: !19, line: 383, baseType: !602, size: 576)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !19, line: 237, size: 576, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !19, line: 238, baseType: !17, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !19, line: 238, baseType: !33, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 104)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 112)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !602, file: !19, line: 238, baseType: !13, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !602, file: !19, line: 238, baseType: !65, size: 32, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !602, file: !19, line: 238, baseType: !65, size: 32, offset: 224)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !602, file: !19, line: 238, baseType: !65, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !602, file: !19, line: 238, baseType: !26, size: 8, offset: 296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !602, file: !19, line: 238, baseType: !33, size: 16, offset: 304)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !602, file: !19, line: 239, baseType: !17, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !602, file: !19, line: 240, baseType: !76, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !602, file: !19, line: 241, baseType: !33, size: 16, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !602, file: !19, line: 242, baseType: !76, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !18, file: !19, line: 384, baseType: !624, size: 384)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !19, line: 262, size: 384, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !624, file: !19, line: 263, baseType: !17, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 72)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !624, file: !19, line: 263, baseType: !33, size: 16, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 104)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 120)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !624, file: !19, line: 263, baseType: !13, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !624, file: !19, line: 263, baseType: !65, size: 32, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !624, file: !19, line: 263, baseType: !65, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !624, file: !19, line: 263, baseType: !65, size: 32, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 288)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 296)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !624, file: !19, line: 263, baseType: !26, size: 8, offset: 304)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !624, file: !19, line: 264, baseType: !17, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !18, file: !19, line: 385, baseType: !643, size: 448)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !19, line: 245, size: 448, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !643, file: !19, line: 246, baseType: !17, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 72)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !643, file: !19, line: 246, baseType: !33, size: 16, offset: 80)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 104)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 120)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !643, file: !19, line: 246, baseType: !13, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !643, file: !19, line: 246, baseType: !65, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !643, file: !19, line: 246, baseType: !65, size: 32, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !643, file: !19, line: 246, baseType: !65, size: 32, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 288)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !643, file: !19, line: 246, baseType: !26, size: 8, offset: 296)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !643, file: !19, line: 246, baseType: !17, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !643, file: !19, line: 247, baseType: !17, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !18, file: !19, line: 386, baseType: !662, size: 448)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !19, line: 250, size: 448, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !662, file: !19, line: 251, baseType: !17, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !662, file: !19, line: 251, baseType: !33, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 120)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !662, file: !19, line: 251, baseType: !13, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !662, file: !19, line: 251, baseType: !65, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !662, file: !19, line: 251, baseType: !65, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !662, file: !19, line: 251, baseType: !65, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !662, file: !19, line: 251, baseType: !26, size: 8, offset: 296)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !662, file: !19, line: 256, baseType: !17, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !662, file: !19, line: 257, baseType: !17, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !18, file: !19, line: 387, baseType: !681, size: 512)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !19, line: 273, size: 512, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !681, file: !19, line: 274, baseType: !17, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !681, file: !19, line: 274, baseType: !26, size: 8, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !19, line: 274, baseType: !26, size: 8, offset: 72)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !681, file: !19, line: 274, baseType: !33, size: 16, offset: 80)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !19, line: 274, baseType: !26, size: 8, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !681, file: !19, line: 274, baseType: !13, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !681, file: !19, line: 275, baseType: !65, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !681, file: !19, line: 276, baseType: !358, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !681, file: !19, line: 277, baseType: !104, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !681, file: !19, line: 278, baseType: !465, size: 128, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !18, file: !19, line: 388, baseType: !694, size: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !19, line: 281, size: 512, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !709, !710, !711, !717, !718}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !19, line: 282, baseType: !17, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !19, line: 282, baseType: !26, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !19, line: 282, baseType: !26, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !19, line: 282, baseType: !33, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !19, line: 282, baseType: !26, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !694, file: !19, line: 282, baseType: !26, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !694, file: !19, line: 283, baseType: !26, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !694, file: !19, line: 284, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !128, line: 1084, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!127, !65, !454, !65, !708, !104, !104}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !19, line: 285, baseType: !13, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !694, file: !19, line: 286, baseType: !104, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !694, file: !19, line: 287, baseType: !712, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !128, line: 1102, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!127, !362, !65, !104, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !694, file: !19, line: 288, baseType: !17, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !19, line: 289, baseType: !17, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !18, file: !19, line: 389, baseType: !720, size: 512)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !19, line: 307, size: 512, elements: !721)
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !720, file: !19, line: 308, baseType: !17, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !720, file: !19, line: 308, baseType: !26, size: 8, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !19, line: 308, baseType: !26, size: 8, offset: 72)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !720, file: !19, line: 308, baseType: !33, size: 16, offset: 80)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !720, file: !19, line: 308, baseType: !26, size: 8, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !720, file: !19, line: 308, baseType: !26, size: 8, offset: 104)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !720, file: !19, line: 309, baseType: !26, size: 8, offset: 112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !720, file: !19, line: 310, baseType: !26, size: 8, offset: 120)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !720, file: !19, line: 311, baseType: !104, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !19, line: 312, baseType: !13, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !720, file: !19, line: 313, baseType: !91, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !720, file: !19, line: 314, baseType: !76, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !720, file: !19, line: 315, baseType: !76, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !720, file: !19, line: 316, baseType: !65, size: 32, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !18, file: !19, line: 390, baseType: !737, size: 448)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !19, line: 340, size: 448, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !19, line: 341, baseType: !17, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !19, line: 341, baseType: !26, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !19, line: 341, baseType: !26, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !19, line: 341, baseType: !33, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !19, line: 341, baseType: !26, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !737, file: !19, line: 341, baseType: !13, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !737, file: !19, line: 342, baseType: !13, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !737, file: !19, line: 343, baseType: !104, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !737, file: !19, line: 344, baseType: !76, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !737, file: !19, line: 345, baseType: !65, size: 32, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !19, line: 391, baseType: !750, size: 256)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !19, line: 350, size: 256, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !19, line: 351, baseType: !17, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !19, line: 351, baseType: !26, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !19, line: 351, baseType: !26, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !19, line: 351, baseType: !33, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !19, line: 351, baseType: !26, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !750, file: !19, line: 351, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !128, line: 1055, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !362, !104}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !750, file: !19, line: 352, baseType: !104, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !18, file: !19, line: 392, baseType: !764, size: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !19, line: 357, size: 192, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !19, line: 358, baseType: !17, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !19, line: 358, baseType: !26, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !19, line: 358, baseType: !26, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !19, line: 358, baseType: !33, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !19, line: 358, baseType: !26, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !19, line: 358, baseType: !17, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 399, baseType: !14, size: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !14, file: !6, line: 135, baseType: !26, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !6, line: 136, baseType: !26, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !6, line: 137, baseType: !33, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !6, line: 138, baseType: !777, size: 32, offset: 96)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !778, line: 327, size: 32, elements: !779)
!778 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !777, file: !778, line: 328, baseType: !65, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !777, file: !778, line: 329, baseType: !223, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !6, line: 139, baseType: !13, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !14, file: !6, line: 140, baseType: !13, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !14, file: !6, line: 141, baseType: !13, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !14, file: !6, line: 142, baseType: !141, size: 16, offset: 320)
!786 = !{!0}
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 72, elements: !378)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!789 = !{i32 7, !"Dwarf Version", i32 4}
!790 = !{i32 2, !"Debug Info Version", i32 3}
!791 = !{i32 1, !"wchar_size", i32 2}
!792 = !{i32 1, !"Code Model", i32 2}
!793 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!794 = distinct !DISubprogram(name: "acpi_ns_search_one_scope", scope: !3, file: !3, line: 59, type: !795, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !799)
!795 = !DISubroutineType(types: !796)
!796 = !{!127, !65, !13, !797, !798}
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !128, line: 635, baseType: !65)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!799 = !{}
!800 = !DILocalVariable(name: "target_name", arg: 1, scope: !794, file: !3, line: 59, type: !65)
!801 = !DILocation(line: 59, column: 30, scope: !794)
!802 = !DILocalVariable(name: "parent_node", arg: 2, scope: !794, file: !3, line: 60, type: !13)
!803 = !DILocation(line: 60, column: 33, scope: !794)
!804 = !DILocalVariable(name: "type", arg: 3, scope: !794, file: !3, line: 61, type: !797)
!805 = !DILocation(line: 61, column: 22, scope: !794)
!806 = !DILocalVariable(name: "return_node", arg: 4, scope: !794, file: !3, line: 62, type: !798)
!807 = !DILocation(line: 62, column: 34, scope: !794)
!808 = !DILocalVariable(name: "node", scope: !794, file: !3, line: 64, type: !13)
!809 = !DILocation(line: 64, column: 30, scope: !794)
!810 = !DILocation(line: 89, column: 9, scope: !794)
!811 = !DILocation(line: 89, column: 22, scope: !794)
!812 = !DILocation(line: 89, column: 7, scope: !794)
!813 = !DILocation(line: 90, column: 2, scope: !794)
!814 = !DILocation(line: 90, column: 9, scope: !794)
!815 = !DILocation(line: 94, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 94, column: 7)
!817 = distinct !DILexicalBlock(scope: !794, file: !3, line: 90, column: 15)
!818 = !DILocation(line: 94, column: 13, scope: !816)
!819 = !DILocation(line: 94, column: 18, scope: !816)
!820 = !DILocation(line: 94, column: 29, scope: !816)
!821 = !DILocation(line: 94, column: 26, scope: !816)
!822 = !DILocation(line: 94, column: 7, scope: !817)
!823 = !DILocation(line: 98, column: 25, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 98, column: 8)
!825 = distinct !DILexicalBlock(scope: !816, file: !3, line: 94, column: 42)
!826 = !DILocation(line: 98, column: 8, scope: !824)
!827 = !DILocation(line: 98, column: 31, scope: !824)
!828 = !DILocation(line: 98, column: 8, scope: !825)
!829 = !DILocation(line: 101, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !3, line: 99, column: 38)
!831 = !DILocation(line: 100, column: 10, scope: !830)
!832 = !DILocation(line: 103, column: 4, scope: !830)
!833 = !DILocation(line: 115, column: 19, scope: !825)
!834 = !DILocation(line: 115, column: 5, scope: !825)
!835 = !DILocation(line: 115, column: 17, scope: !825)
!836 = !DILocation(line: 116, column: 4, scope: !825)
!837 = !DILocation(line: 121, column: 10, scope: !817)
!838 = !DILocation(line: 121, column: 16, scope: !817)
!839 = !DILocation(line: 121, column: 8, scope: !817)
!840 = distinct !{!840, !813, !841}
!841 = !DILocation(line: 122, column: 2, scope: !794)
!842 = !DILocation(line: 134, column: 2, scope: !794)
!843 = !DILocation(line: 135, column: 1, scope: !794)
!844 = distinct !DISubprogram(name: "acpi_ns_search_and_enter", scope: !3, file: !3, line: 251, type: !845, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !799)
!845 = !DISubroutineType(types: !846)
!846 = !{!127, !65, !129, !13, !847, !797, !65, !798}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!848 = !DILocalVariable(name: "target_name", arg: 1, scope: !844, file: !3, line: 251, type: !65)
!849 = !DILocation(line: 251, column: 30, scope: !844)
!850 = !DILocalVariable(name: "walk_state", arg: 2, scope: !844, file: !3, line: 252, type: !129)
!851 = !DILocation(line: 252, column: 29, scope: !844)
!852 = !DILocalVariable(name: "node", arg: 3, scope: !844, file: !3, line: 253, type: !13)
!853 = !DILocation(line: 253, column: 33, scope: !844)
!854 = !DILocalVariable(name: "interpreter_mode", arg: 4, scope: !844, file: !3, line: 254, type: !847)
!855 = !DILocation(line: 254, column: 27, scope: !844)
!856 = !DILocalVariable(name: "type", arg: 5, scope: !844, file: !3, line: 255, type: !797)
!857 = !DILocation(line: 255, column: 22, scope: !844)
!858 = !DILocalVariable(name: "flags", arg: 6, scope: !844, file: !3, line: 256, type: !65)
!859 = !DILocation(line: 256, column: 9, scope: !844)
!860 = !DILocalVariable(name: "return_node", arg: 7, scope: !844, file: !3, line: 256, type: !798)
!861 = !DILocation(line: 256, column: 45, scope: !844)
!862 = !DILocalVariable(name: "status", scope: !844, file: !3, line: 258, type: !127)
!863 = !DILocation(line: 258, column: 14, scope: !844)
!864 = !DILocalVariable(name: "new_node", scope: !844, file: !3, line: 259, type: !13)
!865 = !DILocation(line: 259, column: 30, scope: !844)
!866 = !DILocation(line: 265, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !844, file: !3, line: 265, column: 6)
!868 = !DILocation(line: 265, column: 12, scope: !867)
!869 = !DILocation(line: 265, column: 16, scope: !867)
!870 = !DILocation(line: 265, column: 28, scope: !867)
!871 = !DILocation(line: 265, column: 32, scope: !867)
!872 = !DILocation(line: 265, column: 6, scope: !844)
!873 = !DILocation(line: 266, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !3, line: 265, column: 45)
!875 = !DILocation(line: 269, column: 3, scope: !874)
!876 = !DILocation(line: 281, column: 22, scope: !844)
!877 = !DILocation(line: 281, column: 2, scope: !844)
!878 = !DILocation(line: 285, column: 3, scope: !844)
!879 = !DILocation(line: 285, column: 15, scope: !844)
!880 = !DILocation(line: 286, column: 36, scope: !844)
!881 = !DILocation(line: 286, column: 49, scope: !844)
!882 = !DILocation(line: 286, column: 55, scope: !844)
!883 = !DILocation(line: 286, column: 61, scope: !844)
!884 = !DILocation(line: 286, column: 11, scope: !844)
!885 = !DILocation(line: 286, column: 9, scope: !844)
!886 = !DILocation(line: 287, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !844, file: !3, line: 287, column: 6)
!888 = !DILocation(line: 287, column: 13, scope: !887)
!889 = !DILocation(line: 287, column: 6, scope: !844)
!890 = !DILocation(line: 292, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 292, column: 7)
!892 = distinct !DILexicalBlock(scope: !887, file: !3, line: 287, column: 30)
!893 = !DILocation(line: 292, column: 14, scope: !891)
!894 = !DILocation(line: 292, column: 7, scope: !892)
!895 = !DILocation(line: 301, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 301, column: 8)
!897 = distinct !DILexicalBlock(scope: !891, file: !3, line: 292, column: 24)
!898 = !DILocation(line: 301, column: 14, scope: !896)
!899 = !DILocation(line: 301, column: 8, scope: !897)
!900 = !DILocation(line: 310, column: 30, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !3, line: 301, column: 43)
!902 = !DILocation(line: 310, column: 29, scope: !901)
!903 = !DILocation(line: 310, column: 5, scope: !901)
!904 = !DILocation(line: 311, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !3, line: 311, column: 9)
!906 = !DILocation(line: 311, column: 9, scope: !901)
!907 = !DILocation(line: 312, column: 33, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 311, column: 46)
!909 = !DILocation(line: 312, column: 32, scope: !908)
!910 = !DILocation(line: 312, column: 47, scope: !908)
!911 = !DILocation(line: 312, column: 6, scope: !908)
!912 = !DILocation(line: 313, column: 8, scope: !908)
!913 = !DILocation(line: 313, column: 7, scope: !908)
!914 = !DILocation(line: 313, column: 22, scope: !908)
!915 = !DILocation(line: 313, column: 29, scope: !908)
!916 = !DILocation(line: 315, column: 10, scope: !908)
!917 = !DILocation(line: 315, column: 22, scope: !908)
!918 = !DILocation(line: 314, column: 8, scope: !908)
!919 = !DILocation(line: 314, column: 7, scope: !908)
!920 = !DILocation(line: 314, column: 22, scope: !908)
!921 = !DILocation(line: 314, column: 31, scope: !908)
!922 = !DILocation(line: 316, column: 5, scope: !908)
!923 = !DILocation(line: 317, column: 27, scope: !924)
!924 = distinct !DILexicalBlock(scope: !905, file: !3, line: 316, column: 12)
!925 = !DILocation(line: 317, column: 26, scope: !924)
!926 = !DILocation(line: 317, column: 6, scope: !924)
!927 = !DILocation(line: 318, column: 7, scope: !924)
!928 = !DILocation(line: 318, column: 19, scope: !924)
!929 = !DILocation(line: 320, column: 4, scope: !901)
!930 = !DILocation(line: 324, column: 13, scope: !931)
!931 = distinct !DILexicalBlock(scope: !896, file: !3, line: 324, column: 13)
!932 = !DILocation(line: 324, column: 19, scope: !931)
!933 = !DILocation(line: 324, column: 13, scope: !896)
!934 = !DILocation(line: 325, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !3, line: 324, column: 45)
!936 = !DILocation(line: 326, column: 4, scope: !935)
!937 = !DILocation(line: 327, column: 3, scope: !897)
!938 = !DILocation(line: 336, column: 3, scope: !892)
!939 = !DILocation(line: 347, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !844, file: !3, line: 347, column: 6)
!941 = !DILocation(line: 347, column: 24, scope: !940)
!942 = !DILocation(line: 347, column: 50, scope: !940)
!943 = !DILocation(line: 348, column: 7, scope: !940)
!944 = !DILocation(line: 348, column: 13, scope: !940)
!945 = !DILocation(line: 347, column: 6, scope: !844)
!946 = !DILocation(line: 354, column: 34, scope: !947)
!947 = distinct !DILexicalBlock(scope: !940, file: !3, line: 348, column: 39)
!948 = !DILocation(line: 354, column: 47, scope: !947)
!949 = !DILocation(line: 354, column: 53, scope: !947)
!950 = !DILocation(line: 355, column: 13, scope: !947)
!951 = !DILocation(line: 354, column: 7, scope: !947)
!952 = !DILocation(line: 353, column: 10, scope: !947)
!953 = !DILocation(line: 356, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !947, file: !3, line: 356, column: 7)
!955 = !DILocation(line: 356, column: 7, scope: !947)
!956 = !DILocation(line: 357, column: 4, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 356, column: 29)
!958 = !DILocation(line: 359, column: 2, scope: !947)
!959 = !DILocation(line: 363, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !844, file: !3, line: 363, column: 6)
!961 = !DILocation(line: 363, column: 23, scope: !960)
!962 = !DILocation(line: 363, column: 6, scope: !844)
!963 = !DILocation(line: 368, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !3, line: 363, column: 46)
!965 = !DILocation(line: 373, column: 33, scope: !844)
!966 = !DILocation(line: 373, column: 13, scope: !844)
!967 = !DILocation(line: 373, column: 11, scope: !844)
!968 = !DILocation(line: 374, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !844, file: !3, line: 374, column: 6)
!970 = !DILocation(line: 374, column: 6, scope: !844)
!971 = !DILocation(line: 375, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 374, column: 17)
!973 = !DILocation(line: 387, column: 6, scope: !974)
!974 = distinct !DILexicalBlock(scope: !844, file: !3, line: 387, column: 6)
!975 = !DILocation(line: 387, column: 12, scope: !974)
!976 = !DILocation(line: 387, column: 6, scope: !844)
!977 = !DILocation(line: 388, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 387, column: 33)
!979 = !DILocation(line: 388, column: 13, scope: !978)
!980 = !DILocation(line: 388, column: 19, scope: !978)
!981 = !DILocation(line: 389, column: 2, scope: !978)
!982 = !DILocation(line: 393, column: 23, scope: !844)
!983 = !DILocation(line: 393, column: 35, scope: !844)
!984 = !DILocation(line: 393, column: 41, scope: !844)
!985 = !DILocation(line: 393, column: 51, scope: !844)
!986 = !DILocation(line: 393, column: 2, scope: !844)
!987 = !DILocation(line: 394, column: 17, scope: !844)
!988 = !DILocation(line: 394, column: 3, scope: !844)
!989 = !DILocation(line: 394, column: 15, scope: !844)
!990 = !DILocation(line: 395, column: 2, scope: !844)
!991 = !DILocation(line: 396, column: 1, scope: !844)
!992 = distinct !DISubprogram(name: "acpi_ns_search_parent_tree", scope: !3, file: !3, line: 163, type: !795, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !799)
!993 = !DILocalVariable(name: "target_name", arg: 1, scope: !992, file: !3, line: 163, type: !65)
!994 = !DILocation(line: 163, column: 32, scope: !992)
!995 = !DILocalVariable(name: "node", arg: 2, scope: !992, file: !3, line: 164, type: !13)
!996 = !DILocation(line: 164, column: 35, scope: !992)
!997 = !DILocalVariable(name: "type", arg: 3, scope: !992, file: !3, line: 165, type: !797)
!998 = !DILocation(line: 165, column: 24, scope: !992)
!999 = !DILocalVariable(name: "return_node", arg: 4, scope: !992, file: !3, line: 166, type: !798)
!1000 = !DILocation(line: 166, column: 36, scope: !992)
!1001 = !DILocalVariable(name: "status", scope: !992, file: !3, line: 168, type: !127)
!1002 = !DILocation(line: 168, column: 14, scope: !992)
!1003 = !DILocalVariable(name: "parent_node", scope: !992, file: !3, line: 169, type: !13)
!1004 = !DILocation(line: 169, column: 30, scope: !992)
!1005 = !DILocation(line: 173, column: 16, scope: !992)
!1006 = !DILocation(line: 173, column: 22, scope: !992)
!1007 = !DILocation(line: 173, column: 14, scope: !992)
!1008 = !DILocation(line: 179, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !992, file: !3, line: 179, column: 6)
!1010 = !DILocation(line: 179, column: 6, scope: !992)
!1011 = !DILocation(line: 182, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 179, column: 20)
!1013 = !DILocation(line: 185, column: 20, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !992, file: !3, line: 185, column: 6)
!1015 = !DILocation(line: 185, column: 6, scope: !1014)
!1016 = !DILocation(line: 185, column: 6, scope: !992)
!1017 = !DILocation(line: 190, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 185, column: 27)
!1019 = !DILocation(line: 202, column: 2, scope: !992)
!1020 = !DILocation(line: 202, column: 9, scope: !992)
!1021 = !DILocation(line: 209, column: 32, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !992, file: !3, line: 202, column: 22)
!1023 = !DILocation(line: 209, column: 45, scope: !1022)
!1024 = !DILocation(line: 210, column: 26, scope: !1022)
!1025 = !DILocation(line: 209, column: 7, scope: !1022)
!1026 = !DILocation(line: 208, column: 10, scope: !1022)
!1027 = !DILocation(line: 211, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 211, column: 7)
!1029 = !DILocation(line: 211, column: 7, scope: !1022)
!1030 = !DILocation(line: 212, column: 4, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 211, column: 29)
!1032 = !DILocation(line: 217, column: 17, scope: !1022)
!1033 = !DILocation(line: 217, column: 30, scope: !1022)
!1034 = !DILocation(line: 217, column: 15, scope: !1022)
!1035 = distinct !{!1035, !1019, !1036}
!1036 = !DILocation(line: 218, column: 2, scope: !992)
!1037 = !DILocation(line: 222, column: 2, scope: !992)
!1038 = !DILocation(line: 223, column: 1, scope: !992)
