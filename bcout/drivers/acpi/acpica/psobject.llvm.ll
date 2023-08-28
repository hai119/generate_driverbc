; ModuleID = '../bcout/drivers/acpi/acpica/psobject.llvm.bc'
source_filename = "drivers/acpi/acpica/psobject.c"
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
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_pscope_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_parse_object*, i8*, i8*, i32 }

@_acpi_module_name = internal constant [9 x i8] c"psobject\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"During name lookup/catalog\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Ignoring error and continuing table load\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Unknown opcode 0x%.2X at table offset 0x%.4X, ignoring\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_build_named_op(%struct.acpi_walk_state* %walk_state, i8* %aml_op_start, %union.acpi_parse_object* %unnamed_op, %union.acpi_parse_object** %op) #0 !dbg !36 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml_op_start.addr = alloca i8*, align 8
  %unnamed_op.addr = alloca %union.acpi_parse_object*, align 8
  %op.addr = alloca %union.acpi_parse_object**, align 8
  %status = alloca i32, align 4
  %arg = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store i8* %aml_op_start, i8** %aml_op_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_op_start.addr, metadata !795, metadata !DIExpression()), !dbg !796
  store %union.acpi_parse_object* %unnamed_op, %union.acpi_parse_object** %unnamed_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %unnamed_op.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store %union.acpi_parse_object** %op, %union.acpi_parse_object*** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %op.addr, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata i32* %status, metadata !801, metadata !DIExpression()), !dbg !802
  store i32 0, i32* %status, align 4, !dbg !802
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !803, metadata !DIExpression()), !dbg !804
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !804
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %unnamed_op.addr, align 8, !dbg !805
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !806
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !807
  %arg1 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !808
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg1, align 8, !dbg !809
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %unnamed_op.addr, align 8, !dbg !810
  %common2 = bitcast %union.acpi_parse_object* %1 to %struct.acpi_parse_obj_common*, !dbg !811
  %arg_list_length = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 8, !dbg !812
  store i8 0, i8* %arg_list_length, align 8, !dbg !813
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !814
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 3, !dbg !815
  %3 = load i16, i16* %opcode, align 2, !dbg !815
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %unnamed_op.addr, align 8, !dbg !816
  %common3 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !817
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 3, !dbg !818
  store i16 %3, i16* %aml_opcode, align 2, !dbg !819
  br label %while.cond, !dbg !820

while.cond:                                       ; preds = %if.end, %entry
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !821
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 17, !dbg !821
  %6 = load i32, i32* %arg_types, align 8, !dbg !821
  %and = and i32 %6, 31, !dbg !821
  %tobool = icmp ne i32 %and, 0, !dbg !821
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !822

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !823
  %arg_types4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 17, !dbg !823
  %8 = load i32, i32* %arg_types4, align 8, !dbg !823
  %and5 = and i32 %8, 31, !dbg !823
  %cmp = icmp ne i32 %and5, 8, !dbg !824
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !825
  br i1 %9, label %while.body, label %while.end, !dbg !820

while.body:                                       ; preds = %land.end
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !826
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !828
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 21, !dbg !829
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !830
  %arg_types6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 17, !dbg !830
  %13 = load i32, i32* %arg_types6, align 8, !dbg !830
  %and7 = and i32 %13, 31, !dbg !830
  %call = call i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %10, %struct.acpi_parse_state* %parser_state, i32 %and7, %union.acpi_parse_object** %arg) #3, !dbg !831
  store i32 %call, i32* %status, align 4, !dbg !832
  %14 = load i32, i32* %status, align 4, !dbg !833
  %tobool8 = icmp ne i32 %14, 0, !dbg !833
  br i1 %tobool8, label %if.then, label %if.end, !dbg !835

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %status, align 4, !dbg !836
  store i32 %15, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

if.end:                                           ; preds = %while.body
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %unnamed_op.addr, align 8, !dbg !838
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !839
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %16, %union.acpi_parse_object* %17) #3, !dbg !840
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !841
  %arg_types9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 17, !dbg !841
  %19 = load i32, i32* %arg_types9, align 8, !dbg !841
  %shr = lshr i32 %19, 5, !dbg !841
  store i32 %shr, i32* %arg_types9, align 8, !dbg !841
  br label %while.cond, !dbg !820, !llvm.loop !842

while.end:                                        ; preds = %land.end
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !844
  %arg_types10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 17, !dbg !844
  %21 = load i32, i32* %arg_types10, align 8, !dbg !844
  %and11 = and i32 %21, 31, !dbg !844
  %tobool12 = icmp ne i32 %and11, 0, !dbg !844
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !846

if.then13:                                        ; preds = %while.end
  store i32 12290, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

if.end14:                                         ; preds = %while.end
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !849
  %arg_types15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 17, !dbg !849
  %23 = load i32, i32* %arg_types15, align 8, !dbg !849
  %shr16 = lshr i32 %23, 5, !dbg !849
  store i32 %shr16, i32* %arg_types15, align 8, !dbg !849
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !850
  %op17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 40, !dbg !851
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %op17, align 8, !dbg !852
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !853
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 50, !dbg !854
  %26 = load i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback, align 8, !dbg !854
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !855
  %28 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !856
  %call18 = call i32 %26(%struct.acpi_walk_state* %27, %union.acpi_parse_object** %28) #3, !dbg !853
  store i32 %call18, i32* %status, align 4, !dbg !857
  %29 = load i32, i32* %status, align 4, !dbg !858
  %tobool19 = icmp ne i32 %29, 0, !dbg !858
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !860

if.then20:                                        ; preds = %if.end14
  %30 = load i32, i32* %status, align 4, !dbg !861
  %cmp21 = icmp ne i32 %30, 16387, !dbg !864
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !865

if.then22:                                        ; preds = %if.then20
  %31 = load i32, i32* %status, align 4, !dbg !866
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 220, i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #3, !dbg !866
  br label %if.end23, !dbg !868

if.end23:                                         ; preds = %if.then22, %if.then20
  %32 = load i32, i32* %status, align 4, !dbg !869
  store i32 %32, i32* %retval, align 4, !dbg !869
  br label %return, !dbg !869

if.end24:                                         ; preds = %if.end14
  %33 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !870
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %33, align 8, !dbg !872
  %tobool25 = icmp ne %union.acpi_parse_object* %34, null, !dbg !872
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !873

if.then26:                                        ; preds = %if.end24
  store i32 16395, i32* %retval, align 4, !dbg !874
  br label %return, !dbg !874

if.end27:                                         ; preds = %if.end24
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !876
  %36 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !877
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %36, align 8, !dbg !878
  %38 = load i32, i32* %status, align 4, !dbg !879
  %call28 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %35, %union.acpi_parse_object* %37, i32 %38) #3, !dbg !880
  store i32 %call28, i32* %status, align 4, !dbg !881
  %39 = load i32, i32* %status, align 4, !dbg !882
  %tobool29 = icmp ne i32 %39, 0, !dbg !882
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !884

if.then30:                                        ; preds = %if.end27
  %40 = load i32, i32* %status, align 4, !dbg !885
  %cmp31 = icmp eq i32 %40, 16386, !dbg !888
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !889

if.then32:                                        ; preds = %if.then30
  store i32 16396, i32* %status, align 4, !dbg !890
  br label %if.end33, !dbg !892

if.end33:                                         ; preds = %if.then32, %if.then30
  %41 = load i32, i32* %status, align 4, !dbg !893
  store i32 %41, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

if.end34:                                         ; preds = %if.end27
  %42 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !894
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %42, align 8, !dbg !895
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %unnamed_op.addr, align 8, !dbg !896
  %common35 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !897
  %value36 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common35, i32 0, i32 7, !dbg !898
  %arg37 = bitcast %union.acpi_parse_value* %value36 to %union.acpi_parse_object**, !dbg !899
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg37, align 8, !dbg !899
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %43, %union.acpi_parse_object* %45) #3, !dbg !900
  %46 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !901
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %46, align 8, !dbg !903
  %common38 = bitcast %union.acpi_parse_object* %47 to %struct.acpi_parse_obj_common*, !dbg !904
  %aml_opcode39 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common38, i32 0, i32 3, !dbg !905
  %48 = load i16, i16* %aml_opcode39, align 2, !dbg !905
  %conv = zext i16 %48 to i32, !dbg !906
  %cmp40 = icmp eq i32 %conv, 23424, !dbg !907
  br i1 %cmp40, label %if.then47, label %lor.lhs.false, !dbg !908

lor.lhs.false:                                    ; preds = %if.end34
  %49 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !909
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %49, align 8, !dbg !910
  %common42 = bitcast %union.acpi_parse_object* %50 to %struct.acpi_parse_obj_common*, !dbg !911
  %aml_opcode43 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common42, i32 0, i32 3, !dbg !912
  %51 = load i16, i16* %aml_opcode43, align 2, !dbg !912
  %conv44 = zext i16 %51 to i32, !dbg !913
  %cmp45 = icmp eq i32 %conv44, 23432, !dbg !914
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !915

if.then47:                                        ; preds = %lor.lhs.false, %if.end34
  %52 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !916
  %53 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !918
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %53, align 8, !dbg !919
  %named = bitcast %union.acpi_parse_object* %54 to %struct.acpi_parse_obj_named*, !dbg !920
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !921
  store i8* %52, i8** %data, align 8, !dbg !922
  %55 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !923
  %56 = load %union.acpi_parse_object*, %union.acpi_parse_object** %55, align 8, !dbg !924
  %named48 = bitcast %union.acpi_parse_object* %56 to %struct.acpi_parse_obj_named*, !dbg !925
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named48, i32 0, i32 11, !dbg !926
  store i32 0, i32* %length, align 8, !dbg !927
  br label %if.end49, !dbg !928

if.end49:                                         ; preds = %if.then47, %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !929
  br label %return, !dbg !929

return:                                           ; preds = %if.end49, %if.end33, %if.then26, %if.end23, %if.then13, %if.then
  %57 = load i32, i32* %retval, align 4, !dbg !930
  ret i32 %57, !dbg !930
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state*, %struct.acpi_parse_state*, i32, %union.acpi_parse_object**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_create_op(%struct.acpi_walk_state* %walk_state, i8* %aml_op_start, %union.acpi_parse_object** %new_op) #0 !dbg !931 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml_op_start.addr = alloca i8*, align 8
  %new_op.addr = alloca %union.acpi_parse_object**, align 8
  %status = alloca i32, align 4
  %op = alloca %union.acpi_parse_object*, align 8
  %named_op = alloca %union.acpi_parse_object*, align 8
  %parent_scope = alloca %union.acpi_parse_object*, align 8
  %argument_count = alloca i8, align 1
  %op_info = alloca %struct.acpi_opcode_info*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !934, metadata !DIExpression()), !dbg !935
  store i8* %aml_op_start, i8** %aml_op_start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aml_op_start.addr, metadata !936, metadata !DIExpression()), !dbg !937
  store %union.acpi_parse_object** %new_op, %union.acpi_parse_object*** %new_op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %new_op.addr, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %status, metadata !940, metadata !DIExpression()), !dbg !941
  store i32 0, i32* %status, align 4, !dbg !941
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %named_op, metadata !944, metadata !DIExpression()), !dbg !945
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %named_op, align 8, !dbg !945
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %parent_scope, metadata !946, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata i8* %argument_count, metadata !948, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.declare(metadata %struct.acpi_opcode_info** %op_info, metadata !950, metadata !DIExpression()), !dbg !951
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !952
  %call = call i32 @acpi_ps_get_aml_opcode(%struct.acpi_walk_state* %0) #3, !dbg !953
  store i32 %call, i32* %status, align 4, !dbg !954
  %1 = load i32, i32* %status, align 4, !dbg !955
  %cmp = icmp eq i32 %1, 16395, !dbg !957
  br i1 %cmp, label %if.then, label %if.end, !dbg !958

if.then:                                          ; preds = %entry
  store i32 16395, i32* %retval, align 4, !dbg !959
  br label %return, !dbg !959

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !961
  %tobool = icmp ne i32 %2, 0, !dbg !961
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !963

if.then1:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4, !dbg !964
  store i32 %3, i32* %retval, align 4, !dbg !964
  br label %return, !dbg !964

if.end2:                                          ; preds = %if.end
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !966
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 3, !dbg !967
  %5 = load i16, i16* %opcode, align 2, !dbg !967
  %call3 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %5) #3, !dbg !968
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !969
  %op_info4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 41, !dbg !970
  store %struct.acpi_opcode_info* %call3, %struct.acpi_opcode_info** %op_info4, align 8, !dbg !971
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !972
  %opcode5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 3, !dbg !973
  %8 = load i16, i16* %opcode5, align 2, !dbg !973
  %9 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !974
  %call6 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext %8, i8* %9) #3, !dbg !975
  store %union.acpi_parse_object* %call6, %union.acpi_parse_object** %op, align 8, !dbg !976
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !977
  %tobool7 = icmp ne %union.acpi_parse_object* %10, null, !dbg !977
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !979

if.then8:                                         ; preds = %if.end2
  store i32 4, i32* %retval, align 4, !dbg !980
  br label %return, !dbg !980

if.end9:                                          ; preds = %if.end2
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !982
  %op_info10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 41, !dbg !984
  %12 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info10, align 8, !dbg !984
  %flags = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %12, i32 0, i32 2, !dbg !985
  %13 = load i16, i16* %flags, align 4, !dbg !985
  %conv = zext i16 %13 to i32, !dbg !982
  %and = and i32 %conv, 64, !dbg !986
  %tobool11 = icmp ne i32 %and, 0, !dbg !986
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !987

if.then12:                                        ; preds = %if.end9
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !988
  %15 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !990
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !991
  %call13 = call i32 @acpi_ps_build_named_op(%struct.acpi_walk_state* %14, i8* %15, %union.acpi_parse_object* %16, %union.acpi_parse_object** %named_op) #3, !dbg !992
  store i32 %call13, i32* %status, align 4, !dbg !993
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !994
  call void @acpi_ps_free_op(%union.acpi_parse_object* %17) #3, !dbg !995
  %18 = load i32, i32* %status, align 4, !dbg !996
  %tobool14 = icmp ne i32 %18, 0, !dbg !996
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !998

if.then15:                                        ; preds = %if.then12
  %19 = load i32, i32* %status, align 4, !dbg !999
  store i32 %19, i32* %retval, align 4, !dbg !999
  br label %return, !dbg !999

if.end16:                                         ; preds = %if.then12
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %named_op, align 8, !dbg !1001
  %21 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %new_op.addr, align 8, !dbg !1002
  store %union.acpi_parse_object* %20, %union.acpi_parse_object** %21, align 8, !dbg !1003
  store i32 0, i32* %retval, align 4, !dbg !1004
  br label %return, !dbg !1004

if.end17:                                         ; preds = %if.end9
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1005
  %op_info18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 41, !dbg !1007
  %23 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info18, align 8, !dbg !1007
  %flags19 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %23, i32 0, i32 2, !dbg !1008
  %24 = load i16, i16* %flags19, align 4, !dbg !1008
  %conv20 = zext i16 %24 to i32, !dbg !1005
  %and21 = and i32 %conv20, 8, !dbg !1009
  %tobool22 = icmp ne i32 %and21, 0, !dbg !1009
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !1010

if.then23:                                        ; preds = %if.end17
  %25 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !1011
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1013
  %named = bitcast %union.acpi_parse_object* %26 to %struct.acpi_parse_obj_named*, !dbg !1014
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1015
  store i8* %25, i8** %data, align 8, !dbg !1016
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1017
  %named24 = bitcast %union.acpi_parse_object* %27 to %struct.acpi_parse_obj_named*, !dbg !1018
  %length = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named24, i32 0, i32 11, !dbg !1019
  store i32 0, i32* %length, align 8, !dbg !1020
  br label %if.end25, !dbg !1021

if.end25:                                         ; preds = %if.then23, %if.end17
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1022
  %opcode26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 3, !dbg !1024
  %29 = load i16, i16* %opcode26, align 2, !dbg !1024
  %conv27 = zext i16 %29 to i32, !dbg !1022
  %cmp28 = icmp eq i32 %conv27, 23431, !dbg !1025
  br i1 %cmp28, label %if.then30, label %if.end35, !dbg !1026

if.then30:                                        ; preds = %if.end25
  %30 = load i8*, i8** %aml_op_start.addr, align 8, !dbg !1027
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1029
  %named31 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_named*, !dbg !1030
  %data32 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named31, i32 0, i32 10, !dbg !1031
  store i8* %30, i8** %data32, align 8, !dbg !1032
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1033
  %named33 = bitcast %union.acpi_parse_object* %32 to %struct.acpi_parse_obj_named*, !dbg !1034
  %length34 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named33, i32 0, i32 11, !dbg !1035
  store i32 0, i32* %length34, align 8, !dbg !1036
  br label %if.end35, !dbg !1037

if.end35:                                         ; preds = %if.then30, %if.end25
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1038
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 21, !dbg !1039
  %call36 = call %union.acpi_parse_object* @acpi_ps_get_parent_scope(%struct.acpi_parse_state* %parser_state) #3, !dbg !1040
  store %union.acpi_parse_object* %call36, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1041
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1042
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1043
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %34, %union.acpi_parse_object* %35) #3, !dbg !1044
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1045
  %tobool37 = icmp ne %union.acpi_parse_object* %36, null, !dbg !1045
  br i1 %tobool37, label %if.then38, label %if.end76, !dbg !1047

if.then38:                                        ; preds = %if.end35
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1048
  %common = bitcast %union.acpi_parse_object* %37 to %struct.acpi_parse_obj_common*, !dbg !1050
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1051
  %38 = load i16, i16* %aml_opcode, align 2, !dbg !1051
  %call39 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %38) #3, !dbg !1052
  store %struct.acpi_opcode_info* %call39, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1053
  %39 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1054
  %flags40 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %39, i32 0, i32 2, !dbg !1056
  %40 = load i16, i16* %flags40, align 4, !dbg !1056
  %conv41 = zext i16 %40 to i32, !dbg !1054
  %and42 = and i32 %conv41, 2048, !dbg !1057
  %tobool43 = icmp ne i32 %and42, 0, !dbg !1057
  br i1 %tobool43, label %if.then44, label %if.else, !dbg !1058

if.then44:                                        ; preds = %if.then38
  %41 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1059
  %type = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %41, i32 0, i32 5, !dbg !1061
  %42 = load i8, i8* %type, align 4, !dbg !1061
  %conv45 = zext i8 %42 to i32, !dbg !1059
  %call46 = call zeroext i8 @acpi_ps_get_argument_count(i32 %conv45) #3, !dbg !1062
  store i8 %call46, i8* %argument_count, align 1, !dbg !1063
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1064
  %common47 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !1066
  %arg_list_length = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common47, i32 0, i32 8, !dbg !1067
  %44 = load i8, i8* %arg_list_length, align 8, !dbg !1067
  %conv48 = zext i8 %44 to i32, !dbg !1064
  %45 = load i8, i8* %argument_count, align 1, !dbg !1068
  %conv49 = zext i8 %45 to i32, !dbg !1068
  %cmp50 = icmp sgt i32 %conv48, %conv49, !dbg !1069
  br i1 %cmp50, label %if.then52, label %if.end57, !dbg !1070

if.then52:                                        ; preds = %if.then44
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1071
  %common53 = bitcast %union.acpi_parse_object* %46 to %struct.acpi_parse_obj_common*, !dbg !1073
  %flags54 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common53, i32 0, i32 2, !dbg !1074
  %47 = load i8, i8* %flags54, align 1, !dbg !1075
  %conv55 = zext i8 %47 to i32, !dbg !1075
  %or = or i32 %conv55, 32, !dbg !1075
  %conv56 = trunc i32 %or to i8, !dbg !1075
  store i8 %conv56, i8* %flags54, align 1, !dbg !1075
  br label %if.end57, !dbg !1076

if.end57:                                         ; preds = %if.then52, %if.then44
  br label %if.end75, !dbg !1077

if.else:                                          ; preds = %if.then38
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1078
  %common58 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !1080
  %aml_opcode59 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common58, i32 0, i32 3, !dbg !1081
  %49 = load i16, i16* %aml_opcode59, align 2, !dbg !1081
  %conv60 = zext i16 %49 to i32, !dbg !1078
  %cmp61 = icmp eq i32 %conv60, 117, !dbg !1082
  br i1 %cmp61, label %if.then68, label %lor.lhs.false, !dbg !1083

lor.lhs.false:                                    ; preds = %if.else
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent_scope, align 8, !dbg !1084
  %common63 = bitcast %union.acpi_parse_object* %50 to %struct.acpi_parse_obj_common*, !dbg !1085
  %aml_opcode64 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common63, i32 0, i32 3, !dbg !1086
  %51 = load i16, i16* %aml_opcode64, align 2, !dbg !1086
  %conv65 = zext i16 %51 to i32, !dbg !1084
  %cmp66 = icmp eq i32 %conv65, 118, !dbg !1087
  br i1 %cmp66, label %if.then68, label %if.end74, !dbg !1088

if.then68:                                        ; preds = %lor.lhs.false, %if.else
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1089
  %common69 = bitcast %union.acpi_parse_object* %52 to %struct.acpi_parse_obj_common*, !dbg !1091
  %flags70 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common69, i32 0, i32 2, !dbg !1092
  %53 = load i8, i8* %flags70, align 1, !dbg !1093
  %conv71 = zext i8 %53 to i32, !dbg !1093
  %or72 = or i32 %conv71, 32, !dbg !1093
  %conv73 = trunc i32 %or72 to i8, !dbg !1093
  store i8 %conv73, i8* %flags70, align 1, !dbg !1093
  br label %if.end74, !dbg !1094

if.end74:                                         ; preds = %if.then68, %lor.lhs.false
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end57
  br label %if.end76, !dbg !1095

if.end76:                                         ; preds = %if.end75, %if.end35
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1096
  %descending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 50, !dbg !1098
  %55 = load i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback, align 8, !dbg !1098
  %cmp77 = icmp ne i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* %55, null, !dbg !1099
  br i1 %cmp77, label %if.then79, label %if.end88, !dbg !1100

if.then79:                                        ; preds = %if.end76
  %56 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1101
  %57 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %new_op.addr, align 8, !dbg !1103
  store %union.acpi_parse_object* %56, %union.acpi_parse_object** %57, align 8, !dbg !1104
  %58 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1105
  %op80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %58, i32 0, i32 40, !dbg !1106
  store %union.acpi_parse_object* %56, %union.acpi_parse_object** %op80, align 8, !dbg !1107
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1108
  %descending_callback81 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 50, !dbg !1109
  %60 = load i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %descending_callback81, align 8, !dbg !1109
  %61 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1110
  %call82 = call i32 %60(%struct.acpi_walk_state* %61, %union.acpi_parse_object** %op) #3, !dbg !1108
  store i32 %call82, i32* %status, align 4, !dbg !1111
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1112
  %63 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1113
  %64 = load i32, i32* %status, align 4, !dbg !1114
  %call83 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %62, %union.acpi_parse_object* %63, i32 %64) #3, !dbg !1115
  store i32 %call83, i32* %status, align 4, !dbg !1116
  %65 = load i32, i32* %status, align 4, !dbg !1117
  %cmp84 = icmp eq i32 %65, 16386, !dbg !1119
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !1120

if.then86:                                        ; preds = %if.then79
  store i32 16396, i32* %status, align 4, !dbg !1121
  br label %if.end87, !dbg !1123

if.end87:                                         ; preds = %if.then86, %if.then79
  br label %if.end88, !dbg !1124

if.end88:                                         ; preds = %if.end87, %if.end76
  %66 = load i32, i32* %status, align 4, !dbg !1125
  store i32 %66, i32* %retval, align 4, !dbg !1125
  br label %return, !dbg !1125

return:                                           ; preds = %if.end88, %if.end16, %if.then15, %if.then8, %if.then1, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !1126
  ret i32 %67, !dbg !1126
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ps_get_aml_opcode(%struct.acpi_walk_state* %walk_state) #0 !dbg !1127 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %aml_offset = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata i32* %aml_offset, metadata !1130, metadata !DIExpression()), !dbg !1131
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1132
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 21, !dbg !1133
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 1, !dbg !1134
  %1 = load i8*, i8** %aml, align 8, !dbg !1134
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1135
  %aml1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 16, !dbg !1136
  store i8* %1, i8** %aml1, align 8, !dbg !1137
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1138
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %3, i32 0, i32 21, !dbg !1139
  %call = call zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state* %parser_state2) #3, !dbg !1140
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1141
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 3, !dbg !1142
  store i16 %call, i16* %opcode, align 2, !dbg !1143
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1144
  %opcode3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %5, i32 0, i32 3, !dbg !1145
  %6 = load i16, i16* %opcode3, align 2, !dbg !1145
  %call4 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %6) #3, !dbg !1146
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1147
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 41, !dbg !1148
  store %struct.acpi_opcode_info* %call4, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1149
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1150
  %op_info5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 41, !dbg !1151
  %9 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info5, align 8, !dbg !1151
  %class = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %9, i32 0, i32 4, !dbg !1152
  %10 = load i8, i8* %class, align 1, !dbg !1152
  %conv = zext i8 %10 to i32, !dbg !1150
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 10, label %sw.bb7
  ], !dbg !1153

sw.bb:                                            ; preds = %entry, %entry
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1154
  %opcode6 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 3, !dbg !1156
  store i16 45, i16* %opcode6, align 2, !dbg !1157
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1158
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 17, !dbg !1159
  store i32 9, i32* %arg_types, align 8, !dbg !1160
  br label %sw.epilog, !dbg !1161

sw.bb7:                                           ; preds = %entry
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1162
  %pass_number = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 12, !dbg !1164
  %14 = load i8, i8* %pass_number, align 2, !dbg !1164
  %conv8 = zext i8 %14 to i32, !dbg !1162
  %cmp = icmp eq i32 %conv8, 2, !dbg !1165
  br i1 %cmp, label %if.then, label %if.end, !dbg !1166

if.then:                                          ; preds = %sw.bb7
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1167
  %aml10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 16, !dbg !1167
  %16 = load i8*, i8** %aml10, align 8, !dbg !1167
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1167
  %parser_state11 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 21, !dbg !1167
  %aml_start = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state11, i32 0, i32 0, !dbg !1167
  %18 = load i8*, i8** %aml_start, align 8, !dbg !1167
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !1167
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64, !dbg !1167
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1167
  %conv12 = trunc i64 %sub.ptr.sub to i32, !dbg !1167
  store i32 %conv12, i32* %aml_offset, align 4, !dbg !1167
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1169
  %opcode13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 3, !dbg !1169
  %20 = load i16, i16* %opcode13, align 2, !dbg !1169
  %conv14 = zext i16 %20 to i32, !dbg !1169
  %21 = load i32, i32* %aml_offset, align 4, !dbg !1169
  %conv15 = zext i32 %21 to i64, !dbg !1169
  %add = add i64 %conv15, 36, !dbg !1169
  %conv16 = trunc i64 %add to i32, !dbg !1169
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %conv14, i32 %conv16) #3, !dbg !1169
  br label %if.end, !dbg !1170

if.end:                                           ; preds = %if.then, %sw.bb7
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1171
  %parser_state17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 21, !dbg !1172
  %aml18 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state17, i32 0, i32 1, !dbg !1173
  %23 = load i8*, i8** %aml18, align 8, !dbg !1174
  %incdec.ptr = getelementptr i8, i8* %23, i32 1, !dbg !1174
  store i8* %incdec.ptr, i8** %aml18, align 8, !dbg !1174
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1175
  %opcode19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 3, !dbg !1177
  %25 = load i16, i16* %opcode19, align 2, !dbg !1177
  %conv20 = zext i16 %25 to i32, !dbg !1175
  %cmp21 = icmp sgt i32 %conv20, 255, !dbg !1178
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !1179

if.then23:                                        ; preds = %if.end
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1180
  %parser_state24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 21, !dbg !1182
  %aml25 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state24, i32 0, i32 1, !dbg !1183
  %27 = load i8*, i8** %aml25, align 8, !dbg !1184
  %incdec.ptr26 = getelementptr i8, i8* %27, i32 1, !dbg !1184
  store i8* %incdec.ptr26, i8** %aml25, align 8, !dbg !1184
  br label %if.end27, !dbg !1185

if.end27:                                         ; preds = %if.then23, %if.end
  store i32 16395, i32* %retval, align 4, !dbg !1186
  br label %return, !dbg !1186

sw.default:                                       ; preds = %entry
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1187
  %opcode28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 3, !dbg !1188
  %29 = load i16, i16* %opcode28, align 2, !dbg !1188
  %conv29 = zext i16 %29 to i32, !dbg !1187
  %call30 = call i32 @acpi_ps_get_opcode_size(i32 %conv29) #3, !dbg !1189
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1190
  %parser_state31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 21, !dbg !1191
  %aml32 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state31, i32 0, i32 1, !dbg !1192
  %31 = load i8*, i8** %aml32, align 8, !dbg !1193
  %idx.ext = zext i32 %call30 to i64, !dbg !1193
  %add.ptr = getelementptr i8, i8* %31, i64 %idx.ext, !dbg !1193
  store i8* %add.ptr, i8** %aml32, align 8, !dbg !1193
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1194
  %op_info33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 41, !dbg !1195
  %33 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info33, align 8, !dbg !1195
  %parse_args = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %33, i32 0, i32 0, !dbg !1196
  %34 = load i32, i32* %parse_args, align 4, !dbg !1196
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1197
  %arg_types34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 17, !dbg !1198
  store i32 %34, i32* %arg_types34, align 8, !dbg !1199
  br label %sw.epilog, !dbg !1200

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !1201
  br label %return, !dbg !1201

return:                                           ; preds = %sw.epilog, %if.end27
  %36 = load i32, i32* %retval, align 4, !dbg !1202
  ret i32 %36, !dbg !1202
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_free_op(%union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_get_parent_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ps_get_argument_count(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_complete_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object** %op, i32 %status) #0 !dbg !1203 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object**, align 8
  %status.addr = alloca i32, align 4
  %status2 = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  store %union.acpi_parse_object** %op, %union.acpi_parse_object*** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %op.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata i32* %status2, metadata !1212, metadata !DIExpression()), !dbg !1213
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1214
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 21, !dbg !1215
  %scope = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state, i32 0, i32 7, !dbg !1216
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope, align 8, !dbg !1216
  %parse_scope = bitcast %union.acpi_generic_state* %1 to %struct.acpi_pscope_state*, !dbg !1217
  %arg_count = getelementptr inbounds %struct.acpi_pscope_state, %struct.acpi_pscope_state* %parse_scope, i32 0, i32 5, !dbg !1218
  %2 = load i32, i32* %arg_count, align 8, !dbg !1219
  %dec = add i32 %2, -1, !dbg !1219
  store i32 %dec, i32* %arg_count, align 8, !dbg !1219
  %3 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1220
  %4 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1221
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8, !dbg !1222
  %call = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %3, %union.acpi_parse_object* %5) #3, !dbg !1223
  store i32 %call, i32* %status2, align 4, !dbg !1224
  %6 = load i32, i32* %status2, align 4, !dbg !1225
  %tobool = icmp ne i32 %6, 0, !dbg !1225
  br i1 %tobool, label %if.then, label %if.end, !dbg !1227

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status2, align 4, !dbg !1228
  store i32 %7, i32* %retval, align 4, !dbg !1228
  br label %return, !dbg !1228

if.end:                                           ; preds = %entry
  %8 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1230
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %8, align 8, !dbg !1231
  %9 = load i32, i32* %status.addr, align 4, !dbg !1232
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 16392, label %sw.bb1
    i32 16391, label %sw.bb2
    i32 16393, label %sw.bb19
    i32 16394, label %sw.bb19
    i32 16387, label %sw.bb42
  ], !dbg !1233

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog, !dbg !1234

sw.bb1:                                           ; preds = %if.end
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1236
  %prev_op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 47, !dbg !1237
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %prev_op, align 8, !dbg !1238
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1239
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 17, !dbg !1240
  %12 = load i32, i32* %arg_types, align 8, !dbg !1240
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1241
  %prev_arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 22, !dbg !1242
  store i32 %12, i32* %prev_arg_types, align 8, !dbg !1243
  %14 = load i32, i32* %status.addr, align 4, !dbg !1244
  store i32 %14, i32* %retval, align 4, !dbg !1244
  br label %return, !dbg !1244

sw.bb2:                                           ; preds = %if.end
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1245
  %parser_state3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 21, !dbg !1246
  %16 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1247
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1248
  %arg_types4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 17, !dbg !1249
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1250
  %arg_count5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 23, !dbg !1251
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state3, %union.acpi_parse_object** %16, i32* %arg_types4, i32* %arg_count5) #3, !dbg !1252
  %19 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1253
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %19, align 8, !dbg !1255
  %tobool6 = icmp ne %union.acpi_parse_object* %20, null, !dbg !1255
  br i1 %tobool6, label %if.then7, label %if.end18, !dbg !1256

if.then7:                                         ; preds = %sw.bb2
  %21 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1257
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %21, align 8, !dbg !1259
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1260
  %op8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 40, !dbg !1261
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %op8, align 8, !dbg !1262
  %24 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1263
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %24, align 8, !dbg !1264
  %common = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !1265
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1266
  %26 = load i16, i16* %aml_opcode, align 2, !dbg !1266
  %call9 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %26) #3, !dbg !1267
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1268
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 41, !dbg !1269
  store %struct.acpi_opcode_info* %call9, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1270
  %28 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1271
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %28, align 8, !dbg !1272
  %common10 = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_common*, !dbg !1273
  %aml_opcode11 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common10, i32 0, i32 3, !dbg !1274
  %30 = load i16, i16* %aml_opcode11, align 2, !dbg !1274
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1275
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 3, !dbg !1276
  store i16 %30, i16* %opcode, align 2, !dbg !1277
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1278
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 51, !dbg !1279
  %33 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %ascending_callback, align 8, !dbg !1279
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1280
  %call12 = call i32 %33(%struct.acpi_walk_state* %34) #3, !dbg !1278
  store i32 %call12, i32* %status.addr, align 4, !dbg !1281
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1282
  %36 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1283
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %36, align 8, !dbg !1284
  %38 = load i32, i32* %status.addr, align 4, !dbg !1285
  %call13 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %35, %union.acpi_parse_object* %37, i32 %38) #3, !dbg !1286
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1287
  %40 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1288
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %40, align 8, !dbg !1289
  %call14 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %39, %union.acpi_parse_object* %41) #3, !dbg !1290
  store i32 %call14, i32* %status2, align 4, !dbg !1291
  %42 = load i32, i32* %status2, align 4, !dbg !1292
  %tobool15 = icmp ne i32 %42, 0, !dbg !1292
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1294

if.then16:                                        ; preds = %if.then7
  %43 = load i32, i32* %status2, align 4, !dbg !1295
  store i32 %43, i32* %retval, align 4, !dbg !1295
  br label %return, !dbg !1295

if.end17:                                         ; preds = %if.then7
  br label %if.end18, !dbg !1297

if.end18:                                         ; preds = %if.end17, %sw.bb2
  br label %sw.epilog, !dbg !1298

sw.bb19:                                          ; preds = %if.end, %if.end
  br label %while.cond, !dbg !1299

while.cond:                                       ; preds = %while.body, %sw.bb19
  %44 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1300
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %44, align 8, !dbg !1301
  %tobool20 = icmp ne %union.acpi_parse_object* %45, null, !dbg !1302
  br i1 %tobool20, label %lor.rhs, label %lor.end, !dbg !1303

lor.rhs:                                          ; preds = %while.cond
  %46 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1304
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %46, align 8, !dbg !1305
  %common21 = bitcast %union.acpi_parse_object* %47 to %struct.acpi_parse_obj_common*, !dbg !1306
  %aml_opcode22 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common21, i32 0, i32 3, !dbg !1307
  %48 = load i16, i16* %aml_opcode22, align 2, !dbg !1307
  %conv = zext i16 %48 to i32, !dbg !1308
  %cmp = icmp ne i32 %conv, 162, !dbg !1309
  br label %lor.end, !dbg !1303

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %49 = phi i1 [ true, %while.cond ], [ %cmp, %lor.rhs ]
  br i1 %49, label %while.body, label %while.end, !dbg !1299

while.body:                                       ; preds = %lor.end
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1310
  %parser_state24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 21, !dbg !1312
  %51 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1313
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1314
  %arg_types25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 17, !dbg !1315
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1316
  %arg_count26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 23, !dbg !1317
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state24, %union.acpi_parse_object** %51, i32* %arg_types25, i32* %arg_count26) #3, !dbg !1318
  br label %while.cond, !dbg !1299, !llvm.loop !1319

while.end:                                        ; preds = %lor.end
  %54 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1321
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %54, align 8, !dbg !1322
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1323
  %op27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 40, !dbg !1324
  store %union.acpi_parse_object* %55, %union.acpi_parse_object** %op27, align 8, !dbg !1325
  %57 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1326
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %57, align 8, !dbg !1327
  %common28 = bitcast %union.acpi_parse_object* %58 to %struct.acpi_parse_obj_common*, !dbg !1328
  %aml_opcode29 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common28, i32 0, i32 3, !dbg !1329
  %59 = load i16, i16* %aml_opcode29, align 2, !dbg !1329
  %call30 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %59) #3, !dbg !1330
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1331
  %op_info31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 41, !dbg !1332
  store %struct.acpi_opcode_info* %call30, %struct.acpi_opcode_info** %op_info31, align 8, !dbg !1333
  %61 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1334
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %61, align 8, !dbg !1335
  %common32 = bitcast %union.acpi_parse_object* %62 to %struct.acpi_parse_obj_common*, !dbg !1336
  %aml_opcode33 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common32, i32 0, i32 3, !dbg !1337
  %63 = load i16, i16* %aml_opcode33, align 2, !dbg !1337
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1338
  %opcode34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 3, !dbg !1339
  store i16 %63, i16* %opcode34, align 2, !dbg !1340
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1341
  %ascending_callback35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 51, !dbg !1342
  %66 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %ascending_callback35, align 8, !dbg !1342
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1343
  %call36 = call i32 %66(%struct.acpi_walk_state* %67) #3, !dbg !1341
  store i32 %call36, i32* %status.addr, align 4, !dbg !1344
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1345
  %69 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1346
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %69, align 8, !dbg !1347
  %71 = load i32, i32* %status.addr, align 4, !dbg !1348
  %call37 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %68, %union.acpi_parse_object* %70, i32 %71) #3, !dbg !1349
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1350
  %73 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1351
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %73, align 8, !dbg !1352
  %call38 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %72, %union.acpi_parse_object* %74) #3, !dbg !1353
  store i32 %call38, i32* %status2, align 4, !dbg !1354
  %75 = load i32, i32* %status2, align 4, !dbg !1355
  %tobool39 = icmp ne i32 %75, 0, !dbg !1355
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !1357

if.then40:                                        ; preds = %while.end
  %76 = load i32, i32* %status2, align 4, !dbg !1358
  store i32 %76, i32* %retval, align 4, !dbg !1358
  br label %return, !dbg !1358

if.end41:                                         ; preds = %while.end
  br label %sw.epilog, !dbg !1360

sw.bb42:                                          ; preds = %if.end
  br label %do.body, !dbg !1361

do.body:                                          ; preds = %do.cond, %sw.bb42
  %77 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1362
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %77, align 8, !dbg !1365
  %tobool43 = icmp ne %union.acpi_parse_object* %78, null, !dbg !1365
  br i1 %tobool43, label %if.then44, label %if.end50, !dbg !1366

if.then44:                                        ; preds = %do.body
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1367
  %80 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1369
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %80, align 8, !dbg !1370
  %call45 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %79, %union.acpi_parse_object* %81) #3, !dbg !1371
  store i32 %call45, i32* %status2, align 4, !dbg !1372
  %82 = load i32, i32* %status2, align 4, !dbg !1373
  %tobool46 = icmp ne i32 %82, 0, !dbg !1373
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !1375

if.then47:                                        ; preds = %if.then44
  %83 = load i32, i32* %status2, align 4, !dbg !1376
  store i32 %83, i32* %retval, align 4, !dbg !1376
  br label %return, !dbg !1376

if.end48:                                         ; preds = %if.then44
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1378
  %control_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %84, i32 0, i32 32, !dbg !1379
  %call49 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %control_state) #3, !dbg !1380
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %call49) #3, !dbg !1381
  br label %if.end50, !dbg !1382

if.end50:                                         ; preds = %if.end48, %do.body
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1383
  %parser_state51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 21, !dbg !1384
  %86 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1385
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1386
  %arg_types52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 17, !dbg !1387
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1388
  %arg_count53 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %88, i32 0, i32 23, !dbg !1389
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state51, %union.acpi_parse_object** %86, i32* %arg_types52, i32* %arg_count53) #3, !dbg !1390
  br label %do.cond, !dbg !1391

do.cond:                                          ; preds = %if.end50
  %89 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1392
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %89, align 8, !dbg !1393
  %tobool54 = icmp ne %union.acpi_parse_object* %90, null, !dbg !1391
  br i1 %tobool54, label %do.body, label %do.end, !dbg !1391, !llvm.loop !1394

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !1396
  br label %return, !dbg !1396

sw.default:                                       ; preds = %if.end
  br label %do.body55, !dbg !1397

do.body55:                                        ; preds = %do.cond83, %sw.default
  %91 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1398
  %92 = load %union.acpi_parse_object*, %union.acpi_parse_object** %91, align 8, !dbg !1401
  %tobool56 = icmp ne %union.acpi_parse_object* %92, null, !dbg !1401
  br i1 %tobool56, label %if.then57, label %if.end79, !dbg !1402

if.then57:                                        ; preds = %do.body55
  %93 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1403
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %93, align 8, !dbg !1406
  %common58 = bitcast %union.acpi_parse_object* %94 to %struct.acpi_parse_obj_common*, !dbg !1407
  %aml_opcode59 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common58, i32 0, i32 3, !dbg !1408
  %95 = load i16, i16* %aml_opcode59, align 2, !dbg !1408
  %conv60 = zext i16 %95 to i32, !dbg !1409
  %cmp61 = icmp eq i32 %conv60, 23424, !dbg !1410
  br i1 %cmp61, label %if.then68, label %lor.lhs.false, !dbg !1411

lor.lhs.false:                                    ; preds = %if.then57
  %96 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1412
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %96, align 8, !dbg !1413
  %common63 = bitcast %union.acpi_parse_object* %97 to %struct.acpi_parse_obj_common*, !dbg !1414
  %aml_opcode64 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common63, i32 0, i32 3, !dbg !1415
  %98 = load i16, i16* %aml_opcode64, align 2, !dbg !1415
  %conv65 = zext i16 %98 to i32, !dbg !1416
  %cmp66 = icmp eq i32 %conv65, 23432, !dbg !1417
  br i1 %cmp66, label %if.then68, label %if.end74, !dbg !1418

if.then68:                                        ; preds = %lor.lhs.false, %if.then57
  %99 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1419
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %99, align 8, !dbg !1421
  %common69 = bitcast %union.acpi_parse_object* %100 to %struct.acpi_parse_obj_common*, !dbg !1422
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common69, i32 0, i32 6, !dbg !1423
  %101 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1423
  call void @acpi_ns_delete_children(%struct.acpi_namespace_node* %101) #3, !dbg !1424
  %102 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1425
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %102, align 8, !dbg !1426
  %common70 = bitcast %union.acpi_parse_object* %103 to %struct.acpi_parse_obj_common*, !dbg !1427
  %node71 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common70, i32 0, i32 6, !dbg !1428
  %104 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node71, align 8, !dbg !1428
  call void @acpi_ns_remove_node(%struct.acpi_namespace_node* %104) #3, !dbg !1429
  %105 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1430
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %105, align 8, !dbg !1431
  %common72 = bitcast %union.acpi_parse_object* %106 to %struct.acpi_parse_obj_common*, !dbg !1432
  %node73 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common72, i32 0, i32 6, !dbg !1433
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %node73, align 8, !dbg !1434
  %107 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1435
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %107, align 8, !dbg !1436
  call void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %108) #3, !dbg !1437
  br label %if.end74, !dbg !1438

if.end74:                                         ; preds = %if.then68, %lor.lhs.false
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1439
  %110 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1440
  %111 = load %union.acpi_parse_object*, %union.acpi_parse_object** %110, align 8, !dbg !1441
  %call75 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %109, %union.acpi_parse_object* %111) #3, !dbg !1442
  store i32 %call75, i32* %status2, align 4, !dbg !1443
  %112 = load i32, i32* %status2, align 4, !dbg !1444
  %tobool76 = icmp ne i32 %112, 0, !dbg !1444
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !1446

if.then77:                                        ; preds = %if.end74
  %113 = load i32, i32* %status2, align 4, !dbg !1447
  store i32 %113, i32* %retval, align 4, !dbg !1447
  br label %return, !dbg !1447

if.end78:                                         ; preds = %if.end74
  br label %if.end79, !dbg !1449

if.end79:                                         ; preds = %if.end78, %do.body55
  %114 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1450
  %parser_state80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %114, i32 0, i32 21, !dbg !1451
  %115 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1452
  %116 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1453
  %arg_types81 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %116, i32 0, i32 17, !dbg !1454
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1455
  %arg_count82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 23, !dbg !1456
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state80, %union.acpi_parse_object** %115, i32* %arg_types81, i32* %arg_count82) #3, !dbg !1457
  br label %do.cond83, !dbg !1458

do.cond83:                                        ; preds = %if.end79
  %118 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1459
  %119 = load %union.acpi_parse_object*, %union.acpi_parse_object** %118, align 8, !dbg !1460
  %tobool84 = icmp ne %union.acpi_parse_object* %119, null, !dbg !1458
  br i1 %tobool84, label %do.body55, label %do.end85, !dbg !1458, !llvm.loop !1461

do.end85:                                         ; preds = %do.cond83
  %120 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1463
  %prev_op86 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %120, i32 0, i32 47, !dbg !1464
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %prev_op86, align 8, !dbg !1465
  %121 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1466
  %arg_types87 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %121, i32 0, i32 17, !dbg !1467
  %122 = load i32, i32* %arg_types87, align 8, !dbg !1467
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1468
  %prev_arg_types88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %123, i32 0, i32 22, !dbg !1469
  store i32 %122, i32* %prev_arg_types88, align 8, !dbg !1470
  %124 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1471
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %124, i32 0, i32 20, !dbg !1473
  %125 = load i32, i32* %parse_flags, align 4, !dbg !1473
  %and = and i32 %125, 1024, !dbg !1474
  %tobool89 = icmp ne i32 %and, 0, !dbg !1474
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !1475

if.then90:                                        ; preds = %do.end85
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !1476
  store i32 0, i32* %retval, align 4, !dbg !1478
  br label %return, !dbg !1478

if.end91:                                         ; preds = %do.end85
  %126 = load i32, i32* %status.addr, align 4, !dbg !1479
  store i32 %126, i32* %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

sw.epilog:                                        ; preds = %if.end41, %if.end18, %sw.bb
  %127 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1480
  %parser_state92 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %127, i32 0, i32 21, !dbg !1482
  %call93 = call zeroext i8 @acpi_ps_has_completed_scope(%struct.acpi_parse_state* %parser_state92) #3, !dbg !1483
  %tobool94 = icmp ne i8 %call93, 0, !dbg !1483
  br i1 %tobool94, label %if.then95, label %if.else, !dbg !1484

if.then95:                                        ; preds = %sw.epilog
  %128 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1485
  %parser_state96 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %128, i32 0, i32 21, !dbg !1487
  %129 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1488
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1489
  %arg_types97 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %130, i32 0, i32 17, !dbg !1490
  %131 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1491
  %arg_count98 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %131, i32 0, i32 23, !dbg !1492
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state96, %union.acpi_parse_object** %129, i32* %arg_types97, i32* %arg_count98) #3, !dbg !1493
  br label %if.end99, !dbg !1494

if.else:                                          ; preds = %sw.epilog
  %132 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %op.addr, align 8, !dbg !1495
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %132, align 8, !dbg !1497
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then95
  store i32 0, i32* %retval, align 4, !dbg !1498
  br label %return, !dbg !1498

return:                                           ; preds = %if.end99, %if.end91, %if.then90, %if.then77, %do.end, %if.then47, %if.then40, %if.then16, %sw.bb1, %if.then
  %133 = load i32, i32* %retval, align 4, !dbg !1499
  ret i32 %133, !dbg !1499
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_pop_scope(%struct.acpi_parse_state*, %union.acpi_parse_object**, i32*, i32*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_delete_children(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ns_remove_node(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ps_has_completed_scope(%struct.acpi_parse_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_complete_final_op(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, i32 %status) #0 !dbg !1500 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status.addr = alloca i32, align 4
  %status2 = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1505, metadata !DIExpression()), !dbg !1506
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %status.addr, metadata !1507, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.declare(metadata i32* %status2, metadata !1509, metadata !DIExpression()), !dbg !1510
  br label %do.body, !dbg !1511

do.body:                                          ; preds = %do.cond39, %entry
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1512
  %tobool = icmp ne %union.acpi_parse_object* %0, null, !dbg !1512
  br i1 %tobool, label %if.then, label %if.end35, !dbg !1515

if.then:                                          ; preds = %do.body
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1516
  %ascending_callback = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 51, !dbg !1519
  %2 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %ascending_callback, align 8, !dbg !1519
  %cmp = icmp ne i32 (%struct.acpi_walk_state*)* %2, null, !dbg !1520
  br i1 %cmp, label %if.then1, label %if.end30, !dbg !1521

if.then1:                                         ; preds = %if.then
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1522
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1524
  %op2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 40, !dbg !1525
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %op2, align 8, !dbg !1526
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1527
  %common = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1528
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 3, !dbg !1529
  %6 = load i16, i16* %aml_opcode, align 2, !dbg !1529
  %call = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i16 zeroext %6) #3, !dbg !1530
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1531
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 41, !dbg !1532
  store %struct.acpi_opcode_info* %call, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1533
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1534
  %common3 = bitcast %union.acpi_parse_object* %8 to %struct.acpi_parse_obj_common*, !dbg !1535
  %aml_opcode4 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 3, !dbg !1536
  %9 = load i16, i16* %aml_opcode4, align 2, !dbg !1536
  %10 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1537
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %10, i32 0, i32 3, !dbg !1538
  store i16 %9, i16* %opcode, align 2, !dbg !1539
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1540
  %ascending_callback5 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 51, !dbg !1541
  %12 = load i32 (%struct.acpi_walk_state*)*, i32 (%struct.acpi_walk_state*)** %ascending_callback5, align 8, !dbg !1541
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1542
  %call6 = call i32 %12(%struct.acpi_walk_state* %13) #3, !dbg !1540
  store i32 %call6, i32* %status.addr, align 4, !dbg !1543
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1544
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1545
  %16 = load i32, i32* %status.addr, align 4, !dbg !1546
  %call7 = call i32 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %14, %union.acpi_parse_object* %15, i32 %16) #3, !dbg !1547
  store i32 %call7, i32* %status.addr, align 4, !dbg !1548
  %17 = load i32, i32* %status.addr, align 4, !dbg !1549
  %cmp8 = icmp eq i32 %17, 16386, !dbg !1551
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !1552

if.then9:                                         ; preds = %if.then1
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1553
  %call10 = call i32 @acpi_ps_complete_op(%struct.acpi_walk_state* %18, %union.acpi_parse_object** %op.addr, i32 0) #3, !dbg !1555
  store i32 %call10, i32* %status.addr, align 4, !dbg !1556
  %19 = load i32, i32* %status.addr, align 4, !dbg !1557
  %tobool11 = icmp ne i32 %19, 0, !dbg !1557
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !1559

if.then12:                                        ; preds = %if.then9
  %20 = load i32, i32* %status.addr, align 4, !dbg !1560
  store i32 %20, i32* %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

if.end:                                           ; preds = %if.then9
  br label %if.end13, !dbg !1562

if.end13:                                         ; preds = %if.end, %if.then1
  %21 = load i32, i32* %status.addr, align 4, !dbg !1563
  %cmp14 = icmp eq i32 %21, 16387, !dbg !1565
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !1566

if.then15:                                        ; preds = %if.end13
  store i32 0, i32* %status.addr, align 4, !dbg !1567
  br label %do.body16, !dbg !1569

do.body16:                                        ; preds = %do.cond, %if.then15
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1570
  %tobool17 = icmp ne %union.acpi_parse_object* %22, null, !dbg !1570
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !1573

if.then18:                                        ; preds = %do.body16
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1574
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1576
  %call19 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %23, %union.acpi_parse_object* %24) #3, !dbg !1577
  store i32 %call19, i32* %status2, align 4, !dbg !1578
  %25 = load i32, i32* %status2, align 4, !dbg !1579
  %tobool20 = icmp ne i32 %25, 0, !dbg !1579
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1581

if.then21:                                        ; preds = %if.then18
  %26 = load i32, i32* %status2, align 4, !dbg !1582
  store i32 %26, i32* %retval, align 4, !dbg !1582
  br label %return, !dbg !1582

if.end22:                                         ; preds = %if.then18
  br label %if.end23, !dbg !1584

if.end23:                                         ; preds = %if.end22, %do.body16
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1585
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 21, !dbg !1586
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1587
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 17, !dbg !1588
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1589
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 23, !dbg !1590
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state, %union.acpi_parse_object** %op.addr, i32* %arg_types, i32* %arg_count) #3, !dbg !1591
  br label %do.cond, !dbg !1592

do.cond:                                          ; preds = %if.end23
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1593
  %tobool24 = icmp ne %union.acpi_parse_object* %30, null, !dbg !1592
  br i1 %tobool24, label %do.body16, label %do.end, !dbg !1592, !llvm.loop !1594

do.end:                                           ; preds = %do.cond
  %31 = load i32, i32* %status.addr, align 4, !dbg !1596
  store i32 %31, i32* %retval, align 4, !dbg !1596
  br label %return, !dbg !1596

if.else:                                          ; preds = %if.end13
  %32 = load i32, i32* %status.addr, align 4, !dbg !1597
  %tobool25 = icmp ne i32 %32, 0, !dbg !1597
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !1599

if.then26:                                        ; preds = %if.else
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1600
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1602
  %call27 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %33, %union.acpi_parse_object* %34) #3, !dbg !1603
  %35 = load i32, i32* %status.addr, align 4, !dbg !1604
  store i32 %35, i32* %retval, align 4, !dbg !1604
  br label %return, !dbg !1604

if.end28:                                         ; preds = %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %if.end30, !dbg !1605

if.end30:                                         ; preds = %if.end29, %if.then
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1606
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1607
  %call31 = call i32 @acpi_ps_complete_this_op(%struct.acpi_walk_state* %36, %union.acpi_parse_object* %37) #3, !dbg !1608
  store i32 %call31, i32* %status2, align 4, !dbg !1609
  %38 = load i32, i32* %status2, align 4, !dbg !1610
  %tobool32 = icmp ne i32 %38, 0, !dbg !1610
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1612

if.then33:                                        ; preds = %if.end30
  %39 = load i32, i32* %status2, align 4, !dbg !1613
  store i32 %39, i32* %retval, align 4, !dbg !1613
  br label %return, !dbg !1613

if.end34:                                         ; preds = %if.end30
  br label %if.end35, !dbg !1615

if.end35:                                         ; preds = %if.end34, %do.body
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1616
  %parser_state36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 21, !dbg !1617
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1618
  %arg_types37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 17, !dbg !1619
  %42 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1620
  %arg_count38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %42, i32 0, i32 23, !dbg !1621
  call void @acpi_ps_pop_scope(%struct.acpi_parse_state* %parser_state36, %union.acpi_parse_object** %op.addr, i32* %arg_types37, i32* %arg_count38) #3, !dbg !1622
  br label %do.cond39, !dbg !1623

do.cond39:                                        ; preds = %if.end35
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1624
  %tobool40 = icmp ne %union.acpi_parse_object* %43, null, !dbg !1623
  br i1 %tobool40, label %do.body, label %do.end41, !dbg !1623, !llvm.loop !1625

do.end41:                                         ; preds = %do.cond39
  %44 = load i32, i32* %status.addr, align 4, !dbg !1627
  store i32 %44, i32* %retval, align 4, !dbg !1627
  br label %return, !dbg !1627

return:                                           ; preds = %do.end41, %if.then33, %if.then26, %do.end, %if.then21, %if.then12
  %45 = load i32, i32* %retval, align 4, !dbg !1628
  ret i32 %45, !dbg !1628
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ps_get_opcode_size(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psobject.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13, !16, !17, !21}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !15)
!15 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !20)
!20 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!0}
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 72, elements: !29)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 9)
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"Code Model", i32 2}
!35 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!36 = distinct !DISubprogram(name: "acpi_ps_build_named_op", scope: !3, file: !3, line: 154, type: !37, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{!6, !39, !21, !75, !790}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !41, line: 37, size: 9024, elements: !42)
!41 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !742, !743, !744, !745, !746, !750, !752, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !777, !778, !779, !780, !781, !782, !783, !784, !785, !791}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !41, line: 38, baseType: !39, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !41, line: 39, baseType: !22, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !40, file: !41, line: 40, baseType: !22, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !40, file: !41, line: 41, baseType: !13, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !40, file: !41, line: 42, baseType: !22, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !40, file: !41, line: 43, baseType: !22, size: 8, offset: 104)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !40, file: !41, line: 44, baseType: !22, size: 8, offset: 112)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !40, file: !41, line: 45, baseType: !51, size: 16, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !13)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !40, file: !41, line: 46, baseType: !22, size: 8, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !40, file: !41, line: 47, baseType: !22, size: 8, offset: 152)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !40, file: !41, line: 48, baseType: !22, size: 8, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !40, file: !41, line: 49, baseType: !22, size: 8, offset: 168)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !40, file: !41, line: 50, baseType: !22, size: 8, offset: 176)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !40, file: !41, line: 51, baseType: !22, size: 8, offset: 184)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !40, file: !41, line: 52, baseType: !22, size: 8, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !40, file: !41, line: 53, baseType: !22, size: 8, offset: 200)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !40, file: !41, line: 54, baseType: !21, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !40, file: !41, line: 55, baseType: !8, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !40, file: !41, line: 56, baseType: !8, size: 32, offset: 352)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !40, file: !41, line: 57, baseType: !8, size: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !40, file: !41, line: 58, baseType: !8, size: 32, offset: 416)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !40, file: !41, line: 60, baseType: !66, size: 640, offset: 448)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !67, line: 893, size: 640, elements: !68)
!67 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73, !74, !639, !640, !740, !741}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !66, file: !67, line: 894, baseType: !21, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !66, file: !67, line: 895, baseType: !21, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !66, file: !67, line: 896, baseType: !21, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !66, file: !67, line: 897, baseType: !21, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !66, file: !67, line: 898, baseType: !21, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !66, file: !67, line: 899, baseType: !75, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !67, line: 875, size: 1600, elements: !77)
!77 = !{!78, !582, !598}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !76, file: !67, line: 876, baseType: !79, size: 448)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !67, line: 828, size: 448, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !572, !581}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !79, file: !67, line: 829, baseType: !75, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !67, line: 829, baseType: !22, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !67, line: 829, baseType: !22, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !79, file: !67, line: 829, baseType: !13, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !79, file: !67, line: 829, baseType: !21, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !67, line: 829, baseType: !75, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !79, file: !67, line: 829, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !67, line: 133, size: 384, elements: !90)
!90 = !{!91, !556, !557, !558, !559, !568, !569, !570, !571}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !89, file: !67, line: 134, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !94, line: 367, size: 576, elements: !95)
!94 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !104, !117, !128, !141, !155, !164, !190, !219, !234, !247, !326, !338, !352, !362, !380, !402, !421, !440, !459, !476, !502, !519, !532, !546, !555}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !93, file: !94, line: 368, baseType: !97, size: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !94, line: 73, size: 128, elements: !98)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !94, line: 74, baseType: !92, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !94, line: 74, baseType: !22, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !94, line: 74, baseType: !22, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !94, line: 74, baseType: !13, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !94, line: 74, baseType: !22, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !93, file: !94, line: 369, baseType: !105, size: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !94, line: 76, size: 192, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !116}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !94, line: 77, baseType: !92, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !94, line: 77, baseType: !22, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !94, line: 77, baseType: !22, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !94, line: 77, baseType: !13, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !94, line: 77, baseType: !22, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !105, file: !94, line: 77, baseType: !113, size: 24, offset: 104)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !94, line: 78, baseType: !18, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !93, file: !94, line: 370, baseType: !118, size: 256)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !94, line: 93, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !94, line: 94, baseType: !92, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !94, line: 94, baseType: !22, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !94, line: 94, baseType: !22, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !94, line: 94, baseType: !13, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !94, line: 94, baseType: !22, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !118, file: !94, line: 94, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !118, file: !94, line: 94, baseType: !8, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !93, file: !94, line: 371, baseType: !129, size: 384)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !94, line: 97, size: 384, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !94, line: 98, baseType: !92, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !94, line: 98, baseType: !22, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !94, line: 98, baseType: !22, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !94, line: 98, baseType: !13, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !94, line: 98, baseType: !22, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !129, file: !94, line: 98, baseType: !21, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !129, file: !94, line: 98, baseType: !8, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !129, file: !94, line: 99, baseType: !8, size: 32, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !129, file: !94, line: 100, baseType: !21, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !94, line: 101, baseType: !88, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !93, file: !94, line: 372, baseType: !142, size: 384)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !94, line: 104, size: 384, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !152, !153, !154}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !94, line: 105, baseType: !92, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !94, line: 105, baseType: !22, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !94, line: 105, baseType: !22, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !94, line: 105, baseType: !13, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !94, line: 105, baseType: !22, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !142, file: !94, line: 105, baseType: !88, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !142, file: !94, line: 106, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !142, file: !94, line: 107, baseType: !21, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !142, file: !94, line: 108, baseType: !8, size: 32, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !142, file: !94, line: 109, baseType: !8, size: 32, offset: 352)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !93, file: !94, line: 373, baseType: !156, size: 192)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !94, line: 118, size: 192, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !156, file: !94, line: 119, baseType: !92, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !94, line: 119, baseType: !22, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !94, line: 119, baseType: !22, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !156, file: !94, line: 119, baseType: !13, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !94, line: 119, baseType: !22, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !156, file: !94, line: 119, baseType: !16, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !93, file: !94, line: 374, baseType: !165, size: 448)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !94, line: 143, size: 448, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !187, !188, !189}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !165, file: !94, line: 144, baseType: !92, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !94, line: 144, baseType: !22, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !94, line: 144, baseType: !22, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !165, file: !94, line: 144, baseType: !13, size: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !94, line: 144, baseType: !22, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !165, file: !94, line: 144, baseType: !22, size: 8, offset: 104)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !165, file: !94, line: 145, baseType: !22, size: 8, offset: 112)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !165, file: !94, line: 146, baseType: !22, size: 8, offset: 120)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !165, file: !94, line: 147, baseType: !92, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !165, file: !94, line: 148, baseType: !92, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !165, file: !94, line: 149, baseType: !21, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !165, file: !94, line: 153, baseType: !179, size: 64, offset: 320)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !94, line: 150, size: 64, elements: !180)
!180 = !{!181, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !179, file: !94, line: 151, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !67, line: 248, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !39}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !179, file: !94, line: 152, baseType: !92, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !165, file: !94, line: 155, baseType: !8, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !165, file: !94, line: 156, baseType: !51, size: 16, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !165, file: !94, line: 157, baseType: !22, size: 8, offset: 432)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !93, file: !94, line: 375, baseType: !191, size: 576)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !94, line: 122, size: 576, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !215, !216, !217, !218}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !191, file: !94, line: 123, baseType: !92, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !94, line: 123, baseType: !22, size: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !94, line: 123, baseType: !22, size: 8, offset: 72)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !191, file: !94, line: 123, baseType: !13, size: 16, offset: 80)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !94, line: 123, baseType: !22, size: 8, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !191, file: !94, line: 123, baseType: !22, size: 8, offset: 104)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !191, file: !94, line: 124, baseType: !13, size: 16, offset: 112)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !191, file: !94, line: 125, baseType: !16, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !191, file: !94, line: 126, baseType: !18, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !191, file: !94, line: 127, baseType: !203, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !67, line: 620, size: 320, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !67, line: 621, baseType: !16, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !67, line: 621, baseType: !22, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !67, line: 621, baseType: !22, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !67, line: 621, baseType: !13, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !204, file: !67, line: 621, baseType: !13, size: 16, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !204, file: !67, line: 621, baseType: !22, size: 8, offset: 112)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !204, file: !67, line: 622, baseType: !39, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !204, file: !67, line: 623, baseType: !92, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !204, file: !67, line: 624, baseType: !18, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !94, line: 128, baseType: !92, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !94, line: 129, baseType: !92, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !94, line: 130, baseType: !88, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !191, file: !94, line: 131, baseType: !22, size: 8, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !93, file: !94, line: 376, baseType: !220, size: 448)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !94, line: 134, size: 448, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !233}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !220, file: !94, line: 135, baseType: !92, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !94, line: 135, baseType: !22, size: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !220, file: !94, line: 135, baseType: !22, size: 8, offset: 72)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !220, file: !94, line: 135, baseType: !13, size: 16, offset: 80)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !94, line: 135, baseType: !22, size: 8, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !220, file: !94, line: 135, baseType: !22, size: 8, offset: 104)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !94, line: 136, baseType: !88, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !220, file: !94, line: 137, baseType: !92, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !94, line: 138, baseType: !92, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !220, file: !94, line: 139, baseType: !232, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !18)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !220, file: !94, line: 140, baseType: !8, size: 32, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !93, file: !94, line: 377, baseType: !235, size: 320)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !94, line: 184, size: 320, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !246}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !235, file: !94, line: 185, baseType: !92, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !94, line: 185, baseType: !22, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !235, file: !94, line: 185, baseType: !22, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !235, file: !94, line: 185, baseType: !13, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !94, line: 185, baseType: !22, size: 8, offset: 96)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !235, file: !94, line: 185, baseType: !243, size: 128, offset: 128)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !235, file: !94, line: 185, baseType: !92, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !93, file: !94, line: 378, baseType: !248, size: 384)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !94, line: 187, size: 384, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !248, file: !94, line: 188, baseType: !92, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !248, file: !94, line: 188, baseType: !22, size: 8, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !94, line: 188, baseType: !22, size: 8, offset: 72)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !248, file: !94, line: 188, baseType: !13, size: 16, offset: 80)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !94, line: 188, baseType: !22, size: 8, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !248, file: !94, line: 189, baseType: !243, size: 128, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !248, file: !94, line: 189, baseType: !92, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !248, file: !94, line: 189, baseType: !258, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !67, line: 480, size: 576, elements: !260)
!260 = !{!261, !262, !263, !264, !272, !287, !320, !321, !322, !323, !324, !325}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !259, file: !67, line: 481, baseType: !88, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !259, file: !67, line: 482, baseType: !258, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !67, line: 483, baseType: !258, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !259, file: !67, line: 484, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !67, line: 497, size: 256, elements: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !266, file: !67, line: 498, baseType: !265, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !67, line: 499, baseType: !265, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !266, file: !67, line: 500, baseType: !258, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !266, file: !67, line: 501, baseType: !8, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !259, file: !67, line: 485, baseType: !273, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !67, line: 466, size: 320, elements: !275)
!275 = !{!276, !281, !282, !283, !284, !285, !286}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !274, file: !67, line: 467, baseType: !277, size: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !67, line: 459, size: 128, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !277, file: !67, line: 460, baseType: !22, size: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !277, file: !67, line: 461, baseType: !18, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !274, file: !67, line: 468, baseType: !277, size: 128, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !274, file: !67, line: 469, baseType: !13, size: 16, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !274, file: !67, line: 470, baseType: !22, size: 8, offset: 272)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !274, file: !67, line: 471, baseType: !22, size: 8, offset: 280)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !274, file: !67, line: 472, baseType: !22, size: 8, offset: 288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !274, file: !67, line: 473, baseType: !22, size: 8, offset: 296)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !259, file: !67, line: 486, baseType: !288, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !67, line: 448, size: 192, elements: !290)
!290 = !{!291, !315, !316, !317, !318, !319}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !289, file: !67, line: 449, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !67, line: 438, size: 64, elements: !293)
!293 = !{!294, !295, !309}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !292, file: !67, line: 439, baseType: !88, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !292, file: !67, line: 440, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !67, line: 419, size: 256, elements: !298)
!298 = !{!299, !305, !306, !307, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !297, file: !67, line: 420, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!8, !304, !8, !16}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !297, file: !67, line: 421, baseType: !16, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !297, file: !67, line: 422, baseType: !88, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !297, file: !67, line: 423, baseType: !22, size: 8, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !297, file: !67, line: 424, baseType: !22, size: 8, offset: 200)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !292, file: !67, line: 441, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !67, line: 429, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !311, file: !67, line: 430, baseType: !88, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !67, line: 431, baseType: !310, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !289, file: !67, line: 450, baseType: !273, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !67, line: 451, baseType: !22, size: 8, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !289, file: !67, line: 452, baseType: !22, size: 8, offset: 136)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !289, file: !67, line: 453, baseType: !22, size: 8, offset: 144)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !289, file: !67, line: 454, baseType: !22, size: 8, offset: 152)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !259, file: !67, line: 487, baseType: !18, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !259, file: !67, line: 488, baseType: !8, size: 32, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !259, file: !67, line: 489, baseType: !13, size: 16, offset: 480)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !259, file: !67, line: 490, baseType: !13, size: 16, offset: 496)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !259, file: !67, line: 491, baseType: !22, size: 8, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !259, file: !67, line: 492, baseType: !22, size: 8, offset: 520)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !93, file: !94, line: 379, baseType: !327, size: 384)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !94, line: 192, size: 384, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !327, file: !94, line: 193, baseType: !92, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !94, line: 193, baseType: !22, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !327, file: !94, line: 193, baseType: !22, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !327, file: !94, line: 193, baseType: !13, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !94, line: 193, baseType: !22, size: 8, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !327, file: !94, line: 193, baseType: !243, size: 128, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !327, file: !94, line: 193, baseType: !92, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !327, file: !94, line: 193, baseType: !8, size: 32, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !327, file: !94, line: 194, baseType: !8, size: 32, offset: 352)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !93, file: !94, line: 380, baseType: !339, size: 384)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !94, line: 197, size: 384, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !339, file: !94, line: 198, baseType: !92, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !94, line: 198, baseType: !22, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !339, file: !94, line: 198, baseType: !22, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !339, file: !94, line: 198, baseType: !13, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !94, line: 198, baseType: !22, size: 8, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !339, file: !94, line: 200, baseType: !22, size: 8, offset: 104)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !339, file: !94, line: 201, baseType: !22, size: 8, offset: 112)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !339, file: !94, line: 202, baseType: !243, size: 128, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !339, file: !94, line: 202, baseType: !92, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !339, file: !94, line: 202, baseType: !351, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !18)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !93, file: !94, line: 381, baseType: !353, size: 320)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !94, line: 205, size: 320, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !353, file: !94, line: 206, baseType: !92, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !94, line: 206, baseType: !22, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !353, file: !94, line: 206, baseType: !22, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !353, file: !94, line: 206, baseType: !13, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !94, line: 206, baseType: !22, size: 8, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !353, file: !94, line: 206, baseType: !243, size: 128, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !353, file: !94, line: 206, baseType: !92, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !93, file: !94, line: 382, baseType: !363, size: 384)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !94, line: 233, size: 384, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !363, file: !94, line: 234, baseType: !92, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !363, file: !94, line: 234, baseType: !13, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 104)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 112)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 120)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !363, file: !94, line: 234, baseType: !88, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !363, file: !94, line: 234, baseType: !8, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !363, file: !94, line: 234, baseType: !8, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !94, line: 234, baseType: !8, size: 32, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !363, file: !94, line: 234, baseType: !22, size: 8, offset: 296)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !363, file: !94, line: 234, baseType: !92, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !93, file: !94, line: 383, baseType: !381, size: 576)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !94, line: 237, size: 576, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !381, file: !94, line: 238, baseType: !92, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !381, file: !94, line: 238, baseType: !13, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 104)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 112)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 120)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !381, file: !94, line: 238, baseType: !88, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !381, file: !94, line: 238, baseType: !8, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !381, file: !94, line: 238, baseType: !8, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !94, line: 238, baseType: !8, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 288)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !381, file: !94, line: 238, baseType: !22, size: 8, offset: 296)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !381, file: !94, line: 238, baseType: !13, size: 16, offset: 304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !381, file: !94, line: 239, baseType: !92, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !381, file: !94, line: 240, baseType: !21, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !381, file: !94, line: 241, baseType: !13, size: 16, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !381, file: !94, line: 242, baseType: !21, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !93, file: !94, line: 384, baseType: !403, size: 384)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !94, line: 262, size: 384, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !403, file: !94, line: 263, baseType: !92, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 72)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !403, file: !94, line: 263, baseType: !13, size: 16, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 96)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 104)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 112)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 120)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !403, file: !94, line: 263, baseType: !88, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !403, file: !94, line: 263, baseType: !8, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !403, file: !94, line: 263, baseType: !8, size: 32, offset: 224)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !403, file: !94, line: 263, baseType: !8, size: 32, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 296)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !403, file: !94, line: 263, baseType: !22, size: 8, offset: 304)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !403, file: !94, line: 264, baseType: !92, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !93, file: !94, line: 385, baseType: !422, size: 448)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !94, line: 245, size: 448, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !422, file: !94, line: 246, baseType: !92, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 72)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !422, file: !94, line: 246, baseType: !13, size: 16, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 104)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 112)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 120)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !422, file: !94, line: 246, baseType: !88, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !422, file: !94, line: 246, baseType: !8, size: 32, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !422, file: !94, line: 246, baseType: !8, size: 32, offset: 224)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !422, file: !94, line: 246, baseType: !8, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !422, file: !94, line: 246, baseType: !22, size: 8, offset: 296)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !422, file: !94, line: 246, baseType: !92, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !422, file: !94, line: 247, baseType: !92, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !93, file: !94, line: 386, baseType: !441, size: 448)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !94, line: 250, size: 448, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !441, file: !94, line: 251, baseType: !92, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 72)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !94, line: 251, baseType: !13, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 104)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 112)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 120)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !441, file: !94, line: 251, baseType: !88, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !441, file: !94, line: 251, baseType: !8, size: 32, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !441, file: !94, line: 251, baseType: !8, size: 32, offset: 224)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !441, file: !94, line: 251, baseType: !8, size: 32, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 288)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !441, file: !94, line: 251, baseType: !22, size: 8, offset: 296)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !441, file: !94, line: 256, baseType: !92, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !441, file: !94, line: 257, baseType: !92, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !93, file: !94, line: 387, baseType: !460, size: 512)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !94, line: 273, size: 512, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !474, !475}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !94, line: 274, baseType: !92, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !94, line: 274, baseType: !22, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !94, line: 274, baseType: !22, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !94, line: 274, baseType: !13, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !94, line: 274, baseType: !22, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !94, line: 274, baseType: !88, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !460, file: !94, line: 275, baseType: !8, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !94, line: 276, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !304, !8, !16}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !460, file: !94, line: 277, baseType: !16, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !94, line: 278, baseType: !243, size: 128, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !93, file: !94, line: 388, baseType: !477, size: 512)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !94, line: 281, size: 512, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !492, !493, !494, !500, !501}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !94, line: 282, baseType: !92, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !94, line: 282, baseType: !22, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !94, line: 282, baseType: !22, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !94, line: 282, baseType: !13, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !94, line: 282, baseType: !22, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !477, file: !94, line: 282, baseType: !22, size: 8, offset: 104)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !477, file: !94, line: 283, baseType: !22, size: 8, offset: 112)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !477, file: !94, line: 284, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!6, !8, !232, !8, !491, !16, !16}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !94, line: 285, baseType: !88, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !477, file: !94, line: 286, baseType: !16, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !477, file: !94, line: 287, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!6, !304, !8, !16, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !477, file: !94, line: 288, baseType: !92, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !94, line: 289, baseType: !92, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !93, file: !94, line: 389, baseType: !503, size: 512)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !94, line: 307, size: 512, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !503, file: !94, line: 308, baseType: !92, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !503, file: !94, line: 308, baseType: !22, size: 8, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !94, line: 308, baseType: !22, size: 8, offset: 72)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !503, file: !94, line: 308, baseType: !13, size: 16, offset: 80)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !94, line: 308, baseType: !22, size: 8, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !503, file: !94, line: 308, baseType: !22, size: 8, offset: 104)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !503, file: !94, line: 309, baseType: !22, size: 8, offset: 112)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !503, file: !94, line: 310, baseType: !22, size: 8, offset: 120)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !503, file: !94, line: 311, baseType: !16, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !94, line: 312, baseType: !88, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !503, file: !94, line: 313, baseType: !151, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !503, file: !94, line: 314, baseType: !21, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !503, file: !94, line: 315, baseType: !21, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !503, file: !94, line: 316, baseType: !8, size: 32, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !93, file: !94, line: 390, baseType: !520, size: 448)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !94, line: 340, size: 448, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !520, file: !94, line: 341, baseType: !92, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !520, file: !94, line: 341, baseType: !22, size: 8, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !520, file: !94, line: 341, baseType: !22, size: 8, offset: 72)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !520, file: !94, line: 341, baseType: !13, size: 16, offset: 80)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !94, line: 341, baseType: !22, size: 8, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !520, file: !94, line: 341, baseType: !88, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !520, file: !94, line: 342, baseType: !88, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !520, file: !94, line: 343, baseType: !16, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !520, file: !94, line: 344, baseType: !21, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !520, file: !94, line: 345, baseType: !8, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !93, file: !94, line: 391, baseType: !533, size: 256)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !94, line: 350, size: 256, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !545}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !533, file: !94, line: 351, baseType: !92, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !533, file: !94, line: 351, baseType: !22, size: 8, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !533, file: !94, line: 351, baseType: !22, size: 8, offset: 72)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !533, file: !94, line: 351, baseType: !13, size: 16, offset: 80)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !533, file: !94, line: 351, baseType: !22, size: 8, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !533, file: !94, line: 351, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !304, !16}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !533, file: !94, line: 352, baseType: !16, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !93, file: !94, line: 392, baseType: !547, size: 192)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !94, line: 357, size: 192, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !547, file: !94, line: 358, baseType: !92, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !547, file: !94, line: 358, baseType: !22, size: 8, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !547, file: !94, line: 358, baseType: !22, size: 8, offset: 72)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !547, file: !94, line: 358, baseType: !13, size: 16, offset: 80)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !94, line: 358, baseType: !22, size: 8, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !94, line: 358, baseType: !92, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !94, line: 399, baseType: !89, size: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !67, line: 135, baseType: !22, size: 8, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !67, line: 136, baseType: !22, size: 8, offset: 72)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !67, line: 137, baseType: !13, size: 16, offset: 80)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !67, line: 138, baseType: !560, size: 32, offset: 96)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !561, line: 327, size: 32, elements: !562)
!561 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !560, file: !561, line: 328, baseType: !8, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !560, file: !561, line: 329, baseType: !565, size: 32)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 4)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !67, line: 139, baseType: !88, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !89, file: !67, line: 140, baseType: !88, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !89, file: !67, line: 141, baseType: !88, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !89, file: !67, line: 142, baseType: !51, size: 16, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !79, file: !67, line: 829, baseType: !573, size: 64, offset: 320)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !67, line: 716, size: 64, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !573, file: !67, line: 717, baseType: !18, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !573, file: !67, line: 718, baseType: !8, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !573, file: !67, line: 719, baseType: !126, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !573, file: !67, line: 720, baseType: !21, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !573, file: !67, line: 721, baseType: !126, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !573, file: !67, line: 722, baseType: !75, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !79, file: !67, line: 829, baseType: !22, size: 8, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !76, file: !67, line: 877, baseType: !583, size: 640)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !67, line: 835, size: 640, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !583, file: !67, line: 836, baseType: !75, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !67, line: 836, baseType: !22, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !67, line: 836, baseType: !22, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !583, file: !67, line: 836, baseType: !13, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !583, file: !67, line: 836, baseType: !21, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !67, line: 836, baseType: !75, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !67, line: 836, baseType: !88, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !583, file: !67, line: 836, baseType: !573, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !583, file: !67, line: 836, baseType: !22, size: 8, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !583, file: !67, line: 836, baseType: !126, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !583, file: !67, line: 837, baseType: !21, size: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !583, file: !67, line: 838, baseType: !8, size: 32, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !67, line: 839, baseType: !8, size: 32, offset: 608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !76, file: !67, line: 878, baseType: !599, size: 1600)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !67, line: 846, size: 1600, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !599, file: !67, line: 847, baseType: !75, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !67, line: 847, baseType: !22, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !67, line: 847, baseType: !22, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !599, file: !67, line: 847, baseType: !13, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !599, file: !67, line: 847, baseType: !21, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !67, line: 847, baseType: !75, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !67, line: 847, baseType: !88, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !67, line: 847, baseType: !573, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !599, file: !67, line: 847, baseType: !22, size: 8, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !599, file: !67, line: 847, baseType: !75, size: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !599, file: !67, line: 848, baseType: !75, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !599, file: !67, line: 849, baseType: !126, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !599, file: !67, line: 850, baseType: !22, size: 8, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !599, file: !67, line: 851, baseType: !126, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !599, file: !67, line: 852, baseType: !126, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !599, file: !67, line: 853, baseType: !126, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !599, file: !67, line: 854, baseType: !565, size: 32, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !599, file: !67, line: 855, baseType: !8, size: 32, offset: 928)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !599, file: !67, line: 856, baseType: !8, size: 32, offset: 960)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !599, file: !67, line: 857, baseType: !8, size: 32, offset: 992)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !599, file: !67, line: 858, baseType: !8, size: 32, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !599, file: !67, line: 859, baseType: !8, size: 32, offset: 1056)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !599, file: !67, line: 860, baseType: !8, size: 32, offset: 1088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !599, file: !67, line: 861, baseType: !8, size: 32, offset: 1120)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !599, file: !67, line: 862, baseType: !8, size: 32, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !599, file: !67, line: 863, baseType: !8, size: 32, offset: 1184)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !599, file: !67, line: 864, baseType: !8, size: 32, offset: 1216)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !599, file: !67, line: 865, baseType: !8, size: 32, offset: 1248)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !599, file: !67, line: 866, baseType: !8, size: 32, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !599, file: !67, line: 867, baseType: !8, size: 32, offset: 1312)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !599, file: !67, line: 868, baseType: !13, size: 16, offset: 1344)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !599, file: !67, line: 869, baseType: !22, size: 8, offset: 1360)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !599, file: !67, line: 870, baseType: !22, size: 8, offset: 1368)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !599, file: !67, line: 871, baseType: !22, size: 8, offset: 1376)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !599, file: !67, line: 872, baseType: !636, size: 160, offset: 1384)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 20)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !66, file: !67, line: 900, baseType: !88, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !66, file: !67, line: 901, baseType: !641, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !67, line: 663, size: 640, elements: !643)
!643 = !{!644, !652, !665, !674, !683, !696, !710, !711, !723}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !642, file: !67, line: 664, baseType: !645, size: 128)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !67, line: 567, size: 128, elements: !646)
!646 = !{!647, !648, !649, !650, !651}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !67, line: 568, baseType: !16, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !67, line: 568, baseType: !22, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !67, line: 568, baseType: !22, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !67, line: 568, baseType: !13, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !645, file: !67, line: 568, baseType: !13, size: 16, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !642, file: !67, line: 665, baseType: !653, size: 384)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !67, line: 593, size: 384, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !67, line: 594, baseType: !16, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !653, file: !67, line: 594, baseType: !22, size: 8, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !67, line: 594, baseType: !22, size: 8, offset: 72)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !653, file: !67, line: 594, baseType: !13, size: 16, offset: 80)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !653, file: !67, line: 594, baseType: !13, size: 16, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !653, file: !67, line: 594, baseType: !13, size: 16, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !653, file: !67, line: 595, baseType: !75, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !653, file: !67, line: 596, baseType: !21, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !653, file: !67, line: 597, baseType: !21, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !653, file: !67, line: 598, baseType: !18, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !642, file: !67, line: 666, baseType: !666, size: 192)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !67, line: 573, size: 192, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !666, file: !67, line: 574, baseType: !16, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !666, file: !67, line: 574, baseType: !22, size: 8, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !67, line: 574, baseType: !22, size: 8, offset: 72)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !666, file: !67, line: 574, baseType: !13, size: 16, offset: 80)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !666, file: !67, line: 574, baseType: !13, size: 16, offset: 96)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !666, file: !67, line: 574, baseType: !92, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !642, file: !67, line: 667, baseType: !675, size: 192)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !67, line: 604, size: 192, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !67, line: 605, baseType: !16, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !67, line: 605, baseType: !22, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !67, line: 605, baseType: !22, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !67, line: 605, baseType: !13, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !675, file: !67, line: 605, baseType: !13, size: 16, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !67, line: 605, baseType: !88, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !642, file: !67, line: 668, baseType: !684, size: 448)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !67, line: 608, size: 448, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !67, line: 609, baseType: !16, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !67, line: 609, baseType: !22, size: 8, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !67, line: 609, baseType: !22, size: 8, offset: 72)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !684, file: !67, line: 609, baseType: !13, size: 16, offset: 80)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !684, file: !67, line: 609, baseType: !13, size: 16, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !684, file: !67, line: 609, baseType: !8, size: 32, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !684, file: !67, line: 610, baseType: !75, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !684, file: !67, line: 611, baseType: !21, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !684, file: !67, line: 612, baseType: !21, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !684, file: !67, line: 613, baseType: !8, size: 32, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !642, file: !67, line: 669, baseType: !697, size: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !67, line: 580, size: 512, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !67, line: 581, baseType: !16, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !67, line: 581, baseType: !22, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !67, line: 581, baseType: !22, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !67, line: 581, baseType: !13, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !697, file: !67, line: 581, baseType: !13, size: 16, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !67, line: 581, baseType: !8, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !697, file: !67, line: 582, baseType: !92, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !697, file: !67, line: 583, baseType: !92, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !697, file: !67, line: 584, baseType: !39, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !697, file: !67, line: 585, baseType: !16, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !697, file: !67, line: 586, baseType: !8, size: 32, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !642, file: !67, line: 670, baseType: !204, size: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !642, file: !67, line: 671, baseType: !712, size: 640)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !67, line: 631, size: 640, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !67, line: 632, baseType: !16, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !67, line: 632, baseType: !22, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !67, line: 632, baseType: !22, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !712, file: !67, line: 632, baseType: !13, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !712, file: !67, line: 632, baseType: !13, size: 16, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !712, file: !67, line: 633, baseType: !720, size: 512, offset: 128)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 8)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !642, file: !67, line: 672, baseType: !724, size: 320)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !67, line: 654, size: 320, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !67, line: 655, baseType: !16, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !67, line: 655, baseType: !22, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !67, line: 655, baseType: !22, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !724, file: !67, line: 655, baseType: !13, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !724, file: !67, line: 655, baseType: !13, size: 16, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !724, file: !67, line: 655, baseType: !22, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !67, line: 656, baseType: !88, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !724, file: !67, line: 657, baseType: !92, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !724, file: !67, line: 658, baseType: !735, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !67, line: 645, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !736, file: !67, line: 646, baseType: !470, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !736, file: !67, line: 647, baseType: !16, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !66, file: !67, line: 902, baseType: !75, size: 64, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !66, file: !67, line: 903, baseType: !8, size: 32, offset: 576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !40, file: !41, line: 61, baseType: !8, size: 32, offset: 1088)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !40, file: !41, line: 62, baseType: !8, size: 32, offset: 1120)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !40, file: !41, line: 63, baseType: !13, size: 16, offset: 1152)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !40, file: !41, line: 64, baseType: !22, size: 8, offset: 1168)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !40, file: !41, line: 66, baseType: !747, size: 2688, offset: 1216)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2688, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 7)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !40, file: !41, line: 67, baseType: !751, size: 3072, offset: 3904)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 3072, elements: !721)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !40, file: !41, line: 68, baseType: !753, size: 576, offset: 6976)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 576, elements: !29)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !40, file: !41, line: 69, baseType: !151, size: 64, offset: 7552)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !40, file: !41, line: 71, baseType: !21, size: 64, offset: 7616)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !40, file: !41, line: 72, baseType: !151, size: 64, offset: 7680)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !40, file: !41, line: 73, baseType: !641, size: 64, offset: 7744)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !40, file: !41, line: 74, baseType: !88, size: 64, offset: 7808)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !40, file: !41, line: 75, baseType: !92, size: 64, offset: 7872)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !40, file: !41, line: 76, baseType: !88, size: 64, offset: 7936)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !40, file: !41, line: 77, baseType: !75, size: 64, offset: 8000)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !40, file: !41, line: 78, baseType: !92, size: 64, offset: 8064)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !40, file: !41, line: 79, baseType: !88, size: 64, offset: 8128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !40, file: !41, line: 80, baseType: !126, size: 64, offset: 8192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !40, file: !41, line: 81, baseType: !75, size: 64, offset: 8256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !40, file: !41, line: 82, baseType: !767, size: 64, offset: 8320)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !67, line: 702, size: 128, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !769, file: !67, line: 706, baseType: !8, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !769, file: !67, line: 707, baseType: !8, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !67, line: 708, baseType: !13, size: 16, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !769, file: !67, line: 709, baseType: !22, size: 8, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !769, file: !67, line: 710, baseType: !22, size: 8, offset: 88)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !67, line: 711, baseType: !22, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !40, file: !41, line: 83, baseType: !75, size: 64, offset: 8384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !40, file: !41, line: 84, baseType: !92, size: 64, offset: 8448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !40, file: !41, line: 85, baseType: !641, size: 64, offset: 8512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !40, file: !41, line: 86, baseType: !92, size: 64, offset: 8576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !40, file: !41, line: 87, baseType: !641, size: 64, offset: 8640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !40, file: !41, line: 88, baseType: !75, size: 64, offset: 8704)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !40, file: !41, line: 89, baseType: !75, size: 64, offset: 8768)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !40, file: !41, line: 90, baseType: !203, size: 64, offset: 8832)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !40, file: !41, line: 91, baseType: !786, size: 64, offset: 8896)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !67, line: 637, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!6, !39, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !40, file: !41, line: 92, baseType: !792, size: 64, offset: 8960)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !67, line: 641, baseType: !183)
!793 = !DILocalVariable(name: "walk_state", arg: 1, scope: !36, file: !3, line: 154, type: !39)
!794 = !DILocation(line: 154, column: 48, scope: !36)
!795 = !DILocalVariable(name: "aml_op_start", arg: 2, scope: !36, file: !3, line: 155, type: !21)
!796 = !DILocation(line: 155, column: 14, scope: !36)
!797 = !DILocalVariable(name: "unnamed_op", arg: 3, scope: !36, file: !3, line: 156, type: !75)
!798 = !DILocation(line: 156, column: 35, scope: !36)
!799 = !DILocalVariable(name: "op", arg: 4, scope: !36, file: !3, line: 157, type: !790)
!800 = !DILocation(line: 157, column: 36, scope: !36)
!801 = !DILocalVariable(name: "status", scope: !36, file: !3, line: 159, type: !6)
!802 = !DILocation(line: 159, column: 14, scope: !36)
!803 = !DILocalVariable(name: "arg", scope: !36, file: !3, line: 160, type: !75)
!804 = !DILocation(line: 160, column: 27, scope: !36)
!805 = !DILocation(line: 164, column: 2, scope: !36)
!806 = !DILocation(line: 164, column: 14, scope: !36)
!807 = !DILocation(line: 164, column: 21, scope: !36)
!808 = !DILocation(line: 164, column: 27, scope: !36)
!809 = !DILocation(line: 164, column: 31, scope: !36)
!810 = !DILocation(line: 165, column: 2, scope: !36)
!811 = !DILocation(line: 165, column: 14, scope: !36)
!812 = !DILocation(line: 165, column: 21, scope: !36)
!813 = !DILocation(line: 165, column: 37, scope: !36)
!814 = !DILocation(line: 166, column: 34, scope: !36)
!815 = !DILocation(line: 166, column: 46, scope: !36)
!816 = !DILocation(line: 166, column: 2, scope: !36)
!817 = !DILocation(line: 166, column: 14, scope: !36)
!818 = !DILocation(line: 166, column: 21, scope: !36)
!819 = !DILocation(line: 166, column: 32, scope: !36)
!820 = !DILocation(line: 172, column: 2, scope: !36)
!821 = !DILocation(line: 172, column: 9, scope: !36)
!822 = !DILocation(line: 172, column: 53, scope: !36)
!823 = !DILocation(line: 173, column: 10, scope: !36)
!824 = !DILocation(line: 173, column: 54, scope: !36)
!825 = !DILocation(line: 0, scope: !36)
!826 = !DILocation(line: 176, column: 28, scope: !827)
!827 = distinct !DILexicalBlock(scope: !36, file: !3, line: 173, column: 69)
!828 = !DILocation(line: 177, column: 9, scope: !827)
!829 = !DILocation(line: 177, column: 21, scope: !827)
!830 = !DILocation(line: 178, column: 7, scope: !827)
!831 = !DILocation(line: 176, column: 7, scope: !827)
!832 = !DILocation(line: 175, column: 10, scope: !827)
!833 = !DILocation(line: 180, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !3, line: 180, column: 7)
!835 = !DILocation(line: 180, column: 7, scope: !827)
!836 = !DILocation(line: 181, column: 4, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 180, column: 29)
!838 = !DILocation(line: 184, column: 22, scope: !827)
!839 = !DILocation(line: 184, column: 34, scope: !827)
!840 = !DILocation(line: 184, column: 3, scope: !827)
!841 = !DILocation(line: 185, column: 3, scope: !827)
!842 = distinct !{!842, !820, !843}
!843 = !DILocation(line: 186, column: 2, scope: !36)
!844 = !DILocation(line: 203, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !36, file: !3, line: 203, column: 6)
!846 = !DILocation(line: 203, column: 6, scope: !36)
!847 = !DILocation(line: 204, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !3, line: 203, column: 52)
!849 = !DILocation(line: 209, column: 2, scope: !36)
!850 = !DILocation(line: 215, column: 2, scope: !36)
!851 = !DILocation(line: 215, column: 14, scope: !36)
!852 = !DILocation(line: 215, column: 17, scope: !36)
!853 = !DILocation(line: 217, column: 11, scope: !36)
!854 = !DILocation(line: 217, column: 23, scope: !36)
!855 = !DILocation(line: 217, column: 43, scope: !36)
!856 = !DILocation(line: 217, column: 55, scope: !36)
!857 = !DILocation(line: 217, column: 9, scope: !36)
!858 = !DILocation(line: 218, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !36, file: !3, line: 218, column: 6)
!860 = !DILocation(line: 218, column: 6, scope: !36)
!861 = !DILocation(line: 219, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 219, column: 7)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 218, column: 28)
!864 = !DILocation(line: 219, column: 14, scope: !862)
!865 = !DILocation(line: 219, column: 7, scope: !863)
!866 = !DILocation(line: 220, column: 4, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !3, line: 219, column: 36)
!868 = !DILocation(line: 222, column: 3, scope: !867)
!869 = !DILocation(line: 223, column: 3, scope: !863)
!870 = !DILocation(line: 226, column: 8, scope: !871)
!871 = distinct !DILexicalBlock(scope: !36, file: !3, line: 226, column: 6)
!872 = !DILocation(line: 226, column: 7, scope: !871)
!873 = !DILocation(line: 226, column: 6, scope: !36)
!874 = !DILocation(line: 227, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 226, column: 12)
!876 = !DILocation(line: 230, column: 36, scope: !36)
!877 = !DILocation(line: 230, column: 49, scope: !36)
!878 = !DILocation(line: 230, column: 48, scope: !36)
!879 = !DILocation(line: 230, column: 53, scope: !36)
!880 = !DILocation(line: 230, column: 11, scope: !36)
!881 = !DILocation(line: 230, column: 9, scope: !36)
!882 = !DILocation(line: 231, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !36, file: !3, line: 231, column: 6)
!884 = !DILocation(line: 231, column: 6, scope: !36)
!885 = !DILocation(line: 232, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 232, column: 7)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 231, column: 28)
!888 = !DILocation(line: 232, column: 14, scope: !886)
!889 = !DILocation(line: 232, column: 7, scope: !887)
!890 = !DILocation(line: 233, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 232, column: 34)
!892 = !DILocation(line: 234, column: 3, scope: !891)
!893 = !DILocation(line: 235, column: 3, scope: !887)
!894 = !DILocation(line: 238, column: 22, scope: !36)
!895 = !DILocation(line: 238, column: 21, scope: !36)
!896 = !DILocation(line: 238, column: 26, scope: !36)
!897 = !DILocation(line: 238, column: 38, scope: !36)
!898 = !DILocation(line: 238, column: 45, scope: !36)
!899 = !DILocation(line: 238, column: 51, scope: !36)
!900 = !DILocation(line: 238, column: 2, scope: !36)
!901 = !DILocation(line: 264, column: 8, scope: !902)
!902 = distinct !DILexicalBlock(scope: !36, file: !3, line: 264, column: 6)
!903 = !DILocation(line: 264, column: 7, scope: !902)
!904 = !DILocation(line: 264, column: 13, scope: !902)
!905 = !DILocation(line: 264, column: 20, scope: !902)
!906 = !DILocation(line: 264, column: 6, scope: !902)
!907 = !DILocation(line: 264, column: 31, scope: !902)
!908 = !DILocation(line: 264, column: 48, scope: !902)
!909 = !DILocation(line: 265, column: 8, scope: !902)
!910 = !DILocation(line: 265, column: 7, scope: !902)
!911 = !DILocation(line: 265, column: 13, scope: !902)
!912 = !DILocation(line: 265, column: 20, scope: !902)
!913 = !DILocation(line: 265, column: 6, scope: !902)
!914 = !DILocation(line: 265, column: 31, scope: !902)
!915 = !DILocation(line: 264, column: 6, scope: !36)
!916 = !DILocation(line: 276, column: 23, scope: !917)
!917 = distinct !DILexicalBlock(scope: !902, file: !3, line: 265, column: 54)
!918 = !DILocation(line: 276, column: 5, scope: !917)
!919 = !DILocation(line: 276, column: 4, scope: !917)
!920 = !DILocation(line: 276, column: 10, scope: !917)
!921 = !DILocation(line: 276, column: 16, scope: !917)
!922 = !DILocation(line: 276, column: 21, scope: !917)
!923 = !DILocation(line: 277, column: 5, scope: !917)
!924 = !DILocation(line: 277, column: 4, scope: !917)
!925 = !DILocation(line: 277, column: 10, scope: !917)
!926 = !DILocation(line: 277, column: 16, scope: !917)
!927 = !DILocation(line: 277, column: 23, scope: !917)
!928 = !DILocation(line: 278, column: 2, scope: !917)
!929 = !DILocation(line: 280, column: 2, scope: !36)
!930 = !DILocation(line: 281, column: 1, scope: !36)
!931 = distinct !DISubprogram(name: "acpi_ps_create_op", scope: !3, file: !3, line: 298, type: !932, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!932 = !DISubroutineType(types: !933)
!933 = !{!6, !39, !21, !790}
!934 = !DILocalVariable(name: "walk_state", arg: 1, scope: !931, file: !3, line: 298, type: !39)
!935 = !DILocation(line: 298, column: 43, scope: !931)
!936 = !DILocalVariable(name: "aml_op_start", arg: 2, scope: !931, file: !3, line: 299, type: !21)
!937 = !DILocation(line: 299, column: 9, scope: !931)
!938 = !DILocalVariable(name: "new_op", arg: 3, scope: !931, file: !3, line: 299, type: !790)
!939 = !DILocation(line: 299, column: 49, scope: !931)
!940 = !DILocalVariable(name: "status", scope: !931, file: !3, line: 301, type: !6)
!941 = !DILocation(line: 301, column: 14, scope: !931)
!942 = !DILocalVariable(name: "op", scope: !931, file: !3, line: 302, type: !75)
!943 = !DILocation(line: 302, column: 27, scope: !931)
!944 = !DILocalVariable(name: "named_op", scope: !931, file: !3, line: 303, type: !75)
!945 = !DILocation(line: 303, column: 27, scope: !931)
!946 = !DILocalVariable(name: "parent_scope", scope: !931, file: !3, line: 304, type: !75)
!947 = !DILocation(line: 304, column: 27, scope: !931)
!948 = !DILocalVariable(name: "argument_count", scope: !931, file: !3, line: 305, type: !22)
!949 = !DILocation(line: 305, column: 5, scope: !931)
!950 = !DILocalVariable(name: "op_info", scope: !931, file: !3, line: 306, type: !767)
!951 = !DILocation(line: 306, column: 33, scope: !931)
!952 = !DILocation(line: 310, column: 34, scope: !931)
!953 = !DILocation(line: 310, column: 11, scope: !931)
!954 = !DILocation(line: 310, column: 9, scope: !931)
!955 = !DILocation(line: 311, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !931, file: !3, line: 311, column: 6)
!957 = !DILocation(line: 311, column: 13, scope: !956)
!958 = !DILocation(line: 311, column: 6, scope: !931)
!959 = !DILocation(line: 312, column: 3, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 311, column: 40)
!961 = !DILocation(line: 314, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !931, file: !3, line: 314, column: 6)
!963 = !DILocation(line: 314, column: 6, scope: !931)
!964 = !DILocation(line: 315, column: 3, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 314, column: 28)
!966 = !DILocation(line: 320, column: 48, scope: !931)
!967 = !DILocation(line: 320, column: 60, scope: !931)
!968 = !DILocation(line: 320, column: 24, scope: !931)
!969 = !DILocation(line: 320, column: 2, scope: !931)
!970 = !DILocation(line: 320, column: 14, scope: !931)
!971 = !DILocation(line: 320, column: 22, scope: !931)
!972 = !DILocation(line: 321, column: 24, scope: !931)
!973 = !DILocation(line: 321, column: 36, scope: !931)
!974 = !DILocation(line: 321, column: 44, scope: !931)
!975 = !DILocation(line: 321, column: 7, scope: !931)
!976 = !DILocation(line: 321, column: 5, scope: !931)
!977 = !DILocation(line: 322, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !931, file: !3, line: 322, column: 6)
!979 = !DILocation(line: 322, column: 6, scope: !931)
!980 = !DILocation(line: 323, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 322, column: 11)
!982 = !DILocation(line: 326, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !931, file: !3, line: 326, column: 6)
!984 = !DILocation(line: 326, column: 18, scope: !983)
!985 = !DILocation(line: 326, column: 27, scope: !983)
!986 = !DILocation(line: 326, column: 33, scope: !983)
!987 = !DILocation(line: 326, column: 6, scope: !931)
!988 = !DILocation(line: 328, column: 30, scope: !989)
!989 = distinct !DILexicalBlock(scope: !983, file: !3, line: 326, column: 46)
!990 = !DILocation(line: 328, column: 42, scope: !989)
!991 = !DILocation(line: 328, column: 56, scope: !989)
!992 = !DILocation(line: 328, column: 7, scope: !989)
!993 = !DILocation(line: 327, column: 10, scope: !989)
!994 = !DILocation(line: 330, column: 19, scope: !989)
!995 = !DILocation(line: 330, column: 3, scope: !989)
!996 = !DILocation(line: 351, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !989, file: !3, line: 351, column: 7)
!998 = !DILocation(line: 351, column: 7, scope: !989)
!999 = !DILocation(line: 352, column: 4, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !3, line: 351, column: 29)
!1001 = !DILocation(line: 355, column: 13, scope: !989)
!1002 = !DILocation(line: 355, column: 4, scope: !989)
!1003 = !DILocation(line: 355, column: 11, scope: !989)
!1004 = !DILocation(line: 356, column: 3, scope: !989)
!1005 = !DILocation(line: 361, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !931, file: !3, line: 361, column: 6)
!1007 = !DILocation(line: 361, column: 18, scope: !1006)
!1008 = !DILocation(line: 361, column: 27, scope: !1006)
!1009 = !DILocation(line: 361, column: 33, scope: !1006)
!1010 = !DILocation(line: 361, column: 6, scope: !931)
!1011 = !DILocation(line: 366, column: 20, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 361, column: 47)
!1013 = !DILocation(line: 366, column: 3, scope: !1012)
!1014 = !DILocation(line: 366, column: 7, scope: !1012)
!1015 = !DILocation(line: 366, column: 13, scope: !1012)
!1016 = !DILocation(line: 366, column: 18, scope: !1012)
!1017 = !DILocation(line: 367, column: 3, scope: !1012)
!1018 = !DILocation(line: 367, column: 7, scope: !1012)
!1019 = !DILocation(line: 367, column: 13, scope: !1012)
!1020 = !DILocation(line: 367, column: 20, scope: !1012)
!1021 = !DILocation(line: 368, column: 2, scope: !1012)
!1022 = !DILocation(line: 370, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !931, file: !3, line: 370, column: 6)
!1024 = !DILocation(line: 370, column: 18, scope: !1023)
!1025 = !DILocation(line: 370, column: 25, scope: !1023)
!1026 = !DILocation(line: 370, column: 6, scope: !931)
!1027 = !DILocation(line: 375, column: 20, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 370, column: 47)
!1029 = !DILocation(line: 375, column: 3, scope: !1028)
!1030 = !DILocation(line: 375, column: 7, scope: !1028)
!1031 = !DILocation(line: 375, column: 13, scope: !1028)
!1032 = !DILocation(line: 375, column: 18, scope: !1028)
!1033 = !DILocation(line: 376, column: 3, scope: !1028)
!1034 = !DILocation(line: 376, column: 7, scope: !1028)
!1035 = !DILocation(line: 376, column: 13, scope: !1028)
!1036 = !DILocation(line: 376, column: 20, scope: !1028)
!1037 = !DILocation(line: 377, column: 2, scope: !1028)
!1038 = !DILocation(line: 379, column: 44, scope: !931)
!1039 = !DILocation(line: 379, column: 56, scope: !931)
!1040 = !DILocation(line: 379, column: 17, scope: !931)
!1041 = !DILocation(line: 379, column: 15, scope: !931)
!1042 = !DILocation(line: 380, column: 21, scope: !931)
!1043 = !DILocation(line: 380, column: 35, scope: !931)
!1044 = !DILocation(line: 380, column: 2, scope: !931)
!1045 = !DILocation(line: 382, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !931, file: !3, line: 382, column: 6)
!1047 = !DILocation(line: 382, column: 6, scope: !931)
!1048 = !DILocation(line: 384, column: 31, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 382, column: 20)
!1050 = !DILocation(line: 384, column: 45, scope: !1049)
!1051 = !DILocation(line: 384, column: 52, scope: !1049)
!1052 = !DILocation(line: 384, column: 7, scope: !1049)
!1053 = !DILocation(line: 383, column: 11, scope: !1049)
!1054 = !DILocation(line: 385, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 385, column: 7)
!1056 = !DILocation(line: 385, column: 16, scope: !1055)
!1057 = !DILocation(line: 385, column: 22, scope: !1055)
!1058 = !DILocation(line: 385, column: 7, scope: !1049)
!1059 = !DILocation(line: 387, column: 35, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 385, column: 40)
!1061 = !DILocation(line: 387, column: 44, scope: !1060)
!1062 = !DILocation(line: 387, column: 8, scope: !1060)
!1063 = !DILocation(line: 386, column: 19, scope: !1060)
!1064 = !DILocation(line: 388, column: 8, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 388, column: 8)
!1066 = !DILocation(line: 388, column: 22, scope: !1065)
!1067 = !DILocation(line: 388, column: 29, scope: !1065)
!1068 = !DILocation(line: 389, column: 8, scope: !1065)
!1069 = !DILocation(line: 388, column: 45, scope: !1065)
!1070 = !DILocation(line: 388, column: 8, scope: !1060)
!1071 = !DILocation(line: 390, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 389, column: 24)
!1073 = !DILocation(line: 390, column: 9, scope: !1072)
!1074 = !DILocation(line: 390, column: 16, scope: !1072)
!1075 = !DILocation(line: 390, column: 22, scope: !1072)
!1076 = !DILocation(line: 391, column: 4, scope: !1072)
!1077 = !DILocation(line: 392, column: 3, scope: !1060)
!1078 = !DILocation(line: 398, column: 13, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 398, column: 12)
!1080 = !DILocation(line: 398, column: 27, scope: !1079)
!1081 = !DILocation(line: 398, column: 34, scope: !1079)
!1082 = !DILocation(line: 398, column: 45, scope: !1079)
!1083 = !DILocation(line: 399, column: 5, scope: !1079)
!1084 = !DILocation(line: 399, column: 9, scope: !1079)
!1085 = !DILocation(line: 399, column: 23, scope: !1079)
!1086 = !DILocation(line: 399, column: 30, scope: !1079)
!1087 = !DILocation(line: 399, column: 41, scope: !1079)
!1088 = !DILocation(line: 398, column: 12, scope: !1055)
!1089 = !DILocation(line: 401, column: 4, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 400, column: 28)
!1091 = !DILocation(line: 401, column: 8, scope: !1090)
!1092 = !DILocation(line: 401, column: 15, scope: !1090)
!1093 = !DILocation(line: 401, column: 21, scope: !1090)
!1094 = !DILocation(line: 402, column: 3, scope: !1090)
!1095 = !DILocation(line: 403, column: 2, scope: !1049)
!1096 = !DILocation(line: 405, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !931, file: !3, line: 405, column: 6)
!1098 = !DILocation(line: 405, column: 18, scope: !1097)
!1099 = !DILocation(line: 405, column: 38, scope: !1097)
!1100 = !DILocation(line: 405, column: 6, scope: !931)
!1101 = !DILocation(line: 410, column: 30, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 405, column: 47)
!1103 = !DILocation(line: 410, column: 21, scope: !1102)
!1104 = !DILocation(line: 410, column: 28, scope: !1102)
!1105 = !DILocation(line: 410, column: 3, scope: !1102)
!1106 = !DILocation(line: 410, column: 15, scope: !1102)
!1107 = !DILocation(line: 410, column: 18, scope: !1102)
!1108 = !DILocation(line: 412, column: 12, scope: !1102)
!1109 = !DILocation(line: 412, column: 24, scope: !1102)
!1110 = !DILocation(line: 412, column: 44, scope: !1102)
!1111 = !DILocation(line: 412, column: 10, scope: !1102)
!1112 = !DILocation(line: 413, column: 37, scope: !1102)
!1113 = !DILocation(line: 413, column: 49, scope: !1102)
!1114 = !DILocation(line: 413, column: 53, scope: !1102)
!1115 = !DILocation(line: 413, column: 12, scope: !1102)
!1116 = !DILocation(line: 413, column: 10, scope: !1102)
!1117 = !DILocation(line: 414, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 414, column: 7)
!1119 = !DILocation(line: 414, column: 14, scope: !1118)
!1120 = !DILocation(line: 414, column: 7, scope: !1102)
!1121 = !DILocation(line: 415, column: 11, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 414, column: 34)
!1123 = !DILocation(line: 416, column: 3, scope: !1122)
!1124 = !DILocation(line: 417, column: 2, scope: !1102)
!1125 = !DILocation(line: 419, column: 2, scope: !931)
!1126 = !DILocation(line: 420, column: 1, scope: !931)
!1127 = distinct !DISubprogram(name: "acpi_ps_get_aml_opcode", scope: !3, file: !3, line: 35, type: !184, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1128 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1127, file: !3, line: 35, type: !39)
!1129 = !DILocation(line: 35, column: 67, scope: !1127)
!1130 = !DILocalVariable(name: "aml_offset", scope: !1127, file: !3, line: 37, type: !8)
!1131 = !DILocation(line: 37, column: 2, scope: !1127)
!1132 = !DILocation(line: 41, column: 20, scope: !1127)
!1133 = !DILocation(line: 41, column: 32, scope: !1127)
!1134 = !DILocation(line: 41, column: 45, scope: !1127)
!1135 = !DILocation(line: 41, column: 2, scope: !1127)
!1136 = !DILocation(line: 41, column: 14, scope: !1127)
!1137 = !DILocation(line: 41, column: 18, scope: !1127)
!1138 = !DILocation(line: 42, column: 45, scope: !1127)
!1139 = !DILocation(line: 42, column: 57, scope: !1127)
!1140 = !DILocation(line: 42, column: 23, scope: !1127)
!1141 = !DILocation(line: 42, column: 2, scope: !1127)
!1142 = !DILocation(line: 42, column: 14, scope: !1127)
!1143 = !DILocation(line: 42, column: 21, scope: !1127)
!1144 = !DILocation(line: 50, column: 48, scope: !1127)
!1145 = !DILocation(line: 50, column: 60, scope: !1127)
!1146 = !DILocation(line: 50, column: 24, scope: !1127)
!1147 = !DILocation(line: 50, column: 2, scope: !1127)
!1148 = !DILocation(line: 50, column: 14, scope: !1127)
!1149 = !DILocation(line: 50, column: 22, scope: !1127)
!1150 = !DILocation(line: 52, column: 10, scope: !1127)
!1151 = !DILocation(line: 52, column: 22, scope: !1127)
!1152 = !DILocation(line: 52, column: 31, scope: !1127)
!1153 = !DILocation(line: 52, column: 2, scope: !1127)
!1154 = !DILocation(line: 59, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 52, column: 38)
!1156 = !DILocation(line: 59, column: 15, scope: !1155)
!1157 = !DILocation(line: 59, column: 22, scope: !1155)
!1158 = !DILocation(line: 60, column: 3, scope: !1155)
!1159 = !DILocation(line: 60, column: 15, scope: !1155)
!1160 = !DILocation(line: 60, column: 25, scope: !1155)
!1161 = !DILocation(line: 61, column: 3, scope: !1155)
!1162 = !DILocation(line: 67, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 67, column: 7)
!1164 = !DILocation(line: 67, column: 19, scope: !1163)
!1165 = !DILocation(line: 67, column: 31, scope: !1163)
!1166 = !DILocation(line: 67, column: 7, scope: !1155)
!1167 = !DILocation(line: 68, column: 4, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 67, column: 37)
!1169 = !DILocation(line: 74, column: 4, scope: !1168)
!1170 = !DILocation(line: 114, column: 3, scope: !1168)
!1171 = !DILocation(line: 118, column: 3, scope: !1155)
!1172 = !DILocation(line: 118, column: 15, scope: !1155)
!1173 = !DILocation(line: 118, column: 28, scope: !1155)
!1174 = !DILocation(line: 118, column: 31, scope: !1155)
!1175 = !DILocation(line: 119, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 119, column: 7)
!1177 = !DILocation(line: 119, column: 19, scope: !1176)
!1178 = !DILocation(line: 119, column: 26, scope: !1176)
!1179 = !DILocation(line: 119, column: 7, scope: !1155)
!1180 = !DILocation(line: 120, column: 4, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 119, column: 34)
!1182 = !DILocation(line: 120, column: 16, scope: !1181)
!1183 = !DILocation(line: 120, column: 29, scope: !1181)
!1184 = !DILocation(line: 120, column: 32, scope: !1181)
!1185 = !DILocation(line: 121, column: 3, scope: !1181)
!1186 = !DILocation(line: 123, column: 3, scope: !1155)
!1187 = !DILocation(line: 130, column: 31, scope: !1155)
!1188 = !DILocation(line: 130, column: 43, scope: !1155)
!1189 = !DILocation(line: 130, column: 7, scope: !1155)
!1190 = !DILocation(line: 129, column: 3, scope: !1155)
!1191 = !DILocation(line: 129, column: 15, scope: !1155)
!1192 = !DILocation(line: 129, column: 28, scope: !1155)
!1193 = !DILocation(line: 129, column: 32, scope: !1155)
!1194 = !DILocation(line: 131, column: 27, scope: !1155)
!1195 = !DILocation(line: 131, column: 39, scope: !1155)
!1196 = !DILocation(line: 131, column: 48, scope: !1155)
!1197 = !DILocation(line: 131, column: 3, scope: !1155)
!1198 = !DILocation(line: 131, column: 15, scope: !1155)
!1199 = !DILocation(line: 131, column: 25, scope: !1155)
!1200 = !DILocation(line: 132, column: 3, scope: !1155)
!1201 = !DILocation(line: 135, column: 2, scope: !1127)
!1202 = !DILocation(line: 136, column: 1, scope: !1127)
!1203 = distinct !DISubprogram(name: "acpi_ps_complete_op", scope: !3, file: !3, line: 437, type: !1204, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!6, !39, !790, !6}
!1206 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1203, file: !3, line: 437, type: !39)
!1207 = !DILocation(line: 437, column: 45, scope: !1203)
!1208 = !DILocalVariable(name: "op", arg: 2, scope: !1203, file: !3, line: 438, type: !790)
!1209 = !DILocation(line: 438, column: 33, scope: !1203)
!1210 = !DILocalVariable(name: "status", arg: 3, scope: !1203, file: !3, line: 438, type: !6)
!1211 = !DILocation(line: 438, column: 49, scope: !1203)
!1212 = !DILocalVariable(name: "status2", scope: !1203, file: !3, line: 440, type: !6)
!1213 = !DILocation(line: 440, column: 14, scope: !1203)
!1214 = !DILocation(line: 447, column: 2, scope: !1203)
!1215 = !DILocation(line: 447, column: 14, scope: !1203)
!1216 = !DILocation(line: 447, column: 27, scope: !1203)
!1217 = !DILocation(line: 447, column: 34, scope: !1203)
!1218 = !DILocation(line: 447, column: 46, scope: !1203)
!1219 = !DILocation(line: 447, column: 55, scope: !1203)
!1220 = !DILocation(line: 451, column: 37, scope: !1203)
!1221 = !DILocation(line: 451, column: 50, scope: !1203)
!1222 = !DILocation(line: 451, column: 49, scope: !1203)
!1223 = !DILocation(line: 451, column: 12, scope: !1203)
!1224 = !DILocation(line: 451, column: 10, scope: !1203)
!1225 = !DILocation(line: 452, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 452, column: 6)
!1227 = !DILocation(line: 452, column: 6, scope: !1203)
!1228 = !DILocation(line: 453, column: 3, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 452, column: 29)
!1230 = !DILocation(line: 456, column: 3, scope: !1203)
!1231 = !DILocation(line: 456, column: 6, scope: !1203)
!1232 = !DILocation(line: 458, column: 10, scope: !1203)
!1233 = !DILocation(line: 458, column: 2, scope: !1203)
!1234 = !DILocation(line: 461, column: 3, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 458, column: 18)
!1236 = !DILocation(line: 467, column: 3, scope: !1235)
!1237 = !DILocation(line: 467, column: 15, scope: !1235)
!1238 = !DILocation(line: 467, column: 23, scope: !1235)
!1239 = !DILocation(line: 468, column: 32, scope: !1235)
!1240 = !DILocation(line: 468, column: 44, scope: !1235)
!1241 = !DILocation(line: 468, column: 3, scope: !1235)
!1242 = !DILocation(line: 468, column: 15, scope: !1235)
!1243 = !DILocation(line: 468, column: 30, scope: !1235)
!1244 = !DILocation(line: 469, column: 3, scope: !1235)
!1245 = !DILocation(line: 473, column: 23, scope: !1235)
!1246 = !DILocation(line: 473, column: 35, scope: !1235)
!1247 = !DILocation(line: 473, column: 50, scope: !1235)
!1248 = !DILocation(line: 474, column: 8, scope: !1235)
!1249 = !DILocation(line: 474, column: 20, scope: !1235)
!1250 = !DILocation(line: 475, column: 8, scope: !1235)
!1251 = !DILocation(line: 475, column: 20, scope: !1235)
!1252 = !DILocation(line: 473, column: 3, scope: !1235)
!1253 = !DILocation(line: 477, column: 8, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 477, column: 7)
!1255 = !DILocation(line: 477, column: 7, scope: !1254)
!1256 = !DILocation(line: 477, column: 7, scope: !1235)
!1257 = !DILocation(line: 478, column: 22, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 477, column: 12)
!1259 = !DILocation(line: 478, column: 21, scope: !1258)
!1260 = !DILocation(line: 478, column: 4, scope: !1258)
!1261 = !DILocation(line: 478, column: 16, scope: !1258)
!1262 = !DILocation(line: 478, column: 19, scope: !1258)
!1263 = !DILocation(line: 480, column: 34, scope: !1258)
!1264 = !DILocation(line: 480, column: 33, scope: !1258)
!1265 = !DILocation(line: 480, column: 39, scope: !1258)
!1266 = !DILocation(line: 480, column: 46, scope: !1258)
!1267 = !DILocation(line: 480, column: 8, scope: !1258)
!1268 = !DILocation(line: 479, column: 4, scope: !1258)
!1269 = !DILocation(line: 479, column: 16, scope: !1258)
!1270 = !DILocation(line: 479, column: 24, scope: !1258)
!1271 = !DILocation(line: 481, column: 27, scope: !1258)
!1272 = !DILocation(line: 481, column: 26, scope: !1258)
!1273 = !DILocation(line: 481, column: 32, scope: !1258)
!1274 = !DILocation(line: 481, column: 39, scope: !1258)
!1275 = !DILocation(line: 481, column: 4, scope: !1258)
!1276 = !DILocation(line: 481, column: 16, scope: !1258)
!1277 = !DILocation(line: 481, column: 23, scope: !1258)
!1278 = !DILocation(line: 483, column: 13, scope: !1258)
!1279 = !DILocation(line: 483, column: 25, scope: !1258)
!1280 = !DILocation(line: 483, column: 44, scope: !1258)
!1281 = !DILocation(line: 483, column: 11, scope: !1258)
!1282 = !DILocation(line: 484, column: 35, scope: !1258)
!1283 = !DILocation(line: 484, column: 48, scope: !1258)
!1284 = !DILocation(line: 484, column: 47, scope: !1258)
!1285 = !DILocation(line: 484, column: 52, scope: !1258)
!1286 = !DILocation(line: 484, column: 10, scope: !1258)
!1287 = !DILocation(line: 486, column: 39, scope: !1258)
!1288 = !DILocation(line: 486, column: 52, scope: !1258)
!1289 = !DILocation(line: 486, column: 51, scope: !1258)
!1290 = !DILocation(line: 486, column: 14, scope: !1258)
!1291 = !DILocation(line: 486, column: 12, scope: !1258)
!1292 = !DILocation(line: 487, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 487, column: 8)
!1294 = !DILocation(line: 487, column: 8, scope: !1258)
!1295 = !DILocation(line: 488, column: 5, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 487, column: 31)
!1297 = !DILocation(line: 490, column: 3, scope: !1258)
!1298 = !DILocation(line: 492, column: 3, scope: !1235)
!1299 = !DILocation(line: 499, column: 3, scope: !1235)
!1300 = !DILocation(line: 499, column: 13, scope: !1235)
!1301 = !DILocation(line: 499, column: 12, scope: !1235)
!1302 = !DILocation(line: 499, column: 11, scope: !1235)
!1303 = !DILocation(line: 499, column: 17, scope: !1235)
!1304 = !DILocation(line: 499, column: 23, scope: !1235)
!1305 = !DILocation(line: 499, column: 22, scope: !1235)
!1306 = !DILocation(line: 499, column: 28, scope: !1235)
!1307 = !DILocation(line: 499, column: 35, scope: !1235)
!1308 = !DILocation(line: 499, column: 21, scope: !1235)
!1309 = !DILocation(line: 499, column: 46, scope: !1235)
!1310 = !DILocation(line: 500, column: 24, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 499, column: 64)
!1312 = !DILocation(line: 500, column: 36, scope: !1311)
!1313 = !DILocation(line: 500, column: 51, scope: !1311)
!1314 = !DILocation(line: 501, column: 9, scope: !1311)
!1315 = !DILocation(line: 501, column: 21, scope: !1311)
!1316 = !DILocation(line: 502, column: 9, scope: !1311)
!1317 = !DILocation(line: 502, column: 21, scope: !1311)
!1318 = !DILocation(line: 500, column: 4, scope: !1311)
!1319 = distinct !{!1319, !1299, !1320}
!1320 = !DILocation(line: 503, column: 3, scope: !1235)
!1321 = !DILocation(line: 507, column: 21, scope: !1235)
!1322 = !DILocation(line: 507, column: 20, scope: !1235)
!1323 = !DILocation(line: 507, column: 3, scope: !1235)
!1324 = !DILocation(line: 507, column: 15, scope: !1235)
!1325 = !DILocation(line: 507, column: 18, scope: !1235)
!1326 = !DILocation(line: 509, column: 33, scope: !1235)
!1327 = !DILocation(line: 509, column: 32, scope: !1235)
!1328 = !DILocation(line: 509, column: 38, scope: !1235)
!1329 = !DILocation(line: 509, column: 45, scope: !1235)
!1330 = !DILocation(line: 509, column: 7, scope: !1235)
!1331 = !DILocation(line: 508, column: 3, scope: !1235)
!1332 = !DILocation(line: 508, column: 15, scope: !1235)
!1333 = !DILocation(line: 508, column: 23, scope: !1235)
!1334 = !DILocation(line: 510, column: 26, scope: !1235)
!1335 = !DILocation(line: 510, column: 25, scope: !1235)
!1336 = !DILocation(line: 510, column: 31, scope: !1235)
!1337 = !DILocation(line: 510, column: 38, scope: !1235)
!1338 = !DILocation(line: 510, column: 3, scope: !1235)
!1339 = !DILocation(line: 510, column: 15, scope: !1235)
!1340 = !DILocation(line: 510, column: 22, scope: !1235)
!1341 = !DILocation(line: 512, column: 12, scope: !1235)
!1342 = !DILocation(line: 512, column: 24, scope: !1235)
!1343 = !DILocation(line: 512, column: 43, scope: !1235)
!1344 = !DILocation(line: 512, column: 10, scope: !1235)
!1345 = !DILocation(line: 513, column: 34, scope: !1235)
!1346 = !DILocation(line: 513, column: 47, scope: !1235)
!1347 = !DILocation(line: 513, column: 46, scope: !1235)
!1348 = !DILocation(line: 513, column: 51, scope: !1235)
!1349 = !DILocation(line: 513, column: 9, scope: !1235)
!1350 = !DILocation(line: 515, column: 38, scope: !1235)
!1351 = !DILocation(line: 515, column: 51, scope: !1235)
!1352 = !DILocation(line: 515, column: 50, scope: !1235)
!1353 = !DILocation(line: 515, column: 13, scope: !1235)
!1354 = !DILocation(line: 515, column: 11, scope: !1235)
!1355 = !DILocation(line: 516, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 516, column: 7)
!1357 = !DILocation(line: 516, column: 7, scope: !1235)
!1358 = !DILocation(line: 517, column: 4, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 516, column: 30)
!1360 = !DILocation(line: 520, column: 3, scope: !1235)
!1361 = !DILocation(line: 525, column: 3, scope: !1235)
!1362 = !DILocation(line: 526, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 526, column: 8)
!1364 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 525, column: 6)
!1365 = !DILocation(line: 526, column: 8, scope: !1363)
!1366 = !DILocation(line: 526, column: 8, scope: !1364)
!1367 = !DILocation(line: 528, column: 34, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 526, column: 13)
!1369 = !DILocation(line: 528, column: 47, scope: !1368)
!1370 = !DILocation(line: 528, column: 46, scope: !1368)
!1371 = !DILocation(line: 528, column: 9, scope: !1368)
!1372 = !DILocation(line: 527, column: 13, scope: !1368)
!1373 = !DILocation(line: 529, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 529, column: 9)
!1375 = !DILocation(line: 529, column: 9, scope: !1368)
!1376 = !DILocation(line: 530, column: 6, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 529, column: 32)
!1378 = !DILocation(line: 535, column: 12, scope: !1368)
!1379 = !DILocation(line: 535, column: 24, scope: !1368)
!1380 = !DILocation(line: 534, column: 10, scope: !1368)
!1381 = !DILocation(line: 533, column: 5, scope: !1368)
!1382 = !DILocation(line: 536, column: 4, scope: !1368)
!1383 = !DILocation(line: 538, column: 24, scope: !1364)
!1384 = !DILocation(line: 538, column: 36, scope: !1364)
!1385 = !DILocation(line: 538, column: 51, scope: !1364)
!1386 = !DILocation(line: 539, column: 9, scope: !1364)
!1387 = !DILocation(line: 539, column: 21, scope: !1364)
!1388 = !DILocation(line: 540, column: 9, scope: !1364)
!1389 = !DILocation(line: 540, column: 21, scope: !1364)
!1390 = !DILocation(line: 538, column: 4, scope: !1364)
!1391 = !DILocation(line: 542, column: 3, scope: !1364)
!1392 = !DILocation(line: 542, column: 13, scope: !1235)
!1393 = !DILocation(line: 542, column: 12, scope: !1235)
!1394 = distinct !{!1394, !1361, !1395}
!1395 = !DILocation(line: 542, column: 15, scope: !1235)
!1396 = !DILocation(line: 544, column: 3, scope: !1235)
!1397 = !DILocation(line: 548, column: 3, scope: !1235)
!1398 = !DILocation(line: 549, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 549, column: 8)
!1400 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 548, column: 6)
!1401 = !DILocation(line: 549, column: 8, scope: !1399)
!1402 = !DILocation(line: 549, column: 8, scope: !1400)
!1403 = !DILocation(line: 555, column: 12, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 555, column: 9)
!1405 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 549, column: 13)
!1406 = !DILocation(line: 555, column: 11, scope: !1404)
!1407 = !DILocation(line: 555, column: 17, scope: !1404)
!1408 = !DILocation(line: 555, column: 24, scope: !1404)
!1409 = !DILocation(line: 555, column: 10, scope: !1404)
!1410 = !DILocation(line: 555, column: 35, scope: !1404)
!1411 = !DILocation(line: 556, column: 9, scope: !1404)
!1412 = !DILocation(line: 556, column: 15, scope: !1404)
!1413 = !DILocation(line: 556, column: 14, scope: !1404)
!1414 = !DILocation(line: 556, column: 20, scope: !1404)
!1415 = !DILocation(line: 556, column: 27, scope: !1404)
!1416 = !DILocation(line: 556, column: 13, scope: !1404)
!1417 = !DILocation(line: 556, column: 38, scope: !1404)
!1418 = !DILocation(line: 555, column: 9, scope: !1405)
!1419 = !DILocation(line: 558, column: 32, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 557, column: 27)
!1421 = !DILocation(line: 558, column: 31, scope: !1420)
!1422 = !DILocation(line: 558, column: 37, scope: !1420)
!1423 = !DILocation(line: 559, column: 9, scope: !1420)
!1424 = !DILocation(line: 558, column: 6, scope: !1420)
!1425 = !DILocation(line: 560, column: 28, scope: !1420)
!1426 = !DILocation(line: 560, column: 27, scope: !1420)
!1427 = !DILocation(line: 560, column: 33, scope: !1420)
!1428 = !DILocation(line: 560, column: 40, scope: !1420)
!1429 = !DILocation(line: 560, column: 6, scope: !1420)
!1430 = !DILocation(line: 561, column: 8, scope: !1420)
!1431 = !DILocation(line: 561, column: 7, scope: !1420)
!1432 = !DILocation(line: 561, column: 13, scope: !1420)
!1433 = !DILocation(line: 561, column: 20, scope: !1420)
!1434 = !DILocation(line: 561, column: 25, scope: !1420)
!1435 = !DILocation(line: 562, column: 33, scope: !1420)
!1436 = !DILocation(line: 562, column: 32, scope: !1420)
!1437 = !DILocation(line: 562, column: 6, scope: !1420)
!1438 = !DILocation(line: 563, column: 5, scope: !1420)
!1439 = !DILocation(line: 566, column: 34, scope: !1405)
!1440 = !DILocation(line: 566, column: 47, scope: !1405)
!1441 = !DILocation(line: 566, column: 46, scope: !1405)
!1442 = !DILocation(line: 566, column: 9, scope: !1405)
!1443 = !DILocation(line: 565, column: 13, scope: !1405)
!1444 = !DILocation(line: 567, column: 9, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 567, column: 9)
!1446 = !DILocation(line: 567, column: 9, scope: !1405)
!1447 = !DILocation(line: 568, column: 6, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 567, column: 32)
!1449 = !DILocation(line: 570, column: 4, scope: !1405)
!1450 = !DILocation(line: 572, column: 24, scope: !1400)
!1451 = !DILocation(line: 572, column: 36, scope: !1400)
!1452 = !DILocation(line: 572, column: 51, scope: !1400)
!1453 = !DILocation(line: 573, column: 9, scope: !1400)
!1454 = !DILocation(line: 573, column: 21, scope: !1400)
!1455 = !DILocation(line: 574, column: 9, scope: !1400)
!1456 = !DILocation(line: 574, column: 21, scope: !1400)
!1457 = !DILocation(line: 572, column: 4, scope: !1400)
!1458 = !DILocation(line: 576, column: 3, scope: !1400)
!1459 = !DILocation(line: 576, column: 13, scope: !1235)
!1460 = !DILocation(line: 576, column: 12, scope: !1235)
!1461 = distinct !{!1461, !1397, !1462}
!1462 = !DILocation(line: 576, column: 15, scope: !1235)
!1463 = !DILocation(line: 588, column: 3, scope: !1235)
!1464 = !DILocation(line: 588, column: 15, scope: !1235)
!1465 = !DILocation(line: 588, column: 23, scope: !1235)
!1466 = !DILocation(line: 589, column: 32, scope: !1235)
!1467 = !DILocation(line: 589, column: 44, scope: !1235)
!1468 = !DILocation(line: 589, column: 3, scope: !1235)
!1469 = !DILocation(line: 589, column: 15, scope: !1235)
!1470 = !DILocation(line: 589, column: 30, scope: !1235)
!1471 = !DILocation(line: 591, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 591, column: 7)
!1473 = !DILocation(line: 591, column: 19, scope: !1472)
!1474 = !DILocation(line: 591, column: 31, scope: !1472)
!1475 = !DILocation(line: 591, column: 7, scope: !1235)
!1476 = !DILocation(line: 600, column: 4, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 591, column: 58)
!1478 = !DILocation(line: 601, column: 4, scope: !1477)
!1479 = !DILocation(line: 603, column: 3, scope: !1235)
!1480 = !DILocation(line: 608, column: 36, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 608, column: 6)
!1482 = !DILocation(line: 608, column: 48, scope: !1481)
!1483 = !DILocation(line: 608, column: 6, scope: !1481)
!1484 = !DILocation(line: 608, column: 6, scope: !1203)
!1485 = !DILocation(line: 609, column: 23, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 608, column: 64)
!1487 = !DILocation(line: 609, column: 35, scope: !1486)
!1488 = !DILocation(line: 609, column: 50, scope: !1486)
!1489 = !DILocation(line: 610, column: 8, scope: !1486)
!1490 = !DILocation(line: 610, column: 20, scope: !1486)
!1491 = !DILocation(line: 611, column: 8, scope: !1486)
!1492 = !DILocation(line: 611, column: 20, scope: !1486)
!1493 = !DILocation(line: 609, column: 3, scope: !1486)
!1494 = !DILocation(line: 613, column: 2, scope: !1486)
!1495 = !DILocation(line: 614, column: 4, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 613, column: 9)
!1497 = !DILocation(line: 614, column: 7, scope: !1496)
!1498 = !DILocation(line: 617, column: 2, scope: !1203)
!1499 = !DILocation(line: 618, column: 1, scope: !1203)
!1500 = distinct !DISubprogram(name: "acpi_ps_complete_final_op", scope: !3, file: !3, line: 636, type: !1501, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!6, !39, !75, !6}
!1503 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1500, file: !3, line: 636, type: !39)
!1504 = !DILocation(line: 636, column: 51, scope: !1500)
!1505 = !DILocalVariable(name: "op", arg: 2, scope: !1500, file: !3, line: 637, type: !75)
!1506 = !DILocation(line: 637, column: 31, scope: !1500)
!1507 = !DILocalVariable(name: "status", arg: 3, scope: !1500, file: !3, line: 637, type: !6)
!1508 = !DILocation(line: 637, column: 47, scope: !1500)
!1509 = !DILocalVariable(name: "status2", scope: !1500, file: !3, line: 639, type: !6)
!1510 = !DILocation(line: 639, column: 14, scope: !1500)
!1511 = !DILocation(line: 651, column: 2, scope: !1500)
!1512 = !DILocation(line: 652, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 652, column: 7)
!1514 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 651, column: 5)
!1515 = !DILocation(line: 652, column: 7, scope: !1514)
!1516 = !DILocation(line: 653, column: 8, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 653, column: 8)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 652, column: 11)
!1519 = !DILocation(line: 653, column: 20, scope: !1517)
!1520 = !DILocation(line: 653, column: 39, scope: !1517)
!1521 = !DILocation(line: 653, column: 8, scope: !1518)
!1522 = !DILocation(line: 654, column: 22, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 653, column: 48)
!1524 = !DILocation(line: 654, column: 5, scope: !1523)
!1525 = !DILocation(line: 654, column: 17, scope: !1523)
!1526 = !DILocation(line: 654, column: 20, scope: !1523)
!1527 = !DILocation(line: 656, column: 33, scope: !1523)
!1528 = !DILocation(line: 656, column: 37, scope: !1523)
!1529 = !DILocation(line: 657, column: 12, scope: !1523)
!1530 = !DILocation(line: 656, column: 9, scope: !1523)
!1531 = !DILocation(line: 655, column: 5, scope: !1523)
!1532 = !DILocation(line: 655, column: 17, scope: !1523)
!1533 = !DILocation(line: 655, column: 25, scope: !1523)
!1534 = !DILocation(line: 658, column: 26, scope: !1523)
!1535 = !DILocation(line: 658, column: 30, scope: !1523)
!1536 = !DILocation(line: 658, column: 37, scope: !1523)
!1537 = !DILocation(line: 658, column: 5, scope: !1523)
!1538 = !DILocation(line: 658, column: 17, scope: !1523)
!1539 = !DILocation(line: 658, column: 24, scope: !1523)
!1540 = !DILocation(line: 661, column: 9, scope: !1523)
!1541 = !DILocation(line: 661, column: 21, scope: !1523)
!1542 = !DILocation(line: 661, column: 40, scope: !1523)
!1543 = !DILocation(line: 660, column: 12, scope: !1523)
!1544 = !DILocation(line: 663, column: 34, scope: !1523)
!1545 = !DILocation(line: 663, column: 46, scope: !1523)
!1546 = !DILocation(line: 664, column: 13, scope: !1523)
!1547 = !DILocation(line: 663, column: 9, scope: !1523)
!1548 = !DILocation(line: 662, column: 12, scope: !1523)
!1549 = !DILocation(line: 665, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 665, column: 9)
!1551 = !DILocation(line: 665, column: 16, scope: !1550)
!1552 = !DILocation(line: 665, column: 9, scope: !1523)
!1553 = !DILocation(line: 667, column: 30, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 665, column: 36)
!1555 = !DILocation(line: 667, column: 10, scope: !1554)
!1556 = !DILocation(line: 666, column: 13, scope: !1554)
!1557 = !DILocation(line: 669, column: 10, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 669, column: 10)
!1559 = !DILocation(line: 669, column: 10, scope: !1554)
!1560 = !DILocation(line: 670, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 669, column: 32)
!1562 = !DILocation(line: 672, column: 5, scope: !1554)
!1563 = !DILocation(line: 674, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 674, column: 9)
!1565 = !DILocation(line: 674, column: 16, scope: !1564)
!1566 = !DILocation(line: 674, column: 9, scope: !1523)
!1567 = !DILocation(line: 675, column: 13, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 674, column: 38)
!1569 = !DILocation(line: 678, column: 6, scope: !1568)
!1570 = !DILocation(line: 679, column: 11, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 679, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 678, column: 9)
!1573 = !DILocation(line: 679, column: 11, scope: !1572)
!1574 = !DILocation(line: 682, column: 13, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 679, column: 15)
!1576 = !DILocation(line: 682, column: 25, scope: !1575)
!1577 = !DILocation(line: 681, column: 12, scope: !1575)
!1578 = !DILocation(line: 680, column: 16, scope: !1575)
!1579 = !DILocation(line: 683, column: 12, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 683, column: 12)
!1581 = !DILocation(line: 683, column: 12, scope: !1575)
!1582 = !DILocation(line: 685, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 684, column: 23)
!1584 = !DILocation(line: 688, column: 7, scope: !1575)
!1585 = !DILocation(line: 691, column: 12, scope: !1572)
!1586 = !DILocation(line: 692, column: 12, scope: !1572)
!1587 = !DILocation(line: 694, column: 12, scope: !1572)
!1588 = !DILocation(line: 695, column: 11, scope: !1572)
!1589 = !DILocation(line: 696, column: 12, scope: !1572)
!1590 = !DILocation(line: 697, column: 11, scope: !1572)
!1591 = !DILocation(line: 690, column: 7, scope: !1572)
!1592 = !DILocation(line: 699, column: 6, scope: !1572)
!1593 = !DILocation(line: 699, column: 15, scope: !1568)
!1594 = distinct !{!1594, !1569, !1595}
!1595 = !DILocation(line: 699, column: 17, scope: !1568)
!1596 = !DILocation(line: 701, column: 6, scope: !1568)
!1597 = !DILocation(line: 704, column: 14, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 704, column: 14)
!1599 = !DILocation(line: 704, column: 14, scope: !1564)
!1600 = !DILocation(line: 709, column: 35, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 704, column: 36)
!1602 = !DILocation(line: 710, column: 14, scope: !1601)
!1603 = !DILocation(line: 709, column: 10, scope: !1601)
!1604 = !DILocation(line: 711, column: 6, scope: !1601)
!1605 = !DILocation(line: 713, column: 4, scope: !1523)
!1606 = !DILocation(line: 715, column: 39, scope: !1518)
!1607 = !DILocation(line: 715, column: 51, scope: !1518)
!1608 = !DILocation(line: 715, column: 14, scope: !1518)
!1609 = !DILocation(line: 715, column: 12, scope: !1518)
!1610 = !DILocation(line: 716, column: 8, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 716, column: 8)
!1612 = !DILocation(line: 716, column: 8, scope: !1518)
!1613 = !DILocation(line: 717, column: 5, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 716, column: 31)
!1615 = !DILocation(line: 719, column: 3, scope: !1518)
!1616 = !DILocation(line: 721, column: 23, scope: !1514)
!1617 = !DILocation(line: 721, column: 35, scope: !1514)
!1618 = !DILocation(line: 722, column: 8, scope: !1514)
!1619 = !DILocation(line: 722, column: 20, scope: !1514)
!1620 = !DILocation(line: 723, column: 8, scope: !1514)
!1621 = !DILocation(line: 723, column: 20, scope: !1514)
!1622 = !DILocation(line: 721, column: 3, scope: !1514)
!1623 = !DILocation(line: 725, column: 2, scope: !1514)
!1624 = !DILocation(line: 725, column: 11, scope: !1500)
!1625 = distinct !{!1625, !1511, !1626}
!1626 = !DILocation(line: 725, column: 13, scope: !1500)
!1627 = !DILocation(line: 727, column: 2, scope: !1500)
!1628 = !DILocation(line: 728, column: 1, scope: !1500)
