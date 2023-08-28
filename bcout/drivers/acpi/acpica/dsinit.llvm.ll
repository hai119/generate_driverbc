; ModuleID = '../bcout/drivers/acpi/acpica/dsinit.llvm.bc'
source_filename = "drivers/acpi/acpica/dsinit.c"
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
%struct.acpi_init_walk_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }

@_acpi_module_name = internal constant [7 x i8] c"dsinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"During WalkNamespace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"During Region initialization %p [%4.4s]\00", align 1
@acpi_gbl_auto_serialize_methods = external dso_local global i8, align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_initialize_objects(i32 %table_index, %struct.acpi_namespace_node* %start_node) #0 !dbg !809 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %start_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_init_walk_info, align 4
  %table = alloca %struct.acpi_table_header*, align 8
  %owner_id = alloca i16, align 2
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store %struct.acpi_namespace_node* %start_node, %struct.acpi_namespace_node** %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %start_node.addr, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %status, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata %struct.acpi_init_walk_info* %info, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !820, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !838, metadata !DIExpression()), !dbg !839
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !840
  %call = call i32 @acpi_tb_get_owner_id(i32 %0, i16* %owner_id) #4, !dbg !841
  store i32 %call, i32* %status, align 4, !dbg !842
  %1 = load i32, i32* %status, align 4, !dbg !843
  %tobool = icmp ne i32 %1, 0, !dbg !843
  br i1 %tobool, label %if.then, label %if.end, !dbg !845

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !846
  store i32 %2, i32* %retval, align 4, !dbg !846
  br label %return, !dbg !846

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.acpi_init_walk_info* %info to i8*, !dbg !848
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 64, i1 false), !dbg !848
  %4 = load i16, i16* %owner_id, align 2, !dbg !849
  %owner_id1 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %info, i32 0, i32 15, !dbg !850
  store i16 %4, i16* %owner_id1, align 4, !dbg !851
  %5 = load i32, i32* %table_index.addr, align 4, !dbg !852
  %table_index2 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %info, i32 0, i32 0, !dbg !853
  store i32 %5, i32* %table_index2, align 4, !dbg !854
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %start_node.addr, align 8, !dbg !855
  %7 = bitcast %struct.acpi_namespace_node* %6 to i8*, !dbg !855
  %8 = bitcast %struct.acpi_init_walk_info* %info to i8*, !dbg !856
  %call3 = call i32 @acpi_ns_walk_namespace(i32 0, i8* %7, i32 -1, i32 0, i32 (i8*, i32, i8*, i8**)* @acpi_ds_init_one_object, i32 (i8*, i32, i8*, i8**)* null, i8* %8, i8** null) #4, !dbg !857
  store i32 %call3, i32* %status, align 4, !dbg !858
  %9 = load i32, i32* %status, align 4, !dbg !859
  %tobool4 = icmp ne i32 %9, 0, !dbg !859
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !861

if.then5:                                         ; preds = %if.end
  %10 = load i32, i32* %status, align 4, !dbg !862
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 193, i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #4, !dbg !862
  br label %if.end6, !dbg !864

if.end6:                                          ; preds = %if.then5, %if.end
  %11 = load i32, i32* %table_index.addr, align 4, !dbg !865
  %call7 = call i32 @acpi_get_table_by_index(i32 %11, %struct.acpi_table_header** %table) #4, !dbg !866
  store i32 %call7, i32* %status, align 4, !dbg !867
  %12 = load i32, i32* %status, align 4, !dbg !868
  %tobool8 = icmp ne i32 %12, 0, !dbg !868
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !870

if.then9:                                         ; preds = %if.end6
  %13 = load i32, i32* %status, align 4, !dbg !871
  store i32 %13, i32* %retval, align 4, !dbg !871
  br label %return, !dbg !871

if.end10:                                         ; preds = %if.end6
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !873
  %signature = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %14, i32 0, i32 0, !dbg !873
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %signature, i64 0, i64 0, !dbg !873
  %15 = bitcast i8* %arraydecay to i32*, !dbg !873
  %16 = load i32, i32* %15, align 4, !dbg !873
  %17 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 4, !dbg !873
  %cmp = icmp eq i32 %16, %17, !dbg !873
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !875

if.then11:                                        ; preds = %if.end10
  br label %if.end12, !dbg !876

if.end12:                                         ; preds = %if.then11, %if.end10
  store i32 0, i32* %retval, align 4, !dbg !878
  br label %return, !dbg !878

return:                                           ; preds = %if.end12, %if.then9, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !879
  ret i32 %18, !dbg !879
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_get_owner_id(i32, i16*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_init_one_object(i8* %obj_handle, i32 %level, i8* %context, i8** %return_value) #0 !dbg !880 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %info = alloca %struct.acpi_init_walk_info*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !881, metadata !DIExpression()), !dbg !882
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !883, metadata !DIExpression()), !dbg !884
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !885, metadata !DIExpression()), !dbg !886
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !887, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.declare(metadata %struct.acpi_init_walk_info** %info, metadata !889, metadata !DIExpression()), !dbg !890
  %0 = load i8*, i8** %context.addr, align 8, !dbg !891
  %1 = bitcast i8* %0 to %struct.acpi_init_walk_info*, !dbg !892
  store %struct.acpi_init_walk_info* %1, %struct.acpi_init_walk_info** %info, align 8, !dbg !890
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !893, metadata !DIExpression()), !dbg !894
  %2 = load i8*, i8** %obj_handle.addr, align 8, !dbg !895
  %3 = bitcast i8* %2 to %struct.acpi_namespace_node*, !dbg !896
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %node, align 8, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %status, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !899, metadata !DIExpression()), !dbg !900
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !901
  %owner_id = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 8, !dbg !903
  %5 = load i16, i16* %owner_id, align 8, !dbg !903
  %conv = zext i16 %5 to i32, !dbg !901
  %6 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !904
  %owner_id1 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %6, i32 0, i32 15, !dbg !905
  %7 = load i16, i16* %owner_id1, align 4, !dbg !905
  %conv2 = zext i16 %7 to i32, !dbg !904
  %cmp = icmp ne i32 %conv, %conv2, !dbg !906
  br i1 %cmp, label %if.then, label %if.end, !dbg !907

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !908
  br label %return, !dbg !908

if.end:                                           ; preds = %entry
  %8 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !910
  %object_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %8, i32 0, i32 1, !dbg !911
  %9 = load i32, i32* %object_count, align 4, !dbg !912
  %inc = add i32 %9, 1, !dbg !912
  store i32 %inc, i32* %object_count, align 4, !dbg !912
  %10 = load i8*, i8** %obj_handle.addr, align 8, !dbg !913
  %11 = bitcast i8* %10 to %struct.acpi_namespace_node*, !dbg !913
  %call = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %11) #4, !dbg !914
  switch i32 %call, label %sw.default [
    i32 10, label %sw.bb
    i32 8, label %sw.bb9
    i32 6, label %sw.bb35
  ], !dbg !915

sw.bb:                                            ; preds = %if.end
  %12 = load i8*, i8** %obj_handle.addr, align 8, !dbg !916
  %call4 = call i32 @acpi_ds_initialize_region(i8* %12) #4, !dbg !918
  store i32 %call4, i32* %status, align 4, !dbg !919
  %13 = load i32, i32* %status, align 4, !dbg !920
  %tobool = icmp ne i32 %13, 0, !dbg !920
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !922

if.then5:                                         ; preds = %sw.bb
  %14 = load i32, i32* %status, align 4, !dbg !923
  %15 = load i8*, i8** %obj_handle.addr, align 8, !dbg !923
  %16 = load i8*, i8** %obj_handle.addr, align 8, !dbg !923
  %call6 = call i8* @acpi_ut_get_node_name(i8* %16) #4, !dbg !923
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 75, i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %15, i8* %call6) #4, !dbg !923
  br label %if.end7, !dbg !925

if.end7:                                          ; preds = %if.then5, %sw.bb
  %17 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !926
  %op_region_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %17, i32 0, i32 7, !dbg !927
  %18 = load i32, i32* %op_region_count, align 4, !dbg !928
  %inc8 = add i32 %18, 1, !dbg !928
  store i32 %inc8, i32* %op_region_count, align 4, !dbg !928
  br label %sw.epilog, !dbg !929

sw.bb9:                                           ; preds = %if.end
  %19 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !930
  %method_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %19, i32 0, i32 2, !dbg !931
  %20 = load i32, i32* %method_count, align 4, !dbg !932
  %inc10 = add i32 %20, 1, !dbg !932
  store i32 %inc10, i32* %method_count, align 4, !dbg !932
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !933
  %call11 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %21) #4, !dbg !934
  store %union.acpi_operand_object* %call11, %union.acpi_operand_object** %obj_desc, align 8, !dbg !935
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !936
  %tobool12 = icmp ne %union.acpi_operand_object* %22, null, !dbg !936
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !938

if.then13:                                        ; preds = %sw.bb9
  br label %sw.epilog, !dbg !939

if.end14:                                         ; preds = %sw.bb9
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !941
  %method = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_method*, !dbg !943
  %info_flags = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 5, !dbg !944
  %24 = load i8, i8* %info_flags, align 1, !dbg !944
  %conv15 = zext i8 %24 to i32, !dbg !941
  %and = and i32 %conv15, 4, !dbg !945
  %tobool16 = icmp ne i32 %and, 0, !dbg !945
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !946

if.then17:                                        ; preds = %if.end14
  %25 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !947
  %serial_method_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %25, i32 0, i32 3, !dbg !949
  %26 = load i32, i32* %serial_method_count, align 4, !dbg !950
  %inc18 = add i32 %26, 1, !dbg !950
  store i32 %inc18, i32* %serial_method_count, align 4, !dbg !950
  br label %sw.epilog, !dbg !951

if.end19:                                         ; preds = %if.end14
  %27 = load i8, i8* @acpi_gbl_auto_serialize_methods, align 1, !dbg !952
  %tobool20 = icmp ne i8 %27, 0, !dbg !952
  br i1 %tobool20, label %if.then21, label %if.end33, !dbg !954

if.then21:                                        ; preds = %if.end19
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !955
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !957
  %call22 = call i32 @acpi_ds_auto_serialize_method(%struct.acpi_namespace_node* %28, %union.acpi_operand_object* %29) #4, !dbg !958
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !959
  %method23 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_method*, !dbg !961
  %info_flags24 = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method23, i32 0, i32 5, !dbg !962
  %31 = load i8, i8* %info_flags24, align 1, !dbg !962
  %conv25 = zext i8 %31 to i32, !dbg !959
  %and26 = and i32 %conv25, 4, !dbg !963
  %tobool27 = icmp ne i32 %and26, 0, !dbg !963
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !964

if.then28:                                        ; preds = %if.then21
  %32 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !965
  %serial_method_count29 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %32, i32 0, i32 3, !dbg !967
  %33 = load i32, i32* %serial_method_count29, align 4, !dbg !968
  %inc30 = add i32 %33, 1, !dbg !968
  store i32 %inc30, i32* %serial_method_count29, align 4, !dbg !968
  %34 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !969
  %serialized_method_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %34, i32 0, i32 5, !dbg !970
  %35 = load i32, i32* %serialized_method_count, align 4, !dbg !971
  %inc31 = add i32 %35, 1, !dbg !971
  store i32 %inc31, i32* %serialized_method_count, align 4, !dbg !971
  br label %sw.epilog, !dbg !972

if.end32:                                         ; preds = %if.then21
  br label %if.end33, !dbg !973

if.end33:                                         ; preds = %if.end32, %if.end19
  %36 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !974
  %non_serial_method_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %36, i32 0, i32 4, !dbg !975
  %37 = load i32, i32* %non_serial_method_count, align 4, !dbg !976
  %inc34 = add i32 %37, 1, !dbg !976
  store i32 %inc34, i32* %non_serial_method_count, align 4, !dbg !976
  br label %sw.epilog, !dbg !977

sw.bb35:                                          ; preds = %if.end
  %38 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %info, align 8, !dbg !978
  %device_count = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %38, i32 0, i32 6, !dbg !979
  %39 = load i32, i32* %device_count, align 4, !dbg !980
  %inc36 = add i32 %39, 1, !dbg !980
  store i32 %inc36, i32* %device_count, align 4, !dbg !980
  br label %sw.epilog, !dbg !981

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !982

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %if.end33, %if.then28, %if.then17, %if.then13, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !983
  br label %return, !dbg !983

return:                                           ; preds = %sw.epilog, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !984
  ret i32 %40, !dbg !984
}

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_initialize_region(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_auto_serialize_method(%struct.acpi_namespace_node*, %union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!804, !805, !806, !807}
!llvm.ident = !{!808}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !802, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !801, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsinit.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !11, !12, !13, !15, !39}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !6)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_init_walk_info", file: !17, line: 97, size: 512, elements: !18)
!17 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "table_index", scope: !16, file: !17, line: 98, baseType: !6, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "object_count", scope: !16, file: !17, line: 99, baseType: !6, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "method_count", scope: !16, file: !17, line: 100, baseType: !6, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "serial_method_count", scope: !16, file: !17, line: 101, baseType: !6, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "non_serial_method_count", scope: !16, file: !17, line: 102, baseType: !6, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "serialized_method_count", scope: !16, file: !17, line: 103, baseType: !6, size: 32, offset: 160)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !16, file: !17, line: 104, baseType: !6, size: 32, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_count", scope: !16, file: !17, line: 105, baseType: !6, size: 32, offset: 224)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !16, file: !17, line: 106, baseType: !6, size: 32, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_count", scope: !16, file: !17, line: 107, baseType: !6, size: 32, offset: 288)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "package_count", scope: !16, file: !17, line: 108, baseType: !6, size: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "op_region_init", scope: !16, file: !17, line: 109, baseType: !6, size: 32, offset: 352)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "field_init", scope: !16, file: !17, line: 110, baseType: !6, size: 32, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_init", scope: !16, file: !17, line: 111, baseType: !6, size: 32, offset: 416)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "package_init", scope: !16, file: !17, line: 112, baseType: !6, size: 32, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !16, file: !17, line: 113, baseType: !35, size: 16, offset: 480)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !41, line: 133, size: 384, elements: !42)
!41 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !788, !789, !790, !791, !797, !798, !799, !800}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !40, file: !41, line: 134, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !46, line: 367, size: 576, elements: !47)
!46 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !59, !75, !87, !101, !115, !124, !439, !456, !471, !484, !562, !574, !588, !598, !616, !638, !657, !676, !695, !708, !734, !751, !764, !778, !787}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !45, file: !46, line: 368, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !46, line: 73, size: 128, elements: !50)
!50 = !{!51, !52, !56, !57, !58}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !46, line: 74, baseType: !44, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !46, line: 74, baseType: !53, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !46, line: 74, baseType: !53, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !46, line: 74, baseType: !36, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !46, line: 74, baseType: !53, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !45, file: !46, line: 369, baseType: !60, size: 192)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !46, line: 76, size: 192, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !71}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !60, file: !46, line: 77, baseType: !44, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !60, file: !46, line: 77, baseType: !53, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !46, line: 77, baseType: !53, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !60, file: !46, line: 77, baseType: !36, size: 16, offset: 80)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !46, line: 77, baseType: !53, size: 8, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !60, file: !46, line: 77, baseType: !68, size: 24, offset: 104)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 24, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !60, file: !46, line: 78, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !74)
!74 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !45, file: !46, line: 370, baseType: !76, size: 256)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !46, line: 93, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !46, line: 94, baseType: !44, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !46, line: 94, baseType: !53, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !46, line: 94, baseType: !53, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !46, line: 94, baseType: !36, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !46, line: 94, baseType: !53, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !76, file: !46, line: 94, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !76, file: !46, line: 94, baseType: !6, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !45, file: !46, line: 371, baseType: !88, size: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !46, line: 97, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !97, !98, !99, !100}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !46, line: 98, baseType: !44, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !46, line: 98, baseType: !53, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !46, line: 98, baseType: !53, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !46, line: 98, baseType: !36, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !46, line: 98, baseType: !53, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !46, line: 98, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !46, line: 98, baseType: !6, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !88, file: !46, line: 99, baseType: !6, size: 32, offset: 224)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !88, file: !46, line: 100, baseType: !96, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !46, line: 101, baseType: !39, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !45, file: !46, line: 372, baseType: !102, size: 384)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !46, line: 104, size: 384, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !112, !113, !114}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !46, line: 105, baseType: !44, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !46, line: 105, baseType: !53, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !46, line: 105, baseType: !53, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !46, line: 105, baseType: !36, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !46, line: 105, baseType: !53, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !46, line: 105, baseType: !39, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !102, file: !46, line: 106, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !46, line: 107, baseType: !96, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !46, line: 108, baseType: !6, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !102, file: !46, line: 109, baseType: !6, size: 32, offset: 352)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !45, file: !46, line: 373, baseType: !116, size: 192)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !46, line: 118, size: 192, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !46, line: 119, baseType: !44, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !46, line: 119, baseType: !53, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !46, line: 119, baseType: !53, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !46, line: 119, baseType: !36, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !46, line: 119, baseType: !53, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !116, file: !46, line: 119, baseType: !12, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !45, file: !46, line: 374, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !46, line: 143, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !436, !437, !438}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !46, line: 144, baseType: !44, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !46, line: 144, baseType: !53, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !46, line: 144, baseType: !53, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !46, line: 144, baseType: !36, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !46, line: 144, baseType: !53, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !46, line: 144, baseType: !53, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !46, line: 145, baseType: !53, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !46, line: 146, baseType: !53, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !46, line: 147, baseType: !44, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !46, line: 148, baseType: !44, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !46, line: 149, baseType: !96, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !46, line: 153, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !46, line: 150, size: 64, elements: !140)
!140 = !{!141, !435}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !46, line: 151, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !41, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!13, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !17, line: 37, size: 9024, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !381, !382, !383, !384, !385, !389, !391, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !418, !419, !420, !421, !422, !423, !424, !425, !427, !433}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !17, line: 38, baseType: !146, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !17, line: 39, baseType: !53, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !147, file: !17, line: 40, baseType: !53, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !147, file: !17, line: 41, baseType: !36, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !147, file: !17, line: 42, baseType: !53, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !147, file: !17, line: 43, baseType: !53, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !147, file: !17, line: 44, baseType: !53, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !17, line: 45, baseType: !35, size: 16, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !147, file: !17, line: 46, baseType: !53, size: 8, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !147, file: !17, line: 47, baseType: !53, size: 8, offset: 152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !147, file: !17, line: 48, baseType: !53, size: 8, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !147, file: !17, line: 49, baseType: !53, size: 8, offset: 168)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !147, file: !17, line: 50, baseType: !53, size: 8, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !147, file: !17, line: 51, baseType: !53, size: 8, offset: 184)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !147, file: !17, line: 52, baseType: !53, size: 8, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !147, file: !17, line: 53, baseType: !53, size: 8, offset: 200)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !147, file: !17, line: 54, baseType: !96, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !147, file: !17, line: 55, baseType: !6, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !147, file: !17, line: 56, baseType: !6, size: 32, offset: 352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !147, file: !17, line: 57, baseType: !6, size: 32, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !147, file: !17, line: 58, baseType: !6, size: 32, offset: 416)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !147, file: !17, line: 60, baseType: !171, size: 640, offset: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !41, line: 893, size: 640, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !262, !263, !379, !380}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !171, file: !41, line: 894, baseType: !96, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !171, file: !41, line: 895, baseType: !96, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !171, file: !41, line: 896, baseType: !96, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !171, file: !41, line: 897, baseType: !96, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !171, file: !41, line: 898, baseType: !96, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !171, file: !41, line: 899, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !41, line: 875, size: 1600, elements: !181)
!181 = !{!182, !202, !218}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !180, file: !41, line: 876, baseType: !183, size: 448)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !41, line: 828, size: 448, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !201}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !41, line: 829, baseType: !179, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !41, line: 829, baseType: !53, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !41, line: 829, baseType: !53, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !41, line: 829, baseType: !36, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !41, line: 829, baseType: !96, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !41, line: 829, baseType: !179, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !41, line: 829, baseType: !39, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !41, line: 829, baseType: !193, size: 64, offset: 320)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !41, line: 716, size: 64, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !193, file: !41, line: 717, baseType: !72, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !41, line: 718, baseType: !6, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !193, file: !41, line: 719, baseType: !84, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !41, line: 720, baseType: !96, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !41, line: 721, baseType: !84, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !193, file: !41, line: 722, baseType: !179, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !41, line: 829, baseType: !53, size: 8, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !180, file: !41, line: 877, baseType: !203, size: 640)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !41, line: 835, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !41, line: 836, baseType: !179, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !41, line: 836, baseType: !53, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !41, line: 836, baseType: !53, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !203, file: !41, line: 836, baseType: !36, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !41, line: 836, baseType: !96, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !41, line: 836, baseType: !179, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !41, line: 836, baseType: !39, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !41, line: 836, baseType: !193, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !203, file: !41, line: 836, baseType: !53, size: 8, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !203, file: !41, line: 836, baseType: !84, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !41, line: 837, baseType: !96, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !41, line: 838, baseType: !6, size: 32, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !41, line: 839, baseType: !6, size: 32, offset: 608)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !180, file: !41, line: 878, baseType: !219, size: 1600)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !41, line: 846, size: 1600, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !41, line: 847, baseType: !179, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !41, line: 847, baseType: !53, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !41, line: 847, baseType: !53, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !41, line: 847, baseType: !36, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !41, line: 847, baseType: !96, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !41, line: 847, baseType: !179, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !41, line: 847, baseType: !39, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !41, line: 847, baseType: !193, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !41, line: 847, baseType: !53, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !219, file: !41, line: 847, baseType: !179, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !219, file: !41, line: 848, baseType: !179, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !219, file: !41, line: 849, baseType: !84, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !219, file: !41, line: 850, baseType: !53, size: 8, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !219, file: !41, line: 851, baseType: !84, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !219, file: !41, line: 852, baseType: !84, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !219, file: !41, line: 853, baseType: !84, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !219, file: !41, line: 854, baseType: !238, size: 32, offset: 896)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 4)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !219, file: !41, line: 855, baseType: !6, size: 32, offset: 928)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !219, file: !41, line: 856, baseType: !6, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !219, file: !41, line: 857, baseType: !6, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !219, file: !41, line: 858, baseType: !6, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !219, file: !41, line: 859, baseType: !6, size: 32, offset: 1056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !219, file: !41, line: 860, baseType: !6, size: 32, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !219, file: !41, line: 861, baseType: !6, size: 32, offset: 1120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !219, file: !41, line: 862, baseType: !6, size: 32, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !219, file: !41, line: 863, baseType: !6, size: 32, offset: 1184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !219, file: !41, line: 864, baseType: !6, size: 32, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !219, file: !41, line: 865, baseType: !6, size: 32, offset: 1248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !219, file: !41, line: 866, baseType: !6, size: 32, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !219, file: !41, line: 867, baseType: !6, size: 32, offset: 1312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !219, file: !41, line: 868, baseType: !36, size: 16, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !219, file: !41, line: 869, baseType: !53, size: 8, offset: 1360)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !219, file: !41, line: 870, baseType: !53, size: 8, offset: 1368)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !219, file: !41, line: 871, baseType: !53, size: 8, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !219, file: !41, line: 872, baseType: !259, size: 160, offset: 1384)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !171, file: !41, line: 900, baseType: !39, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !171, file: !41, line: 901, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !41, line: 663, size: 640, elements: !266)
!266 = !{!267, !275, !288, !297, !306, !319, !333, !345, !357}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !41, line: 664, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !41, line: 567, size: 128, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !41, line: 568, baseType: !12, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !41, line: 568, baseType: !53, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !41, line: 568, baseType: !53, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !41, line: 568, baseType: !36, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !41, line: 568, baseType: !36, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !265, file: !41, line: 665, baseType: !276, size: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !41, line: 593, size: 384, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !41, line: 594, baseType: !12, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !41, line: 594, baseType: !53, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !41, line: 594, baseType: !53, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !41, line: 594, baseType: !36, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !41, line: 594, baseType: !36, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !276, file: !41, line: 594, baseType: !36, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !276, file: !41, line: 595, baseType: !179, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !276, file: !41, line: 596, baseType: !96, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !276, file: !41, line: 597, baseType: !96, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !276, file: !41, line: 598, baseType: !72, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !265, file: !41, line: 666, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !41, line: 573, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !41, line: 574, baseType: !12, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !41, line: 574, baseType: !53, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !41, line: 574, baseType: !53, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !41, line: 574, baseType: !36, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !41, line: 574, baseType: !36, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !289, file: !41, line: 574, baseType: !44, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !265, file: !41, line: 667, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !41, line: 604, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !41, line: 605, baseType: !12, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !41, line: 605, baseType: !53, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !41, line: 605, baseType: !53, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !41, line: 605, baseType: !36, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !41, line: 605, baseType: !36, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !41, line: 605, baseType: !39, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !265, file: !41, line: 668, baseType: !307, size: 448)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !41, line: 608, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !41, line: 609, baseType: !12, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !41, line: 609, baseType: !53, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !41, line: 609, baseType: !53, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !41, line: 609, baseType: !36, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !41, line: 609, baseType: !36, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !307, file: !41, line: 609, baseType: !6, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !307, file: !41, line: 610, baseType: !179, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !307, file: !41, line: 611, baseType: !96, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !307, file: !41, line: 612, baseType: !96, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !307, file: !41, line: 613, baseType: !6, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !265, file: !41, line: 669, baseType: !320, size: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !41, line: 580, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !41, line: 581, baseType: !12, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !41, line: 581, baseType: !53, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !41, line: 581, baseType: !53, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !41, line: 581, baseType: !36, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !41, line: 581, baseType: !36, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !320, file: !41, line: 581, baseType: !6, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !320, file: !41, line: 582, baseType: !44, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !320, file: !41, line: 583, baseType: !44, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !320, file: !41, line: 584, baseType: !146, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !320, file: !41, line: 585, baseType: !12, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !320, file: !41, line: 586, baseType: !6, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !41, line: 670, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !41, line: 620, size: 320, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !41, line: 621, baseType: !12, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !41, line: 621, baseType: !53, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !41, line: 621, baseType: !53, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !41, line: 621, baseType: !36, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !41, line: 621, baseType: !36, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !334, file: !41, line: 621, baseType: !53, size: 8, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !334, file: !41, line: 622, baseType: !146, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !334, file: !41, line: 623, baseType: !44, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !334, file: !41, line: 624, baseType: !72, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !41, line: 671, baseType: !346, size: 640)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !41, line: 631, size: 640, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !41, line: 632, baseType: !12, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !41, line: 632, baseType: !53, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !41, line: 632, baseType: !53, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !41, line: 632, baseType: !36, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !41, line: 632, baseType: !36, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !346, file: !41, line: 633, baseType: !354, size: 512, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 512, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !265, file: !41, line: 672, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !41, line: 654, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !41, line: 655, baseType: !12, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !41, line: 655, baseType: !53, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !41, line: 655, baseType: !53, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !41, line: 655, baseType: !36, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !41, line: 655, baseType: !36, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !358, file: !41, line: 655, baseType: !53, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !41, line: 656, baseType: !39, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !358, file: !41, line: 657, baseType: !44, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !41, line: 658, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !41, line: 645, size: 128, elements: !371)
!371 = !{!372, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !370, file: !41, line: 646, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1052, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !6, !12}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !12)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !41, line: 647, baseType: !12, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !171, file: !41, line: 902, baseType: !179, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !171, file: !41, line: 903, baseType: !6, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !147, file: !17, line: 61, baseType: !6, size: 32, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !147, file: !17, line: 62, baseType: !6, size: 32, offset: 1120)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !147, file: !17, line: 63, baseType: !36, size: 16, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !147, file: !17, line: 64, baseType: !53, size: 8, offset: 1168)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !147, file: !17, line: 66, baseType: !386, size: 2688, offset: 1216)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2688, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 7)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !147, file: !17, line: 67, baseType: !390, size: 3072, offset: 3904)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !355)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !147, file: !17, line: 68, baseType: !392, size: 576, offset: 6976)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 576, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 9)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !147, file: !17, line: 69, baseType: !111, size: 64, offset: 7552)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !147, file: !17, line: 71, baseType: !96, size: 64, offset: 7616)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !147, file: !17, line: 72, baseType: !111, size: 64, offset: 7680)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !147, file: !17, line: 73, baseType: !264, size: 64, offset: 7744)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !147, file: !17, line: 74, baseType: !39, size: 64, offset: 7808)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !147, file: !17, line: 75, baseType: !44, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !147, file: !17, line: 76, baseType: !39, size: 64, offset: 7936)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !147, file: !17, line: 77, baseType: !179, size: 64, offset: 8000)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !147, file: !17, line: 78, baseType: !44, size: 64, offset: 8064)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !147, file: !17, line: 79, baseType: !39, size: 64, offset: 8128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !147, file: !17, line: 80, baseType: !84, size: 64, offset: 8192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !147, file: !17, line: 81, baseType: !179, size: 64, offset: 8256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !147, file: !17, line: 82, baseType: !408, size: 64, offset: 8320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !41, line: 702, size: 128, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !410, file: !41, line: 706, baseType: !6, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !410, file: !41, line: 707, baseType: !6, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !41, line: 708, baseType: !36, size: 16, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !410, file: !41, line: 709, baseType: !53, size: 8, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !410, file: !41, line: 710, baseType: !53, size: 8, offset: 88)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !41, line: 711, baseType: !53, size: 8, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !147, file: !17, line: 83, baseType: !179, size: 64, offset: 8384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !147, file: !17, line: 84, baseType: !44, size: 64, offset: 8448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !147, file: !17, line: 85, baseType: !264, size: 64, offset: 8512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !147, file: !17, line: 86, baseType: !44, size: 64, offset: 8576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !147, file: !17, line: 87, baseType: !264, size: 64, offset: 8640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !147, file: !17, line: 88, baseType: !179, size: 64, offset: 8704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !147, file: !17, line: 89, baseType: !179, size: 64, offset: 8768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !17, line: 90, baseType: !426, size: 64, offset: 8832)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !147, file: !17, line: 91, baseType: !428, size: 64, offset: 8896)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !41, line: 637, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!13, !146, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !147, file: !17, line: 92, baseType: !434, size: 64, offset: 8960)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !41, line: 641, baseType: !143)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !46, line: 152, baseType: !44, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !46, line: 155, baseType: !6, size: 32, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !46, line: 156, baseType: !35, size: 16, offset: 416)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !46, line: 157, baseType: !53, size: 8, offset: 432)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !45, file: !46, line: 375, baseType: !440, size: 576)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !46, line: 122, size: 576, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !46, line: 123, baseType: !44, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !46, line: 123, baseType: !53, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !46, line: 123, baseType: !53, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !46, line: 123, baseType: !36, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !46, line: 123, baseType: !53, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !440, file: !46, line: 123, baseType: !53, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !440, file: !46, line: 124, baseType: !36, size: 16, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !440, file: !46, line: 125, baseType: !12, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !440, file: !46, line: 126, baseType: !72, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !440, file: !46, line: 127, baseType: !426, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !440, file: !46, line: 128, baseType: !44, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !46, line: 129, baseType: !44, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !46, line: 130, baseType: !39, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !440, file: !46, line: 131, baseType: !53, size: 8, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !45, file: !46, line: 376, baseType: !457, size: 448)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !46, line: 134, size: 448, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !470}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !46, line: 135, baseType: !44, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !46, line: 135, baseType: !53, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !46, line: 135, baseType: !53, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !46, line: 135, baseType: !36, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !46, line: 135, baseType: !53, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !457, file: !46, line: 135, baseType: !53, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !46, line: 136, baseType: !39, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !46, line: 137, baseType: !44, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !46, line: 138, baseType: !44, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !457, file: !46, line: 139, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !457, file: !46, line: 140, baseType: !6, size: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !45, file: !46, line: 377, baseType: !472, size: 320)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !46, line: 184, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !46, line: 185, baseType: !44, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !46, line: 185, baseType: !53, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !46, line: 185, baseType: !53, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !46, line: 185, baseType: !36, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !46, line: 185, baseType: !53, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !46, line: 185, baseType: !480, size: 128, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !46, line: 185, baseType: !44, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !45, file: !46, line: 378, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !46, line: 187, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !46, line: 188, baseType: !44, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !46, line: 188, baseType: !53, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !46, line: 188, baseType: !53, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !46, line: 188, baseType: !36, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !46, line: 188, baseType: !53, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !46, line: 189, baseType: !480, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !46, line: 189, baseType: !44, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !485, file: !46, line: 189, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !41, line: 480, size: 576, elements: !497)
!497 = !{!498, !499, !500, !501, !509, !524, !556, !557, !558, !559, !560, !561}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !41, line: 481, baseType: !39, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !41, line: 482, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !41, line: 483, baseType: !495, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !496, file: !41, line: 484, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !41, line: 497, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !41, line: 498, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !41, line: 499, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !503, file: !41, line: 500, baseType: !495, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !503, file: !41, line: 501, baseType: !6, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !496, file: !41, line: 485, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !41, line: 466, size: 320, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !511, file: !41, line: 467, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !41, line: 459, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !41, line: 460, baseType: !53, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !41, line: 461, baseType: !72, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !511, file: !41, line: 468, baseType: !514, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !511, file: !41, line: 469, baseType: !36, size: 16, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !511, file: !41, line: 470, baseType: !53, size: 8, offset: 272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !511, file: !41, line: 471, baseType: !53, size: 8, offset: 280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !511, file: !41, line: 472, baseType: !53, size: 8, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !511, file: !41, line: 473, baseType: !53, size: 8, offset: 296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !496, file: !41, line: 486, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !41, line: 448, size: 192, elements: !527)
!527 = !{!528, !551, !552, !553, !554, !555}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !526, file: !41, line: 449, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !41, line: 438, size: 64, elements: !530)
!530 = !{!531, !532, !545}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !41, line: 439, baseType: !39, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !41, line: 440, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !41, line: 419, size: 256, elements: !535)
!535 = !{!536, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !41, line: 420, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1049, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!6, !377, !6, !12}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !41, line: 421, baseType: !12, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !41, line: 422, baseType: !39, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !534, file: !41, line: 423, baseType: !53, size: 8, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !534, file: !41, line: 424, baseType: !53, size: 8, offset: 200)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !41, line: 441, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !41, line: 429, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !547, file: !41, line: 430, baseType: !39, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !41, line: 431, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !41, line: 450, baseType: !510, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !41, line: 451, baseType: !53, size: 8, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !526, file: !41, line: 452, baseType: !53, size: 8, offset: 136)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !526, file: !41, line: 453, baseType: !53, size: 8, offset: 144)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !526, file: !41, line: 454, baseType: !53, size: 8, offset: 152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !41, line: 487, baseType: !72, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !496, file: !41, line: 488, baseType: !6, size: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !496, file: !41, line: 489, baseType: !36, size: 16, offset: 480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !496, file: !41, line: 490, baseType: !36, size: 16, offset: 496)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !41, line: 491, baseType: !53, size: 8, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !496, file: !41, line: 492, baseType: !53, size: 8, offset: 520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !45, file: !46, line: 379, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !46, line: 192, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !46, line: 193, baseType: !44, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !46, line: 193, baseType: !53, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !46, line: 193, baseType: !53, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !46, line: 193, baseType: !36, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !46, line: 193, baseType: !53, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !46, line: 193, baseType: !480, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !46, line: 193, baseType: !44, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !563, file: !46, line: 193, baseType: !6, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !563, file: !46, line: 194, baseType: !6, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !45, file: !46, line: 380, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !46, line: 197, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !46, line: 198, baseType: !44, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !46, line: 198, baseType: !53, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !46, line: 198, baseType: !53, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !46, line: 198, baseType: !36, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !46, line: 198, baseType: !53, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !575, file: !46, line: 200, baseType: !53, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !575, file: !46, line: 201, baseType: !53, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !46, line: 202, baseType: !480, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !46, line: 202, baseType: !44, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !575, file: !46, line: 202, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !45, file: !46, line: 381, baseType: !589, size: 320)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !46, line: 205, size: 320, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !46, line: 206, baseType: !44, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !46, line: 206, baseType: !53, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !46, line: 206, baseType: !53, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !46, line: 206, baseType: !36, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !46, line: 206, baseType: !53, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !46, line: 206, baseType: !480, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !46, line: 206, baseType: !44, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !45, file: !46, line: 382, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !46, line: 233, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !46, line: 234, baseType: !44, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !46, line: 234, baseType: !36, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !46, line: 234, baseType: !39, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !46, line: 234, baseType: !6, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !46, line: 234, baseType: !6, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !46, line: 234, baseType: !6, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !46, line: 234, baseType: !53, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !46, line: 234, baseType: !44, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !45, file: !46, line: 383, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !46, line: 237, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !46, line: 238, baseType: !44, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !46, line: 238, baseType: !36, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !46, line: 238, baseType: !39, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !46, line: 238, baseType: !6, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !46, line: 238, baseType: !6, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !46, line: 238, baseType: !6, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !46, line: 238, baseType: !53, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !617, file: !46, line: 238, baseType: !36, size: 16, offset: 304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !46, line: 239, baseType: !44, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !617, file: !46, line: 240, baseType: !96, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !617, file: !46, line: 241, baseType: !36, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !617, file: !46, line: 242, baseType: !96, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !45, file: !46, line: 384, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !46, line: 262, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !46, line: 263, baseType: !44, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !46, line: 263, baseType: !36, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !46, line: 263, baseType: !39, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !46, line: 263, baseType: !6, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !46, line: 263, baseType: !6, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !46, line: 263, baseType: !6, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !639, file: !46, line: 263, baseType: !53, size: 8, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !639, file: !46, line: 264, baseType: !44, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !45, file: !46, line: 385, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !46, line: 245, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !46, line: 246, baseType: !44, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !46, line: 246, baseType: !36, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !46, line: 246, baseType: !39, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !46, line: 246, baseType: !6, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !46, line: 246, baseType: !6, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !46, line: 246, baseType: !6, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !46, line: 246, baseType: !53, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !658, file: !46, line: 246, baseType: !44, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !658, file: !46, line: 247, baseType: !44, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !45, file: !46, line: 386, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !46, line: 250, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !46, line: 251, baseType: !44, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !46, line: 251, baseType: !36, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !46, line: 251, baseType: !39, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !46, line: 251, baseType: !6, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !46, line: 251, baseType: !6, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !46, line: 251, baseType: !6, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !46, line: 251, baseType: !53, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !677, file: !46, line: 256, baseType: !44, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !677, file: !46, line: 257, baseType: !44, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !45, file: !46, line: 387, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !46, line: 273, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !46, line: 274, baseType: !44, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !46, line: 274, baseType: !53, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !46, line: 274, baseType: !53, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !46, line: 274, baseType: !36, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !46, line: 274, baseType: !53, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !46, line: 274, baseType: !39, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !696, file: !46, line: 275, baseType: !6, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !46, line: 276, baseType: !373, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !46, line: 277, baseType: !12, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !46, line: 278, baseType: !480, size: 128, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !45, file: !46, line: 388, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !46, line: 281, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !732, !733}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !46, line: 282, baseType: !44, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !46, line: 282, baseType: !53, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !46, line: 282, baseType: !53, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !46, line: 282, baseType: !36, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !46, line: 282, baseType: !53, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !709, file: !46, line: 282, baseType: !53, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !709, file: !46, line: 283, baseType: !53, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !46, line: 284, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1084, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!13, !6, !469, !6, !723, !12, !12}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !46, line: 285, baseType: !39, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !46, line: 286, baseType: !12, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !709, file: !46, line: 287, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1102, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!13, !377, !6, !12, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !709, file: !46, line: 288, baseType: !44, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !46, line: 289, baseType: !44, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !45, file: !46, line: 389, baseType: !735, size: 512)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !46, line: 307, size: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !46, line: 308, baseType: !44, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !46, line: 308, baseType: !53, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !46, line: 308, baseType: !53, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !46, line: 308, baseType: !36, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !46, line: 308, baseType: !53, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !735, file: !46, line: 308, baseType: !53, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !735, file: !46, line: 309, baseType: !53, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !735, file: !46, line: 310, baseType: !53, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !735, file: !46, line: 311, baseType: !12, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !46, line: 312, baseType: !39, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !735, file: !46, line: 313, baseType: !111, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !735, file: !46, line: 314, baseType: !96, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !735, file: !46, line: 315, baseType: !96, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !46, line: 316, baseType: !6, size: 32, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !45, file: !46, line: 390, baseType: !752, size: 448)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !46, line: 340, size: 448, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !46, line: 341, baseType: !44, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !46, line: 341, baseType: !53, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !46, line: 341, baseType: !53, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !46, line: 341, baseType: !36, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !46, line: 341, baseType: !53, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !752, file: !46, line: 341, baseType: !39, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !752, file: !46, line: 342, baseType: !39, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !752, file: !46, line: 343, baseType: !12, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !752, file: !46, line: 344, baseType: !96, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !752, file: !46, line: 345, baseType: !6, size: 32, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !45, file: !46, line: 391, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !46, line: 350, size: 256, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !777}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !46, line: 351, baseType: !44, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !46, line: 351, baseType: !53, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !46, line: 351, baseType: !53, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !46, line: 351, baseType: !36, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !46, line: 351, baseType: !53, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !765, file: !46, line: 351, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1055, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !377, !12}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !765, file: !46, line: 352, baseType: !12, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !45, file: !46, line: 392, baseType: !779, size: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !46, line: 357, size: 192, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !46, line: 358, baseType: !44, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !46, line: 358, baseType: !53, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !46, line: 358, baseType: !53, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !46, line: 358, baseType: !36, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !46, line: 358, baseType: !53, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !46, line: 358, baseType: !44, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !45, file: !46, line: 399, baseType: !40, size: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !41, line: 135, baseType: !53, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !41, line: 136, baseType: !53, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !41, line: 137, baseType: !36, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !41, line: 138, baseType: !792, size: 32, offset: 96)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !793, line: 327, size: 32, elements: !794)
!793 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !792, file: !793, line: 328, baseType: !6, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !792, file: !793, line: 329, baseType: !238, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !40, file: !41, line: 139, baseType: !39, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !40, file: !41, line: 140, baseType: !39, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !40, file: !41, line: 141, baseType: !39, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !40, file: !41, line: 142, baseType: !35, size: 16, offset: 320)
!801 = !{!0}
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 56, elements: !387)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!804 = !{i32 7, !"Dwarf Version", i32 4}
!805 = !{i32 2, !"Debug Info Version", i32 3}
!806 = !{i32 1, !"wchar_size", i32 2}
!807 = !{i32 1, !"Code Model", i32 2}
!808 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!809 = distinct !DISubprogram(name: "acpi_ds_initialize_objects", scope: !3, file: !3, line: 157, type: !810, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!810 = !DISubroutineType(types: !811)
!811 = !{!13, !6, !39}
!812 = !DILocalVariable(name: "table_index", arg: 1, scope: !809, file: !3, line: 157, type: !6)
!813 = !DILocation(line: 157, column: 32, scope: !809)
!814 = !DILocalVariable(name: "start_node", arg: 2, scope: !809, file: !3, line: 158, type: !39)
!815 = !DILocation(line: 158, column: 35, scope: !809)
!816 = !DILocalVariable(name: "status", scope: !809, file: !3, line: 160, type: !13)
!817 = !DILocation(line: 160, column: 14, scope: !809)
!818 = !DILocalVariable(name: "info", scope: !809, file: !3, line: 161, type: !16)
!819 = !DILocation(line: 161, column: 29, scope: !809)
!820 = !DILocalVariable(name: "table", scope: !809, file: !3, line: 162, type: !821)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !793, line: 68, size: 288, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !832, !834, !835, !836}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !822, file: !793, line: 69, baseType: !238, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !822, file: !793, line: 70, baseType: !6, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !822, file: !793, line: 71, baseType: !53, size: 8, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !822, file: !793, line: 72, baseType: !53, size: 8, offset: 72)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !822, file: !793, line: 73, baseType: !829, size: 48, offset: 80)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 48, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 6)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !822, file: !793, line: 74, baseType: !833, size: 64, offset: 128)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !355)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !822, file: !793, line: 75, baseType: !6, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !822, file: !793, line: 76, baseType: !238, size: 32, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !822, file: !793, line: 77, baseType: !6, size: 32, offset: 256)
!837 = !DILocation(line: 162, column: 28, scope: !809)
!838 = !DILocalVariable(name: "owner_id", scope: !809, file: !3, line: 163, type: !35)
!839 = !DILocation(line: 163, column: 16, scope: !809)
!840 = !DILocation(line: 167, column: 32, scope: !809)
!841 = !DILocation(line: 167, column: 11, scope: !809)
!842 = !DILocation(line: 167, column: 9, scope: !809)
!843 = !DILocation(line: 168, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !809, file: !3, line: 168, column: 6)
!845 = !DILocation(line: 168, column: 6, scope: !809)
!846 = !DILocation(line: 169, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 168, column: 28)
!848 = !DILocation(line: 177, column: 2, scope: !809)
!849 = !DILocation(line: 179, column: 18, scope: !809)
!850 = !DILocation(line: 179, column: 7, scope: !809)
!851 = !DILocation(line: 179, column: 16, scope: !809)
!852 = !DILocation(line: 180, column: 21, scope: !809)
!853 = !DILocation(line: 180, column: 7, scope: !809)
!854 = !DILocation(line: 180, column: 19, scope: !809)
!855 = !DILocation(line: 189, column: 44, scope: !809)
!856 = !DILocation(line: 191, column: 39, scope: !809)
!857 = !DILocation(line: 189, column: 6, scope: !809)
!858 = !DILocation(line: 188, column: 9, scope: !809)
!859 = !DILocation(line: 192, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !809, file: !3, line: 192, column: 6)
!861 = !DILocation(line: 192, column: 6, scope: !809)
!862 = !DILocation(line: 193, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 192, column: 28)
!864 = !DILocation(line: 194, column: 2, scope: !863)
!865 = !DILocation(line: 196, column: 35, scope: !809)
!866 = !DILocation(line: 196, column: 11, scope: !809)
!867 = !DILocation(line: 196, column: 9, scope: !809)
!868 = !DILocation(line: 197, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !809, file: !3, line: 197, column: 6)
!870 = !DILocation(line: 197, column: 6, scope: !809)
!871 = !DILocation(line: 198, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 197, column: 28)
!873 = !DILocation(line: 203, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !809, file: !3, line: 203, column: 6)
!875 = !DILocation(line: 203, column: 6, scope: !809)
!876 = !DILocation(line: 206, column: 2, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 203, column: 61)
!878 = !DILocation(line: 223, column: 2, scope: !809)
!879 = !DILocation(line: 224, column: 1, scope: !809)
!880 = distinct !DISubprogram(name: "acpi_ds_init_one_object", scope: !3, file: !3, line: 46, type: !729, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!881 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !880, file: !3, line: 46, type: !377)
!882 = !DILocation(line: 46, column: 37, scope: !880)
!883 = !DILocalVariable(name: "level", arg: 2, scope: !880, file: !3, line: 47, type: !6)
!884 = !DILocation(line: 47, column: 8, scope: !880)
!885 = !DILocalVariable(name: "context", arg: 3, scope: !880, file: !3, line: 47, type: !12)
!886 = !DILocation(line: 47, column: 21, scope: !880)
!887 = !DILocalVariable(name: "return_value", arg: 4, scope: !880, file: !3, line: 47, type: !731)
!888 = !DILocation(line: 47, column: 37, scope: !880)
!889 = !DILocalVariable(name: "info", scope: !880, file: !3, line: 49, type: !15)
!890 = !DILocation(line: 49, column: 30, scope: !880)
!891 = !DILocation(line: 50, column: 36, scope: !880)
!892 = !DILocation(line: 50, column: 6, scope: !880)
!893 = !DILocalVariable(name: "node", scope: !880, file: !3, line: 51, type: !39)
!894 = !DILocation(line: 51, column: 30, scope: !880)
!895 = !DILocation(line: 52, column: 36, scope: !880)
!896 = !DILocation(line: 52, column: 6, scope: !880)
!897 = !DILocalVariable(name: "status", scope: !880, file: !3, line: 53, type: !13)
!898 = !DILocation(line: 53, column: 14, scope: !880)
!899 = !DILocalVariable(name: "obj_desc", scope: !880, file: !3, line: 54, type: !44)
!900 = !DILocation(line: 54, column: 29, scope: !880)
!901 = !DILocation(line: 62, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !880, file: !3, line: 62, column: 6)
!903 = !DILocation(line: 62, column: 12, scope: !902)
!904 = !DILocation(line: 62, column: 24, scope: !902)
!905 = !DILocation(line: 62, column: 30, scope: !902)
!906 = !DILocation(line: 62, column: 21, scope: !902)
!907 = !DILocation(line: 62, column: 6, scope: !880)
!908 = !DILocation(line: 63, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !902, file: !3, line: 62, column: 40)
!910 = !DILocation(line: 66, column: 2, scope: !880)
!911 = !DILocation(line: 66, column: 8, scope: !880)
!912 = !DILocation(line: 66, column: 20, scope: !880)
!913 = !DILocation(line: 70, column: 27, scope: !880)
!914 = !DILocation(line: 70, column: 10, scope: !880)
!915 = !DILocation(line: 70, column: 2, scope: !880)
!916 = !DILocation(line: 73, column: 38, scope: !917)
!917 = distinct !DILexicalBlock(scope: !880, file: !3, line: 70, column: 40)
!918 = !DILocation(line: 73, column: 12, scope: !917)
!919 = !DILocation(line: 73, column: 10, scope: !917)
!920 = !DILocation(line: 74, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 74, column: 7)
!922 = !DILocation(line: 74, column: 7, scope: !917)
!923 = !DILocation(line: 75, column: 4, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 74, column: 29)
!925 = !DILocation(line: 79, column: 3, scope: !924)
!926 = !DILocation(line: 81, column: 3, scope: !917)
!927 = !DILocation(line: 81, column: 9, scope: !917)
!928 = !DILocation(line: 81, column: 24, scope: !917)
!929 = !DILocation(line: 82, column: 3, scope: !917)
!930 = !DILocation(line: 93, column: 3, scope: !917)
!931 = !DILocation(line: 93, column: 9, scope: !917)
!932 = !DILocation(line: 93, column: 21, scope: !917)
!933 = !DILocation(line: 94, column: 42, scope: !917)
!934 = !DILocation(line: 94, column: 14, scope: !917)
!935 = !DILocation(line: 94, column: 12, scope: !917)
!936 = !DILocation(line: 95, column: 8, scope: !937)
!937 = distinct !DILexicalBlock(scope: !917, file: !3, line: 95, column: 7)
!938 = !DILocation(line: 95, column: 7, scope: !917)
!939 = !DILocation(line: 96, column: 4, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 95, column: 18)
!941 = !DILocation(line: 101, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !917, file: !3, line: 101, column: 7)
!943 = !DILocation(line: 101, column: 17, scope: !942)
!944 = !DILocation(line: 101, column: 24, scope: !942)
!945 = !DILocation(line: 101, column: 35, scope: !942)
!946 = !DILocation(line: 101, column: 7, scope: !917)
!947 = !DILocation(line: 102, column: 4, scope: !948)
!948 = distinct !DILexicalBlock(scope: !942, file: !3, line: 101, column: 61)
!949 = !DILocation(line: 102, column: 10, scope: !948)
!950 = !DILocation(line: 102, column: 29, scope: !948)
!951 = !DILocation(line: 103, column: 4, scope: !948)
!952 = !DILocation(line: 106, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !917, file: !3, line: 106, column: 7)
!954 = !DILocation(line: 106, column: 7, scope: !917)
!955 = !DILocation(line: 110, column: 34, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 106, column: 40)
!957 = !DILocation(line: 110, column: 40, scope: !956)
!958 = !DILocation(line: 110, column: 4, scope: !956)
!959 = !DILocation(line: 111, column: 8, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 111, column: 8)
!961 = !DILocation(line: 111, column: 18, scope: !960)
!962 = !DILocation(line: 112, column: 8, scope: !960)
!963 = !DILocation(line: 112, column: 19, scope: !960)
!964 = !DILocation(line: 111, column: 8, scope: !956)
!965 = !DILocation(line: 116, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !3, line: 112, column: 45)
!967 = !DILocation(line: 116, column: 11, scope: !966)
!968 = !DILocation(line: 116, column: 30, scope: !966)
!969 = !DILocation(line: 117, column: 5, scope: !966)
!970 = !DILocation(line: 117, column: 11, scope: !966)
!971 = !DILocation(line: 117, column: 34, scope: !966)
!972 = !DILocation(line: 118, column: 5, scope: !966)
!973 = !DILocation(line: 120, column: 3, scope: !956)
!974 = !DILocation(line: 122, column: 3, scope: !917)
!975 = !DILocation(line: 122, column: 9, scope: !917)
!976 = !DILocation(line: 122, column: 32, scope: !917)
!977 = !DILocation(line: 123, column: 3, scope: !917)
!978 = !DILocation(line: 127, column: 3, scope: !917)
!979 = !DILocation(line: 127, column: 9, scope: !917)
!980 = !DILocation(line: 127, column: 21, scope: !917)
!981 = !DILocation(line: 128, column: 3, scope: !917)
!982 = !DILocation(line: 132, column: 3, scope: !917)
!983 = !DILocation(line: 139, column: 2, scope: !880)
!984 = !DILocation(line: 140, column: 1, scope: !880)
