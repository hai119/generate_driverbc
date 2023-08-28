; ModuleID = '../bcout/drivers/acpi/acpica/dsmthdat.llvm.bc'
source_filename = "drivers/acpi/acpica/dsmthdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"__A0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"__L0\00", align 1
@_acpi_module_name = internal constant [9 x i8] c"dsmthdat\00", align 1, !dbg !0
@.str.2 = private unnamed_addr constant [35 x i8] c"Local index %u is invalid (max %u)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Arg index %u is invalid (max %u)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Type %u is invalid\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Null object descriptor pointer\00", align 1
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Uninitialized Arg[%u] at node %p\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Not a Arg/Local opcode: 0x%X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_method_data_init(%struct.acpi_walk_state* %walk_state) #0 !dbg !811 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %i = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata i32* %i, metadata !817, metadata !DIExpression()), !dbg !818
  store i32 0, i32* %i, align 4, !dbg !819
  br label %for.cond, !dbg !821

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !822
  %cmp = icmp ult i32 %0, 7, !dbg !824
  br i1 %cmp, label %for.body, label %for.end, !dbg !825

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 4, !dbg !826
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !826
  %arguments = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 26, !dbg !826
  %3 = load i32, i32* %i, align 4, !dbg !826
  %idxprom = zext i32 %3 to i64, !dbg !826
  %arrayidx = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments, i64 0, i64 %idxprom, !dbg !826
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx, i32 0, i32 4, !dbg !826
  %4 = bitcast %union.acpi_name_union* %name to i8*, !dbg !826
  %5 = bitcast i8* %4 to i32*, !dbg !826
  store i32 %1, i32* %5, align 4, !dbg !826
  %6 = load i32, i32* %i, align 4, !dbg !828
  %shl = shl i32 %6, 24, !dbg !829
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !830
  %arguments1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 26, !dbg !831
  %8 = load i32, i32* %i, align 4, !dbg !832
  %idxprom2 = zext i32 %8 to i64, !dbg !830
  %arrayidx3 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments1, i64 0, i64 %idxprom2, !dbg !830
  %name4 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx3, i32 0, i32 4, !dbg !833
  %integer = bitcast %union.acpi_name_union* %name4 to i32*, !dbg !834
  %9 = load i32, i32* %integer, align 4, !dbg !835
  %or = or i32 %9, %shl, !dbg !835
  store i32 %or, i32* %integer, align 4, !dbg !835
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !836
  %arguments5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 26, !dbg !837
  %11 = load i32, i32* %i, align 4, !dbg !838
  %idxprom6 = zext i32 %11 to i64, !dbg !836
  %arrayidx7 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments5, i64 0, i64 %idxprom6, !dbg !836
  %descriptor_type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx7, i32 0, i32 1, !dbg !839
  store i8 15, i8* %descriptor_type, align 8, !dbg !840
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !841
  %arguments8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 26, !dbg !842
  %13 = load i32, i32* %i, align 4, !dbg !843
  %idxprom9 = zext i32 %13 to i64, !dbg !841
  %arrayidx10 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments8, i64 0, i64 %idxprom9, !dbg !841
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx10, i32 0, i32 2, !dbg !844
  store i8 0, i8* %type, align 1, !dbg !845
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !846
  %arguments11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 26, !dbg !847
  %15 = load i32, i32* %i, align 4, !dbg !848
  %idxprom12 = zext i32 %15 to i64, !dbg !846
  %arrayidx13 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments11, i64 0, i64 %idxprom12, !dbg !846
  %flags = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx13, i32 0, i32 3, !dbg !849
  store i16 4, i16* %flags, align 2, !dbg !850
  br label %for.inc, !dbg !851

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !852
  %inc = add i32 %16, 1, !dbg !852
  store i32 %inc, i32* %i, align 4, !dbg !852
  br label %for.cond, !dbg !853, !llvm.loop !854

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !856
  br label %for.cond14, !dbg !858

for.cond14:                                       ; preds = %for.inc39, %for.end
  %17 = load i32, i32* %i, align 4, !dbg !859
  %cmp15 = icmp ult i32 %17, 8, !dbg !861
  br i1 %cmp15, label %for.body16, label %for.end41, !dbg !862

for.body16:                                       ; preds = %for.cond14
  %18 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 4, !dbg !863
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !863
  %local_variables = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 27, !dbg !863
  %20 = load i32, i32* %i, align 4, !dbg !863
  %idxprom17 = zext i32 %20 to i64, !dbg !863
  %arrayidx18 = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables, i64 0, i64 %idxprom17, !dbg !863
  %name19 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx18, i32 0, i32 4, !dbg !863
  %21 = bitcast %union.acpi_name_union* %name19 to i8*, !dbg !863
  %22 = bitcast i8* %21 to i32*, !dbg !863
  store i32 %18, i32* %22, align 4, !dbg !863
  %23 = load i32, i32* %i, align 4, !dbg !865
  %shl20 = shl i32 %23, 24, !dbg !866
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !867
  %local_variables21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 27, !dbg !868
  %25 = load i32, i32* %i, align 4, !dbg !869
  %idxprom22 = zext i32 %25 to i64, !dbg !867
  %arrayidx23 = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables21, i64 0, i64 %idxprom22, !dbg !867
  %name24 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx23, i32 0, i32 4, !dbg !870
  %integer25 = bitcast %union.acpi_name_union* %name24 to i32*, !dbg !871
  %26 = load i32, i32* %integer25, align 4, !dbg !872
  %or26 = or i32 %26, %shl20, !dbg !872
  store i32 %or26, i32* %integer25, align 4, !dbg !872
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !873
  %local_variables27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 27, !dbg !874
  %28 = load i32, i32* %i, align 4, !dbg !875
  %idxprom28 = zext i32 %28 to i64, !dbg !873
  %arrayidx29 = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables27, i64 0, i64 %idxprom28, !dbg !873
  %descriptor_type30 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx29, i32 0, i32 1, !dbg !876
  store i8 15, i8* %descriptor_type30, align 8, !dbg !877
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !878
  %local_variables31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 27, !dbg !879
  %30 = load i32, i32* %i, align 4, !dbg !880
  %idxprom32 = zext i32 %30 to i64, !dbg !878
  %arrayidx33 = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables31, i64 0, i64 %idxprom32, !dbg !878
  %type34 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx33, i32 0, i32 2, !dbg !881
  store i8 0, i8* %type34, align 1, !dbg !882
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !883
  %local_variables35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 27, !dbg !884
  %32 = load i32, i32* %i, align 4, !dbg !885
  %idxprom36 = zext i32 %32 to i64, !dbg !883
  %arrayidx37 = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables35, i64 0, i64 %idxprom36, !dbg !883
  %flags38 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx37, i32 0, i32 3, !dbg !886
  store i16 8, i16* %flags38, align 2, !dbg !887
  br label %for.inc39, !dbg !888

for.inc39:                                        ; preds = %for.body16
  %33 = load i32, i32* %i, align 4, !dbg !889
  %inc40 = add i32 %33, 1, !dbg !889
  store i32 %inc40, i32* %i, align 4, !dbg !889
  br label %for.cond14, !dbg !890, !llvm.loop !891

for.end41:                                        ; preds = %for.cond14
  ret void, !dbg !893
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_method_data_delete_all(%struct.acpi_walk_state* %walk_state) #0 !dbg !894 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %index = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata i32* %index, metadata !897, metadata !DIExpression()), !dbg !898
  store i32 0, i32* %index, align 4, !dbg !899
  br label %for.cond, !dbg !901

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4, !dbg !902
  %cmp = icmp ult i32 %0, 8, !dbg !904
  br i1 %cmp, label %for.body, label %for.end, !dbg !905

for.body:                                         ; preds = %for.cond
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !906
  %local_variables = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 27, !dbg !909
  %2 = load i32, i32* %index, align 4, !dbg !910
  %idxprom = zext i32 %2 to i64, !dbg !906
  %arrayidx = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables, i64 0, i64 %idxprom, !dbg !906
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx, i32 0, i32 0, !dbg !911
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !911
  %tobool = icmp ne %union.acpi_operand_object* %3, null, !dbg !906
  br i1 %tobool, label %if.then, label %if.end, !dbg !912

if.then:                                          ; preds = %for.body
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !913
  %local_variables1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 27, !dbg !915
  %5 = load i32, i32* %index, align 4, !dbg !916
  %idxprom2 = zext i32 %5 to i64, !dbg !913
  %arrayidx3 = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables1, i64 0, i64 %idxprom2, !dbg !913
  call void @acpi_ns_detach_object(%struct.acpi_namespace_node* %arrayidx3) #3, !dbg !917
  br label %if.end, !dbg !918

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !919

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %index, align 4, !dbg !920
  %inc = add i32 %6, 1, !dbg !920
  store i32 %inc, i32* %index, align 4, !dbg !920
  br label %for.cond, !dbg !921, !llvm.loop !922

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %index, align 4, !dbg !924
  br label %for.cond4, !dbg !926

for.cond4:                                        ; preds = %for.inc16, %for.end
  %7 = load i32, i32* %index, align 4, !dbg !927
  %cmp5 = icmp ult i32 %7, 7, !dbg !929
  br i1 %cmp5, label %for.body6, label %for.end18, !dbg !930

for.body6:                                        ; preds = %for.cond4
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !931
  %arguments = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 26, !dbg !934
  %9 = load i32, i32* %index, align 4, !dbg !935
  %idxprom7 = zext i32 %9 to i64, !dbg !931
  %arrayidx8 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments, i64 0, i64 %idxprom7, !dbg !931
  %object9 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %arrayidx8, i32 0, i32 0, !dbg !936
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object9, align 8, !dbg !936
  %tobool10 = icmp ne %union.acpi_operand_object* %10, null, !dbg !931
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !937

if.then11:                                        ; preds = %for.body6
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !938
  %arguments12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 26, !dbg !940
  %12 = load i32, i32* %index, align 4, !dbg !941
  %idxprom13 = zext i32 %12 to i64, !dbg !938
  %arrayidx14 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments12, i64 0, i64 %idxprom13, !dbg !938
  call void @acpi_ns_detach_object(%struct.acpi_namespace_node* %arrayidx14) #3, !dbg !942
  br label %if.end15, !dbg !943

if.end15:                                         ; preds = %if.then11, %for.body6
  br label %for.inc16, !dbg !944

for.inc16:                                        ; preds = %if.end15
  %13 = load i32, i32* %index, align 4, !dbg !945
  %inc17 = add i32 %13, 1, !dbg !945
  store i32 %inc17, i32* %index, align 4, !dbg !945
  br label %for.cond4, !dbg !946, !llvm.loop !947

for.end18:                                        ; preds = %for.cond4
  ret void, !dbg !949
}

; Function Attrs: noredzone
declare dso_local void @acpi_ns_detach_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_method_data_init_args(%union.acpi_operand_object** %params, i32 %max_param_count, %struct.acpi_walk_state* %walk_state) #0 !dbg !950 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %union.acpi_operand_object**, align 8
  %max_param_count.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  store %union.acpi_operand_object** %params, %union.acpi_operand_object*** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %params.addr, metadata !953, metadata !DIExpression()), !dbg !954
  store i32 %max_param_count, i32* %max_param_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_param_count.addr, metadata !955, metadata !DIExpression()), !dbg !956
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !957, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %status, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.declare(metadata i32* %index, metadata !961, metadata !DIExpression()), !dbg !962
  store i32 0, i32* %index, align 4, !dbg !962
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %params.addr, align 8, !dbg !963
  %tobool = icmp ne %union.acpi_operand_object** %0, null, !dbg !963
  br i1 %tobool, label %if.end, label %if.then, !dbg !965

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !966
  br label %return, !dbg !966

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !968

while.cond:                                       ; preds = %if.end7, %if.end
  %1 = load i32, i32* %index, align 4, !dbg !969
  %cmp = icmp ult i32 %1, 7, !dbg !970
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !971

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32, i32* %index, align 4, !dbg !972
  %3 = load i32, i32* %max_param_count.addr, align 4, !dbg !973
  %cmp1 = icmp ult i32 %2, %3, !dbg !974
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !975

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %params.addr, align 8, !dbg !976
  %5 = load i32, i32* %index, align 4, !dbg !977
  %idxprom = zext i32 %5 to i64, !dbg !976
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %4, i64 %idxprom, !dbg !976
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !976
  %tobool2 = icmp ne %union.acpi_operand_object* %6, null, !dbg !975
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool2, %land.rhs ], !dbg !978
  br i1 %7, label %while.body, label %while.end, !dbg !968

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %index, align 4, !dbg !979
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %params.addr, align 8, !dbg !981
  %10 = load i32, i32* %index, align 4, !dbg !982
  %idxprom3 = zext i32 %10 to i64, !dbg !981
  %arrayidx4 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 %idxprom3, !dbg !981
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx4, align 8, !dbg !981
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %call = call i32 @acpi_ds_method_data_set_value(i8 zeroext 1, i32 %8, %union.acpi_operand_object* %11, %struct.acpi_walk_state* %12) #3, !dbg !984
  store i32 %call, i32* %status, align 4, !dbg !985
  %13 = load i32, i32* %status, align 4, !dbg !986
  %tobool5 = icmp ne i32 %13, 0, !dbg !986
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !988

if.then6:                                         ; preds = %while.body
  %14 = load i32, i32* %status, align 4, !dbg !989
  store i32 %14, i32* %retval, align 4, !dbg !989
  br label %return, !dbg !989

if.end7:                                          ; preds = %while.body
  %15 = load i32, i32* %index, align 4, !dbg !991
  %inc = add i32 %15, 1, !dbg !991
  store i32 %inc, i32* %index, align 4, !dbg !991
  br label %while.cond, !dbg !968, !llvm.loop !992

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4, !dbg !994
  br label %return, !dbg !994

return:                                           ; preds = %while.end, %if.then6, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !995
  ret i32 %16, !dbg !995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_method_data_set_value(i8 zeroext %type, i32 %index, %union.acpi_operand_object* %object, %struct.acpi_walk_state* %walk_state) #0 !dbg !996 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !999, metadata !DIExpression()), !dbg !1000
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1009, metadata !DIExpression()), !dbg !1010
  %0 = load i8, i8* %type.addr, align 1, !dbg !1011
  %1 = load i32, i32* %index.addr, align 4, !dbg !1012
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1013
  %call = call i32 @acpi_ds_method_data_get_node(i8 zeroext %0, i32 %1, %struct.acpi_walk_state* %2, %struct.acpi_namespace_node** %node) #3, !dbg !1014
  store i32 %call, i32* %status, align 4, !dbg !1015
  %3 = load i32, i32* %status, align 4, !dbg !1016
  %tobool = icmp ne i32 %3, 0, !dbg !1016
  br i1 %tobool, label %if.then, label %if.end, !dbg !1018

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4, !dbg !1019
  store i32 %4, i32* %retval, align 4, !dbg !1019
  br label %return, !dbg !1019

if.end:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1021
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %5) #3, !dbg !1022
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !1023
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1024
  %object1 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 0, !dbg !1025
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %object1, align 8, !dbg !1026
  %8 = load i32, i32* %status, align 4, !dbg !1027
  store i32 %8, i32* %retval, align 4, !dbg !1027
  br label %return, !dbg !1027

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1028
  ret i32 %9, !dbg !1028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_method_data_get_node(i8 zeroext %type, i32 %index, %struct.acpi_walk_state* %walk_state, %struct.acpi_namespace_node** %node) #0 !dbg !1029 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %node.addr = alloca %struct.acpi_namespace_node**, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1035, metadata !DIExpression()), !dbg !1036
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1037, metadata !DIExpression()), !dbg !1038
  store %struct.acpi_namespace_node** %node, %struct.acpi_namespace_node*** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node*** %node.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load i8, i8* %type.addr, align 1, !dbg !1041
  %conv = zext i8 %0 to i32, !dbg !1041
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !1042

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4, !dbg !1043
  %cmp = icmp ugt i32 %1, 7, !dbg !1046
  br i1 %cmp, label %if.then, label %if.end, !dbg !1047

if.then:                                          ; preds = %sw.bb
  %2 = load i32, i32* %index.addr, align 4, !dbg !1048
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 227, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %2, i32 7) #3, !dbg !1048
  store i32 12312, i32* %retval, align 4, !dbg !1050
  br label %return, !dbg !1050

if.end:                                           ; preds = %sw.bb
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1051
  %local_variables = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 27, !dbg !1052
  %4 = load i32, i32* %index.addr, align 4, !dbg !1053
  %idxprom = zext i32 %4 to i64, !dbg !1051
  %arrayidx = getelementptr [8 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node]* %local_variables, i64 0, i64 %idxprom, !dbg !1051
  %5 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %node.addr, align 8, !dbg !1054
  store %struct.acpi_namespace_node* %arrayidx, %struct.acpi_namespace_node** %5, align 8, !dbg !1055
  br label %sw.epilog, !dbg !1056

sw.bb2:                                           ; preds = %entry
  %6 = load i32, i32* %index.addr, align 4, !dbg !1057
  %cmp3 = icmp ugt i32 %6, 6, !dbg !1059
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1060

if.then5:                                         ; preds = %sw.bb2
  %7 = load i32, i32* %index.addr, align 4, !dbg !1061
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 241, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %7, i32 6) #3, !dbg !1061
  store i32 12312, i32* %retval, align 4, !dbg !1063
  br label %return, !dbg !1063

if.end6:                                          ; preds = %sw.bb2
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1064
  %arguments = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 26, !dbg !1065
  %9 = load i32, i32* %index.addr, align 4, !dbg !1066
  %idxprom7 = zext i32 %9 to i64, !dbg !1064
  %arrayidx8 = getelementptr [7 x %struct.acpi_namespace_node], [7 x %struct.acpi_namespace_node]* %arguments, i64 0, i64 %idxprom7, !dbg !1064
  %10 = load %struct.acpi_namespace_node**, %struct.acpi_namespace_node*** %node.addr, align 8, !dbg !1067
  store %struct.acpi_namespace_node* %arrayidx8, %struct.acpi_namespace_node** %10, align 8, !dbg !1068
  br label %sw.epilog, !dbg !1069

sw.default:                                       ; preds = %entry
  %11 = load i8, i8* %type.addr, align 1, !dbg !1070
  %conv9 = zext i8 %11 to i32, !dbg !1070
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %conv9) #3, !dbg !1070
  store i32 8, i32* %retval, align 4, !dbg !1071
  br label %return, !dbg !1071

sw.epilog:                                        ; preds = %if.end6, %if.end
  store i32 0, i32* %retval, align 4, !dbg !1072
  br label %return, !dbg !1072

return:                                           ; preds = %sw.epilog, %sw.default, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !1073
  ret i32 %12, !dbg !1073
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_method_data_get_value(i8 zeroext %type, i32 %index, %struct.acpi_walk_state* %walk_state, %union.acpi_operand_object** %dest_desc) #0 !dbg !1074 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %dest_desc.addr = alloca %union.acpi_operand_object**, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %object = alloca %union.acpi_operand_object*, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1079, metadata !DIExpression()), !dbg !1080
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  store %union.acpi_operand_object** %dest_desc, %union.acpi_operand_object*** %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %dest_desc.addr, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1085, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1087, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object, metadata !1089, metadata !DIExpression()), !dbg !1090
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1091
  %tobool = icmp ne %union.acpi_operand_object** %0, null, !dbg !1091
  br i1 %tobool, label %if.end, label %if.then, !dbg !1093

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 347, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !1094
  store i32 4097, i32* %retval, align 4, !dbg !1096
  br label %return, !dbg !1096

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %type.addr, align 1, !dbg !1097
  %2 = load i32, i32* %index.addr, align 4, !dbg !1098
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1099
  %call = call i32 @acpi_ds_method_data_get_node(i8 zeroext %1, i32 %2, %struct.acpi_walk_state* %3, %struct.acpi_namespace_node** %node) #3, !dbg !1100
  store i32 %call, i32* %status, align 4, !dbg !1101
  %4 = load i32, i32* %status, align 4, !dbg !1102
  %tobool1 = icmp ne i32 %4, 0, !dbg !1102
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1104

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !1105
  store i32 %5, i32* %retval, align 4, !dbg !1105
  br label %return, !dbg !1105

if.end3:                                          ; preds = %if.end
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1107
  %object4 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 0, !dbg !1108
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object4, align 8, !dbg !1108
  store %union.acpi_operand_object* %7, %union.acpi_operand_object** %object, align 8, !dbg !1109
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1110
  %tobool5 = icmp ne %union.acpi_operand_object* %8, null, !dbg !1110
  br i1 %tobool5, label %if.end17, label %if.then6, !dbg !1112

if.then6:                                         ; preds = %if.end3
  %9 = load i8, i8* @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1113
  %tobool7 = icmp ne i8 %9, 0, !dbg !1113
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1116

if.then8:                                         ; preds = %if.then6
  %call9 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 0) #3, !dbg !1117
  store %union.acpi_operand_object* %call9, %union.acpi_operand_object** %object, align 8, !dbg !1119
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1120
  %tobool10 = icmp ne %union.acpi_operand_object* %10, null, !dbg !1120
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1122

if.then11:                                        ; preds = %if.then8
  store i32 4, i32* %retval, align 4, !dbg !1123
  br label %return, !dbg !1123

if.end12:                                         ; preds = %if.then8
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1125
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1126
  %object13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 0, !dbg !1127
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %object13, align 8, !dbg !1128
  br label %if.end16, !dbg !1129

if.else:                                          ; preds = %if.then6
  %13 = load i8, i8* %type.addr, align 1, !dbg !1130
  %conv = zext i8 %13 to i32, !dbg !1130
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ], !dbg !1131

sw.bb:                                            ; preds = %if.else
  %14 = load i32, i32* %index.addr, align 4, !dbg !1132
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1132
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 390, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %14, %struct.acpi_namespace_node* %15) #3, !dbg !1132
  store i32 12294, i32* %retval, align 4, !dbg !1134
  br label %return, !dbg !1134

sw.bb14:                                          ; preds = %if.else
  store i32 12293, i32* %retval, align 4, !dbg !1135
  br label %return, !dbg !1135

sw.default:                                       ; preds = %if.else
  %16 = load i8, i8* %type.addr, align 1, !dbg !1136
  %conv15 = zext i8 %16 to i32, !dbg !1136
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 405, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %conv15) #3, !dbg !1136
  store i32 12303, i32* %retval, align 4, !dbg !1137
  br label %return, !dbg !1137

if.end16:                                         ; preds = %if.end12
  br label %if.end17, !dbg !1138

if.end17:                                         ; preds = %if.end16, %if.end3
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1139
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %dest_desc.addr, align 8, !dbg !1140
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %18, align 8, !dbg !1141
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1142
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %19) #3, !dbg !1143
  store i32 0, i32* %retval, align 4, !dbg !1144
  br label %return, !dbg !1144

return:                                           ; preds = %if.end17, %sw.default, %sw.bb14, %sw.bb, %if.then11, %if.then2, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !1145
  ret i32 %20, !dbg !1145
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_store_object_to_local(i8 zeroext %type, i32 %index, %union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1146 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %current_obj_desc = alloca %union.acpi_operand_object*, align 8
  %new_obj_desc = alloca %union.acpi_operand_object*, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !1147, metadata !DIExpression()), !dbg !1148
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1151, metadata !DIExpression()), !dbg !1152
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1153, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1157, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %current_obj_desc, metadata !1159, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_obj_desc, metadata !1161, metadata !DIExpression()), !dbg !1162
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1163
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1163
  br i1 %tobool, label %if.end, label %if.then, !dbg !1165

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %type.addr, align 1, !dbg !1168
  %2 = load i32, i32* %index.addr, align 4, !dbg !1169
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1170
  %call = call i32 @acpi_ds_method_data_get_node(i8 zeroext %1, i32 %2, %struct.acpi_walk_state* %3, %struct.acpi_namespace_node** %node) #3, !dbg !1171
  store i32 %call, i32* %status, align 4, !dbg !1172
  %4 = load i32, i32* %status, align 4, !dbg !1173
  %tobool1 = icmp ne i32 %4, 0, !dbg !1173
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1175

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %status, align 4, !dbg !1176
  store i32 %5, i32* %retval, align 4, !dbg !1176
  br label %return, !dbg !1176

if.end3:                                          ; preds = %if.end
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1178
  %call4 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %6) #3, !dbg !1179
  store %union.acpi_operand_object* %call4, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1180
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1181
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1183
  %cmp = icmp eq %union.acpi_operand_object* %7, %8, !dbg !1184
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1185

if.then5:                                         ; preds = %if.end3
  %9 = load i32, i32* %status, align 4, !dbg !1186
  store i32 %9, i32* %retval, align 4, !dbg !1186
  br label %return, !dbg !1186

if.end6:                                          ; preds = %if.end3
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1188
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1189
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1190
  %common = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_common*, !dbg !1192
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 3, !dbg !1193
  %12 = load i16, i16* %reference_count, align 2, !dbg !1193
  %conv = zext i16 %12 to i32, !dbg !1190
  %cmp7 = icmp sgt i32 %conv, 1, !dbg !1194
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !1195

if.then9:                                         ; preds = %if.end6
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1196
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1198
  %call10 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %13, %union.acpi_operand_object** %new_obj_desc, %struct.acpi_walk_state* %14) #3, !dbg !1199
  store i32 %call10, i32* %status, align 4, !dbg !1200
  %15 = load i32, i32* %status, align 4, !dbg !1201
  %tobool11 = icmp ne i32 %15, 0, !dbg !1201
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1203

if.then12:                                        ; preds = %if.then9
  %16 = load i32, i32* %status, align 4, !dbg !1204
  store i32 %16, i32* %retval, align 4, !dbg !1204
  br label %return, !dbg !1204

if.end13:                                         ; preds = %if.then9
  br label %if.end14, !dbg !1206

if.end14:                                         ; preds = %if.end13, %if.end6
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1207
  %tobool15 = icmp ne %union.acpi_operand_object* %17, null, !dbg !1207
  br i1 %tobool15, label %if.then16, label %if.end43, !dbg !1209

if.then16:                                        ; preds = %if.end14
  %18 = load i8, i8* %type.addr, align 1, !dbg !1210
  %conv17 = zext i8 %18 to i32, !dbg !1210
  %cmp18 = icmp eq i32 %conv17, 1, !dbg !1213
  br i1 %cmp18, label %if.then20, label %if.end42, !dbg !1214

if.then20:                                        ; preds = %if.then16
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1215
  %20 = bitcast %union.acpi_operand_object* %19 to i8*, !dbg !1215
  %21 = bitcast i8* %20 to %union.acpi_descriptor*, !dbg !1215
  %common21 = bitcast %union.acpi_descriptor* %21 to %struct.acpi_common_descriptor*, !dbg !1215
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common21, i32 0, i32 1, !dbg !1215
  %22 = load i8, i8* %descriptor_type, align 8, !dbg !1215
  %conv22 = zext i8 %22 to i32, !dbg !1215
  %cmp23 = icmp eq i32 %conv22, 14, !dbg !1218
  br i1 %cmp23, label %land.lhs.true, label %if.end41, !dbg !1219

land.lhs.true:                                    ; preds = %if.then20
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1220
  %common25 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_common*, !dbg !1221
  %type26 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common25, i32 0, i32 2, !dbg !1222
  %24 = load i8, i8* %type26, align 1, !dbg !1222
  %conv27 = zext i8 %24 to i32, !dbg !1220
  %cmp28 = icmp eq i32 %conv27, 20, !dbg !1223
  br i1 %cmp28, label %land.lhs.true30, label %if.end41, !dbg !1224

land.lhs.true30:                                  ; preds = %land.lhs.true
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1225
  %reference = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_reference*, !dbg !1226
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !1227
  %26 = load i8, i8* %class, align 1, !dbg !1227
  %conv31 = zext i8 %26 to i32, !dbg !1225
  %cmp32 = icmp eq i32 %conv31, 2, !dbg !1228
  br i1 %cmp32, label %if.then34, label %if.end41, !dbg !1229

if.then34:                                        ; preds = %land.lhs.true30
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1230
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %current_obj_desc, align 8, !dbg !1232
  %reference35 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_reference*, !dbg !1233
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference35, i32 0, i32 8, !dbg !1234
  %29 = load i8*, i8** %object, align 8, !dbg !1234
  %30 = bitcast i8* %29 to %struct.acpi_namespace_node*, !dbg !1232
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1235
  %call36 = call i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %27, %struct.acpi_namespace_node* %30, %struct.acpi_walk_state* %31, i8 zeroext 0) #3, !dbg !1236
  store i32 %call36, i32* %status, align 4, !dbg !1237
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1238
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1240
  %cmp37 = icmp ne %union.acpi_operand_object* %32, %33, !dbg !1241
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1242

if.then39:                                        ; preds = %if.then34
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1243
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %34) #3, !dbg !1245
  br label %if.end40, !dbg !1246

if.end40:                                         ; preds = %if.then39, %if.then34
  %35 = load i32, i32* %status, align 4, !dbg !1247
  store i32 %35, i32* %retval, align 4, !dbg !1247
  br label %return, !dbg !1247

if.end41:                                         ; preds = %land.lhs.true30, %land.lhs.true, %if.then20
  br label %if.end42, !dbg !1248

if.end42:                                         ; preds = %if.end41, %if.then16
  %36 = load i8, i8* %type.addr, align 1, !dbg !1249
  %37 = load i32, i32* %index.addr, align 4, !dbg !1250
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1251
  call void @acpi_ds_method_data_delete_value(i8 zeroext %36, i32 %37, %struct.acpi_walk_state* %38) #3, !dbg !1252
  br label %if.end43, !dbg !1253

if.end43:                                         ; preds = %if.end42, %if.end14
  %39 = load i8, i8* %type.addr, align 1, !dbg !1254
  %40 = load i32, i32* %index.addr, align 4, !dbg !1255
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1256
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1257
  %call44 = call i32 @acpi_ds_method_data_set_value(i8 zeroext %39, i32 %40, %union.acpi_operand_object* %41, %struct.acpi_walk_state* %42) #3, !dbg !1258
  store i32 %call44, i32* %status, align 4, !dbg !1259
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1260
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1262
  %cmp45 = icmp ne %union.acpi_operand_object* %43, %44, !dbg !1263
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !1264

if.then47:                                        ; preds = %if.end43
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_obj_desc, align 8, !dbg !1265
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %45) #3, !dbg !1267
  br label %if.end48, !dbg !1268

if.end48:                                         ; preds = %if.then47, %if.end43
  %46 = load i32, i32* %status, align 4, !dbg !1269
  store i32 %46, i32* %retval, align 4, !dbg !1269
  br label %return, !dbg !1269

return:                                           ; preds = %if.end48, %if.end40, %if.then12, %if.then5, %if.then2, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !1270
  ret i32 %47, !dbg !1270
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object*, %struct.acpi_namespace_node*, %struct.acpi_walk_state*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ds_method_data_delete_value(i8 zeroext %type, i32 %index, %struct.acpi_walk_state* %walk_state) #0 !dbg !1271 {
entry:
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %object = alloca %union.acpi_operand_object*, align 8
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1276, metadata !DIExpression()), !dbg !1277
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1280, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1282, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object, metadata !1284, metadata !DIExpression()), !dbg !1285
  %0 = load i8, i8* %type.addr, align 1, !dbg !1286
  %1 = load i32, i32* %index.addr, align 4, !dbg !1287
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1288
  %call = call i32 @acpi_ds_method_data_get_node(i8 zeroext %0, i32 %1, %struct.acpi_walk_state* %2, %struct.acpi_namespace_node** %node) #3, !dbg !1289
  store i32 %call, i32* %status, align 4, !dbg !1290
  %3 = load i32, i32* %status, align 4, !dbg !1291
  %tobool = icmp ne i32 %3, 0, !dbg !1291
  br i1 %tobool, label %if.then, label %if.end, !dbg !1293

if.then:                                          ; preds = %entry
  br label %return, !dbg !1294

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1296
  %call1 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %4) #3, !dbg !1297
  store %union.acpi_operand_object* %call1, %union.acpi_operand_object** %object, align 8, !dbg !1298
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1299
  %object2 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 0, !dbg !1300
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %object2, align 8, !dbg !1301
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1302
  %tobool3 = icmp ne %union.acpi_operand_object* %6, null, !dbg !1304
  br i1 %tobool3, label %land.lhs.true, label %if.end6, !dbg !1305

land.lhs.true:                                    ; preds = %if.end
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1306
  %8 = bitcast %union.acpi_operand_object* %7 to i8*, !dbg !1306
  %9 = bitcast i8* %8 to %union.acpi_descriptor*, !dbg !1306
  %common = bitcast %union.acpi_descriptor* %9 to %struct.acpi_common_descriptor*, !dbg !1306
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !1306
  %10 = load i8, i8* %descriptor_type, align 8, !dbg !1306
  %conv = zext i8 %10 to i32, !dbg !1306
  %cmp = icmp eq i32 %conv, 14, !dbg !1307
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1308

if.then5:                                         ; preds = %land.lhs.true
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1309
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %11) #3, !dbg !1311
  br label %if.end6, !dbg !1312

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  br label %return, !dbg !1313

return:                                           ; preds = %if.end6, %if.then
  ret void, !dbg !1314
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!806, !807, !808, !809}
!llvm.ident = !{!810}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !804, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !803, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsmthdat.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !23, !24, !26, !29}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !7)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !25, line: 421, baseType: !19)
!25 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !28)
!28 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !31)
!31 = !{!32, !40, !801, !802}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !30, file: !6, line: 433, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !33, file: !6, line: 428, baseType: !23, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !6, line: 429, baseType: !37, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !39)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !30, file: !6, line: 434, baseType: !41, size: 576)
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !42)
!42 = !{!43, !55, !68, !80, !116, !130, !139, !452, !469, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !747, !764, !777, !791, !800}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !41, file: !6, line: 368, baseType: !44, size: 128)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !45)
!45 = !{!46, !48, !49, !50, !54}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !44, file: !6, line: 74, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !6, line: 74, baseType: !37, size: 8, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !6, line: 74, baseType: !37, size: 8, offset: 72)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !44, file: !6, line: 74, baseType: !51, size: 16, offset: 80)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 19, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !6, line: 74, baseType: !37, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !41, file: !6, line: 369, baseType: !56, size: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !67}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !6, line: 77, baseType: !47, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !6, line: 77, baseType: !37, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !6, line: 77, baseType: !37, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !6, line: 77, baseType: !51, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !6, line: 77, baseType: !37, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !56, file: !6, line: 77, baseType: !64, size: 24, offset: 104)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !6, line: 78, baseType: !26, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !41, file: !6, line: 370, baseType: !69, size: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !79}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !6, line: 94, baseType: !47, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !6, line: 94, baseType: !37, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !6, line: 94, baseType: !37, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !6, line: 94, baseType: !51, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !6, line: 94, baseType: !37, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !6, line: 94, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !6, line: 94, baseType: !19, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !41, file: !6, line: 371, baseType: !81, size: 384)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !90, !91, !92, !93}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !6, line: 98, baseType: !47, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !6, line: 98, baseType: !37, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !6, line: 98, baseType: !37, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !6, line: 98, baseType: !51, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !6, line: 98, baseType: !37, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !81, file: !6, line: 98, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !81, file: !6, line: 98, baseType: !19, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !81, file: !6, line: 99, baseType: !19, size: 32, offset: 224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !81, file: !6, line: 100, baseType: !89, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !6, line: 101, baseType: !94, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !96, line: 133, size: 384, elements: !97)
!96 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99, !100, !101, !102, !111, !112, !113, !114}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !95, file: !96, line: 134, baseType: !47, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !96, line: 135, baseType: !37, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !96, line: 136, baseType: !37, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !96, line: 137, baseType: !51, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !96, line: 138, baseType: !103, size: 32, offset: 96)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !104, line: 327, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !103, file: !104, line: 328, baseType: !19, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !103, file: !104, line: 329, baseType: !108, size: 32)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !95, file: !96, line: 139, baseType: !94, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !95, file: !96, line: 140, baseType: !94, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !95, file: !96, line: 141, baseType: !94, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !95, file: !96, line: 142, baseType: !115, size: 16, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !25, line: 445, baseType: !51)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !41, file: !6, line: 372, baseType: !117, size: 384)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !127, !128, !129}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !6, line: 105, baseType: !47, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !6, line: 105, baseType: !37, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !6, line: 105, baseType: !37, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !6, line: 105, baseType: !51, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !6, line: 105, baseType: !37, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !117, file: !6, line: 105, baseType: !94, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !117, file: !6, line: 106, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !117, file: !6, line: 107, baseType: !89, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !117, file: !6, line: 108, baseType: !19, size: 32, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !117, file: !6, line: 109, baseType: !19, size: 32, offset: 352)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !41, file: !6, line: 373, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !131, file: !6, line: 119, baseType: !47, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !131, file: !6, line: 119, baseType: !37, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !6, line: 119, baseType: !37, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !131, file: !6, line: 119, baseType: !51, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !6, line: 119, baseType: !37, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !131, file: !6, line: 119, baseType: !23, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !41, file: !6, line: 374, baseType: !140, size: 448)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !449, !450, !451}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !6, line: 144, baseType: !47, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !6, line: 144, baseType: !37, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !6, line: 144, baseType: !37, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !6, line: 144, baseType: !51, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !6, line: 144, baseType: !37, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !140, file: !6, line: 144, baseType: !37, size: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !140, file: !6, line: 145, baseType: !37, size: 8, offset: 112)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !140, file: !6, line: 146, baseType: !37, size: 8, offset: 120)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !140, file: !6, line: 147, baseType: !47, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !6, line: 148, baseType: !47, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !6, line: 149, baseType: !89, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !140, file: !6, line: 153, baseType: !154, size: 64, offset: 320)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !6, line: 150, size: 64, elements: !155)
!155 = !{!156, !448}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !154, file: !6, line: 151, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !96, line: 248, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!24, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !163, line: 37, size: 9024, elements: !164)
!163 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !394, !395, !396, !397, !398, !402, !404, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !431, !432, !433, !434, !435, !436, !437, !438, !440, !446}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !163, line: 38, baseType: !161, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !163, line: 39, baseType: !37, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !162, file: !163, line: 40, baseType: !37, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !162, file: !163, line: 41, baseType: !51, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !162, file: !163, line: 42, baseType: !37, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !162, file: !163, line: 43, baseType: !37, size: 8, offset: 104)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !162, file: !163, line: 44, baseType: !37, size: 8, offset: 112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !162, file: !163, line: 45, baseType: !115, size: 16, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !162, file: !163, line: 46, baseType: !37, size: 8, offset: 144)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !162, file: !163, line: 47, baseType: !37, size: 8, offset: 152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !162, file: !163, line: 48, baseType: !37, size: 8, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !162, file: !163, line: 49, baseType: !37, size: 8, offset: 168)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !162, file: !163, line: 50, baseType: !37, size: 8, offset: 176)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !162, file: !163, line: 51, baseType: !37, size: 8, offset: 184)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !162, file: !163, line: 52, baseType: !37, size: 8, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !162, file: !163, line: 53, baseType: !37, size: 8, offset: 200)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !163, line: 54, baseType: !89, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !162, file: !163, line: 55, baseType: !19, size: 32, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !162, file: !163, line: 56, baseType: !19, size: 32, offset: 352)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !162, file: !163, line: 57, baseType: !19, size: 32, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !162, file: !163, line: 58, baseType: !19, size: 32, offset: 416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !162, file: !163, line: 60, baseType: !187, size: 640, offset: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !96, line: 893, size: 640, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !275, !276, !392, !393}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !187, file: !96, line: 894, baseType: !89, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !187, file: !96, line: 895, baseType: !89, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !187, file: !96, line: 896, baseType: !89, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !187, file: !96, line: 897, baseType: !89, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !187, file: !96, line: 898, baseType: !89, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !187, file: !96, line: 899, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !96, line: 875, size: 1600, elements: !197)
!197 = !{!198, !218, !234}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !196, file: !96, line: 876, baseType: !199, size: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !96, line: 828, size: 448, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !217}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !96, line: 829, baseType: !195, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !96, line: 829, baseType: !37, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !96, line: 829, baseType: !37, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !96, line: 829, baseType: !51, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !96, line: 829, baseType: !89, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !96, line: 829, baseType: !195, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !96, line: 829, baseType: !94, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !96, line: 829, baseType: !209, size: 64, offset: 320)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !96, line: 716, size: 64, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !209, file: !96, line: 717, baseType: !26, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !96, line: 718, baseType: !19, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !209, file: !96, line: 719, baseType: !77, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !209, file: !96, line: 720, baseType: !89, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !96, line: 721, baseType: !77, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !209, file: !96, line: 722, baseType: !195, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !96, line: 829, baseType: !37, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !196, file: !96, line: 877, baseType: !219, size: 640)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !96, line: 835, size: 640, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !96, line: 836, baseType: !195, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !96, line: 836, baseType: !37, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !96, line: 836, baseType: !37, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !96, line: 836, baseType: !51, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !96, line: 836, baseType: !89, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !96, line: 836, baseType: !195, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !96, line: 836, baseType: !94, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !96, line: 836, baseType: !209, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !96, line: 836, baseType: !37, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !219, file: !96, line: 836, baseType: !77, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !219, file: !96, line: 837, baseType: !89, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !219, file: !96, line: 838, baseType: !19, size: 32, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !96, line: 839, baseType: !19, size: 32, offset: 608)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !196, file: !96, line: 878, baseType: !235, size: 1600)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !96, line: 846, size: 1600, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !96, line: 847, baseType: !195, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !96, line: 847, baseType: !37, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !96, line: 847, baseType: !37, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !235, file: !96, line: 847, baseType: !51, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !96, line: 847, baseType: !89, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !96, line: 847, baseType: !195, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !96, line: 847, baseType: !94, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !235, file: !96, line: 847, baseType: !209, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !235, file: !96, line: 847, baseType: !37, size: 8, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !235, file: !96, line: 847, baseType: !195, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !235, file: !96, line: 848, baseType: !195, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !235, file: !96, line: 849, baseType: !77, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !235, file: !96, line: 850, baseType: !37, size: 8, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !235, file: !96, line: 851, baseType: !77, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !235, file: !96, line: 852, baseType: !77, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !235, file: !96, line: 853, baseType: !77, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !235, file: !96, line: 854, baseType: !108, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !235, file: !96, line: 855, baseType: !19, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !235, file: !96, line: 856, baseType: !19, size: 32, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !235, file: !96, line: 857, baseType: !19, size: 32, offset: 992)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !235, file: !96, line: 858, baseType: !19, size: 32, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !235, file: !96, line: 859, baseType: !19, size: 32, offset: 1056)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !235, file: !96, line: 860, baseType: !19, size: 32, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !235, file: !96, line: 861, baseType: !19, size: 32, offset: 1120)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !235, file: !96, line: 862, baseType: !19, size: 32, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !235, file: !96, line: 863, baseType: !19, size: 32, offset: 1184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !235, file: !96, line: 864, baseType: !19, size: 32, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !235, file: !96, line: 865, baseType: !19, size: 32, offset: 1248)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !235, file: !96, line: 866, baseType: !19, size: 32, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !235, file: !96, line: 867, baseType: !19, size: 32, offset: 1312)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !235, file: !96, line: 868, baseType: !51, size: 16, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !235, file: !96, line: 869, baseType: !37, size: 8, offset: 1360)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !235, file: !96, line: 870, baseType: !37, size: 8, offset: 1368)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !235, file: !96, line: 871, baseType: !37, size: 8, offset: 1376)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !235, file: !96, line: 872, baseType: !272, size: 160, offset: 1384)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 160, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 20)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !187, file: !96, line: 900, baseType: !94, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !187, file: !96, line: 901, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !96, line: 663, size: 640, elements: !279)
!279 = !{!280, !288, !301, !310, !319, !332, !346, !358, !370}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !278, file: !96, line: 664, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !96, line: 567, size: 128, elements: !282)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !96, line: 568, baseType: !23, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !96, line: 568, baseType: !37, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !96, line: 568, baseType: !37, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !96, line: 568, baseType: !51, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !96, line: 568, baseType: !51, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !278, file: !96, line: 665, baseType: !289, size: 384)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !96, line: 593, size: 384, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !96, line: 594, baseType: !23, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !96, line: 594, baseType: !37, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !96, line: 594, baseType: !37, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !96, line: 594, baseType: !51, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !96, line: 594, baseType: !51, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !289, file: !96, line: 594, baseType: !51, size: 16, offset: 112)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !289, file: !96, line: 595, baseType: !195, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !289, file: !96, line: 596, baseType: !89, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !289, file: !96, line: 597, baseType: !89, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !289, file: !96, line: 598, baseType: !26, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !278, file: !96, line: 666, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !96, line: 573, size: 192, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !96, line: 574, baseType: !23, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !96, line: 574, baseType: !37, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !96, line: 574, baseType: !37, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !96, line: 574, baseType: !51, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !96, line: 574, baseType: !51, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !302, file: !96, line: 574, baseType: !47, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !278, file: !96, line: 667, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !96, line: 604, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !96, line: 605, baseType: !23, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !96, line: 605, baseType: !37, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !96, line: 605, baseType: !37, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !96, line: 605, baseType: !51, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !96, line: 605, baseType: !51, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !311, file: !96, line: 605, baseType: !94, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !278, file: !96, line: 668, baseType: !320, size: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !96, line: 608, size: 448, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !96, line: 609, baseType: !23, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !96, line: 609, baseType: !37, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !96, line: 609, baseType: !37, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !96, line: 609, baseType: !51, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !96, line: 609, baseType: !51, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !320, file: !96, line: 609, baseType: !19, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !320, file: !96, line: 610, baseType: !195, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !96, line: 611, baseType: !89, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !320, file: !96, line: 612, baseType: !89, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !320, file: !96, line: 613, baseType: !19, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !278, file: !96, line: 669, baseType: !333, size: 512)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !96, line: 580, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !96, line: 581, baseType: !23, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !96, line: 581, baseType: !37, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !96, line: 581, baseType: !37, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !96, line: 581, baseType: !51, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !96, line: 581, baseType: !51, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !333, file: !96, line: 581, baseType: !19, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !333, file: !96, line: 582, baseType: !47, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !333, file: !96, line: 583, baseType: !47, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !333, file: !96, line: 584, baseType: !161, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !333, file: !96, line: 585, baseType: !23, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !333, file: !96, line: 586, baseType: !19, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !278, file: !96, line: 670, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !96, line: 620, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !96, line: 621, baseType: !23, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !96, line: 621, baseType: !37, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !96, line: 621, baseType: !37, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !96, line: 621, baseType: !51, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !96, line: 621, baseType: !51, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !347, file: !96, line: 621, baseType: !37, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !347, file: !96, line: 622, baseType: !161, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !347, file: !96, line: 623, baseType: !47, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !96, line: 624, baseType: !26, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !278, file: !96, line: 671, baseType: !359, size: 640)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !96, line: 631, size: 640, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !96, line: 632, baseType: !23, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !96, line: 632, baseType: !37, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !96, line: 632, baseType: !37, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !96, line: 632, baseType: !51, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !96, line: 632, baseType: !51, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !359, file: !96, line: 633, baseType: !367, size: 512, offset: 128)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !278, file: !96, line: 672, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !96, line: 654, size: 320, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !96, line: 655, baseType: !23, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !96, line: 655, baseType: !37, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !96, line: 655, baseType: !37, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !96, line: 655, baseType: !51, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !96, line: 655, baseType: !51, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !371, file: !96, line: 655, baseType: !37, size: 8, offset: 112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !96, line: 656, baseType: !94, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !371, file: !96, line: 657, baseType: !47, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !371, file: !96, line: 658, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !96, line: 645, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !383, file: !96, line: 646, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !25, line: 1052, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390, !19, !23}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !25, line: 424, baseType: !23)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !383, file: !96, line: 647, baseType: !23, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !187, file: !96, line: 902, baseType: !195, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !187, file: !96, line: 903, baseType: !19, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !162, file: !163, line: 61, baseType: !19, size: 32, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !162, file: !163, line: 62, baseType: !19, size: 32, offset: 1120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !162, file: !163, line: 63, baseType: !51, size: 16, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !162, file: !163, line: 64, baseType: !37, size: 8, offset: 1168)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !162, file: !163, line: 66, baseType: !399, size: 2688, offset: 1216)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 2688, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !162, file: !163, line: 67, baseType: !403, size: 3072, offset: 3904)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 3072, elements: !368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !162, file: !163, line: 68, baseType: !405, size: 576, offset: 6976)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 576, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 9)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !162, file: !163, line: 69, baseType: !126, size: 64, offset: 7552)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !162, file: !163, line: 71, baseType: !89, size: 64, offset: 7616)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !162, file: !163, line: 72, baseType: !126, size: 64, offset: 7680)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !162, file: !163, line: 73, baseType: !277, size: 64, offset: 7744)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !162, file: !163, line: 74, baseType: !94, size: 64, offset: 7808)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !162, file: !163, line: 75, baseType: !47, size: 64, offset: 7872)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !162, file: !163, line: 76, baseType: !94, size: 64, offset: 7936)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !162, file: !163, line: 77, baseType: !195, size: 64, offset: 8000)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !162, file: !163, line: 78, baseType: !47, size: 64, offset: 8064)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !162, file: !163, line: 79, baseType: !94, size: 64, offset: 8128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !162, file: !163, line: 80, baseType: !77, size: 64, offset: 8192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !162, file: !163, line: 81, baseType: !195, size: 64, offset: 8256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !162, file: !163, line: 82, baseType: !421, size: 64, offset: 8320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !96, line: 702, size: 128, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !423, file: !96, line: 706, baseType: !19, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !423, file: !96, line: 707, baseType: !19, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !96, line: 708, baseType: !51, size: 16, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !423, file: !96, line: 709, baseType: !37, size: 8, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !423, file: !96, line: 710, baseType: !37, size: 8, offset: 88)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !96, line: 711, baseType: !37, size: 8, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !162, file: !163, line: 83, baseType: !195, size: 64, offset: 8384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !162, file: !163, line: 84, baseType: !47, size: 64, offset: 8448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !162, file: !163, line: 85, baseType: !277, size: 64, offset: 8512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !162, file: !163, line: 86, baseType: !47, size: 64, offset: 8576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !162, file: !163, line: 87, baseType: !277, size: 64, offset: 8640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !162, file: !163, line: 88, baseType: !195, size: 64, offset: 8704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !162, file: !163, line: 89, baseType: !195, size: 64, offset: 8768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !162, file: !163, line: 90, baseType: !439, size: 64, offset: 8832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !162, file: !163, line: 91, baseType: !441, size: 64, offset: 8896)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !96, line: 637, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!24, !161, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !162, file: !163, line: 92, baseType: !447, size: 64, offset: 8960)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !96, line: 641, baseType: !158)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !154, file: !6, line: 152, baseType: !47, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !6, line: 155, baseType: !19, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !140, file: !6, line: 156, baseType: !115, size: 16, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !140, file: !6, line: 157, baseType: !37, size: 8, offset: 432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !41, file: !6, line: 375, baseType: !453, size: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !6, line: 123, baseType: !47, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !6, line: 123, baseType: !37, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !6, line: 123, baseType: !37, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !6, line: 123, baseType: !51, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !6, line: 123, baseType: !37, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !453, file: !6, line: 123, baseType: !37, size: 8, offset: 104)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !453, file: !6, line: 124, baseType: !51, size: 16, offset: 112)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !453, file: !6, line: 125, baseType: !23, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !453, file: !6, line: 126, baseType: !26, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !453, file: !6, line: 127, baseType: !439, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !6, line: 128, baseType: !47, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !6, line: 129, baseType: !47, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !6, line: 130, baseType: !94, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !453, file: !6, line: 131, baseType: !37, size: 8, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !41, file: !6, line: 376, baseType: !470, size: 448)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !483}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !6, line: 135, baseType: !47, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !6, line: 135, baseType: !37, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !6, line: 135, baseType: !37, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !6, line: 135, baseType: !51, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !6, line: 135, baseType: !37, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !470, file: !6, line: 135, baseType: !37, size: 8, offset: 104)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !470, file: !6, line: 136, baseType: !94, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !6, line: 137, baseType: !47, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !6, line: 138, baseType: !47, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !470, file: !6, line: 139, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !25, line: 129, baseType: !26)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !470, file: !6, line: 140, baseType: !19, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !41, file: !6, line: 377, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 185, baseType: !47, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 185, baseType: !37, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 185, baseType: !37, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 185, baseType: !51, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 185, baseType: !37, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 185, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 185, baseType: !47, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !41, file: !6, line: 378, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 188, baseType: !47, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 188, baseType: !37, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 188, baseType: !37, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 188, baseType: !51, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 188, baseType: !37, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 189, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 189, baseType: !47, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 189, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !96, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !96, line: 481, baseType: !94, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !96, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !96, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !96, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !96, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !96, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !96, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !96, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !96, line: 501, baseType: !19, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !96, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !96, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !96, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !96, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !96, line: 460, baseType: !37, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !96, line: 461, baseType: !26, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !96, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !96, line: 469, baseType: !51, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !96, line: 470, baseType: !37, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !96, line: 471, baseType: !37, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !96, line: 472, baseType: !37, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !96, line: 473, baseType: !37, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !96, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !96, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !96, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !96, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !96, line: 439, baseType: !94, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !96, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !96, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !96, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !25, line: 1049, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!19, !390, !19, !23}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !96, line: 421, baseType: !23, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !96, line: 422, baseType: !94, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !96, line: 423, baseType: !37, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !96, line: 424, baseType: !37, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !96, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !96, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !96, line: 430, baseType: !94, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !96, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !96, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !96, line: 451, baseType: !37, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !96, line: 452, baseType: !37, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !96, line: 453, baseType: !37, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !96, line: 454, baseType: !37, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !96, line: 487, baseType: !26, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !96, line: 488, baseType: !19, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !96, line: 489, baseType: !51, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !96, line: 490, baseType: !51, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !96, line: 491, baseType: !37, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !96, line: 492, baseType: !37, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !41, file: !6, line: 379, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 193, baseType: !47, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 193, baseType: !37, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 193, baseType: !37, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 193, baseType: !51, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 193, baseType: !37, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 193, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 193, baseType: !47, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 193, baseType: !19, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 194, baseType: !19, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !41, file: !6, line: 380, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 198, baseType: !47, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 198, baseType: !37, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 198, baseType: !37, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 198, baseType: !51, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 198, baseType: !37, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 200, baseType: !37, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 201, baseType: !37, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 202, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 202, baseType: !47, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 202, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !25, line: 128, baseType: !26)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !41, file: !6, line: 381, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 206, baseType: !47, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 206, baseType: !37, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 206, baseType: !37, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 206, baseType: !51, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 206, baseType: !37, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 206, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 206, baseType: !47, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !41, file: !6, line: 382, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 234, baseType: !47, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 234, baseType: !51, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 234, baseType: !94, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 234, baseType: !19, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 234, baseType: !19, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 234, baseType: !19, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 234, baseType: !37, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 234, baseType: !47, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !41, file: !6, line: 383, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 238, baseType: !47, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 238, baseType: !51, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 238, baseType: !94, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 238, baseType: !19, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 238, baseType: !19, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 238, baseType: !19, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 238, baseType: !37, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 238, baseType: !51, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 239, baseType: !47, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 240, baseType: !89, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 241, baseType: !51, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 242, baseType: !89, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !41, file: !6, line: 384, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 263, baseType: !47, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 263, baseType: !51, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 263, baseType: !94, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 263, baseType: !19, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 263, baseType: !19, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 263, baseType: !19, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 263, baseType: !37, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 264, baseType: !47, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !41, file: !6, line: 385, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 246, baseType: !47, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 246, baseType: !51, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 246, baseType: !94, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 246, baseType: !19, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 246, baseType: !19, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 246, baseType: !19, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 246, baseType: !37, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 246, baseType: !47, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 247, baseType: !47, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !41, file: !6, line: 386, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 251, baseType: !47, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 251, baseType: !51, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 251, baseType: !94, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 251, baseType: !19, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 251, baseType: !19, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 251, baseType: !19, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 251, baseType: !37, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 256, baseType: !47, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 257, baseType: !47, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !41, file: !6, line: 387, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 274, baseType: !47, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 274, baseType: !37, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 274, baseType: !37, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 274, baseType: !51, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 274, baseType: !37, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 274, baseType: !94, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 275, baseType: !19, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 276, baseType: !386, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 277, baseType: !23, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 278, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !41, file: !6, line: 388, baseType: !722, size: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !745, !746}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 282, baseType: !47, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 282, baseType: !37, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 282, baseType: !37, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 282, baseType: !51, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 282, baseType: !37, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 282, baseType: !37, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 283, baseType: !37, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 284, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !25, line: 1084, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!24, !19, !482, !19, !736, !23, !23}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 285, baseType: !94, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 286, baseType: !23, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 287, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !25, line: 1102, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!24, !390, !19, !23, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 288, baseType: !47, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 289, baseType: !47, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !41, file: !6, line: 389, baseType: !748, size: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !6, line: 308, baseType: !47, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !6, line: 308, baseType: !37, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !6, line: 308, baseType: !37, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !6, line: 308, baseType: !51, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !6, line: 308, baseType: !37, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !748, file: !6, line: 308, baseType: !37, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !748, file: !6, line: 309, baseType: !37, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !748, file: !6, line: 310, baseType: !37, size: 8, offset: 120)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !748, file: !6, line: 311, baseType: !23, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !6, line: 312, baseType: !94, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !748, file: !6, line: 313, baseType: !126, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !748, file: !6, line: 314, baseType: !89, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !748, file: !6, line: 315, baseType: !89, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !748, file: !6, line: 316, baseType: !19, size: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !41, file: !6, line: 390, baseType: !765, size: 448)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !6, line: 341, baseType: !47, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !6, line: 341, baseType: !37, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !6, line: 341, baseType: !37, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !6, line: 341, baseType: !51, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !6, line: 341, baseType: !37, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !765, file: !6, line: 341, baseType: !94, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !765, file: !6, line: 342, baseType: !94, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !765, file: !6, line: 343, baseType: !23, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !765, file: !6, line: 344, baseType: !89, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !765, file: !6, line: 345, baseType: !19, size: 32, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, file: !6, line: 391, baseType: !778, size: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !6, line: 351, baseType: !47, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !6, line: 351, baseType: !37, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !6, line: 351, baseType: !37, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !6, line: 351, baseType: !51, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !6, line: 351, baseType: !37, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !778, file: !6, line: 351, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !25, line: 1055, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !390, !23}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !778, file: !6, line: 352, baseType: !23, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !41, file: !6, line: 392, baseType: !792, size: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !6, line: 358, baseType: !47, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !6, line: 358, baseType: !37, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !6, line: 358, baseType: !37, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !6, line: 358, baseType: !51, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !6, line: 358, baseType: !37, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !792, file: !6, line: 358, baseType: !47, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !41, file: !6, line: 399, baseType: !95, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !30, file: !6, line: 435, baseType: !95, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !30, file: !6, line: 436, baseType: !196, size: 1600)
!803 = !{!0}
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 72, elements: !406)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!806 = !{i32 7, !"Dwarf Version", i32 4}
!807 = !{i32 2, !"Debug Info Version", i32 3}
!808 = !{i32 1, !"wchar_size", i32 2}
!809 = !{i32 1, !"Code Model", i32 2}
!810 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!811 = distinct !DISubprogram(name: "acpi_ds_method_data_init", scope: !3, file: !3, line: 55, type: !812, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !161}
!814 = !{}
!815 = !DILocalVariable(name: "walk_state", arg: 1, scope: !811, file: !3, line: 55, type: !161)
!816 = !DILocation(line: 55, column: 55, scope: !811)
!817 = !DILocalVariable(name: "i", scope: !811, file: !3, line: 57, type: !19)
!818 = !DILocation(line: 57, column: 6, scope: !811)
!819 = !DILocation(line: 63, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !811, file: !3, line: 63, column: 2)
!821 = !DILocation(line: 63, column: 7, scope: !820)
!822 = !DILocation(line: 63, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 63, column: 2)
!824 = !DILocation(line: 63, column: 16, scope: !823)
!825 = !DILocation(line: 63, column: 2, scope: !820)
!826 = !DILocation(line: 64, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 63, column: 45)
!828 = !DILocation(line: 67, column: 45, scope: !827)
!829 = !DILocation(line: 67, column: 47, scope: !827)
!830 = !DILocation(line: 67, column: 3, scope: !827)
!831 = !DILocation(line: 67, column: 15, scope: !827)
!832 = !DILocation(line: 67, column: 25, scope: !827)
!833 = !DILocation(line: 67, column: 28, scope: !827)
!834 = !DILocation(line: 67, column: 33, scope: !827)
!835 = !DILocation(line: 67, column: 41, scope: !827)
!836 = !DILocation(line: 68, column: 3, scope: !827)
!837 = !DILocation(line: 68, column: 15, scope: !827)
!838 = !DILocation(line: 68, column: 25, scope: !827)
!839 = !DILocation(line: 68, column: 28, scope: !827)
!840 = !DILocation(line: 68, column: 44, scope: !827)
!841 = !DILocation(line: 69, column: 3, scope: !827)
!842 = !DILocation(line: 69, column: 15, scope: !827)
!843 = !DILocation(line: 69, column: 25, scope: !827)
!844 = !DILocation(line: 69, column: 28, scope: !827)
!845 = !DILocation(line: 69, column: 33, scope: !827)
!846 = !DILocation(line: 70, column: 3, scope: !827)
!847 = !DILocation(line: 70, column: 15, scope: !827)
!848 = !DILocation(line: 70, column: 25, scope: !827)
!849 = !DILocation(line: 70, column: 28, scope: !827)
!850 = !DILocation(line: 70, column: 34, scope: !827)
!851 = !DILocation(line: 71, column: 2, scope: !827)
!852 = !DILocation(line: 63, column: 41, scope: !823)
!853 = !DILocation(line: 63, column: 2, scope: !823)
!854 = distinct !{!854, !825, !855}
!855 = !DILocation(line: 71, column: 2, scope: !820)
!856 = !DILocation(line: 75, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !811, file: !3, line: 75, column: 2)
!858 = !DILocation(line: 75, column: 7, scope: !857)
!859 = !DILocation(line: 75, column: 14, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 75, column: 2)
!861 = !DILocation(line: 75, column: 16, scope: !860)
!862 = !DILocation(line: 75, column: 2, scope: !857)
!863 = !DILocation(line: 76, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !3, line: 75, column: 47)
!865 = !DILocation(line: 79, column: 51, scope: !864)
!866 = !DILocation(line: 79, column: 53, scope: !864)
!867 = !DILocation(line: 79, column: 3, scope: !864)
!868 = !DILocation(line: 79, column: 15, scope: !864)
!869 = !DILocation(line: 79, column: 31, scope: !864)
!870 = !DILocation(line: 79, column: 34, scope: !864)
!871 = !DILocation(line: 79, column: 39, scope: !864)
!872 = !DILocation(line: 79, column: 47, scope: !864)
!873 = !DILocation(line: 80, column: 3, scope: !864)
!874 = !DILocation(line: 80, column: 15, scope: !864)
!875 = !DILocation(line: 80, column: 31, scope: !864)
!876 = !DILocation(line: 80, column: 34, scope: !864)
!877 = !DILocation(line: 80, column: 50, scope: !864)
!878 = !DILocation(line: 82, column: 3, scope: !864)
!879 = !DILocation(line: 82, column: 15, scope: !864)
!880 = !DILocation(line: 82, column: 31, scope: !864)
!881 = !DILocation(line: 82, column: 34, scope: !864)
!882 = !DILocation(line: 82, column: 39, scope: !864)
!883 = !DILocation(line: 83, column: 3, scope: !864)
!884 = !DILocation(line: 83, column: 15, scope: !864)
!885 = !DILocation(line: 83, column: 31, scope: !864)
!886 = !DILocation(line: 83, column: 34, scope: !864)
!887 = !DILocation(line: 83, column: 40, scope: !864)
!888 = !DILocation(line: 84, column: 2, scope: !864)
!889 = !DILocation(line: 75, column: 43, scope: !860)
!890 = !DILocation(line: 75, column: 2, scope: !860)
!891 = distinct !{!891, !862, !892}
!892 = !DILocation(line: 84, column: 2, scope: !857)
!893 = !DILocation(line: 86, column: 2, scope: !811)
!894 = distinct !DISubprogram(name: "acpi_ds_method_data_delete_all", scope: !3, file: !3, line: 102, type: !812, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!895 = !DILocalVariable(name: "walk_state", arg: 1, scope: !894, file: !3, line: 102, type: !161)
!896 = !DILocation(line: 102, column: 61, scope: !894)
!897 = !DILocalVariable(name: "index", scope: !894, file: !3, line: 104, type: !19)
!898 = !DILocation(line: 104, column: 6, scope: !894)
!899 = !DILocation(line: 110, column: 13, scope: !900)
!900 = distinct !DILexicalBlock(scope: !894, file: !3, line: 110, column: 2)
!901 = !DILocation(line: 110, column: 7, scope: !900)
!902 = !DILocation(line: 110, column: 18, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 110, column: 2)
!904 = !DILocation(line: 110, column: 24, scope: !903)
!905 = !DILocation(line: 110, column: 2, scope: !900)
!906 = !DILocation(line: 111, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 111, column: 7)
!908 = distinct !DILexicalBlock(scope: !903, file: !3, line: 110, column: 59)
!909 = !DILocation(line: 111, column: 19, scope: !907)
!910 = !DILocation(line: 111, column: 35, scope: !907)
!911 = !DILocation(line: 111, column: 42, scope: !907)
!912 = !DILocation(line: 111, column: 7, scope: !908)
!913 = !DILocation(line: 119, column: 27, scope: !914)
!914 = distinct !DILexicalBlock(scope: !907, file: !3, line: 111, column: 50)
!915 = !DILocation(line: 120, column: 12, scope: !914)
!916 = !DILocation(line: 120, column: 28, scope: !914)
!917 = !DILocation(line: 119, column: 4, scope: !914)
!918 = !DILocation(line: 121, column: 3, scope: !914)
!919 = !DILocation(line: 122, column: 2, scope: !908)
!920 = !DILocation(line: 110, column: 55, scope: !903)
!921 = !DILocation(line: 110, column: 2, scope: !903)
!922 = distinct !{!922, !905, !923}
!923 = !DILocation(line: 122, column: 2, scope: !900)
!924 = !DILocation(line: 126, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !894, file: !3, line: 126, column: 2)
!926 = !DILocation(line: 126, column: 7, scope: !925)
!927 = !DILocation(line: 126, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 126, column: 2)
!929 = !DILocation(line: 126, column: 24, scope: !928)
!930 = !DILocation(line: 126, column: 2, scope: !925)
!931 = !DILocation(line: 127, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 127, column: 7)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 126, column: 57)
!934 = !DILocation(line: 127, column: 19, scope: !932)
!935 = !DILocation(line: 127, column: 29, scope: !932)
!936 = !DILocation(line: 127, column: 36, scope: !932)
!937 = !DILocation(line: 127, column: 7, scope: !933)
!938 = !DILocation(line: 134, column: 27, scope: !939)
!939 = distinct !DILexicalBlock(scope: !932, file: !3, line: 127, column: 44)
!940 = !DILocation(line: 134, column: 39, scope: !939)
!941 = !DILocation(line: 134, column: 49, scope: !939)
!942 = !DILocation(line: 134, column: 4, scope: !939)
!943 = !DILocation(line: 135, column: 3, scope: !939)
!944 = !DILocation(line: 136, column: 2, scope: !933)
!945 = !DILocation(line: 126, column: 53, scope: !928)
!946 = !DILocation(line: 126, column: 2, scope: !928)
!947 = distinct !{!947, !930, !948}
!948 = !DILocation(line: 136, column: 2, scope: !925)
!949 = !DILocation(line: 138, column: 2, scope: !894)
!950 = distinct !DISubprogram(name: "acpi_ds_method_data_init_args", scope: !3, file: !3, line: 158, type: !951, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!951 = !DISubroutineType(types: !952)
!952 = !{!24, !126, !19, !161}
!953 = !DILocalVariable(name: "params", arg: 1, scope: !950, file: !3, line: 158, type: !126)
!954 = !DILocation(line: 158, column: 59, scope: !950)
!955 = !DILocalVariable(name: "max_param_count", arg: 2, scope: !950, file: !3, line: 159, type: !19)
!956 = !DILocation(line: 159, column: 14, scope: !950)
!957 = !DILocalVariable(name: "walk_state", arg: 3, scope: !950, file: !3, line: 160, type: !161)
!958 = !DILocation(line: 160, column: 34, scope: !950)
!959 = !DILocalVariable(name: "status", scope: !950, file: !3, line: 162, type: !24)
!960 = !DILocation(line: 162, column: 14, scope: !950)
!961 = !DILocalVariable(name: "index", scope: !950, file: !3, line: 163, type: !19)
!962 = !DILocation(line: 163, column: 6, scope: !950)
!963 = !DILocation(line: 167, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !950, file: !3, line: 167, column: 6)
!965 = !DILocation(line: 167, column: 6, scope: !950)
!966 = !DILocation(line: 170, column: 3, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 167, column: 15)
!968 = !DILocation(line: 175, column: 2, scope: !950)
!969 = !DILocation(line: 175, column: 10, scope: !950)
!970 = !DILocation(line: 175, column: 16, scope: !950)
!971 = !DILocation(line: 175, column: 40, scope: !950)
!972 = !DILocation(line: 176, column: 10, scope: !950)
!973 = !DILocation(line: 176, column: 18, scope: !950)
!974 = !DILocation(line: 176, column: 16, scope: !950)
!975 = !DILocation(line: 176, column: 35, scope: !950)
!976 = !DILocation(line: 176, column: 38, scope: !950)
!977 = !DILocation(line: 176, column: 45, scope: !950)
!978 = !DILocation(line: 0, scope: !950)
!979 = !DILocation(line: 183, column: 56, scope: !980)
!980 = distinct !DILexicalBlock(scope: !950, file: !3, line: 176, column: 53)
!981 = !DILocation(line: 184, column: 9, scope: !980)
!982 = !DILocation(line: 184, column: 16, scope: !980)
!983 = !DILocation(line: 184, column: 24, scope: !980)
!984 = !DILocation(line: 183, column: 7, scope: !980)
!985 = !DILocation(line: 182, column: 10, scope: !980)
!986 = !DILocation(line: 185, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !980, file: !3, line: 185, column: 7)
!988 = !DILocation(line: 185, column: 7, scope: !980)
!989 = !DILocation(line: 186, column: 4, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 185, column: 29)
!991 = !DILocation(line: 189, column: 8, scope: !980)
!992 = distinct !{!992, !968, !993}
!993 = !DILocation(line: 190, column: 2, scope: !950)
!994 = !DILocation(line: 193, column: 2, scope: !950)
!995 = !DILocation(line: 194, column: 1, scope: !950)
!996 = distinct !DISubprogram(name: "acpi_ds_method_data_set_value", scope: !3, file: !3, line: 279, type: !997, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !814)
!997 = !DISubroutineType(types: !998)
!998 = !{!24, !37, !19, !47, !161}
!999 = !DILocalVariable(name: "type", arg: 1, scope: !996, file: !3, line: 279, type: !37)
!1000 = !DILocation(line: 279, column: 34, scope: !996)
!1001 = !DILocalVariable(name: "index", arg: 2, scope: !996, file: !3, line: 280, type: !19)
!1002 = !DILocation(line: 280, column: 14, scope: !996)
!1003 = !DILocalVariable(name: "object", arg: 3, scope: !996, file: !3, line: 281, type: !47)
!1004 = !DILocation(line: 281, column: 37, scope: !996)
!1005 = !DILocalVariable(name: "walk_state", arg: 4, scope: !996, file: !3, line: 282, type: !161)
!1006 = !DILocation(line: 282, column: 34, scope: !996)
!1007 = !DILocalVariable(name: "status", scope: !996, file: !3, line: 284, type: !24)
!1008 = !DILocation(line: 284, column: 14, scope: !996)
!1009 = !DILocalVariable(name: "node", scope: !996, file: !3, line: 285, type: !94)
!1010 = !DILocation(line: 285, column: 30, scope: !996)
!1011 = !DILocation(line: 296, column: 40, scope: !996)
!1012 = !DILocation(line: 296, column: 46, scope: !996)
!1013 = !DILocation(line: 296, column: 53, scope: !996)
!1014 = !DILocation(line: 296, column: 11, scope: !996)
!1015 = !DILocation(line: 296, column: 9, scope: !996)
!1016 = !DILocation(line: 297, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !996, file: !3, line: 297, column: 6)
!1018 = !DILocation(line: 297, column: 6, scope: !996)
!1019 = !DILocation(line: 298, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 297, column: 28)
!1021 = !DILocation(line: 307, column: 24, scope: !996)
!1022 = !DILocation(line: 307, column: 2, scope: !996)
!1023 = !DILocation(line: 311, column: 17, scope: !996)
!1024 = !DILocation(line: 311, column: 2, scope: !996)
!1025 = !DILocation(line: 311, column: 8, scope: !996)
!1026 = !DILocation(line: 311, column: 15, scope: !996)
!1027 = !DILocation(line: 312, column: 2, scope: !996)
!1028 = !DILocation(line: 313, column: 1, scope: !996)
!1029 = distinct !DISubprogram(name: "acpi_ds_method_data_get_node", scope: !3, file: !3, line: 213, type: !1030, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!24, !37, !19, !161, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1033 = !DILocalVariable(name: "type", arg: 1, scope: !1029, file: !3, line: 213, type: !37)
!1034 = !DILocation(line: 213, column: 33, scope: !1029)
!1035 = !DILocalVariable(name: "index", arg: 2, scope: !1029, file: !3, line: 214, type: !19)
!1036 = !DILocation(line: 214, column: 13, scope: !1029)
!1037 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1029, file: !3, line: 215, type: !161)
!1038 = !DILocation(line: 215, column: 33, scope: !1029)
!1039 = !DILocalVariable(name: "node", arg: 4, scope: !1029, file: !3, line: 216, type: !1032)
!1040 = !DILocation(line: 216, column: 38, scope: !1029)
!1041 = !DILocation(line: 223, column: 10, scope: !1029)
!1042 = !DILocation(line: 223, column: 2, scope: !1029)
!1043 = !DILocation(line: 226, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 226, column: 7)
!1045 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 223, column: 16)
!1046 = !DILocation(line: 226, column: 13, scope: !1044)
!1047 = !DILocation(line: 226, column: 7, scope: !1045)
!1048 = !DILocation(line: 227, column: 4, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 226, column: 38)
!1050 = !DILocation(line: 230, column: 4, scope: !1049)
!1051 = !DILocation(line: 235, column: 12, scope: !1045)
!1052 = !DILocation(line: 235, column: 24, scope: !1045)
!1053 = !DILocation(line: 235, column: 40, scope: !1045)
!1054 = !DILocation(line: 235, column: 4, scope: !1045)
!1055 = !DILocation(line: 235, column: 9, scope: !1045)
!1056 = !DILocation(line: 236, column: 3, scope: !1045)
!1057 = !DILocation(line: 240, column: 7, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 240, column: 7)
!1059 = !DILocation(line: 240, column: 13, scope: !1058)
!1060 = !DILocation(line: 240, column: 7, scope: !1045)
!1061 = !DILocation(line: 241, column: 4, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 240, column: 36)
!1063 = !DILocation(line: 244, column: 4, scope: !1062)
!1064 = !DILocation(line: 249, column: 12, scope: !1045)
!1065 = !DILocation(line: 249, column: 24, scope: !1045)
!1066 = !DILocation(line: 249, column: 34, scope: !1045)
!1067 = !DILocation(line: 249, column: 4, scope: !1045)
!1068 = !DILocation(line: 249, column: 9, scope: !1045)
!1069 = !DILocation(line: 250, column: 3, scope: !1045)
!1070 = !DILocation(line: 254, column: 3, scope: !1045)
!1071 = !DILocation(line: 255, column: 3, scope: !1045)
!1072 = !DILocation(line: 258, column: 2, scope: !1029)
!1073 = !DILocation(line: 259, column: 1, scope: !1029)
!1074 = distinct !DISubprogram(name: "acpi_ds_method_data_get_value", scope: !3, file: !3, line: 333, type: !1075, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!24, !37, !19, !161, !126}
!1077 = !DILocalVariable(name: "type", arg: 1, scope: !1074, file: !3, line: 333, type: !37)
!1078 = !DILocation(line: 333, column: 34, scope: !1074)
!1079 = !DILocalVariable(name: "index", arg: 2, scope: !1074, file: !3, line: 334, type: !19)
!1080 = !DILocation(line: 334, column: 14, scope: !1074)
!1081 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1074, file: !3, line: 335, type: !161)
!1082 = !DILocation(line: 335, column: 34, scope: !1074)
!1083 = !DILocalVariable(name: "dest_desc", arg: 4, scope: !1074, file: !3, line: 336, type: !126)
!1084 = !DILocation(line: 336, column: 38, scope: !1074)
!1085 = !DILocalVariable(name: "status", scope: !1074, file: !3, line: 338, type: !24)
!1086 = !DILocation(line: 338, column: 14, scope: !1074)
!1087 = !DILocalVariable(name: "node", scope: !1074, file: !3, line: 339, type: !94)
!1088 = !DILocation(line: 339, column: 30, scope: !1074)
!1089 = !DILocalVariable(name: "object", scope: !1074, file: !3, line: 340, type: !47)
!1090 = !DILocation(line: 340, column: 29, scope: !1074)
!1091 = !DILocation(line: 346, column: 7, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 346, column: 6)
!1093 = !DILocation(line: 346, column: 6, scope: !1074)
!1094 = !DILocation(line: 347, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 346, column: 18)
!1096 = !DILocation(line: 348, column: 3, scope: !1095)
!1097 = !DILocation(line: 353, column: 40, scope: !1074)
!1098 = !DILocation(line: 353, column: 46, scope: !1074)
!1099 = !DILocation(line: 353, column: 53, scope: !1074)
!1100 = !DILocation(line: 353, column: 11, scope: !1074)
!1101 = !DILocation(line: 353, column: 9, scope: !1074)
!1102 = !DILocation(line: 354, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 354, column: 6)
!1104 = !DILocation(line: 354, column: 6, scope: !1074)
!1105 = !DILocation(line: 355, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 354, column: 28)
!1107 = !DILocation(line: 360, column: 11, scope: !1074)
!1108 = !DILocation(line: 360, column: 17, scope: !1074)
!1109 = !DILocation(line: 360, column: 9, scope: !1074)
!1110 = !DILocation(line: 364, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 364, column: 6)
!1112 = !DILocation(line: 364, column: 6, scope: !1074)
!1113 = !DILocation(line: 375, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 375, column: 7)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 364, column: 15)
!1116 = !DILocation(line: 375, column: 7, scope: !1115)
!1117 = !DILocation(line: 376, column: 13, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 375, column: 42)
!1119 = !DILocation(line: 376, column: 11, scope: !1118)
!1120 = !DILocation(line: 377, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 377, column: 8)
!1122 = !DILocation(line: 377, column: 8, scope: !1118)
!1123 = !DILocation(line: 378, column: 5, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 377, column: 17)
!1125 = !DILocation(line: 381, column: 19, scope: !1118)
!1126 = !DILocation(line: 381, column: 4, scope: !1118)
!1127 = !DILocation(line: 381, column: 10, scope: !1118)
!1128 = !DILocation(line: 381, column: 17, scope: !1118)
!1129 = !DILocation(line: 382, column: 3, scope: !1118)
!1130 = !DILocation(line: 387, column: 12, scope: !1114)
!1131 = !DILocation(line: 387, column: 4, scope: !1114)
!1132 = !DILocation(line: 390, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 387, column: 18)
!1134 = !DILocation(line: 394, column: 5, scope: !1133)
!1135 = !DILocation(line: 401, column: 5, scope: !1133)
!1136 = !DILocation(line: 405, column: 5, scope: !1133)
!1137 = !DILocation(line: 408, column: 5, scope: !1133)
!1138 = !DILocation(line: 410, column: 2, scope: !1115)
!1139 = !DILocation(line: 416, column: 15, scope: !1074)
!1140 = !DILocation(line: 416, column: 3, scope: !1074)
!1141 = !DILocation(line: 416, column: 13, scope: !1074)
!1142 = !DILocation(line: 417, column: 24, scope: !1074)
!1143 = !DILocation(line: 417, column: 2, scope: !1074)
!1144 = !DILocation(line: 419, column: 2, scope: !1074)
!1145 = !DILocation(line: 420, column: 1, scope: !1074)
!1146 = distinct !DISubprogram(name: "acpi_ds_store_object_to_local", scope: !3, file: !3, line: 498, type: !997, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1147 = !DILocalVariable(name: "type", arg: 1, scope: !1146, file: !3, line: 498, type: !37)
!1148 = !DILocation(line: 498, column: 34, scope: !1146)
!1149 = !DILocalVariable(name: "index", arg: 2, scope: !1146, file: !3, line: 499, type: !19)
!1150 = !DILocation(line: 499, column: 14, scope: !1146)
!1151 = !DILocalVariable(name: "obj_desc", arg: 3, scope: !1146, file: !3, line: 500, type: !47)
!1152 = !DILocation(line: 500, column: 37, scope: !1146)
!1153 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1146, file: !3, line: 501, type: !161)
!1154 = !DILocation(line: 501, column: 34, scope: !1146)
!1155 = !DILocalVariable(name: "status", scope: !1146, file: !3, line: 503, type: !24)
!1156 = !DILocation(line: 503, column: 14, scope: !1146)
!1157 = !DILocalVariable(name: "node", scope: !1146, file: !3, line: 504, type: !94)
!1158 = !DILocation(line: 504, column: 30, scope: !1146)
!1159 = !DILocalVariable(name: "current_obj_desc", scope: !1146, file: !3, line: 505, type: !47)
!1160 = !DILocation(line: 505, column: 29, scope: !1146)
!1161 = !DILocalVariable(name: "new_obj_desc", scope: !1146, file: !3, line: 506, type: !47)
!1162 = !DILocation(line: 506, column: 29, scope: !1146)
!1163 = !DILocation(line: 514, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 514, column: 6)
!1165 = !DILocation(line: 514, column: 6, scope: !1146)
!1166 = !DILocation(line: 515, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 514, column: 17)
!1168 = !DILocation(line: 520, column: 40, scope: !1146)
!1169 = !DILocation(line: 520, column: 46, scope: !1146)
!1170 = !DILocation(line: 520, column: 53, scope: !1146)
!1171 = !DILocation(line: 520, column: 11, scope: !1146)
!1172 = !DILocation(line: 520, column: 9, scope: !1146)
!1173 = !DILocation(line: 521, column: 6, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 521, column: 6)
!1175 = !DILocation(line: 521, column: 6, scope: !1146)
!1176 = !DILocation(line: 522, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 521, column: 28)
!1178 = !DILocation(line: 525, column: 49, scope: !1146)
!1179 = !DILocation(line: 525, column: 21, scope: !1146)
!1180 = !DILocation(line: 525, column: 19, scope: !1146)
!1181 = !DILocation(line: 526, column: 6, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 526, column: 6)
!1183 = !DILocation(line: 526, column: 26, scope: !1182)
!1184 = !DILocation(line: 526, column: 23, scope: !1182)
!1185 = !DILocation(line: 526, column: 6, scope: !1146)
!1186 = !DILocation(line: 529, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 526, column: 36)
!1188 = !DILocation(line: 539, column: 17, scope: !1146)
!1189 = !DILocation(line: 539, column: 15, scope: !1146)
!1190 = !DILocation(line: 540, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 540, column: 6)
!1192 = !DILocation(line: 540, column: 16, scope: !1191)
!1193 = !DILocation(line: 540, column: 23, scope: !1191)
!1194 = !DILocation(line: 540, column: 39, scope: !1191)
!1195 = !DILocation(line: 540, column: 6, scope: !1146)
!1196 = !DILocation(line: 542, column: 39, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 540, column: 44)
!1198 = !DILocation(line: 543, column: 11, scope: !1197)
!1199 = !DILocation(line: 542, column: 7, scope: !1197)
!1200 = !DILocation(line: 541, column: 10, scope: !1197)
!1201 = !DILocation(line: 544, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 544, column: 7)
!1203 = !DILocation(line: 544, column: 7, scope: !1197)
!1204 = !DILocation(line: 545, column: 4, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 544, column: 29)
!1206 = !DILocation(line: 547, column: 2, scope: !1197)
!1207 = !DILocation(line: 555, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 555, column: 6)
!1209 = !DILocation(line: 555, column: 6, scope: !1146)
!1210 = !DILocation(line: 572, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 572, column: 7)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 555, column: 24)
!1213 = !DILocation(line: 572, column: 12, scope: !1211)
!1214 = !DILocation(line: 572, column: 7, scope: !1212)
!1215 = !DILocation(line: 577, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 577, column: 8)
!1217 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 572, column: 34)
!1218 = !DILocation(line: 577, column: 52, scope: !1216)
!1219 = !DILocation(line: 578, column: 33, scope: !1216)
!1220 = !DILocation(line: 579, column: 9, scope: !1216)
!1221 = !DILocation(line: 579, column: 27, scope: !1216)
!1222 = !DILocation(line: 579, column: 34, scope: !1216)
!1223 = !DILocation(line: 579, column: 39, scope: !1216)
!1224 = !DILocation(line: 580, column: 36, scope: !1216)
!1225 = !DILocation(line: 581, column: 9, scope: !1216)
!1226 = !DILocation(line: 581, column: 27, scope: !1216)
!1227 = !DILocation(line: 581, column: 37, scope: !1216)
!1228 = !DILocation(line: 581, column: 43, scope: !1216)
!1229 = !DILocation(line: 577, column: 8, scope: !1217)
!1230 = !DILocation(line: 594, column: 38, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 582, column: 31)
!1232 = !DILocation(line: 595, column: 10, scope: !1231)
!1233 = !DILocation(line: 596, column: 10, scope: !1231)
!1234 = !DILocation(line: 597, column: 10, scope: !1231)
!1235 = !DILocation(line: 598, column: 10, scope: !1231)
!1236 = !DILocation(line: 594, column: 9, scope: !1231)
!1237 = !DILocation(line: 593, column: 12, scope: !1231)
!1238 = !DILocation(line: 603, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 603, column: 9)
!1240 = !DILocation(line: 603, column: 25, scope: !1239)
!1241 = !DILocation(line: 603, column: 22, scope: !1239)
!1242 = !DILocation(line: 603, column: 9, scope: !1231)
!1243 = !DILocation(line: 604, column: 31, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 603, column: 35)
!1245 = !DILocation(line: 604, column: 6, scope: !1244)
!1246 = !DILocation(line: 605, column: 5, scope: !1244)
!1247 = !DILocation(line: 607, column: 5, scope: !1231)
!1248 = !DILocation(line: 609, column: 3, scope: !1217)
!1249 = !DILocation(line: 613, column: 36, scope: !1212)
!1250 = !DILocation(line: 613, column: 42, scope: !1212)
!1251 = !DILocation(line: 613, column: 49, scope: !1212)
!1252 = !DILocation(line: 613, column: 3, scope: !1212)
!1253 = !DILocation(line: 614, column: 2, scope: !1212)
!1254 = !DILocation(line: 622, column: 36, scope: !1146)
!1255 = !DILocation(line: 622, column: 42, scope: !1146)
!1256 = !DILocation(line: 622, column: 49, scope: !1146)
!1257 = !DILocation(line: 623, column: 8, scope: !1146)
!1258 = !DILocation(line: 622, column: 6, scope: !1146)
!1259 = !DILocation(line: 621, column: 9, scope: !1146)
!1260 = !DILocation(line: 627, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 627, column: 6)
!1262 = !DILocation(line: 627, column: 22, scope: !1261)
!1263 = !DILocation(line: 627, column: 19, scope: !1261)
!1264 = !DILocation(line: 627, column: 6, scope: !1146)
!1265 = !DILocation(line: 628, column: 28, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 627, column: 32)
!1267 = !DILocation(line: 628, column: 3, scope: !1266)
!1268 = !DILocation(line: 629, column: 2, scope: !1266)
!1269 = !DILocation(line: 631, column: 2, scope: !1146)
!1270 = !DILocation(line: 632, column: 1, scope: !1146)
!1271 = distinct !DISubprogram(name: "acpi_ds_method_data_delete_value", scope: !3, file: !3, line: 439, type: !1272, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !37, !19, !161}
!1274 = !DILocalVariable(name: "type", arg: 1, scope: !1271, file: !3, line: 439, type: !37)
!1275 = !DILocation(line: 439, column: 37, scope: !1271)
!1276 = !DILocalVariable(name: "index", arg: 2, scope: !1271, file: !3, line: 440, type: !19)
!1277 = !DILocation(line: 440, column: 10, scope: !1271)
!1278 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1271, file: !3, line: 440, type: !161)
!1279 = !DILocation(line: 440, column: 41, scope: !1271)
!1280 = !DILocalVariable(name: "status", scope: !1271, file: !3, line: 442, type: !24)
!1281 = !DILocation(line: 442, column: 14, scope: !1271)
!1282 = !DILocalVariable(name: "node", scope: !1271, file: !3, line: 443, type: !94)
!1283 = !DILocation(line: 443, column: 30, scope: !1271)
!1284 = !DILocalVariable(name: "object", scope: !1271, file: !3, line: 444, type: !47)
!1285 = !DILocation(line: 444, column: 29, scope: !1271)
!1286 = !DILocation(line: 450, column: 40, scope: !1271)
!1287 = !DILocation(line: 450, column: 46, scope: !1271)
!1288 = !DILocation(line: 450, column: 53, scope: !1271)
!1289 = !DILocation(line: 450, column: 11, scope: !1271)
!1290 = !DILocation(line: 450, column: 9, scope: !1271)
!1291 = !DILocation(line: 451, column: 6, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 451, column: 6)
!1293 = !DILocation(line: 451, column: 6, scope: !1271)
!1294 = !DILocation(line: 452, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 451, column: 28)
!1296 = !DILocation(line: 457, column: 39, scope: !1271)
!1297 = !DILocation(line: 457, column: 11, scope: !1271)
!1298 = !DILocation(line: 457, column: 9, scope: !1271)
!1299 = !DILocation(line: 464, column: 2, scope: !1271)
!1300 = !DILocation(line: 464, column: 8, scope: !1271)
!1301 = !DILocation(line: 464, column: 15, scope: !1271)
!1302 = !DILocation(line: 466, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 466, column: 6)
!1304 = !DILocation(line: 466, column: 6, scope: !1303)
!1305 = !DILocation(line: 466, column: 15, scope: !1303)
!1306 = !DILocation(line: 467, column: 7, scope: !1303)
!1307 = !DILocation(line: 467, column: 40, scope: !1303)
!1308 = !DILocation(line: 466, column: 6, scope: !1271)
!1309 = !DILocation(line: 473, column: 28, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 467, column: 68)
!1311 = !DILocation(line: 473, column: 3, scope: !1310)
!1312 = !DILocation(line: 474, column: 2, scope: !1310)
!1313 = !DILocation(line: 476, column: 2, scope: !1271)
!1314 = !DILocation(line: 477, column: 1, scope: !1271)
