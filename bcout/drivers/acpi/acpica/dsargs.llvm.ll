; ModuleID = '../bcout/drivers/acpi/acpica/dsargs.llvm.bc'
source_filename = "drivers/acpi/acpica/dsargs.c"
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
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_buffer_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_extra = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i8*, i32 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_evaluate_info = type { %struct.acpi_namespace_node*, i8*, %union.acpi_operand_object**, %struct.acpi_namespace_node*, %union.acpi_operand_object*, i8*, %union.acpi_predefined_info*, %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i16, i16, i8, i8, i8 }
%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>
%struct.acpi_object_bank_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"dsargs\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"No pointer back to namespace node in buffer object %p\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"No pointer back to namespace node in package %p\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %obj_desc) #0 !dbg !33 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %extra_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !798, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %extra_desc, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %status, metadata !804, metadata !DIExpression()), !dbg !805
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !806
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !808
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !809
  %1 = load i8, i8* %flags, align 4, !dbg !809
  %conv = zext i8 %1 to i32, !dbg !806
  %and = and i32 %conv, 4, !dbg !810
  %tobool = icmp ne i32 %and, 0, !dbg !810
  br i1 %tobool, label %if.then, label %if.end, !dbg !811

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !812
  br label %return, !dbg !812

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !814
  %call = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %2) #3, !dbg !815
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %extra_desc, align 8, !dbg !816
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !817
  %buffer_field = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_buffer_field*, !dbg !818
  %node1 = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field, i32 0, i32 8, !dbg !819
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !819
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %node, align 8, !dbg !820
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !821
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !822
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 5, !dbg !823
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !823
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !824
  %extra = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_extra*, !dbg !825
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 9, !dbg !826
  %9 = load i32, i32* %aml_length, align 8, !dbg !826
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !827
  %extra2 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_extra*, !dbg !828
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra2, i32 0, i32 8, !dbg !829
  %11 = load i8*, i8** %aml_start, align 8, !dbg !829
  %call3 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %5, %struct.acpi_namespace_node* %7, i32 %9, i8* %11) #3, !dbg !830
  store i32 %call3, i32* %status, align 4, !dbg !831
  %12 = load i32, i32* %status, align 4, !dbg !832
  store i32 %12, i32* %retval, align 4, !dbg !832
  br label %return, !dbg !832

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !833
  ret i32 %13, !dbg !833
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %node, %struct.acpi_namespace_node* %scope_node, i32 %aml_length, i8* %aml_start) #0 !dbg !834 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %scope_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %aml_length.addr = alloca i32, align 4
  %aml_start.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %walk_state = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !837, metadata !DIExpression()), !dbg !838
  store %struct.acpi_namespace_node* %scope_node, %struct.acpi_namespace_node** %scope_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %scope_node.addr, metadata !839, metadata !DIExpression()), !dbg !840
  store i32 %aml_length, i32* %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %aml_length.addr, metadata !841, metadata !DIExpression()), !dbg !842
  store i8* %aml_start, i8** %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_start.addr, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata i32* %status, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load i8*, i8** %aml_start.addr, align 8, !dbg !851
  %call = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 55, i8* %0) #3, !dbg !852
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %op, align 8, !dbg !853
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !854
  %tobool = icmp ne %union.acpi_parse_object* %1, null, !dbg !854
  br i1 %tobool, label %if.end, label %if.then, !dbg !856

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !857
  br label %return, !dbg !857

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %scope_node.addr, align 8, !dbg !859
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !860
  %common = bitcast %union.acpi_parse_object* %3 to %struct.acpi_parse_obj_common*, !dbg !861
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !862
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %node1, align 8, !dbg !863
  %call2 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext 0, %union.acpi_parse_object* null, %union.acpi_operand_object* null, %struct.acpi_thread_state* null) #3, !dbg !864
  store %struct.acpi_walk_state* %call2, %struct.acpi_walk_state** %walk_state, align 8, !dbg !865
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !866
  %tobool3 = icmp ne %struct.acpi_walk_state* %4, null, !dbg !866
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !868

if.then4:                                         ; preds = %if.end
  store i32 4, i32* %status, align 4, !dbg !869
  br label %cleanup, !dbg !871

if.end5:                                          ; preds = %if.end
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !872
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !873
  %7 = load i8*, i8** %aml_start.addr, align 8, !dbg !874
  %8 = load i32, i32* %aml_length.addr, align 4, !dbg !875
  %call6 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %5, %union.acpi_parse_object* %6, %struct.acpi_namespace_node* null, i8* %7, i32 %8, %struct.acpi_evaluate_info* null, i8 zeroext 1) #3, !dbg !876
  store i32 %call6, i32* %status, align 4, !dbg !877
  %9 = load i32, i32* %status, align 4, !dbg !878
  %tobool7 = icmp ne i32 %9, 0, !dbg !878
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !880

if.then8:                                         ; preds = %if.end5
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !881
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %10) #3, !dbg !883
  br label %cleanup, !dbg !884

if.end9:                                          ; preds = %if.end5
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !885
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 20, !dbg !886
  store i32 256, i32* %parse_flags, align 4, !dbg !887
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !888
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !889
  %deferred_node = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 33, !dbg !890
  store %struct.acpi_namespace_node* %12, %struct.acpi_namespace_node** %deferred_node, align 8, !dbg !891
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !892
  %call10 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %14) #3, !dbg !893
  store i32 %call10, i32* %status, align 4, !dbg !894
  %15 = load i32, i32* %status, align 4, !dbg !895
  %tobool11 = icmp ne i32 %15, 0, !dbg !895
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !897

if.then12:                                        ; preds = %if.end9
  br label %cleanup, !dbg !898

if.end13:                                         ; preds = %if.end9
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !900
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !901
  %common14 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !902
  %node15 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common14, i32 0, i32 6, !dbg !903
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %node15, align 8, !dbg !904
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !905
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %18) #3, !dbg !906
  %19 = load i8*, i8** %aml_start.addr, align 8, !dbg !907
  %call16 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 55, i8* %19) #3, !dbg !908
  store %union.acpi_parse_object* %call16, %union.acpi_parse_object** %op, align 8, !dbg !909
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !910
  %tobool17 = icmp ne %union.acpi_parse_object* %20, null, !dbg !910
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !912

if.then18:                                        ; preds = %if.end13
  store i32 4, i32* %retval, align 4, !dbg !913
  br label %return, !dbg !913

if.end19:                                         ; preds = %if.end13
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %scope_node.addr, align 8, !dbg !915
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !916
  %common20 = bitcast %union.acpi_parse_object* %22 to %struct.acpi_parse_obj_common*, !dbg !917
  %node21 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common20, i32 0, i32 6, !dbg !918
  store %struct.acpi_namespace_node* %21, %struct.acpi_namespace_node** %node21, align 8, !dbg !919
  %call22 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext 0, %union.acpi_parse_object* null, %union.acpi_operand_object* null, %struct.acpi_thread_state* null) #3, !dbg !920
  store %struct.acpi_walk_state* %call22, %struct.acpi_walk_state** %walk_state, align 8, !dbg !921
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !922
  %tobool23 = icmp ne %struct.acpi_walk_state* %23, null, !dbg !922
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !924

if.then24:                                        ; preds = %if.end19
  store i32 4, i32* %status, align 4, !dbg !925
  br label %cleanup, !dbg !927

if.end25:                                         ; preds = %if.end19
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !928
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !929
  %26 = load i8*, i8** %aml_start.addr, align 8, !dbg !930
  %27 = load i32, i32* %aml_length.addr, align 4, !dbg !931
  %call26 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %24, %union.acpi_parse_object* %25, %struct.acpi_namespace_node* null, i8* %26, i32 %27, %struct.acpi_evaluate_info* null, i8 zeroext 3) #3, !dbg !932
  store i32 %call26, i32* %status, align 4, !dbg !933
  %28 = load i32, i32* %status, align 4, !dbg !934
  %tobool27 = icmp ne i32 %28, 0, !dbg !934
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !936

if.then28:                                        ; preds = %if.end25
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !937
  call void @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %29) #3, !dbg !939
  br label %cleanup, !dbg !940

if.end29:                                         ; preds = %if.end25
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !941
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !942
  %deferred_node30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 33, !dbg !943
  store %struct.acpi_namespace_node* %30, %struct.acpi_namespace_node** %deferred_node30, align 8, !dbg !944
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state, align 8, !dbg !945
  %call31 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %32) #3, !dbg !946
  store i32 %call31, i32* %status, align 4, !dbg !947
  br label %cleanup, !dbg !948

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then24, %if.then12, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !949), !dbg !950
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !951
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %33) #3, !dbg !952
  %34 = load i32, i32* %status, align 4, !dbg !953
  store i32 %34, i32* %retval, align 4, !dbg !953
  br label %return, !dbg !953

return:                                           ; preds = %cleanup, %if.then18, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !954
  ret i32 %35, !dbg !954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_get_bank_field_arguments(%union.acpi_operand_object* %obj_desc) #0 !dbg !955 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %extra_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !956, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %extra_desc, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata i32* %status, metadata !962, metadata !DIExpression()), !dbg !963
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !964
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !966
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !967
  %1 = load i8, i8* %flags, align 4, !dbg !967
  %conv = zext i8 %1 to i32, !dbg !964
  %and = and i32 %conv, 4, !dbg !968
  %tobool = icmp ne i32 %and, 0, !dbg !968
  br i1 %tobool, label %if.then, label %if.end, !dbg !969

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !970
  br label %return, !dbg !970

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !972
  %call = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %2) #3, !dbg !973
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %extra_desc, align 8, !dbg !974
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !975
  %bank_field = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_bank_field*, !dbg !976
  %node1 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field, i32 0, i32 8, !dbg !977
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !977
  store %struct.acpi_namespace_node* %4, %struct.acpi_namespace_node** %node, align 8, !dbg !978
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !979
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !980
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 5, !dbg !981
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !981
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !982
  %extra = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_extra*, !dbg !983
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 9, !dbg !984
  %9 = load i32, i32* %aml_length, align 8, !dbg !984
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !985
  %extra2 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_extra*, !dbg !986
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra2, i32 0, i32 8, !dbg !987
  %11 = load i8*, i8** %aml_start, align 8, !dbg !987
  %call3 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %5, %struct.acpi_namespace_node* %7, i32 %9, i8* %11) #3, !dbg !988
  store i32 %call3, i32* %status, align 4, !dbg !989
  %12 = load i32, i32* %status, align 4, !dbg !990
  %tobool4 = icmp ne i32 %12, 0, !dbg !990
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !992

if.then5:                                         ; preds = %if.end
  %13 = load i32, i32* %status, align 4, !dbg !993
  store i32 %13, i32* %retval, align 4, !dbg !993
  br label %return, !dbg !993

if.end6:                                          ; preds = %if.end
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !995
  %region = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_region*, !dbg !996
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !997
  %15 = load i8, i8* %space_id, align 1, !dbg !997
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !998
  %region7 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_region*, !dbg !999
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region7, i32 0, i32 9, !dbg !1000
  %17 = load i64, i64* %address, align 8, !dbg !1000
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1001
  %region8 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_region*, !dbg !1002
  %length = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region8, i32 0, i32 10, !dbg !1003
  %19 = load i32, i32* %length, align 8, !dbg !1003
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1004
  %call9 = call i32 @acpi_ut_add_address_range(i8 zeroext %15, i64 %17, i32 %19, %struct.acpi_namespace_node* %20) #3, !dbg !1005
  store i32 %call9, i32* %status, align 4, !dbg !1006
  %21 = load i32, i32* %status, align 4, !dbg !1007
  store i32 %21, i32* %retval, align 4, !dbg !1007
  br label %return, !dbg !1007

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !1008
  ret i32 %22, !dbg !1008
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_add_address_range(i8 zeroext, i64, i32, %struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %obj_desc) #0 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1014, metadata !DIExpression()), !dbg !1015
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1016
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1018
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1019
  %1 = load i8, i8* %flags, align 4, !dbg !1019
  %conv = zext i8 %1 to i32, !dbg !1016
  %and = and i32 %conv, 4, !dbg !1020
  %tobool = icmp ne i32 %and, 0, !dbg !1020
  br i1 %tobool, label %if.then, label %if.end, !dbg !1021

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1024
  %buffer = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_buffer*, !dbg !1025
  %node1 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 9, !dbg !1026
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !1026
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %node, align 8, !dbg !1027
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1028
  %tobool2 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !1028
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1030

if.then3:                                         ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1031
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 257, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %union.acpi_operand_object* %5) #3, !dbg !1031
  store i32 12303, i32* %retval, align 4, !dbg !1033
  br label %return, !dbg !1033

if.end4:                                          ; preds = %if.end
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1034
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1035
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1036
  %buffer5 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_buffer*, !dbg !1037
  %aml_length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer5, i32 0, i32 7, !dbg !1038
  %9 = load i32, i32* %aml_length, align 4, !dbg !1038
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1039
  %buffer6 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_buffer*, !dbg !1040
  %aml_start = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer6, i32 0, i32 8, !dbg !1041
  %11 = load i8*, i8** %aml_start, align 8, !dbg !1041
  %call = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %6, %struct.acpi_namespace_node* %7, i32 %9, i8* %11) #3, !dbg !1042
  store i32 %call, i32* %status, align 4, !dbg !1043
  %12 = load i32, i32* %status, align 4, !dbg !1044
  store i32 %12, i32* %retval, align 4, !dbg !1044
  br label %return, !dbg !1044

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1045
  ret i32 %13, !dbg !1045
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %obj_desc) #0 !dbg !1046 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1047, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1049, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1051, metadata !DIExpression()), !dbg !1052
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1053
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1055
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1056
  %1 = load i8, i8* %flags, align 4, !dbg !1056
  %conv = zext i8 %1 to i32, !dbg !1053
  %and = and i32 %conv, 4, !dbg !1057
  %tobool = icmp ne i32 %and, 0, !dbg !1057
  br i1 %tobool, label %if.then, label %if.end, !dbg !1058

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1059
  br label %return, !dbg !1059

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1061
  %package = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_package*, !dbg !1062
  %node1 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 5, !dbg !1063
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !1063
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %node, align 8, !dbg !1064
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1065
  %tobool2 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !1065
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1067

if.then3:                                         ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1068
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %union.acpi_operand_object* %5) #3, !dbg !1068
  store i32 12303, i32* %retval, align 4, !dbg !1070
  br label %return, !dbg !1070

if.end4:                                          ; preds = %if.end
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1071
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1072
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1073
  %package5 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_package*, !dbg !1074
  %aml_length = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package5, i32 0, i32 8, !dbg !1075
  %9 = load i32, i32* %aml_length, align 8, !dbg !1075
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1076
  %package6 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_package*, !dbg !1077
  %aml_start = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package6, i32 0, i32 7, !dbg !1078
  %11 = load i8*, i8** %aml_start, align 8, !dbg !1078
  %call = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %6, %struct.acpi_namespace_node* %7, i32 %9, i8* %11) #3, !dbg !1079
  store i32 %call, i32* %status, align 4, !dbg !1080
  %12 = load i32, i32* %status, align 4, !dbg !1081
  store i32 %12, i32* %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1082
  ret i32 %13, !dbg !1082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object* %obj_desc) #0 !dbg !1083 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %extra_desc = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %extra_desc, metadata !1090, metadata !DIExpression()), !dbg !1091
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1092
  %region = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_region*, !dbg !1094
  %flags = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 4, !dbg !1095
  %1 = load i8, i8* %flags, align 4, !dbg !1095
  %conv = zext i8 %1 to i32, !dbg !1092
  %and = and i32 %conv, 4, !dbg !1096
  %tobool = icmp ne i32 %and, 0, !dbg !1096
  br i1 %tobool, label %if.then, label %if.end, !dbg !1097

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1098
  br label %return, !dbg !1098

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1100
  %call = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %2) #3, !dbg !1101
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %extra_desc, align 8, !dbg !1102
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !1103
  %tobool1 = icmp ne %union.acpi_operand_object* %3, null, !dbg !1103
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1105

if.then2:                                         ; preds = %if.end
  store i32 6, i32* %retval, align 4, !dbg !1106
  br label %return, !dbg !1106

if.end3:                                          ; preds = %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1108
  %region4 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_region*, !dbg !1109
  %node5 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region4, i32 0, i32 6, !dbg !1110
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node5, align 8, !dbg !1110
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %node, align 8, !dbg !1111
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1112
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !1113
  %extra = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_extra*, !dbg !1114
  %scope_node = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 6, !dbg !1115
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %scope_node, align 8, !dbg !1115
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !1116
  %extra6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_extra*, !dbg !1117
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra6, i32 0, i32 9, !dbg !1118
  %10 = load i32, i32* %aml_length, align 8, !dbg !1118
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %extra_desc, align 8, !dbg !1119
  %extra7 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_extra*, !dbg !1120
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra7, i32 0, i32 8, !dbg !1121
  %12 = load i8*, i8** %aml_start, align 8, !dbg !1121
  %call8 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %6, %struct.acpi_namespace_node* %8, i32 %10, i8* %12) #3, !dbg !1122
  store i32 %call8, i32* %status, align 4, !dbg !1123
  %13 = load i32, i32* %status, align 4, !dbg !1124
  %tobool9 = icmp ne i32 %13, 0, !dbg !1124
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1126

if.then10:                                        ; preds = %if.end3
  %14 = load i32, i32* %status, align 4, !dbg !1127
  store i32 %14, i32* %retval, align 4, !dbg !1127
  br label %return, !dbg !1127

if.end11:                                         ; preds = %if.end3
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1129
  %region12 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_region*, !dbg !1130
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region12, i32 0, i32 5, !dbg !1131
  %16 = load i8, i8* %space_id, align 1, !dbg !1131
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1132
  %region13 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_region*, !dbg !1133
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region13, i32 0, i32 9, !dbg !1134
  %18 = load i64, i64* %address, align 8, !dbg !1134
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1135
  %region14 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_region*, !dbg !1136
  %length = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region14, i32 0, i32 10, !dbg !1137
  %20 = load i32, i32* %length, align 8, !dbg !1137
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1138
  %call15 = call i32 @acpi_ut_add_address_range(i8 zeroext %16, i64 %18, i32 %20, %struct.acpi_namespace_node* %21) #3, !dbg !1139
  store i32 %call15, i32* %status, align 4, !dbg !1140
  %22 = load i32, i32* %status, align 4, !dbg !1141
  store i32 %22, i32* %retval, align 4, !dbg !1141
  br label %return, !dbg !1141

return:                                           ; preds = %if.end11, %if.then10, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !1142
  ret i32 %23, !dbg !1142
}

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i16 zeroext, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_thread_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, i8*, i32, %struct.acpi_evaluate_info*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsargs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !19}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !21)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !{!0}
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 56, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!27}
!27 = !DISubrange(count: 7)
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!33 = distinct !DISubprogram(name: "acpi_ds_get_buffer_field_arguments", scope: !3, file: !3, line: 146, type: !34, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!34 = !DISubroutineType(types: !35)
!35 = !{!13, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !38, line: 367, size: 576, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !51, !67, !78, !113, !127, !137, !448, !465, !480, !493, !571, !583, !597, !607, !625, !647, !666, !685, !704, !717, !743, !760, !773, !787, !796}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !38, line: 368, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !38, line: 73, size: 128, elements: !42)
!42 = !{!43, !44, !48, !49, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !38, line: 74, baseType: !36, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !38, line: 74, baseType: !45, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !38, line: 74, baseType: !45, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !38, line: 74, baseType: !19, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !38, line: 74, baseType: !45, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !38, line: 369, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !38, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !38, line: 77, baseType: !36, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !38, line: 77, baseType: !45, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !38, line: 77, baseType: !45, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !38, line: 77, baseType: !19, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !38, line: 77, baseType: !45, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !38, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !38, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !66)
!66 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !38, line: 370, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !38, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !77}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !38, line: 94, baseType: !36, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !38, line: 94, baseType: !45, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !38, line: 94, baseType: !45, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !38, line: 94, baseType: !19, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !38, line: 94, baseType: !45, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !38, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !38, line: 94, baseType: !15, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !38, line: 371, baseType: !79, size: 384)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !38, line: 97, size: 384, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !88, !89, !90, !91}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !38, line: 98, baseType: !36, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !38, line: 98, baseType: !45, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !38, line: 98, baseType: !45, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !38, line: 98, baseType: !19, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !38, line: 98, baseType: !45, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !38, line: 98, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !38, line: 98, baseType: !15, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !79, file: !38, line: 99, baseType: !15, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !79, file: !38, line: 100, baseType: !87, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !38, line: 101, baseType: !92, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !108, !109, !110, !111}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !93, file: !6, line: 134, baseType: !36, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !6, line: 135, baseType: !45, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !6, line: 136, baseType: !45, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !6, line: 137, baseType: !19, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !6, line: 138, baseType: !100, size: 32, offset: 96)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !101, line: 327, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !100, file: !101, line: 328, baseType: !15, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !100, file: !101, line: 329, baseType: !105, size: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !93, file: !6, line: 139, baseType: !92, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !93, file: !6, line: 140, baseType: !92, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !93, file: !6, line: 141, baseType: !92, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !93, file: !6, line: 142, baseType: !112, size: 16, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !19)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !38, line: 372, baseType: !114, size: 384)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !38, line: 104, size: 384, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !124, !125, !126}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !38, line: 105, baseType: !36, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !38, line: 105, baseType: !45, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !38, line: 105, baseType: !45, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !38, line: 105, baseType: !19, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !38, line: 105, baseType: !45, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !114, file: !38, line: 105, baseType: !92, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !114, file: !38, line: 106, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !114, file: !38, line: 107, baseType: !87, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !114, file: !38, line: 108, baseType: !15, size: 32, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !114, file: !38, line: 109, baseType: !15, size: 32, offset: 352)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !38, line: 373, baseType: !128, size: 192)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !38, line: 118, size: 192, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !38, line: 119, baseType: !36, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !38, line: 119, baseType: !45, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !38, line: 119, baseType: !45, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !38, line: 119, baseType: !19, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !38, line: 119, baseType: !45, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !128, file: !38, line: 119, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !38, line: 374, baseType: !138, size: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !38, line: 143, size: 448, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !445, !446, !447}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !38, line: 144, baseType: !36, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !38, line: 144, baseType: !45, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !38, line: 144, baseType: !45, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !38, line: 144, baseType: !19, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !38, line: 144, baseType: !45, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !138, file: !38, line: 144, baseType: !45, size: 8, offset: 104)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !138, file: !38, line: 145, baseType: !45, size: 8, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !138, file: !38, line: 146, baseType: !45, size: 8, offset: 120)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !138, file: !38, line: 147, baseType: !36, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !38, line: 148, baseType: !36, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !138, file: !38, line: 149, baseType: !87, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !138, file: !38, line: 153, baseType: !152, size: 64, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !38, line: 150, size: 64, elements: !153)
!153 = !{!154, !444}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !152, file: !38, line: 151, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!13, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !161, line: 37, size: 9024, elements: !162)
!161 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !392, !393, !394, !395, !396, !398, !400, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !427, !428, !429, !430, !431, !432, !433, !434, !436, !442}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !161, line: 38, baseType: !159, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !160, file: !161, line: 39, baseType: !45, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !160, file: !161, line: 40, baseType: !45, size: 8, offset: 72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !160, file: !161, line: 41, baseType: !19, size: 16, offset: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !160, file: !161, line: 42, baseType: !45, size: 8, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !160, file: !161, line: 43, baseType: !45, size: 8, offset: 104)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !160, file: !161, line: 44, baseType: !45, size: 8, offset: 112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !160, file: !161, line: 45, baseType: !112, size: 16, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !160, file: !161, line: 46, baseType: !45, size: 8, offset: 144)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !160, file: !161, line: 47, baseType: !45, size: 8, offset: 152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !160, file: !161, line: 48, baseType: !45, size: 8, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !160, file: !161, line: 49, baseType: !45, size: 8, offset: 168)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !160, file: !161, line: 50, baseType: !45, size: 8, offset: 176)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !160, file: !161, line: 51, baseType: !45, size: 8, offset: 184)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !160, file: !161, line: 52, baseType: !45, size: 8, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !160, file: !161, line: 53, baseType: !45, size: 8, offset: 200)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !160, file: !161, line: 54, baseType: !87, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !160, file: !161, line: 55, baseType: !15, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !160, file: !161, line: 56, baseType: !15, size: 32, offset: 352)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !160, file: !161, line: 57, baseType: !15, size: 32, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !160, file: !161, line: 58, baseType: !15, size: 32, offset: 416)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !160, file: !161, line: 60, baseType: !185, size: 640, offset: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !273, !274, !390, !391}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !185, file: !6, line: 894, baseType: !87, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !6, line: 895, baseType: !87, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !185, file: !6, line: 896, baseType: !87, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !185, file: !6, line: 897, baseType: !87, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !185, file: !6, line: 898, baseType: !87, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !185, file: !6, line: 899, baseType: !193, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !195)
!195 = !{!196, !216, !232}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !194, file: !6, line: 876, baseType: !197, size: 448)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !215}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !6, line: 829, baseType: !193, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !6, line: 829, baseType: !45, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !6, line: 829, baseType: !45, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !197, file: !6, line: 829, baseType: !19, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !6, line: 829, baseType: !87, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !6, line: 829, baseType: !193, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !6, line: 829, baseType: !92, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !6, line: 829, baseType: !207, size: 64, offset: 320)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !207, file: !6, line: 717, baseType: !64, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !207, file: !6, line: 718, baseType: !15, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !207, file: !6, line: 719, baseType: !76, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !207, file: !6, line: 720, baseType: !87, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !6, line: 721, baseType: !76, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !207, file: !6, line: 722, baseType: !193, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !197, file: !6, line: 829, baseType: !45, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !194, file: !6, line: 877, baseType: !217, size: 640)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !6, line: 836, baseType: !193, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !6, line: 836, baseType: !45, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !6, line: 836, baseType: !45, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !217, file: !6, line: 836, baseType: !19, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !217, file: !6, line: 836, baseType: !87, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !6, line: 836, baseType: !193, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !6, line: 836, baseType: !92, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !6, line: 836, baseType: !207, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !217, file: !6, line: 836, baseType: !45, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !217, file: !6, line: 836, baseType: !76, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !6, line: 837, baseType: !87, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !217, file: !6, line: 838, baseType: !15, size: 32, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !6, line: 839, baseType: !15, size: 32, offset: 608)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !194, file: !6, line: 878, baseType: !233, size: 1600)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !6, line: 847, baseType: !193, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !233, file: !6, line: 847, baseType: !45, size: 8, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !6, line: 847, baseType: !45, size: 8, offset: 72)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !233, file: !6, line: 847, baseType: !19, size: 16, offset: 80)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !233, file: !6, line: 847, baseType: !87, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !6, line: 847, baseType: !193, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !233, file: !6, line: 847, baseType: !92, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !233, file: !6, line: 847, baseType: !207, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !233, file: !6, line: 847, baseType: !45, size: 8, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !233, file: !6, line: 847, baseType: !193, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !233, file: !6, line: 848, baseType: !193, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !233, file: !6, line: 849, baseType: !76, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !233, file: !6, line: 850, baseType: !45, size: 8, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !233, file: !6, line: 851, baseType: !76, size: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !233, file: !6, line: 852, baseType: !76, size: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !233, file: !6, line: 853, baseType: !76, size: 64, offset: 832)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !233, file: !6, line: 854, baseType: !105, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !233, file: !6, line: 855, baseType: !15, size: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !233, file: !6, line: 856, baseType: !15, size: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !233, file: !6, line: 857, baseType: !15, size: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !233, file: !6, line: 858, baseType: !15, size: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !233, file: !6, line: 859, baseType: !15, size: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !233, file: !6, line: 860, baseType: !15, size: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !233, file: !6, line: 861, baseType: !15, size: 32, offset: 1120)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !233, file: !6, line: 862, baseType: !15, size: 32, offset: 1152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !233, file: !6, line: 863, baseType: !15, size: 32, offset: 1184)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !233, file: !6, line: 864, baseType: !15, size: 32, offset: 1216)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !233, file: !6, line: 865, baseType: !15, size: 32, offset: 1248)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !233, file: !6, line: 866, baseType: !15, size: 32, offset: 1280)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !233, file: !6, line: 867, baseType: !15, size: 32, offset: 1312)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !233, file: !6, line: 868, baseType: !19, size: 16, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !233, file: !6, line: 869, baseType: !45, size: 8, offset: 1360)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !233, file: !6, line: 870, baseType: !45, size: 8, offset: 1368)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !233, file: !6, line: 871, baseType: !45, size: 8, offset: 1376)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !233, file: !6, line: 872, baseType: !270, size: 160, offset: 1384)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 20)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !185, file: !6, line: 900, baseType: !92, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !185, file: !6, line: 901, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !277)
!277 = !{!278, !286, !299, !308, !317, !330, !344, !356, !368}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !276, file: !6, line: 664, baseType: !279, size: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !6, line: 568, baseType: !136, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !6, line: 568, baseType: !45, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !6, line: 568, baseType: !45, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !6, line: 568, baseType: !19, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !6, line: 568, baseType: !19, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !276, file: !6, line: 665, baseType: !287, size: 384)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !6, line: 594, baseType: !136, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !287, file: !6, line: 594, baseType: !45, size: 8, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !6, line: 594, baseType: !45, size: 8, offset: 72)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !287, file: !6, line: 594, baseType: !19, size: 16, offset: 80)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !287, file: !6, line: 594, baseType: !19, size: 16, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !287, file: !6, line: 594, baseType: !19, size: 16, offset: 112)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !287, file: !6, line: 595, baseType: !193, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !287, file: !6, line: 596, baseType: !87, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !287, file: !6, line: 597, baseType: !87, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !287, file: !6, line: 598, baseType: !64, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !276, file: !6, line: 666, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !6, line: 574, baseType: !136, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !6, line: 574, baseType: !45, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !6, line: 574, baseType: !45, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !6, line: 574, baseType: !19, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !6, line: 574, baseType: !19, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !300, file: !6, line: 574, baseType: !36, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !276, file: !6, line: 667, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !6, line: 605, baseType: !136, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !6, line: 605, baseType: !45, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !6, line: 605, baseType: !45, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !6, line: 605, baseType: !19, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !6, line: 605, baseType: !19, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !6, line: 605, baseType: !92, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !276, file: !6, line: 668, baseType: !318, size: 448)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !6, line: 609, baseType: !136, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !6, line: 609, baseType: !45, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !6, line: 609, baseType: !45, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !6, line: 609, baseType: !19, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !6, line: 609, baseType: !19, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !318, file: !6, line: 609, baseType: !15, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !318, file: !6, line: 610, baseType: !193, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !318, file: !6, line: 611, baseType: !87, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !318, file: !6, line: 612, baseType: !87, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !318, file: !6, line: 613, baseType: !15, size: 32, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !276, file: !6, line: 669, baseType: !331, size: 512)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 581, baseType: !136, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 581, baseType: !45, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 581, baseType: !45, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 581, baseType: !19, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 581, baseType: !19, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !331, file: !6, line: 581, baseType: !15, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !331, file: !6, line: 582, baseType: !36, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !331, file: !6, line: 583, baseType: !36, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !331, file: !6, line: 584, baseType: !159, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !331, file: !6, line: 585, baseType: !136, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !331, file: !6, line: 586, baseType: !15, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !276, file: !6, line: 670, baseType: !345, size: 320)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !6, line: 621, baseType: !136, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !6, line: 621, baseType: !45, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !6, line: 621, baseType: !45, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !6, line: 621, baseType: !19, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !6, line: 621, baseType: !19, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !345, file: !6, line: 621, baseType: !45, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !345, file: !6, line: 622, baseType: !159, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !345, file: !6, line: 623, baseType: !36, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !345, file: !6, line: 624, baseType: !64, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !276, file: !6, line: 671, baseType: !357, size: 640)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !6, line: 632, baseType: !136, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !6, line: 632, baseType: !45, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !6, line: 632, baseType: !45, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !6, line: 632, baseType: !19, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !6, line: 632, baseType: !19, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !357, file: !6, line: 633, baseType: !365, size: 512, offset: 128)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 8)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !276, file: !6, line: 672, baseType: !369, size: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !6, line: 655, baseType: !136, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !6, line: 655, baseType: !45, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !6, line: 655, baseType: !45, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !6, line: 655, baseType: !19, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !6, line: 655, baseType: !19, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !369, file: !6, line: 655, baseType: !45, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !6, line: 656, baseType: !92, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !369, file: !6, line: 657, baseType: !36, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !369, file: !6, line: 658, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !382)
!382 = !{!383, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !381, file: !6, line: 646, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1052, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !15, !136}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !136)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !381, file: !6, line: 647, baseType: !136, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !185, file: !6, line: 902, baseType: !193, size: 64, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !185, file: !6, line: 903, baseType: !15, size: 32, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !160, file: !161, line: 61, baseType: !15, size: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !160, file: !161, line: 62, baseType: !15, size: 32, offset: 1120)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !160, file: !161, line: 63, baseType: !19, size: 16, offset: 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !160, file: !161, line: 64, baseType: !45, size: 8, offset: 1168)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !160, file: !161, line: 66, baseType: !397, size: 2688, offset: 1216)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2688, elements: !26)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !160, file: !161, line: 67, baseType: !399, size: 3072, offset: 3904)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3072, elements: !366)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !160, file: !161, line: 68, baseType: !401, size: 576, offset: 6976)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 576, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 9)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !160, file: !161, line: 69, baseType: !123, size: 64, offset: 7552)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !160, file: !161, line: 71, baseType: !87, size: 64, offset: 7616)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !160, file: !161, line: 72, baseType: !123, size: 64, offset: 7680)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !160, file: !161, line: 73, baseType: !275, size: 64, offset: 7744)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !160, file: !161, line: 74, baseType: !92, size: 64, offset: 7808)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !160, file: !161, line: 75, baseType: !36, size: 64, offset: 7872)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !160, file: !161, line: 76, baseType: !92, size: 64, offset: 7936)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !160, file: !161, line: 77, baseType: !193, size: 64, offset: 8000)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !160, file: !161, line: 78, baseType: !36, size: 64, offset: 8064)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !160, file: !161, line: 79, baseType: !92, size: 64, offset: 8128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !160, file: !161, line: 80, baseType: !76, size: 64, offset: 8192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !160, file: !161, line: 81, baseType: !193, size: 64, offset: 8256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !160, file: !161, line: 82, baseType: !417, size: 64, offset: 8320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !419, file: !6, line: 706, baseType: !15, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !419, file: !6, line: 707, baseType: !15, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !6, line: 708, baseType: !19, size: 16, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !419, file: !6, line: 709, baseType: !45, size: 8, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !419, file: !6, line: 710, baseType: !45, size: 8, offset: 88)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !6, line: 711, baseType: !45, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !160, file: !161, line: 83, baseType: !193, size: 64, offset: 8384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !160, file: !161, line: 84, baseType: !36, size: 64, offset: 8448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !160, file: !161, line: 85, baseType: !275, size: 64, offset: 8512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !160, file: !161, line: 86, baseType: !36, size: 64, offset: 8576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !160, file: !161, line: 87, baseType: !275, size: 64, offset: 8640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !160, file: !161, line: 88, baseType: !193, size: 64, offset: 8704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !160, file: !161, line: 89, baseType: !193, size: 64, offset: 8768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !160, file: !161, line: 90, baseType: !435, size: 64, offset: 8832)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !160, file: !161, line: 91, baseType: !437, size: 64, offset: 8896)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!13, !159, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !160, file: !161, line: 92, baseType: !443, size: 64, offset: 8960)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !156)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !152, file: !38, line: 152, baseType: !36, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !138, file: !38, line: 155, baseType: !15, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !138, file: !38, line: 156, baseType: !112, size: 16, offset: 416)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !138, file: !38, line: 157, baseType: !45, size: 8, offset: 432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !38, line: 375, baseType: !449, size: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !38, line: 122, size: 576, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !449, file: !38, line: 123, baseType: !36, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !38, line: 123, baseType: !45, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !38, line: 123, baseType: !45, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !38, line: 123, baseType: !19, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !38, line: 123, baseType: !45, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !449, file: !38, line: 123, baseType: !45, size: 8, offset: 104)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !449, file: !38, line: 124, baseType: !19, size: 16, offset: 112)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !449, file: !38, line: 125, baseType: !136, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !449, file: !38, line: 126, baseType: !64, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !449, file: !38, line: 127, baseType: !435, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !449, file: !38, line: 128, baseType: !36, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !38, line: 129, baseType: !36, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !449, file: !38, line: 130, baseType: !92, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !449, file: !38, line: 131, baseType: !45, size: 8, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !38, line: 376, baseType: !466, size: 448)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !38, line: 134, size: 448, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !479}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !38, line: 135, baseType: !36, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !38, line: 135, baseType: !45, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !38, line: 135, baseType: !45, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !38, line: 135, baseType: !19, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !38, line: 135, baseType: !45, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !466, file: !38, line: 135, baseType: !45, size: 8, offset: 104)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !466, file: !38, line: 136, baseType: !92, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !38, line: 137, baseType: !36, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !38, line: 138, baseType: !36, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !466, file: !38, line: 139, baseType: !478, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !466, file: !38, line: 140, baseType: !15, size: 32, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !38, line: 377, baseType: !481, size: 320)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !38, line: 184, size: 320, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !492}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !38, line: 185, baseType: !36, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !38, line: 185, baseType: !45, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !38, line: 185, baseType: !45, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !38, line: 185, baseType: !19, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !38, line: 185, baseType: !45, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !481, file: !38, line: 185, baseType: !489, size: 128, offset: 128)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 2)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !38, line: 185, baseType: !36, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !38, line: 378, baseType: !494, size: 384)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !38, line: 187, size: 384, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !38, line: 188, baseType: !36, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !38, line: 188, baseType: !45, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !38, line: 188, baseType: !45, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !38, line: 188, baseType: !19, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !38, line: 188, baseType: !45, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !494, file: !38, line: 189, baseType: !489, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !494, file: !38, line: 189, baseType: !36, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !494, file: !38, line: 189, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !506)
!506 = !{!507, !508, !509, !510, !518, !533, !565, !566, !567, !568, !569, !570}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !6, line: 481, baseType: !92, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !6, line: 482, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !6, line: 483, baseType: !504, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !505, file: !6, line: 484, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !513)
!513 = !{!514, !515, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !512, file: !6, line: 498, baseType: !511, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !6, line: 499, baseType: !511, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !512, file: !6, line: 500, baseType: !504, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !512, file: !6, line: 501, baseType: !15, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !505, file: !6, line: 485, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !521)
!521 = !{!522, !527, !528, !529, !530, !531, !532}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !520, file: !6, line: 467, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !523, file: !6, line: 460, baseType: !45, size: 8)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !523, file: !6, line: 461, baseType: !64, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !520, file: !6, line: 468, baseType: !523, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !520, file: !6, line: 469, baseType: !19, size: 16, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !520, file: !6, line: 470, baseType: !45, size: 8, offset: 272)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !520, file: !6, line: 471, baseType: !45, size: 8, offset: 280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !520, file: !6, line: 472, baseType: !45, size: 8, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !520, file: !6, line: 473, baseType: !45, size: 8, offset: 296)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !505, file: !6, line: 486, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !536)
!536 = !{!537, !560, !561, !562, !563, !564}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !535, file: !6, line: 449, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !539)
!539 = !{!540, !541, !554}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !538, file: !6, line: 439, baseType: !92, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !538, file: !6, line: 440, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !544)
!544 = !{!545, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !6, line: 420, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1049, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!15, !388, !15, !136}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !543, file: !6, line: 421, baseType: !136, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !6, line: 422, baseType: !92, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !543, file: !6, line: 423, baseType: !45, size: 8, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !543, file: !6, line: 424, baseType: !45, size: 8, offset: 200)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !538, file: !6, line: 441, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !556, file: !6, line: 430, baseType: !92, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !6, line: 431, baseType: !555, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !535, file: !6, line: 450, baseType: !519, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !6, line: 451, baseType: !45, size: 8, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !535, file: !6, line: 452, baseType: !45, size: 8, offset: 136)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !535, file: !6, line: 453, baseType: !45, size: 8, offset: 144)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !535, file: !6, line: 454, baseType: !45, size: 8, offset: 152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !6, line: 487, baseType: !64, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !505, file: !6, line: 488, baseType: !15, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !505, file: !6, line: 489, baseType: !19, size: 16, offset: 480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !505, file: !6, line: 490, baseType: !19, size: 16, offset: 496)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !6, line: 491, baseType: !45, size: 8, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !505, file: !6, line: 492, baseType: !45, size: 8, offset: 520)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !38, line: 379, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !38, line: 192, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !38, line: 193, baseType: !36, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !38, line: 193, baseType: !45, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !38, line: 193, baseType: !45, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !38, line: 193, baseType: !19, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !38, line: 193, baseType: !45, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !38, line: 193, baseType: !489, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !38, line: 193, baseType: !36, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !572, file: !38, line: 193, baseType: !15, size: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !572, file: !38, line: 194, baseType: !15, size: 32, offset: 352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !38, line: 380, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !38, line: 197, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !38, line: 198, baseType: !36, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !38, line: 198, baseType: !45, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !38, line: 198, baseType: !45, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !38, line: 198, baseType: !19, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !38, line: 198, baseType: !45, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !584, file: !38, line: 200, baseType: !45, size: 8, offset: 104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !584, file: !38, line: 201, baseType: !45, size: 8, offset: 112)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !38, line: 202, baseType: !489, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !38, line: 202, baseType: !36, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !584, file: !38, line: 202, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !38, line: 381, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !38, line: 205, size: 320, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !38, line: 206, baseType: !36, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !38, line: 206, baseType: !45, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !38, line: 206, baseType: !45, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !38, line: 206, baseType: !19, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !38, line: 206, baseType: !45, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !38, line: 206, baseType: !489, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !38, line: 206, baseType: !36, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !38, line: 382, baseType: !608, size: 384)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !38, line: 233, size: 384, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !38, line: 234, baseType: !36, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !38, line: 234, baseType: !19, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !38, line: 234, baseType: !92, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !38, line: 234, baseType: !15, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !38, line: 234, baseType: !15, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !38, line: 234, baseType: !15, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !38, line: 234, baseType: !45, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !38, line: 234, baseType: !36, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !38, line: 383, baseType: !626, size: 576)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !38, line: 237, size: 576, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !38, line: 238, baseType: !36, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !38, line: 238, baseType: !19, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 120)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !38, line: 238, baseType: !92, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !626, file: !38, line: 238, baseType: !15, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !626, file: !38, line: 238, baseType: !15, size: 32, offset: 224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !626, file: !38, line: 238, baseType: !15, size: 32, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 288)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !626, file: !38, line: 238, baseType: !45, size: 8, offset: 296)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !626, file: !38, line: 238, baseType: !19, size: 16, offset: 304)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !626, file: !38, line: 239, baseType: !36, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !626, file: !38, line: 240, baseType: !87, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !626, file: !38, line: 241, baseType: !19, size: 16, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !626, file: !38, line: 242, baseType: !87, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !38, line: 384, baseType: !648, size: 384)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !38, line: 262, size: 384, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !648, file: !38, line: 263, baseType: !36, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !648, file: !38, line: 263, baseType: !19, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 104)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 120)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !38, line: 263, baseType: !92, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !648, file: !38, line: 263, baseType: !15, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !648, file: !38, line: 263, baseType: !15, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !38, line: 263, baseType: !15, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 296)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !648, file: !38, line: 263, baseType: !45, size: 8, offset: 304)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !648, file: !38, line: 264, baseType: !36, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !38, line: 385, baseType: !667, size: 448)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !38, line: 245, size: 448, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !38, line: 246, baseType: !36, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !38, line: 246, baseType: !19, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !38, line: 246, baseType: !92, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !38, line: 246, baseType: !15, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !38, line: 246, baseType: !15, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !38, line: 246, baseType: !15, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !38, line: 246, baseType: !45, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !667, file: !38, line: 246, baseType: !36, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !667, file: !38, line: 247, baseType: !36, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !38, line: 386, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !38, line: 250, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !38, line: 251, baseType: !36, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !38, line: 251, baseType: !19, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !38, line: 251, baseType: !92, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !38, line: 251, baseType: !15, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !38, line: 251, baseType: !15, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !38, line: 251, baseType: !15, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !38, line: 251, baseType: !45, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !686, file: !38, line: 256, baseType: !36, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !686, file: !38, line: 257, baseType: !36, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !38, line: 387, baseType: !705, size: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !38, line: 273, size: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !38, line: 274, baseType: !36, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !38, line: 274, baseType: !45, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !38, line: 274, baseType: !45, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !38, line: 274, baseType: !19, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !38, line: 274, baseType: !45, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !38, line: 274, baseType: !92, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !705, file: !38, line: 275, baseType: !15, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !38, line: 276, baseType: !384, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !38, line: 277, baseType: !136, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !38, line: 278, baseType: !489, size: 128, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !38, line: 388, baseType: !718, size: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !38, line: 281, size: 512, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !733, !734, !735, !741, !742}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !718, file: !38, line: 282, baseType: !36, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !38, line: 282, baseType: !45, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !38, line: 282, baseType: !45, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !718, file: !38, line: 282, baseType: !19, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !38, line: 282, baseType: !45, size: 8, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !718, file: !38, line: 282, baseType: !45, size: 8, offset: 104)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !718, file: !38, line: 283, baseType: !45, size: 8, offset: 112)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !718, file: !38, line: 284, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1084, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!13, !15, !478, !15, !732, !136, !136}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !38, line: 285, baseType: !92, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !718, file: !38, line: 286, baseType: !136, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !718, file: !38, line: 287, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1102, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!13, !388, !15, !136, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !718, file: !38, line: 288, baseType: !36, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !38, line: 289, baseType: !36, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !38, line: 389, baseType: !744, size: 512)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !38, line: 307, size: 512, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !38, line: 308, baseType: !36, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !38, line: 308, baseType: !45, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !38, line: 308, baseType: !45, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !38, line: 308, baseType: !19, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !38, line: 308, baseType: !45, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !744, file: !38, line: 308, baseType: !45, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !744, file: !38, line: 309, baseType: !45, size: 8, offset: 112)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !744, file: !38, line: 310, baseType: !45, size: 8, offset: 120)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !744, file: !38, line: 311, baseType: !136, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !38, line: 312, baseType: !92, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !744, file: !38, line: 313, baseType: !123, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !744, file: !38, line: 314, baseType: !87, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !744, file: !38, line: 315, baseType: !87, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !38, line: 316, baseType: !15, size: 32, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !38, line: 390, baseType: !761, size: 448)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !38, line: 340, size: 448, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !38, line: 341, baseType: !36, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !38, line: 341, baseType: !45, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !38, line: 341, baseType: !45, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !38, line: 341, baseType: !19, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !38, line: 341, baseType: !45, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !761, file: !38, line: 341, baseType: !92, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !761, file: !38, line: 342, baseType: !92, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !761, file: !38, line: 343, baseType: !136, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !761, file: !38, line: 344, baseType: !87, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !761, file: !38, line: 345, baseType: !15, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !38, line: 391, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !38, line: 350, size: 256, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !38, line: 351, baseType: !36, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !38, line: 351, baseType: !45, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !38, line: 351, baseType: !45, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !38, line: 351, baseType: !19, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !38, line: 351, baseType: !45, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !774, file: !38, line: 351, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1055, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !388, !136}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !774, file: !38, line: 352, baseType: !136, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !38, line: 392, baseType: !788, size: 192)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !38, line: 357, size: 192, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !38, line: 358, baseType: !36, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !38, line: 358, baseType: !45, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !38, line: 358, baseType: !45, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !38, line: 358, baseType: !19, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !38, line: 358, baseType: !45, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !788, file: !38, line: 358, baseType: !36, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !38, line: 399, baseType: !93, size: 384)
!797 = !{}
!798 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !33, file: !3, line: 146, type: !36)
!799 = !DILocation(line: 146, column: 63, scope: !33)
!800 = !DILocalVariable(name: "extra_desc", scope: !33, file: !3, line: 148, type: !36)
!801 = !DILocation(line: 148, column: 29, scope: !33)
!802 = !DILocalVariable(name: "node", scope: !33, file: !3, line: 149, type: !92)
!803 = !DILocation(line: 149, column: 30, scope: !33)
!804 = !DILocalVariable(name: "status", scope: !33, file: !3, line: 150, type: !13)
!805 = !DILocation(line: 150, column: 14, scope: !33)
!806 = !DILocation(line: 154, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !33, file: !3, line: 154, column: 6)
!808 = !DILocation(line: 154, column: 16, scope: !807)
!809 = !DILocation(line: 154, column: 23, scope: !807)
!810 = !DILocation(line: 154, column: 29, scope: !807)
!811 = !DILocation(line: 154, column: 6, scope: !33)
!812 = !DILocation(line: 155, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !3, line: 154, column: 50)
!814 = !DILocation(line: 160, column: 44, scope: !33)
!815 = !DILocation(line: 160, column: 15, scope: !33)
!816 = !DILocation(line: 160, column: 13, scope: !33)
!817 = !DILocation(line: 161, column: 9, scope: !33)
!818 = !DILocation(line: 161, column: 19, scope: !33)
!819 = !DILocation(line: 161, column: 32, scope: !33)
!820 = !DILocation(line: 161, column: 7, scope: !33)
!821 = !DILocation(line: 171, column: 37, scope: !33)
!822 = !DILocation(line: 171, column: 43, scope: !33)
!823 = !DILocation(line: 171, column: 49, scope: !33)
!824 = !DILocation(line: 172, column: 9, scope: !33)
!825 = !DILocation(line: 172, column: 21, scope: !33)
!826 = !DILocation(line: 172, column: 27, scope: !33)
!827 = !DILocation(line: 173, column: 9, scope: !33)
!828 = !DILocation(line: 173, column: 21, scope: !33)
!829 = !DILocation(line: 173, column: 27, scope: !33)
!830 = !DILocation(line: 171, column: 11, scope: !33)
!831 = !DILocation(line: 171, column: 9, scope: !33)
!832 = !DILocation(line: 174, column: 2, scope: !33)
!833 = !DILocation(line: 175, column: 1, scope: !33)
!834 = distinct !DISubprogram(name: "acpi_ds_execute_arguments", scope: !3, file: !3, line: 43, type: !835, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !797)
!835 = !DISubroutineType(types: !836)
!836 = !{!13, !92, !92, !15, !87}
!837 = !DILocalVariable(name: "node", arg: 1, scope: !834, file: !3, line: 43, type: !92)
!838 = !DILocation(line: 43, column: 55, scope: !834)
!839 = !DILocalVariable(name: "scope_node", arg: 2, scope: !834, file: !3, line: 44, type: !92)
!840 = !DILocation(line: 44, column: 34, scope: !834)
!841 = !DILocalVariable(name: "aml_length", arg: 3, scope: !834, file: !3, line: 45, type: !15)
!842 = !DILocation(line: 45, column: 10, scope: !834)
!843 = !DILocalVariable(name: "aml_start", arg: 4, scope: !834, file: !3, line: 45, type: !87)
!844 = !DILocation(line: 45, column: 26, scope: !834)
!845 = !DILocalVariable(name: "status", scope: !834, file: !3, line: 47, type: !13)
!846 = !DILocation(line: 47, column: 14, scope: !834)
!847 = !DILocalVariable(name: "op", scope: !834, file: !3, line: 48, type: !193)
!848 = !DILocation(line: 48, column: 27, scope: !834)
!849 = !DILocalVariable(name: "walk_state", scope: !834, file: !3, line: 49, type: !159)
!850 = !DILocation(line: 49, column: 26, scope: !834)
!851 = !DILocation(line: 55, column: 49, scope: !834)
!852 = !DILocation(line: 55, column: 7, scope: !834)
!853 = !DILocation(line: 55, column: 5, scope: !834)
!854 = !DILocation(line: 56, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !834, file: !3, line: 56, column: 6)
!856 = !DILocation(line: 56, column: 6, scope: !834)
!857 = !DILocation(line: 57, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !3, line: 56, column: 11)
!859 = !DILocation(line: 62, column: 20, scope: !834)
!860 = !DILocation(line: 62, column: 2, scope: !834)
!861 = !DILocation(line: 62, column: 6, scope: !834)
!862 = !DILocation(line: 62, column: 13, scope: !834)
!863 = !DILocation(line: 62, column: 18, scope: !834)
!864 = !DILocation(line: 66, column: 15, scope: !834)
!865 = !DILocation(line: 66, column: 13, scope: !834)
!866 = !DILocation(line: 67, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !834, file: !3, line: 67, column: 6)
!868 = !DILocation(line: 67, column: 6, scope: !834)
!869 = !DILocation(line: 68, column: 10, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 67, column: 19)
!871 = !DILocation(line: 69, column: 3, scope: !870)
!872 = !DILocation(line: 72, column: 33, scope: !834)
!873 = !DILocation(line: 72, column: 45, scope: !834)
!874 = !DILocation(line: 72, column: 55, scope: !834)
!875 = !DILocation(line: 73, column: 12, scope: !834)
!876 = !DILocation(line: 72, column: 11, scope: !834)
!877 = !DILocation(line: 72, column: 9, scope: !834)
!878 = !DILocation(line: 74, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !834, file: !3, line: 74, column: 6)
!880 = !DILocation(line: 74, column: 6, scope: !834)
!881 = !DILocation(line: 75, column: 29, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 74, column: 28)
!883 = !DILocation(line: 75, column: 3, scope: !882)
!884 = !DILocation(line: 76, column: 3, scope: !882)
!885 = !DILocation(line: 81, column: 2, scope: !834)
!886 = !DILocation(line: 81, column: 14, scope: !834)
!887 = !DILocation(line: 81, column: 26, scope: !834)
!888 = !DILocation(line: 82, column: 30, scope: !834)
!889 = !DILocation(line: 82, column: 2, scope: !834)
!890 = !DILocation(line: 82, column: 14, scope: !834)
!891 = !DILocation(line: 82, column: 28, scope: !834)
!892 = !DILocation(line: 86, column: 29, scope: !834)
!893 = !DILocation(line: 86, column: 11, scope: !834)
!894 = !DILocation(line: 86, column: 9, scope: !834)
!895 = !DILocation(line: 87, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !834, file: !3, line: 87, column: 6)
!897 = !DILocation(line: 87, column: 6, scope: !834)
!898 = !DILocation(line: 88, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 87, column: 28)
!900 = !DILocation(line: 93, column: 20, scope: !834)
!901 = !DILocation(line: 93, column: 2, scope: !834)
!902 = !DILocation(line: 93, column: 6, scope: !834)
!903 = !DILocation(line: 93, column: 13, scope: !834)
!904 = !DILocation(line: 93, column: 18, scope: !834)
!905 = !DILocation(line: 94, column: 28, scope: !834)
!906 = !DILocation(line: 94, column: 2, scope: !834)
!907 = !DILocation(line: 98, column: 49, scope: !834)
!908 = !DILocation(line: 98, column: 7, scope: !834)
!909 = !DILocation(line: 98, column: 5, scope: !834)
!910 = !DILocation(line: 99, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !834, file: !3, line: 99, column: 6)
!912 = !DILocation(line: 99, column: 6, scope: !834)
!913 = !DILocation(line: 100, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 99, column: 11)
!915 = !DILocation(line: 103, column: 20, scope: !834)
!916 = !DILocation(line: 103, column: 2, scope: !834)
!917 = !DILocation(line: 103, column: 6, scope: !834)
!918 = !DILocation(line: 103, column: 13, scope: !834)
!919 = !DILocation(line: 103, column: 18, scope: !834)
!920 = !DILocation(line: 107, column: 15, scope: !834)
!921 = !DILocation(line: 107, column: 13, scope: !834)
!922 = !DILocation(line: 108, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !834, file: !3, line: 108, column: 6)
!924 = !DILocation(line: 108, column: 6, scope: !834)
!925 = !DILocation(line: 109, column: 10, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 108, column: 19)
!927 = !DILocation(line: 110, column: 3, scope: !926)
!928 = !DILocation(line: 115, column: 33, scope: !834)
!929 = !DILocation(line: 115, column: 45, scope: !834)
!930 = !DILocation(line: 115, column: 55, scope: !834)
!931 = !DILocation(line: 116, column: 12, scope: !834)
!932 = !DILocation(line: 115, column: 11, scope: !834)
!933 = !DILocation(line: 115, column: 9, scope: !834)
!934 = !DILocation(line: 117, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !834, file: !3, line: 117, column: 6)
!936 = !DILocation(line: 117, column: 6, scope: !834)
!937 = !DILocation(line: 118, column: 29, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 117, column: 28)
!939 = !DILocation(line: 118, column: 3, scope: !938)
!940 = !DILocation(line: 119, column: 3, scope: !938)
!941 = !DILocation(line: 124, column: 30, scope: !834)
!942 = !DILocation(line: 124, column: 2, scope: !834)
!943 = !DILocation(line: 124, column: 14, scope: !834)
!944 = !DILocation(line: 124, column: 28, scope: !834)
!945 = !DILocation(line: 125, column: 29, scope: !834)
!946 = !DILocation(line: 125, column: 11, scope: !834)
!947 = !DILocation(line: 125, column: 9, scope: !834)
!948 = !DILocation(line: 125, column: 2, scope: !834)
!949 = !DILabel(scope: !834, name: "cleanup", file: !3, line: 127)
!950 = !DILocation(line: 127, column: 1, scope: !834)
!951 = !DILocation(line: 128, column: 28, scope: !834)
!952 = !DILocation(line: 128, column: 2, scope: !834)
!953 = !DILocation(line: 129, column: 2, scope: !834)
!954 = !DILocation(line: 130, column: 1, scope: !834)
!955 = distinct !DISubprogram(name: "acpi_ds_get_bank_field_arguments", scope: !3, file: !3, line: 191, type: !34, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!956 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !955, file: !3, line: 191, type: !36)
!957 = !DILocation(line: 191, column: 61, scope: !955)
!958 = !DILocalVariable(name: "extra_desc", scope: !955, file: !3, line: 193, type: !36)
!959 = !DILocation(line: 193, column: 29, scope: !955)
!960 = !DILocalVariable(name: "node", scope: !955, file: !3, line: 194, type: !92)
!961 = !DILocation(line: 194, column: 30, scope: !955)
!962 = !DILocalVariable(name: "status", scope: !955, file: !3, line: 195, type: !13)
!963 = !DILocation(line: 195, column: 14, scope: !955)
!964 = !DILocation(line: 199, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !955, file: !3, line: 199, column: 6)
!966 = !DILocation(line: 199, column: 16, scope: !965)
!967 = !DILocation(line: 199, column: 23, scope: !965)
!968 = !DILocation(line: 199, column: 29, scope: !965)
!969 = !DILocation(line: 199, column: 6, scope: !955)
!970 = !DILocation(line: 200, column: 3, scope: !971)
!971 = distinct !DILexicalBlock(scope: !965, file: !3, line: 199, column: 50)
!972 = !DILocation(line: 205, column: 44, scope: !955)
!973 = !DILocation(line: 205, column: 15, scope: !955)
!974 = !DILocation(line: 205, column: 13, scope: !955)
!975 = !DILocation(line: 206, column: 9, scope: !955)
!976 = !DILocation(line: 206, column: 19, scope: !955)
!977 = !DILocation(line: 206, column: 30, scope: !955)
!978 = !DILocation(line: 206, column: 7, scope: !955)
!979 = !DILocation(line: 216, column: 37, scope: !955)
!980 = !DILocation(line: 216, column: 43, scope: !955)
!981 = !DILocation(line: 216, column: 49, scope: !955)
!982 = !DILocation(line: 217, column: 9, scope: !955)
!983 = !DILocation(line: 217, column: 21, scope: !955)
!984 = !DILocation(line: 217, column: 27, scope: !955)
!985 = !DILocation(line: 218, column: 9, scope: !955)
!986 = !DILocation(line: 218, column: 21, scope: !955)
!987 = !DILocation(line: 218, column: 27, scope: !955)
!988 = !DILocation(line: 216, column: 11, scope: !955)
!989 = !DILocation(line: 216, column: 9, scope: !955)
!990 = !DILocation(line: 219, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !955, file: !3, line: 219, column: 6)
!992 = !DILocation(line: 219, column: 6, scope: !955)
!993 = !DILocation(line: 220, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 219, column: 28)
!995 = !DILocation(line: 223, column: 37, scope: !955)
!996 = !DILocation(line: 223, column: 47, scope: !955)
!997 = !DILocation(line: 223, column: 54, scope: !955)
!998 = !DILocation(line: 224, column: 9, scope: !955)
!999 = !DILocation(line: 224, column: 19, scope: !955)
!1000 = !DILocation(line: 224, column: 26, scope: !955)
!1001 = !DILocation(line: 225, column: 9, scope: !955)
!1002 = !DILocation(line: 225, column: 19, scope: !955)
!1003 = !DILocation(line: 225, column: 26, scope: !955)
!1004 = !DILocation(line: 225, column: 34, scope: !955)
!1005 = !DILocation(line: 223, column: 11, scope: !955)
!1006 = !DILocation(line: 223, column: 9, scope: !955)
!1007 = !DILocation(line: 226, column: 2, scope: !955)
!1008 = !DILocation(line: 227, column: 1, scope: !955)
!1009 = distinct !DISubprogram(name: "acpi_ds_get_buffer_arguments", scope: !3, file: !3, line: 242, type: !34, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!1010 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1009, file: !3, line: 242, type: !36)
!1011 = !DILocation(line: 242, column: 69, scope: !1009)
!1012 = !DILocalVariable(name: "node", scope: !1009, file: !3, line: 244, type: !92)
!1013 = !DILocation(line: 244, column: 30, scope: !1009)
!1014 = !DILocalVariable(name: "status", scope: !1009, file: !3, line: 245, type: !13)
!1015 = !DILocation(line: 245, column: 14, scope: !1009)
!1016 = !DILocation(line: 249, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 249, column: 6)
!1018 = !DILocation(line: 249, column: 16, scope: !1017)
!1019 = !DILocation(line: 249, column: 23, scope: !1017)
!1020 = !DILocation(line: 249, column: 29, scope: !1017)
!1021 = !DILocation(line: 249, column: 6, scope: !1009)
!1022 = !DILocation(line: 250, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 249, column: 50)
!1024 = !DILocation(line: 255, column: 9, scope: !1009)
!1025 = !DILocation(line: 255, column: 19, scope: !1009)
!1026 = !DILocation(line: 255, column: 26, scope: !1009)
!1027 = !DILocation(line: 255, column: 7, scope: !1009)
!1028 = !DILocation(line: 256, column: 7, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 256, column: 6)
!1030 = !DILocation(line: 256, column: 6, scope: !1009)
!1031 = !DILocation(line: 257, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 256, column: 13)
!1033 = !DILocation(line: 260, column: 3, scope: !1032)
!1034 = !DILocation(line: 267, column: 37, scope: !1009)
!1035 = !DILocation(line: 267, column: 43, scope: !1009)
!1036 = !DILocation(line: 268, column: 9, scope: !1009)
!1037 = !DILocation(line: 268, column: 19, scope: !1009)
!1038 = !DILocation(line: 268, column: 26, scope: !1009)
!1039 = !DILocation(line: 269, column: 9, scope: !1009)
!1040 = !DILocation(line: 269, column: 19, scope: !1009)
!1041 = !DILocation(line: 269, column: 26, scope: !1009)
!1042 = !DILocation(line: 267, column: 11, scope: !1009)
!1043 = !DILocation(line: 267, column: 9, scope: !1009)
!1044 = !DILocation(line: 270, column: 2, scope: !1009)
!1045 = !DILocation(line: 271, column: 1, scope: !1009)
!1046 = distinct !DISubprogram(name: "acpi_ds_get_package_arguments", scope: !3, file: !3, line: 286, type: !34, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!1047 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1046, file: !3, line: 286, type: !36)
!1048 = !DILocation(line: 286, column: 70, scope: !1046)
!1049 = !DILocalVariable(name: "node", scope: !1046, file: !3, line: 288, type: !92)
!1050 = !DILocation(line: 288, column: 30, scope: !1046)
!1051 = !DILocalVariable(name: "status", scope: !1046, file: !3, line: 289, type: !13)
!1052 = !DILocation(line: 289, column: 14, scope: !1046)
!1053 = !DILocation(line: 293, column: 6, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 293, column: 6)
!1055 = !DILocation(line: 293, column: 16, scope: !1054)
!1056 = !DILocation(line: 293, column: 23, scope: !1054)
!1057 = !DILocation(line: 293, column: 29, scope: !1054)
!1058 = !DILocation(line: 293, column: 6, scope: !1046)
!1059 = !DILocation(line: 294, column: 3, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 293, column: 50)
!1061 = !DILocation(line: 299, column: 9, scope: !1046)
!1062 = !DILocation(line: 299, column: 19, scope: !1046)
!1063 = !DILocation(line: 299, column: 27, scope: !1046)
!1064 = !DILocation(line: 299, column: 7, scope: !1046)
!1065 = !DILocation(line: 300, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 300, column: 6)
!1067 = !DILocation(line: 300, column: 6, scope: !1046)
!1068 = !DILocation(line: 301, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 300, column: 13)
!1070 = !DILocation(line: 304, column: 3, scope: !1069)
!1071 = !DILocation(line: 312, column: 37, scope: !1046)
!1072 = !DILocation(line: 312, column: 43, scope: !1046)
!1073 = !DILocation(line: 313, column: 9, scope: !1046)
!1074 = !DILocation(line: 313, column: 19, scope: !1046)
!1075 = !DILocation(line: 313, column: 27, scope: !1046)
!1076 = !DILocation(line: 314, column: 9, scope: !1046)
!1077 = !DILocation(line: 314, column: 19, scope: !1046)
!1078 = !DILocation(line: 314, column: 27, scope: !1046)
!1079 = !DILocation(line: 312, column: 11, scope: !1046)
!1080 = !DILocation(line: 312, column: 9, scope: !1046)
!1081 = !DILocation(line: 316, column: 2, scope: !1046)
!1082 = !DILocation(line: 317, column: 1, scope: !1046)
!1083 = distinct !DISubprogram(name: "acpi_ds_get_region_arguments", scope: !3, file: !3, line: 332, type: !34, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !797)
!1084 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1083, file: !3, line: 332, type: !36)
!1085 = !DILocation(line: 332, column: 69, scope: !1083)
!1086 = !DILocalVariable(name: "node", scope: !1083, file: !3, line: 334, type: !92)
!1087 = !DILocation(line: 334, column: 30, scope: !1083)
!1088 = !DILocalVariable(name: "status", scope: !1083, file: !3, line: 335, type: !13)
!1089 = !DILocation(line: 335, column: 14, scope: !1083)
!1090 = !DILocalVariable(name: "extra_desc", scope: !1083, file: !3, line: 336, type: !36)
!1091 = !DILocation(line: 336, column: 29, scope: !1083)
!1092 = !DILocation(line: 340, column: 6, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 340, column: 6)
!1094 = !DILocation(line: 340, column: 16, scope: !1093)
!1095 = !DILocation(line: 340, column: 23, scope: !1093)
!1096 = !DILocation(line: 340, column: 29, scope: !1093)
!1097 = !DILocation(line: 340, column: 6, scope: !1083)
!1098 = !DILocation(line: 341, column: 3, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 340, column: 50)
!1100 = !DILocation(line: 344, column: 44, scope: !1083)
!1101 = !DILocation(line: 344, column: 15, scope: !1083)
!1102 = !DILocation(line: 344, column: 13, scope: !1083)
!1103 = !DILocation(line: 345, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 345, column: 6)
!1105 = !DILocation(line: 345, column: 6, scope: !1083)
!1106 = !DILocation(line: 346, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 345, column: 19)
!1108 = !DILocation(line: 351, column: 9, scope: !1083)
!1109 = !DILocation(line: 351, column: 19, scope: !1083)
!1110 = !DILocation(line: 351, column: 26, scope: !1083)
!1111 = !DILocation(line: 351, column: 7, scope: !1083)
!1112 = !DILocation(line: 363, column: 37, scope: !1083)
!1113 = !DILocation(line: 363, column: 43, scope: !1083)
!1114 = !DILocation(line: 363, column: 55, scope: !1083)
!1115 = !DILocation(line: 363, column: 61, scope: !1083)
!1116 = !DILocation(line: 364, column: 9, scope: !1083)
!1117 = !DILocation(line: 364, column: 21, scope: !1083)
!1118 = !DILocation(line: 364, column: 27, scope: !1083)
!1119 = !DILocation(line: 365, column: 9, scope: !1083)
!1120 = !DILocation(line: 365, column: 21, scope: !1083)
!1121 = !DILocation(line: 365, column: 27, scope: !1083)
!1122 = !DILocation(line: 363, column: 11, scope: !1083)
!1123 = !DILocation(line: 363, column: 9, scope: !1083)
!1124 = !DILocation(line: 366, column: 6, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 366, column: 6)
!1126 = !DILocation(line: 366, column: 6, scope: !1083)
!1127 = !DILocation(line: 367, column: 3, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 366, column: 28)
!1129 = !DILocation(line: 370, column: 37, scope: !1083)
!1130 = !DILocation(line: 370, column: 47, scope: !1083)
!1131 = !DILocation(line: 370, column: 54, scope: !1083)
!1132 = !DILocation(line: 371, column: 9, scope: !1083)
!1133 = !DILocation(line: 371, column: 19, scope: !1083)
!1134 = !DILocation(line: 371, column: 26, scope: !1083)
!1135 = !DILocation(line: 372, column: 9, scope: !1083)
!1136 = !DILocation(line: 372, column: 19, scope: !1083)
!1137 = !DILocation(line: 372, column: 26, scope: !1083)
!1138 = !DILocation(line: 372, column: 34, scope: !1083)
!1139 = !DILocation(line: 370, column: 11, scope: !1083)
!1140 = !DILocation(line: 370, column: 9, scope: !1083)
!1141 = !DILocation(line: 373, column: 2, scope: !1083)
!1142 = !DILocation(line: 374, column: 1, scope: !1083)
