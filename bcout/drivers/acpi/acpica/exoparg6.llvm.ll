; ModuleID = '../bcout/drivers/acpi/acpica/exoparg6.llvm.bc'
source_filename = "drivers/acpi/acpica/exoparg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
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
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exoparg6\00", align 1, !dbg !0
@.str = private unnamed_addr constant [28 x i8] c"Match operator out of range\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Index (0x%8.8X%8.8X) beyond package end (0x%X)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_opcode_6A_0T_1R(%struct.acpi_walk_state* %walk_state) #0 !dbg !33 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %index = alloca i64, align 8
  %this_element = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !790, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !792, metadata !DIExpression()), !dbg !793
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !794
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 28, !dbg !795
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !794
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !793
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !796, metadata !DIExpression()), !dbg !797
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %return_desc, align 8, !dbg !797
  call void @llvm.dbg.declare(metadata i32* %status, metadata !798, metadata !DIExpression()), !dbg !799
  store i32 0, i32* %status, align 4, !dbg !799
  call void @llvm.dbg.declare(metadata i64* %index, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %this_element, metadata !802, metadata !DIExpression()), !dbg !803
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !804
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 3, !dbg !805
  %2 = load i16, i16* %opcode, align 2, !dbg !805
  %conv = zext i16 %2 to i32, !dbg !804
  switch i32 %conv, label %sw.default [
    i32 137, label %sw.bb
    i32 23327, label %sw.bb56
  ], !dbg !806

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !807
  %arrayidx1 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %3, i64 1, !dbg !807
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx1, align 8, !dbg !807
  %integer = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_integer*, !dbg !810
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !811
  %5 = load i64, i64* %value, align 8, !dbg !811
  %cmp = icmp ugt i64 %5, 5, !dbg !812
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !813

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !814
  %arrayidx3 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %6, i64 3, !dbg !814
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx3, align 8, !dbg !814
  %integer4 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_integer*, !dbg !815
  %value5 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer4, i32 0, i32 6, !dbg !816
  %8 = load i64, i64* %value5, align 8, !dbg !816
  %cmp6 = icmp ugt i64 %8, 5, !dbg !817
  br i1 %cmp6, label %if.then, label %if.end, !dbg !818

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #3, !dbg !819
  store i32 12292, i32* %status, align 4, !dbg !821
  br label %cleanup, !dbg !822

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !823
  %arrayidx8 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 5, !dbg !823
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx8, align 8, !dbg !823
  %integer9 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_integer*, !dbg !824
  %value10 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer9, i32 0, i32 6, !dbg !825
  %11 = load i64, i64* %value10, align 8, !dbg !825
  store i64 %11, i64* %index, align 8, !dbg !826
  %12 = load i64, i64* %index, align 8, !dbg !827
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !829
  %arrayidx11 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %13, i64 0, !dbg !829
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx11, align 8, !dbg !829
  %package = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_package*, !dbg !830
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 9, !dbg !831
  %15 = load i32, i32* %count, align 4, !dbg !831
  %conv12 = zext i32 %15 to i64, !dbg !829
  %cmp13 = icmp uge i64 %12, %conv12, !dbg !832
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !833

if.then15:                                        ; preds = %if.end
  %16 = load i64, i64* %index, align 8, !dbg !834
  %shr = lshr i64 %16, 32, !dbg !834
  %conv16 = trunc i64 %shr to i32, !dbg !834
  %17 = load i64, i64* %index, align 8, !dbg !834
  %conv17 = trunc i64 %17 to i32, !dbg !834
  %18 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !834
  %arrayidx18 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %18, i64 0, !dbg !834
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx18, align 8, !dbg !834
  %package19 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_package*, !dbg !834
  %count20 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package19, i32 0, i32 9, !dbg !834
  %20 = load i32, i32* %count20, align 4, !dbg !834
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 207, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %conv16, i32 %conv17, i32 %20) #3, !dbg !834
  store i32 12299, i32* %status, align 4, !dbg !836
  br label %cleanup, !dbg !837

if.end21:                                         ; preds = %if.end
  %call = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 -1) #3, !dbg !838
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !839
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !840
  %tobool = icmp ne %union.acpi_operand_object* %21, null, !dbg !840
  br i1 %tobool, label %if.end23, label %if.then22, !dbg !842

if.then22:                                        ; preds = %if.end21
  store i32 4, i32* %status, align 4, !dbg !843
  br label %cleanup, !dbg !845

if.end23:                                         ; preds = %if.end21
  br label %for.cond, !dbg !846

for.cond:                                         ; preds = %for.inc, %if.end23
  %22 = load i64, i64* %index, align 8, !dbg !847
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !850
  %arrayidx24 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 0, !dbg !850
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx24, align 8, !dbg !850
  %package25 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_package*, !dbg !851
  %count26 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package25, i32 0, i32 9, !dbg !852
  %25 = load i32, i32* %count26, align 4, !dbg !852
  %conv27 = zext i32 %25 to i64, !dbg !850
  %cmp28 = icmp ult i64 %22, %conv27, !dbg !853
  br i1 %cmp28, label %for.body, label %for.end, !dbg !854

for.body:                                         ; preds = %for.cond
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !855
  %arrayidx30 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %26, i64 0, !dbg !855
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx30, align 8, !dbg !855
  %package31 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_package*, !dbg !857
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package31, i32 0, i32 6, !dbg !858
  %28 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !858
  %29 = load i64, i64* %index, align 8, !dbg !859
  %arrayidx32 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %28, i64 %29, !dbg !855
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx32, align 8, !dbg !855
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %this_element, align 8, !dbg !860
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_element, align 8, !dbg !861
  %tobool33 = icmp ne %union.acpi_operand_object* %31, null, !dbg !861
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !863

if.then34:                                        ; preds = %for.body
  br label %for.inc, !dbg !864

if.end35:                                         ; preds = %for.body
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !866
  %arrayidx36 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %32, i64 1, !dbg !866
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx36, align 8, !dbg !866
  %integer37 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_integer*, !dbg !868
  %value38 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer37, i32 0, i32 6, !dbg !869
  %34 = load i64, i64* %value38, align 8, !dbg !869
  %conv39 = trunc i64 %34 to i32, !dbg !870
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_element, align 8, !dbg !871
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !872
  %arrayidx40 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %36, i64 2, !dbg !872
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx40, align 8, !dbg !872
  %call41 = call zeroext i8 @acpi_ex_do_match(i32 %conv39, %union.acpi_operand_object* %35, %union.acpi_operand_object* %37) #3, !dbg !873
  %tobool42 = icmp ne i8 %call41, 0, !dbg !873
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !874

if.then43:                                        ; preds = %if.end35
  br label %for.inc, !dbg !875

if.end44:                                         ; preds = %if.end35
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !877
  %arrayidx45 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %38, i64 3, !dbg !877
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx45, align 8, !dbg !877
  %integer46 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_integer*, !dbg !879
  %value47 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer46, i32 0, i32 6, !dbg !880
  %40 = load i64, i64* %value47, align 8, !dbg !880
  %conv48 = trunc i64 %40 to i32, !dbg !881
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_element, align 8, !dbg !882
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !883
  %arrayidx49 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %42, i64 4, !dbg !883
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx49, align 8, !dbg !883
  %call50 = call zeroext i8 @acpi_ex_do_match(i32 %conv48, %union.acpi_operand_object* %41, %union.acpi_operand_object* %43) #3, !dbg !884
  %tobool51 = icmp ne i8 %call50, 0, !dbg !884
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !885

if.then52:                                        ; preds = %if.end44
  br label %for.inc, !dbg !886

if.end53:                                         ; preds = %if.end44
  %44 = load i64, i64* %index, align 8, !dbg !888
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !889
  %integer54 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_integer*, !dbg !890
  %value55 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer54, i32 0, i32 6, !dbg !891
  store i64 %44, i64* %value55, align 8, !dbg !892
  br label %for.end, !dbg !893

for.inc:                                          ; preds = %if.then52, %if.then43, %if.then34
  %46 = load i64, i64* %index, align 8, !dbg !894
  %inc = add i64 %46, 1, !dbg !894
  store i64 %inc, i64* %index, align 8, !dbg !894
  br label %for.cond, !dbg !895, !llvm.loop !896

for.end:                                          ; preds = %if.end53, %for.cond
  br label %sw.epilog, !dbg !898

sw.bb56:                                          ; preds = %entry
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !899
  %call57 = call i32 @acpi_ex_load_table_op(%struct.acpi_walk_state* %47, %union.acpi_operand_object** %return_desc) #3, !dbg !900
  store i32 %call57, i32* %status, align 4, !dbg !901
  br label %sw.epilog, !dbg !902

sw.default:                                       ; preds = %entry
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !903
  %opcode58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 3, !dbg !903
  %49 = load i16, i16* %opcode58, align 2, !dbg !903
  %conv59 = zext i16 %49 to i32, !dbg !903
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %conv59) #3, !dbg !903
  store i32 12289, i32* %status, align 4, !dbg !904
  br label %cleanup, !dbg !905

sw.epilog:                                        ; preds = %sw.bb56, %for.end
  br label %cleanup, !dbg !906

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then22, %if.then15, %if.then
  call void @llvm.dbg.label(metadata !907), !dbg !908
  %50 = load i32, i32* %status, align 4, !dbg !909
  %tobool60 = icmp ne i32 %50, 0, !dbg !909
  br i1 %tobool60, label %if.then61, label %if.else, !dbg !911

if.then61:                                        ; preds = %cleanup
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !912
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %51) #3, !dbg !914
  br label %if.end62, !dbg !915

if.else:                                          ; preds = %cleanup
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !916
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !918
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 43, !dbg !919
  store %union.acpi_operand_object* %52, %union.acpi_operand_object** %result_obj, align 8, !dbg !920
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then61
  %54 = load i32, i32* %status, align 4, !dbg !921
  ret i32 %54, !dbg !921
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @acpi_ex_do_match(i32 %match_op, %union.acpi_operand_object* %package_obj, %union.acpi_operand_object* %match_obj) #0 !dbg !922 {
entry:
  %retval = alloca i8, align 1
  %match_op.addr = alloca i32, align 4
  %package_obj.addr = alloca %union.acpi_operand_object*, align 8
  %match_obj.addr = alloca %union.acpi_operand_object*, align 8
  %logical_result = alloca i8, align 1
  %status = alloca i32, align 4
  store i32 %match_op, i32* %match_op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %match_op.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store %union.acpi_operand_object* %package_obj, %union.acpi_operand_object** %package_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %package_obj.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store %union.acpi_operand_object* %match_obj, %union.acpi_operand_object** %match_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %match_obj.addr, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata i8* %logical_result, metadata !931, metadata !DIExpression()), !dbg !932
  store i8 1, i8* %logical_result, align 1, !dbg !932
  call void @llvm.dbg.declare(metadata i32* %status, metadata !933, metadata !DIExpression()), !dbg !934
  %0 = load i32, i32* %match_op.addr, align 4, !dbg !935
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
    i32 4, label %sw.bb13
    i32 5, label %sw.bb22
  ], !dbg !936

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !937

sw.bb1:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %match_obj.addr, align 8, !dbg !939
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_obj.addr, align 8, !dbg !940
  %call = call i32 @acpi_ex_do_logical_op(i16 zeroext 147, %union.acpi_operand_object* %1, %union.acpi_operand_object* %2, i8* %logical_result) #3, !dbg !941
  store i32 %call, i32* %status, align 4, !dbg !942
  %3 = load i32, i32* %status, align 4, !dbg !943
  %tobool = icmp ne i32 %3, 0, !dbg !943
  br i1 %tobool, label %if.then, label %if.end, !dbg !945

if.then:                                          ; preds = %sw.bb1
  store i8 0, i8* %retval, align 1, !dbg !946
  br label %return, !dbg !946

if.end:                                           ; preds = %sw.bb1
  br label %sw.epilog, !dbg !948

sw.bb2:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %match_obj.addr, align 8, !dbg !949
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_obj.addr, align 8, !dbg !950
  %call3 = call i32 @acpi_ex_do_logical_op(i16 zeroext 149, %union.acpi_operand_object* %4, %union.acpi_operand_object* %5, i8* %logical_result) #3, !dbg !951
  store i32 %call3, i32* %status, align 4, !dbg !952
  %6 = load i32, i32* %status, align 4, !dbg !953
  %tobool4 = icmp ne i32 %6, 0, !dbg !953
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !955

if.then5:                                         ; preds = %sw.bb2
  store i8 0, i8* %retval, align 1, !dbg !956
  br label %return, !dbg !956

if.end6:                                          ; preds = %sw.bb2
  %7 = load i8, i8* %logical_result, align 1, !dbg !958
  %tobool7 = icmp ne i8 %7, 0, !dbg !959
  %lnot = xor i1 %tobool7, true, !dbg !959
  %lnot.ext = zext i1 %lnot to i32, !dbg !959
  %conv = trunc i32 %lnot.ext to i8, !dbg !960
  store i8 %conv, i8* %logical_result, align 1, !dbg !961
  br label %sw.epilog, !dbg !962

sw.bb8:                                           ; preds = %entry
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %match_obj.addr, align 8, !dbg !963
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_obj.addr, align 8, !dbg !964
  %call9 = call i32 @acpi_ex_do_logical_op(i16 zeroext 148, %union.acpi_operand_object* %8, %union.acpi_operand_object* %9, i8* %logical_result) #3, !dbg !965
  store i32 %call9, i32* %status, align 4, !dbg !966
  %10 = load i32, i32* %status, align 4, !dbg !967
  %tobool10 = icmp ne i32 %10, 0, !dbg !967
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !969

if.then11:                                        ; preds = %sw.bb8
  store i8 0, i8* %retval, align 1, !dbg !970
  br label %return, !dbg !970

if.end12:                                         ; preds = %sw.bb8
  br label %sw.epilog, !dbg !972

sw.bb13:                                          ; preds = %entry
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %match_obj.addr, align 8, !dbg !973
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_obj.addr, align 8, !dbg !974
  %call14 = call i32 @acpi_ex_do_logical_op(i16 zeroext 148, %union.acpi_operand_object* %11, %union.acpi_operand_object* %12, i8* %logical_result) #3, !dbg !975
  store i32 %call14, i32* %status, align 4, !dbg !976
  %13 = load i32, i32* %status, align 4, !dbg !977
  %tobool15 = icmp ne i32 %13, 0, !dbg !977
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !979

if.then16:                                        ; preds = %sw.bb13
  store i8 0, i8* %retval, align 1, !dbg !980
  br label %return, !dbg !980

if.end17:                                         ; preds = %sw.bb13
  %14 = load i8, i8* %logical_result, align 1, !dbg !982
  %tobool18 = icmp ne i8 %14, 0, !dbg !983
  %lnot19 = xor i1 %tobool18, true, !dbg !983
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !983
  %conv21 = trunc i32 %lnot.ext20 to i8, !dbg !984
  store i8 %conv21, i8* %logical_result, align 1, !dbg !985
  br label %sw.epilog, !dbg !986

sw.bb22:                                          ; preds = %entry
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %match_obj.addr, align 8, !dbg !987
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %package_obj.addr, align 8, !dbg !988
  %call23 = call i32 @acpi_ex_do_logical_op(i16 zeroext 149, %union.acpi_operand_object* %15, %union.acpi_operand_object* %16, i8* %logical_result) #3, !dbg !989
  store i32 %call23, i32* %status, align 4, !dbg !990
  %17 = load i32, i32* %status, align 4, !dbg !991
  %tobool24 = icmp ne i32 %17, 0, !dbg !991
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !993

if.then25:                                        ; preds = %sw.bb22
  store i8 0, i8* %retval, align 1, !dbg !994
  br label %return, !dbg !994

if.end26:                                         ; preds = %sw.bb22
  br label %sw.epilog, !dbg !996

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !997
  br label %return, !dbg !997

sw.epilog:                                        ; preds = %if.end26, %if.end17, %if.end12, %if.end6, %if.end, %sw.bb
  %18 = load i8, i8* %logical_result, align 1, !dbg !998
  store i8 %18, i8* %retval, align 1, !dbg !999
  br label %return, !dbg !999

return:                                           ; preds = %sw.epilog, %sw.default, %if.then25, %if.then16, %if.then11, %if.then5, %if.then
  %19 = load i8, i8* %retval, align 1, !dbg !1000
  ret i8 %19, !dbg !1000
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_load_table_op(%struct.acpi_walk_state*, %union.acpi_operand_object**) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_do_logical_op(i16 zeroext, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg6.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !8, !13, !16, !19}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!0}
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 72, elements: !26)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{!27}
!27 = !DISubrange(count: 9)
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!33 = distinct !DISubprogram(name: "acpi_ex_opcode_6A_0T_1R", scope: !3, file: !3, line: 176, type: !34, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!34 = !DISubroutineType(types: !35)
!35 = !{!6, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !38, line: 37, size: 9024, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !739, !740, !741, !742, !743, !747, !749, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !774, !775, !776, !777, !778, !779, !780, !781, !782, !788}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !38, line: 38, baseType: !36, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !38, line: 39, baseType: !19, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !37, file: !38, line: 40, baseType: !19, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !37, file: !38, line: 41, baseType: !16, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !37, file: !38, line: 42, baseType: !19, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !37, file: !38, line: 43, baseType: !19, size: 8, offset: 104)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !37, file: !38, line: 44, baseType: !19, size: 8, offset: 112)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !37, file: !38, line: 45, baseType: !48, size: 16, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !16)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !37, file: !38, line: 46, baseType: !19, size: 8, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !37, file: !38, line: 47, baseType: !19, size: 8, offset: 152)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !37, file: !38, line: 48, baseType: !19, size: 8, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !37, file: !38, line: 49, baseType: !19, size: 8, offset: 168)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !37, file: !38, line: 50, baseType: !19, size: 8, offset: 176)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !37, file: !38, line: 51, baseType: !19, size: 8, offset: 184)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !37, file: !38, line: 52, baseType: !19, size: 8, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !37, file: !38, line: 53, baseType: !19, size: 8, offset: 200)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !37, file: !38, line: 54, baseType: !58, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !37, file: !38, line: 55, baseType: !8, size: 32, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !37, file: !38, line: 56, baseType: !8, size: 32, offset: 352)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !37, file: !38, line: 57, baseType: !8, size: 32, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !37, file: !38, line: 58, baseType: !8, size: 32, offset: 416)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !37, file: !38, line: 60, baseType: !64, size: 640, offset: 448)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !65, line: 893, size: 640, elements: !66)
!65 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71, !72, !636, !637, !737, !738}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !64, file: !65, line: 894, baseType: !58, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !64, file: !65, line: 895, baseType: !58, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !64, file: !65, line: 896, baseType: !58, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !64, file: !65, line: 897, baseType: !58, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !64, file: !65, line: 898, baseType: !58, size: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !64, file: !65, line: 899, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !65, line: 875, size: 1600, elements: !75)
!75 = !{!76, !579, !595}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !74, file: !65, line: 876, baseType: !77, size: 448)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !65, line: 828, size: 448, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !569, !578}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !77, file: !65, line: 829, baseType: !73, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !65, line: 829, baseType: !19, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !65, line: 829, baseType: !19, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !77, file: !65, line: 829, baseType: !16, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !77, file: !65, line: 829, baseType: !58, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !77, file: !65, line: 829, baseType: !73, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !65, line: 829, baseType: !86, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !65, line: 133, size: 384, elements: !88)
!88 = !{!89, !553, !554, !555, !556, !565, !566, !567, !568}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !87, file: !65, line: 134, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !92, line: 367, size: 576, elements: !93)
!92 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !102, !115, !126, !139, !153, !163, !187, !216, !231, !244, !323, !335, !349, !359, !377, !399, !418, !437, !456, !473, !499, !516, !529, !543, !552}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !91, file: !92, line: 368, baseType: !95, size: 128)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !92, line: 73, size: 128, elements: !96)
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !92, line: 74, baseType: !90, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !92, line: 74, baseType: !19, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !92, line: 74, baseType: !19, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !92, line: 74, baseType: !16, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !92, line: 74, baseType: !19, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !91, file: !92, line: 369, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !92, line: 76, size: 192, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !114}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !92, line: 77, baseType: !90, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !92, line: 77, baseType: !19, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !92, line: 77, baseType: !19, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !92, line: 77, baseType: !16, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !92, line: 77, baseType: !19, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !103, file: !92, line: 77, baseType: !111, size: 24, offset: 104)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 3)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !103, file: !92, line: 78, baseType: !13, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !91, file: !92, line: 370, baseType: !116, size: 256)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !92, line: 93, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !125}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !92, line: 94, baseType: !90, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !92, line: 94, baseType: !19, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !92, line: 94, baseType: !19, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !92, line: 94, baseType: !16, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !92, line: 94, baseType: !19, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !116, file: !92, line: 94, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !92, line: 94, baseType: !8, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !91, file: !92, line: 371, baseType: !127, size: 384)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !92, line: 97, size: 384, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !92, line: 98, baseType: !90, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !92, line: 98, baseType: !19, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !92, line: 98, baseType: !19, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !92, line: 98, baseType: !16, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !92, line: 98, baseType: !19, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !127, file: !92, line: 98, baseType: !58, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !127, file: !92, line: 98, baseType: !8, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !92, line: 99, baseType: !8, size: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !92, line: 100, baseType: !58, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !92, line: 101, baseType: !86, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !91, file: !92, line: 372, baseType: !140, size: 384)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !92, line: 104, size: 384, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !150, !151, !152}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !92, line: 105, baseType: !90, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !92, line: 105, baseType: !19, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !92, line: 105, baseType: !19, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !92, line: 105, baseType: !16, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !92, line: 105, baseType: !19, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !92, line: 105, baseType: !86, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !140, file: !92, line: 106, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !92, line: 107, baseType: !58, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !92, line: 108, baseType: !8, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !140, file: !92, line: 109, baseType: !8, size: 32, offset: 352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !91, file: !92, line: 373, baseType: !154, size: 192)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !92, line: 118, size: 192, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !154, file: !92, line: 119, baseType: !90, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !154, file: !92, line: 119, baseType: !19, size: 8, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !92, line: 119, baseType: !19, size: 8, offset: 72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !154, file: !92, line: 119, baseType: !16, size: 16, offset: 80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !92, line: 119, baseType: !19, size: 8, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !154, file: !92, line: 119, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !91, file: !92, line: 374, baseType: !164, size: 448)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !92, line: 143, size: 448, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !184, !185, !186}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !164, file: !92, line: 144, baseType: !90, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !92, line: 144, baseType: !19, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !92, line: 144, baseType: !19, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !164, file: !92, line: 144, baseType: !16, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !92, line: 144, baseType: !19, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !164, file: !92, line: 144, baseType: !19, size: 8, offset: 104)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !164, file: !92, line: 145, baseType: !19, size: 8, offset: 112)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !164, file: !92, line: 146, baseType: !19, size: 8, offset: 120)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !164, file: !92, line: 147, baseType: !90, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !92, line: 148, baseType: !90, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !164, file: !92, line: 149, baseType: !58, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !164, file: !92, line: 153, baseType: !178, size: 64, offset: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !92, line: 150, size: 64, elements: !179)
!179 = !{!180, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !178, file: !92, line: 151, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !65, line: 248, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !178, file: !92, line: 152, baseType: !90, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !164, file: !92, line: 155, baseType: !8, size: 32, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !164, file: !92, line: 156, baseType: !48, size: 16, offset: 416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !164, file: !92, line: 157, baseType: !19, size: 8, offset: 432)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !91, file: !92, line: 375, baseType: !188, size: 576)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !92, line: 122, size: 576, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !212, !213, !214, !215}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !188, file: !92, line: 123, baseType: !90, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !92, line: 123, baseType: !19, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !92, line: 123, baseType: !19, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !188, file: !92, line: 123, baseType: !16, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !92, line: 123, baseType: !19, size: 8, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !188, file: !92, line: 123, baseType: !19, size: 8, offset: 104)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !188, file: !92, line: 124, baseType: !16, size: 16, offset: 112)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !188, file: !92, line: 125, baseType: !162, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !188, file: !92, line: 126, baseType: !13, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !188, file: !92, line: 127, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !65, line: 620, size: 320, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !65, line: 621, baseType: !162, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !201, file: !65, line: 621, baseType: !19, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !65, line: 621, baseType: !19, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !65, line: 621, baseType: !16, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !201, file: !65, line: 621, baseType: !16, size: 16, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !201, file: !65, line: 621, baseType: !19, size: 8, offset: 112)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !201, file: !65, line: 622, baseType: !36, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !201, file: !65, line: 623, baseType: !90, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !201, file: !65, line: 624, baseType: !13, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !188, file: !92, line: 128, baseType: !90, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !92, line: 129, baseType: !90, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !92, line: 130, baseType: !86, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !188, file: !92, line: 131, baseType: !19, size: 8, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !91, file: !92, line: 376, baseType: !217, size: 448)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !92, line: 134, size: 448, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !230}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !217, file: !92, line: 135, baseType: !90, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !92, line: 135, baseType: !19, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !92, line: 135, baseType: !19, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !217, file: !92, line: 135, baseType: !16, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !92, line: 135, baseType: !19, size: 8, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !217, file: !92, line: 135, baseType: !19, size: 8, offset: 104)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !92, line: 136, baseType: !86, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !217, file: !92, line: 137, baseType: !90, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !92, line: 138, baseType: !90, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !217, file: !92, line: 139, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !13)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !217, file: !92, line: 140, baseType: !8, size: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !91, file: !92, line: 377, baseType: !232, size: 320)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !92, line: 184, size: 320, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !243}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !232, file: !92, line: 185, baseType: !90, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !92, line: 185, baseType: !19, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !92, line: 185, baseType: !19, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !232, file: !92, line: 185, baseType: !16, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !92, line: 185, baseType: !19, size: 8, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !232, file: !92, line: 185, baseType: !240, size: 128, offset: 128)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 2)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !232, file: !92, line: 185, baseType: !90, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !91, file: !92, line: 378, baseType: !245, size: 384)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !92, line: 187, size: 384, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !245, file: !92, line: 188, baseType: !90, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !92, line: 188, baseType: !19, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !245, file: !92, line: 188, baseType: !19, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !245, file: !92, line: 188, baseType: !16, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !92, line: 188, baseType: !19, size: 8, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !245, file: !92, line: 189, baseType: !240, size: 128, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !245, file: !92, line: 189, baseType: !90, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !245, file: !92, line: 189, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !65, line: 480, size: 576, elements: !257)
!257 = !{!258, !259, !260, !261, !269, !284, !317, !318, !319, !320, !321, !322}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !256, file: !65, line: 481, baseType: !86, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !256, file: !65, line: 482, baseType: !255, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !65, line: 483, baseType: !255, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !256, file: !65, line: 484, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !65, line: 497, size: 256, elements: !264)
!264 = !{!265, !266, !267, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !263, file: !65, line: 498, baseType: !262, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !65, line: 499, baseType: !262, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !263, file: !65, line: 500, baseType: !255, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !263, file: !65, line: 501, baseType: !8, size: 32, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !256, file: !65, line: 485, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !65, line: 466, size: 320, elements: !272)
!272 = !{!273, !278, !279, !280, !281, !282, !283}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !271, file: !65, line: 467, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !65, line: 459, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !274, file: !65, line: 460, baseType: !19, size: 8)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !274, file: !65, line: 461, baseType: !13, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !271, file: !65, line: 468, baseType: !274, size: 128, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !271, file: !65, line: 469, baseType: !16, size: 16, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !271, file: !65, line: 470, baseType: !19, size: 8, offset: 272)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !271, file: !65, line: 471, baseType: !19, size: 8, offset: 280)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !271, file: !65, line: 472, baseType: !19, size: 8, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !271, file: !65, line: 473, baseType: !19, size: 8, offset: 296)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !256, file: !65, line: 486, baseType: !285, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !65, line: 448, size: 192, elements: !287)
!287 = !{!288, !312, !313, !314, !315, !316}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !286, file: !65, line: 449, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !65, line: 438, size: 64, elements: !290)
!290 = !{!291, !292, !306}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !289, file: !65, line: 439, baseType: !86, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !289, file: !65, line: 440, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !65, line: 419, size: 256, elements: !295)
!295 = !{!296, !302, !303, !304, !305}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !294, file: !65, line: 420, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!8, !301, !8, !162}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !162)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !294, file: !65, line: 421, baseType: !162, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !294, file: !65, line: 422, baseType: !86, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !294, file: !65, line: 423, baseType: !19, size: 8, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !294, file: !65, line: 424, baseType: !19, size: 8, offset: 200)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !289, file: !65, line: 441, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !65, line: 429, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !308, file: !65, line: 430, baseType: !86, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !65, line: 431, baseType: !307, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !286, file: !65, line: 450, baseType: !270, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !65, line: 451, baseType: !19, size: 8, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !286, file: !65, line: 452, baseType: !19, size: 8, offset: 136)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !286, file: !65, line: 453, baseType: !19, size: 8, offset: 144)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !286, file: !65, line: 454, baseType: !19, size: 8, offset: 152)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !256, file: !65, line: 487, baseType: !13, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !256, file: !65, line: 488, baseType: !8, size: 32, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !256, file: !65, line: 489, baseType: !16, size: 16, offset: 480)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !256, file: !65, line: 490, baseType: !16, size: 16, offset: 496)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !256, file: !65, line: 491, baseType: !19, size: 8, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !256, file: !65, line: 492, baseType: !19, size: 8, offset: 520)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !91, file: !92, line: 379, baseType: !324, size: 384)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !92, line: 192, size: 384, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !324, file: !92, line: 193, baseType: !90, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !92, line: 193, baseType: !19, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !324, file: !92, line: 193, baseType: !19, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !324, file: !92, line: 193, baseType: !16, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !92, line: 193, baseType: !19, size: 8, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !324, file: !92, line: 193, baseType: !240, size: 128, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !324, file: !92, line: 193, baseType: !90, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !324, file: !92, line: 193, baseType: !8, size: 32, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !324, file: !92, line: 194, baseType: !8, size: 32, offset: 352)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !91, file: !92, line: 380, baseType: !336, size: 384)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !92, line: 197, size: 384, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !336, file: !92, line: 198, baseType: !90, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !92, line: 198, baseType: !19, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !336, file: !92, line: 198, baseType: !19, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !336, file: !92, line: 198, baseType: !16, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !92, line: 198, baseType: !19, size: 8, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !336, file: !92, line: 200, baseType: !19, size: 8, offset: 104)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !336, file: !92, line: 201, baseType: !19, size: 8, offset: 112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !336, file: !92, line: 202, baseType: !240, size: 128, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !336, file: !92, line: 202, baseType: !90, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !336, file: !92, line: 202, baseType: !348, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !13)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !91, file: !92, line: 381, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !92, line: 205, size: 320, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !350, file: !92, line: 206, baseType: !90, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !92, line: 206, baseType: !19, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !92, line: 206, baseType: !19, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !350, file: !92, line: 206, baseType: !16, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !92, line: 206, baseType: !19, size: 8, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !350, file: !92, line: 206, baseType: !240, size: 128, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !350, file: !92, line: 206, baseType: !90, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !91, file: !92, line: 382, baseType: !360, size: 384)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !92, line: 233, size: 384, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !360, file: !92, line: 234, baseType: !90, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !360, file: !92, line: 234, baseType: !16, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 104)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 120)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !92, line: 234, baseType: !86, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !360, file: !92, line: 234, baseType: !8, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !360, file: !92, line: 234, baseType: !8, size: 32, offset: 224)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !92, line: 234, baseType: !8, size: 32, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 288)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !360, file: !92, line: 234, baseType: !19, size: 8, offset: 296)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !360, file: !92, line: 234, baseType: !90, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !91, file: !92, line: 383, baseType: !378, size: 576)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !92, line: 237, size: 576, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !378, file: !92, line: 238, baseType: !90, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !378, file: !92, line: 238, baseType: !16, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 104)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 112)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 120)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !92, line: 238, baseType: !86, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !378, file: !92, line: 238, baseType: !8, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !378, file: !92, line: 238, baseType: !8, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !92, line: 238, baseType: !8, size: 32, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 288)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !378, file: !92, line: 238, baseType: !19, size: 8, offset: 296)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !378, file: !92, line: 238, baseType: !16, size: 16, offset: 304)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !378, file: !92, line: 239, baseType: !90, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !378, file: !92, line: 240, baseType: !58, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !378, file: !92, line: 241, baseType: !16, size: 16, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !378, file: !92, line: 242, baseType: !58, size: 64, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !91, file: !92, line: 384, baseType: !400, size: 384)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !92, line: 262, size: 384, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !400, file: !92, line: 263, baseType: !90, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 72)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !400, file: !92, line: 263, baseType: !16, size: 16, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 104)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 112)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 120)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !400, file: !92, line: 263, baseType: !86, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !400, file: !92, line: 263, baseType: !8, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !400, file: !92, line: 263, baseType: !8, size: 32, offset: 224)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !400, file: !92, line: 263, baseType: !8, size: 32, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 288)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 296)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !400, file: !92, line: 263, baseType: !19, size: 8, offset: 304)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !400, file: !92, line: 264, baseType: !90, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !91, file: !92, line: 385, baseType: !419, size: 448)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !92, line: 245, size: 448, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !419, file: !92, line: 246, baseType: !90, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 72)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !419, file: !92, line: 246, baseType: !16, size: 16, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 104)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 120)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !419, file: !92, line: 246, baseType: !86, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !419, file: !92, line: 246, baseType: !8, size: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !419, file: !92, line: 246, baseType: !8, size: 32, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !419, file: !92, line: 246, baseType: !8, size: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 288)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !419, file: !92, line: 246, baseType: !19, size: 8, offset: 296)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !419, file: !92, line: 246, baseType: !90, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !419, file: !92, line: 247, baseType: !90, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !91, file: !92, line: 386, baseType: !438, size: 448)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !92, line: 250, size: 448, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !438, file: !92, line: 251, baseType: !90, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !438, file: !92, line: 251, baseType: !16, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 120)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !92, line: 251, baseType: !86, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !438, file: !92, line: 251, baseType: !8, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !438, file: !92, line: 251, baseType: !8, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !438, file: !92, line: 251, baseType: !8, size: 32, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 288)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !438, file: !92, line: 251, baseType: !19, size: 8, offset: 296)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !438, file: !92, line: 256, baseType: !90, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !438, file: !92, line: 257, baseType: !90, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !91, file: !92, line: 387, baseType: !457, size: 512)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !92, line: 273, size: 512, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !92, line: 274, baseType: !90, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !92, line: 274, baseType: !19, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !92, line: 274, baseType: !19, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !92, line: 274, baseType: !16, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !92, line: 274, baseType: !19, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !92, line: 274, baseType: !86, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !457, file: !92, line: 275, baseType: !8, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !92, line: 276, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !301, !8, !162}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !457, file: !92, line: 277, baseType: !162, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !92, line: 278, baseType: !240, size: 128, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !91, file: !92, line: 388, baseType: !474, size: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !92, line: 281, size: 512, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !489, !490, !491, !497, !498}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !92, line: 282, baseType: !90, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !92, line: 282, baseType: !19, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !92, line: 282, baseType: !19, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !92, line: 282, baseType: !16, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !92, line: 282, baseType: !19, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !474, file: !92, line: 282, baseType: !19, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !474, file: !92, line: 283, baseType: !19, size: 8, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !92, line: 284, baseType: !484, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!6, !8, !229, !8, !488, !162, !162}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !92, line: 285, baseType: !86, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !474, file: !92, line: 286, baseType: !162, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !474, file: !92, line: 287, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!6, !301, !8, !162, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !474, file: !92, line: 288, baseType: !90, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !92, line: 289, baseType: !90, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !91, file: !92, line: 389, baseType: !500, size: 512)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !92, line: 307, size: 512, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !92, line: 308, baseType: !90, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !92, line: 308, baseType: !19, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !92, line: 308, baseType: !19, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !92, line: 308, baseType: !16, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !92, line: 308, baseType: !19, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !500, file: !92, line: 308, baseType: !19, size: 8, offset: 104)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !500, file: !92, line: 309, baseType: !19, size: 8, offset: 112)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !500, file: !92, line: 310, baseType: !19, size: 8, offset: 120)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !500, file: !92, line: 311, baseType: !162, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !92, line: 312, baseType: !86, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !500, file: !92, line: 313, baseType: !149, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !500, file: !92, line: 314, baseType: !58, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !500, file: !92, line: 315, baseType: !58, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !500, file: !92, line: 316, baseType: !8, size: 32, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !91, file: !92, line: 390, baseType: !517, size: 448)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !92, line: 340, size: 448, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !517, file: !92, line: 341, baseType: !90, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !517, file: !92, line: 341, baseType: !19, size: 8, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !92, line: 341, baseType: !19, size: 8, offset: 72)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !517, file: !92, line: 341, baseType: !16, size: 16, offset: 80)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !92, line: 341, baseType: !19, size: 8, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !517, file: !92, line: 341, baseType: !86, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !517, file: !92, line: 342, baseType: !86, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !517, file: !92, line: 343, baseType: !162, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !517, file: !92, line: 344, baseType: !58, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !517, file: !92, line: 345, baseType: !8, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !91, file: !92, line: 391, baseType: !530, size: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !92, line: 350, size: 256, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !92, line: 351, baseType: !90, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !92, line: 351, baseType: !19, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !92, line: 351, baseType: !19, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !92, line: 351, baseType: !16, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !92, line: 351, baseType: !19, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !530, file: !92, line: 351, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !301, !162}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !530, file: !92, line: 352, baseType: !162, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !91, file: !92, line: 392, baseType: !544, size: 192)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !92, line: 357, size: 192, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !544, file: !92, line: 358, baseType: !90, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !544, file: !92, line: 358, baseType: !19, size: 8, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !92, line: 358, baseType: !19, size: 8, offset: 72)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !544, file: !92, line: 358, baseType: !16, size: 16, offset: 80)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !92, line: 358, baseType: !19, size: 8, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !92, line: 358, baseType: !90, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !91, file: !92, line: 399, baseType: !87, size: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !65, line: 135, baseType: !19, size: 8, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !65, line: 136, baseType: !19, size: 8, offset: 72)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !65, line: 137, baseType: !16, size: 16, offset: 80)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !65, line: 138, baseType: !557, size: 32, offset: 96)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !558, line: 327, size: 32, elements: !559)
!558 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !557, file: !558, line: 328, baseType: !8, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !557, file: !558, line: 329, baseType: !562, size: 32)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 4)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !65, line: 139, baseType: !86, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !87, file: !65, line: 140, baseType: !86, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !87, file: !65, line: 141, baseType: !86, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !87, file: !65, line: 142, baseType: !48, size: 16, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !77, file: !65, line: 829, baseType: !570, size: 64, offset: 320)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !65, line: 716, size: 64, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !570, file: !65, line: 717, baseType: !13, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !570, file: !65, line: 718, baseType: !8, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !570, file: !65, line: 719, baseType: !124, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !570, file: !65, line: 720, baseType: !58, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !65, line: 721, baseType: !124, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !570, file: !65, line: 722, baseType: !73, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !77, file: !65, line: 829, baseType: !19, size: 8, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !74, file: !65, line: 877, baseType: !580, size: 640)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !65, line: 835, size: 640, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !580, file: !65, line: 836, baseType: !73, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !65, line: 836, baseType: !19, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !65, line: 836, baseType: !19, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !580, file: !65, line: 836, baseType: !16, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !580, file: !65, line: 836, baseType: !58, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !65, line: 836, baseType: !73, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !65, line: 836, baseType: !86, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !580, file: !65, line: 836, baseType: !570, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !580, file: !65, line: 836, baseType: !19, size: 8, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !580, file: !65, line: 836, baseType: !124, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !580, file: !65, line: 837, baseType: !58, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !580, file: !65, line: 838, baseType: !8, size: 32, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !580, file: !65, line: 839, baseType: !8, size: 32, offset: 608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !74, file: !65, line: 878, baseType: !596, size: 1600)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !65, line: 846, size: 1600, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !596, file: !65, line: 847, baseType: !73, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !65, line: 847, baseType: !19, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !65, line: 847, baseType: !19, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !596, file: !65, line: 847, baseType: !16, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !596, file: !65, line: 847, baseType: !58, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !596, file: !65, line: 847, baseType: !73, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !596, file: !65, line: 847, baseType: !86, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !596, file: !65, line: 847, baseType: !570, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !596, file: !65, line: 847, baseType: !19, size: 8, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !596, file: !65, line: 847, baseType: !73, size: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !596, file: !65, line: 848, baseType: !73, size: 64, offset: 512)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !596, file: !65, line: 849, baseType: !124, size: 64, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !596, file: !65, line: 850, baseType: !19, size: 8, offset: 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !596, file: !65, line: 851, baseType: !124, size: 64, offset: 704)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !596, file: !65, line: 852, baseType: !124, size: 64, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !596, file: !65, line: 853, baseType: !124, size: 64, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !596, file: !65, line: 854, baseType: !562, size: 32, offset: 896)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !596, file: !65, line: 855, baseType: !8, size: 32, offset: 928)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !596, file: !65, line: 856, baseType: !8, size: 32, offset: 960)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !596, file: !65, line: 857, baseType: !8, size: 32, offset: 992)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !596, file: !65, line: 858, baseType: !8, size: 32, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !596, file: !65, line: 859, baseType: !8, size: 32, offset: 1056)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !596, file: !65, line: 860, baseType: !8, size: 32, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !596, file: !65, line: 861, baseType: !8, size: 32, offset: 1120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !596, file: !65, line: 862, baseType: !8, size: 32, offset: 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !596, file: !65, line: 863, baseType: !8, size: 32, offset: 1184)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !596, file: !65, line: 864, baseType: !8, size: 32, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !596, file: !65, line: 865, baseType: !8, size: 32, offset: 1248)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !596, file: !65, line: 866, baseType: !8, size: 32, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !596, file: !65, line: 867, baseType: !8, size: 32, offset: 1312)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !596, file: !65, line: 868, baseType: !16, size: 16, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !596, file: !65, line: 869, baseType: !19, size: 8, offset: 1360)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !596, file: !65, line: 870, baseType: !19, size: 8, offset: 1368)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !596, file: !65, line: 871, baseType: !19, size: 8, offset: 1376)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !596, file: !65, line: 872, baseType: !633, size: 160, offset: 1384)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 20)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !64, file: !65, line: 900, baseType: !86, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !64, file: !65, line: 901, baseType: !638, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !65, line: 663, size: 640, elements: !640)
!640 = !{!641, !649, !662, !671, !680, !693, !707, !708, !720}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !639, file: !65, line: 664, baseType: !642, size: 128)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !65, line: 567, size: 128, elements: !643)
!643 = !{!644, !645, !646, !647, !648}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !642, file: !65, line: 568, baseType: !162, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !65, line: 568, baseType: !19, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !65, line: 568, baseType: !19, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !65, line: 568, baseType: !16, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !642, file: !65, line: 568, baseType: !16, size: 16, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !639, file: !65, line: 665, baseType: !650, size: 384)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !65, line: 593, size: 384, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !65, line: 594, baseType: !162, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !65, line: 594, baseType: !19, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !65, line: 594, baseType: !19, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !650, file: !65, line: 594, baseType: !16, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !650, file: !65, line: 594, baseType: !16, size: 16, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !650, file: !65, line: 594, baseType: !16, size: 16, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !650, file: !65, line: 595, baseType: !73, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !650, file: !65, line: 596, baseType: !58, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !650, file: !65, line: 597, baseType: !58, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !650, file: !65, line: 598, baseType: !13, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !639, file: !65, line: 666, baseType: !663, size: 192)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !65, line: 573, size: 192, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !65, line: 574, baseType: !162, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !65, line: 574, baseType: !19, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !65, line: 574, baseType: !19, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !65, line: 574, baseType: !16, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !663, file: !65, line: 574, baseType: !16, size: 16, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !663, file: !65, line: 574, baseType: !90, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !639, file: !65, line: 667, baseType: !672, size: 192)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !65, line: 604, size: 192, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !65, line: 605, baseType: !162, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !65, line: 605, baseType: !19, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !65, line: 605, baseType: !19, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !65, line: 605, baseType: !16, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !672, file: !65, line: 605, baseType: !16, size: 16, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !65, line: 605, baseType: !86, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !639, file: !65, line: 668, baseType: !681, size: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !65, line: 608, size: 448, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !681, file: !65, line: 609, baseType: !162, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !681, file: !65, line: 609, baseType: !19, size: 8, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !65, line: 609, baseType: !19, size: 8, offset: 72)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !681, file: !65, line: 609, baseType: !16, size: 16, offset: 80)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !681, file: !65, line: 609, baseType: !16, size: 16, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !681, file: !65, line: 609, baseType: !8, size: 32, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !681, file: !65, line: 610, baseType: !73, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !681, file: !65, line: 611, baseType: !58, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !681, file: !65, line: 612, baseType: !58, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !681, file: !65, line: 613, baseType: !8, size: 32, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !639, file: !65, line: 669, baseType: !694, size: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !65, line: 580, size: 512, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !65, line: 581, baseType: !162, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !65, line: 581, baseType: !19, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !65, line: 581, baseType: !19, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !65, line: 581, baseType: !16, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !694, file: !65, line: 581, baseType: !16, size: 16, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !694, file: !65, line: 581, baseType: !8, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !694, file: !65, line: 582, baseType: !90, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !694, file: !65, line: 583, baseType: !90, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !694, file: !65, line: 584, baseType: !36, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !694, file: !65, line: 585, baseType: !162, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !694, file: !65, line: 586, baseType: !8, size: 32, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !639, file: !65, line: 670, baseType: !201, size: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !639, file: !65, line: 671, baseType: !709, size: 640)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !65, line: 631, size: 640, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !65, line: 632, baseType: !162, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !65, line: 632, baseType: !19, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !65, line: 632, baseType: !19, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !65, line: 632, baseType: !16, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !709, file: !65, line: 632, baseType: !16, size: 16, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !709, file: !65, line: 633, baseType: !717, size: 512, offset: 128)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 512, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 8)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !639, file: !65, line: 672, baseType: !721, size: 320)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !65, line: 654, size: 320, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !65, line: 655, baseType: !162, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !65, line: 655, baseType: !19, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !65, line: 655, baseType: !19, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !721, file: !65, line: 655, baseType: !16, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !721, file: !65, line: 655, baseType: !16, size: 16, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !721, file: !65, line: 655, baseType: !19, size: 8, offset: 112)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !65, line: 656, baseType: !86, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !721, file: !65, line: 657, baseType: !90, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !721, file: !65, line: 658, baseType: !732, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !65, line: 645, size: 128, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !733, file: !65, line: 646, baseType: !467, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !733, file: !65, line: 647, baseType: !162, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !64, file: !65, line: 902, baseType: !73, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !64, file: !65, line: 903, baseType: !8, size: 32, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !37, file: !38, line: 61, baseType: !8, size: 32, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !37, file: !38, line: 62, baseType: !8, size: 32, offset: 1120)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !37, file: !38, line: 63, baseType: !16, size: 16, offset: 1152)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !37, file: !38, line: 64, baseType: !19, size: 8, offset: 1168)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !37, file: !38, line: 66, baseType: !744, size: 2688, offset: 1216)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2688, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 7)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !37, file: !38, line: 67, baseType: !748, size: 3072, offset: 3904)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 3072, elements: !718)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !37, file: !38, line: 68, baseType: !750, size: 576, offset: 6976)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 576, elements: !26)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !37, file: !38, line: 69, baseType: !149, size: 64, offset: 7552)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !37, file: !38, line: 71, baseType: !58, size: 64, offset: 7616)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !37, file: !38, line: 72, baseType: !149, size: 64, offset: 7680)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !37, file: !38, line: 73, baseType: !638, size: 64, offset: 7744)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !37, file: !38, line: 74, baseType: !86, size: 64, offset: 7808)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !37, file: !38, line: 75, baseType: !90, size: 64, offset: 7872)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !37, file: !38, line: 76, baseType: !86, size: 64, offset: 7936)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !37, file: !38, line: 77, baseType: !73, size: 64, offset: 8000)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !37, file: !38, line: 78, baseType: !90, size: 64, offset: 8064)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !37, file: !38, line: 79, baseType: !86, size: 64, offset: 8128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !37, file: !38, line: 80, baseType: !124, size: 64, offset: 8192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !37, file: !38, line: 81, baseType: !73, size: 64, offset: 8256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !37, file: !38, line: 82, baseType: !764, size: 64, offset: 8320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !65, line: 702, size: 128, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !766, file: !65, line: 706, baseType: !8, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !766, file: !65, line: 707, baseType: !8, size: 32, offset: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !65, line: 708, baseType: !16, size: 16, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !766, file: !65, line: 709, baseType: !19, size: 8, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !766, file: !65, line: 710, baseType: !19, size: 8, offset: 88)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !65, line: 711, baseType: !19, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !37, file: !38, line: 83, baseType: !73, size: 64, offset: 8384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !37, file: !38, line: 84, baseType: !90, size: 64, offset: 8448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !37, file: !38, line: 85, baseType: !638, size: 64, offset: 8512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !37, file: !38, line: 86, baseType: !90, size: 64, offset: 8576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !37, file: !38, line: 87, baseType: !638, size: 64, offset: 8640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !37, file: !38, line: 88, baseType: !73, size: 64, offset: 8704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !37, file: !38, line: 89, baseType: !73, size: 64, offset: 8768)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !37, file: !38, line: 90, baseType: !200, size: 64, offset: 8832)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !37, file: !38, line: 91, baseType: !783, size: 64, offset: 8896)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !65, line: 637, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!6, !36, !787}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !37, file: !38, line: 92, baseType: !789, size: 64, offset: 8960)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !65, line: 641, baseType: !182)
!790 = !DILocalVariable(name: "walk_state", arg: 1, scope: !33, file: !3, line: 176, type: !36)
!791 = !DILocation(line: 176, column: 61, scope: !33)
!792 = !DILocalVariable(name: "operand", scope: !33, file: !3, line: 178, type: !149)
!793 = !DILocation(line: 178, column: 30, scope: !33)
!794 = !DILocation(line: 178, column: 41, scope: !33)
!795 = !DILocation(line: 178, column: 53, scope: !33)
!796 = !DILocalVariable(name: "return_desc", scope: !33, file: !3, line: 179, type: !90)
!797 = !DILocation(line: 179, column: 29, scope: !33)
!798 = !DILocalVariable(name: "status", scope: !33, file: !3, line: 180, type: !6)
!799 = !DILocation(line: 180, column: 14, scope: !33)
!800 = !DILocalVariable(name: "index", scope: !33, file: !3, line: 181, type: !13)
!801 = !DILocation(line: 181, column: 6, scope: !33)
!802 = !DILocalVariable(name: "this_element", scope: !33, file: !3, line: 182, type: !90)
!803 = !DILocation(line: 182, column: 29, scope: !33)
!804 = !DILocation(line: 187, column: 10, scope: !33)
!805 = !DILocation(line: 187, column: 22, scope: !33)
!806 = !DILocation(line: 187, column: 2, scope: !33)
!807 = !DILocation(line: 196, column: 8, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 196, column: 7)
!809 = distinct !DILexicalBlock(scope: !33, file: !3, line: 187, column: 30)
!810 = !DILocation(line: 196, column: 20, scope: !808)
!811 = !DILocation(line: 196, column: 28, scope: !808)
!812 = !DILocation(line: 196, column: 34, scope: !808)
!813 = !DILocation(line: 196, column: 56, scope: !808)
!814 = !DILocation(line: 197, column: 8, scope: !808)
!815 = !DILocation(line: 197, column: 20, scope: !808)
!816 = !DILocation(line: 197, column: 28, scope: !808)
!817 = !DILocation(line: 197, column: 34, scope: !808)
!818 = !DILocation(line: 196, column: 7, scope: !809)
!819 = !DILocation(line: 198, column: 4, scope: !820)
!820 = distinct !DILexicalBlock(scope: !808, file: !3, line: 197, column: 57)
!821 = !DILocation(line: 199, column: 11, scope: !820)
!822 = !DILocation(line: 200, column: 4, scope: !820)
!823 = !DILocation(line: 205, column: 11, scope: !809)
!824 = !DILocation(line: 205, column: 23, scope: !809)
!825 = !DILocation(line: 205, column: 31, scope: !809)
!826 = !DILocation(line: 205, column: 9, scope: !809)
!827 = !DILocation(line: 206, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !809, file: !3, line: 206, column: 7)
!829 = !DILocation(line: 206, column: 16, scope: !828)
!830 = !DILocation(line: 206, column: 28, scope: !828)
!831 = !DILocation(line: 206, column: 36, scope: !828)
!832 = !DILocation(line: 206, column: 13, scope: !828)
!833 = !DILocation(line: 206, column: 7, scope: !809)
!834 = !DILocation(line: 207, column: 4, scope: !835)
!835 = distinct !DILexicalBlock(scope: !828, file: !3, line: 206, column: 43)
!836 = !DILocation(line: 211, column: 11, scope: !835)
!837 = !DILocation(line: 212, column: 4, scope: !835)
!838 = !DILocation(line: 218, column: 17, scope: !809)
!839 = !DILocation(line: 218, column: 15, scope: !809)
!840 = !DILocation(line: 219, column: 8, scope: !841)
!841 = distinct !DILexicalBlock(scope: !809, file: !3, line: 219, column: 7)
!842 = !DILocation(line: 219, column: 7, scope: !809)
!843 = !DILocation(line: 220, column: 11, scope: !844)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 219, column: 21)
!845 = !DILocation(line: 221, column: 4, scope: !844)
!846 = !DILocation(line: 236, column: 3, scope: !809)
!847 = !DILocation(line: 236, column: 10, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 236, column: 3)
!849 = distinct !DILexicalBlock(scope: !809, file: !3, line: 236, column: 3)
!850 = !DILocation(line: 236, column: 18, scope: !848)
!851 = !DILocation(line: 236, column: 30, scope: !848)
!852 = !DILocation(line: 236, column: 38, scope: !848)
!853 = !DILocation(line: 236, column: 16, scope: !848)
!854 = !DILocation(line: 236, column: 3, scope: !849)
!855 = !DILocation(line: 240, column: 19, scope: !856)
!856 = distinct !DILexicalBlock(scope: !848, file: !3, line: 236, column: 54)
!857 = !DILocation(line: 240, column: 31, scope: !856)
!858 = !DILocation(line: 240, column: 39, scope: !856)
!859 = !DILocation(line: 240, column: 48, scope: !856)
!860 = !DILocation(line: 240, column: 17, scope: !856)
!861 = !DILocation(line: 244, column: 9, scope: !862)
!862 = distinct !DILexicalBlock(scope: !856, file: !3, line: 244, column: 8)
!863 = !DILocation(line: 244, column: 8, scope: !856)
!864 = !DILocation(line: 245, column: 5, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 244, column: 23)
!866 = !DILocation(line: 253, column: 32, scope: !867)
!867 = distinct !DILexicalBlock(scope: !856, file: !3, line: 253, column: 8)
!868 = !DILocation(line: 253, column: 44, scope: !867)
!869 = !DILocation(line: 253, column: 52, scope: !867)
!870 = !DILocation(line: 253, column: 26, scope: !867)
!871 = !DILocation(line: 254, column: 12, scope: !867)
!872 = !DILocation(line: 254, column: 26, scope: !867)
!873 = !DILocation(line: 253, column: 9, scope: !867)
!874 = !DILocation(line: 253, column: 8, scope: !856)
!875 = !DILocation(line: 255, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !867, file: !3, line: 254, column: 39)
!877 = !DILocation(line: 258, column: 32, scope: !878)
!878 = distinct !DILexicalBlock(scope: !856, file: !3, line: 258, column: 8)
!879 = !DILocation(line: 258, column: 44, scope: !878)
!880 = !DILocation(line: 258, column: 52, scope: !878)
!881 = !DILocation(line: 258, column: 26, scope: !878)
!882 = !DILocation(line: 259, column: 12, scope: !878)
!883 = !DILocation(line: 259, column: 26, scope: !878)
!884 = !DILocation(line: 258, column: 9, scope: !878)
!885 = !DILocation(line: 258, column: 8, scope: !856)
!886 = !DILocation(line: 260, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !878, file: !3, line: 259, column: 39)
!888 = !DILocation(line: 265, column: 33, scope: !856)
!889 = !DILocation(line: 265, column: 4, scope: !856)
!890 = !DILocation(line: 265, column: 17, scope: !856)
!891 = !DILocation(line: 265, column: 25, scope: !856)
!892 = !DILocation(line: 265, column: 31, scope: !856)
!893 = !DILocation(line: 266, column: 4, scope: !856)
!894 = !DILocation(line: 236, column: 50, scope: !848)
!895 = !DILocation(line: 236, column: 3, scope: !848)
!896 = distinct !{!896, !854, !897}
!897 = !DILocation(line: 267, column: 3, scope: !849)
!898 = !DILocation(line: 268, column: 3, scope: !809)
!899 = !DILocation(line: 272, column: 34, scope: !809)
!900 = !DILocation(line: 272, column: 12, scope: !809)
!901 = !DILocation(line: 272, column: 10, scope: !809)
!902 = !DILocation(line: 273, column: 3, scope: !809)
!903 = !DILocation(line: 277, column: 3, scope: !809)
!904 = !DILocation(line: 280, column: 10, scope: !809)
!905 = !DILocation(line: 281, column: 3, scope: !809)
!906 = !DILocation(line: 282, column: 2, scope: !809)
!907 = !DILabel(scope: !33, name: "cleanup", file: !3, line: 284)
!908 = !DILocation(line: 284, column: 1, scope: !33)
!909 = !DILocation(line: 288, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !33, file: !3, line: 288, column: 6)
!911 = !DILocation(line: 288, column: 6, scope: !33)
!912 = !DILocation(line: 289, column: 28, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 288, column: 28)
!914 = !DILocation(line: 289, column: 3, scope: !913)
!915 = !DILocation(line: 290, column: 2, scope: !913)
!916 = !DILocation(line: 295, column: 28, scope: !917)
!917 = distinct !DILexicalBlock(scope: !910, file: !3, line: 294, column: 7)
!918 = !DILocation(line: 295, column: 3, scope: !917)
!919 = !DILocation(line: 295, column: 15, scope: !917)
!920 = !DILocation(line: 295, column: 26, scope: !917)
!921 = !DILocation(line: 298, column: 2, scope: !33)
!922 = distinct !DISubprogram(name: "acpi_ex_do_match", scope: !3, file: !3, line: 63, type: !923, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!923 = !DISubroutineType(types: !924)
!924 = !{!19, !8, !90, !90}
!925 = !DILocalVariable(name: "match_op", arg: 1, scope: !922, file: !3, line: 63, type: !8)
!926 = !DILocation(line: 63, column: 22, scope: !922)
!927 = !DILocalVariable(name: "package_obj", arg: 2, scope: !922, file: !3, line: 64, type: !90)
!928 = !DILocation(line: 64, column: 31, scope: !922)
!929 = !DILocalVariable(name: "match_obj", arg: 3, scope: !922, file: !3, line: 65, type: !90)
!930 = !DILocation(line: 65, column: 31, scope: !922)
!931 = !DILocalVariable(name: "logical_result", scope: !922, file: !3, line: 67, type: !19)
!932 = !DILocation(line: 67, column: 5, scope: !922)
!933 = !DILocalVariable(name: "status", scope: !922, file: !3, line: 68, type: !6)
!934 = !DILocation(line: 68, column: 14, scope: !922)
!935 = !DILocation(line: 80, column: 10, scope: !922)
!936 = !DILocation(line: 80, column: 2, scope: !922)
!937 = !DILocation(line: 85, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !922, file: !3, line: 80, column: 20)
!939 = !DILocation(line: 93, column: 51, scope: !938)
!940 = !DILocation(line: 94, column: 8, scope: !938)
!941 = !DILocation(line: 93, column: 7, scope: !938)
!942 = !DILocation(line: 92, column: 10, scope: !938)
!943 = !DILocation(line: 95, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !938, file: !3, line: 95, column: 7)
!945 = !DILocation(line: 95, column: 7, scope: !938)
!946 = !DILocation(line: 96, column: 4, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 95, column: 29)
!948 = !DILocation(line: 98, column: 3, scope: !938)
!949 = !DILocation(line: 106, column: 50, scope: !938)
!950 = !DILocation(line: 107, column: 8, scope: !938)
!951 = !DILocation(line: 106, column: 7, scope: !938)
!952 = !DILocation(line: 105, column: 10, scope: !938)
!953 = !DILocation(line: 108, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !938, file: !3, line: 108, column: 7)
!955 = !DILocation(line: 108, column: 7, scope: !938)
!956 = !DILocation(line: 109, column: 4, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 108, column: 29)
!958 = !DILocation(line: 111, column: 27, scope: !938)
!959 = !DILocation(line: 111, column: 25, scope: !938)
!960 = !DILocation(line: 111, column: 20, scope: !938)
!961 = !DILocation(line: 111, column: 18, scope: !938)
!962 = !DILocation(line: 112, column: 3, scope: !938)
!963 = !DILocation(line: 120, column: 53, scope: !938)
!964 = !DILocation(line: 121, column: 8, scope: !938)
!965 = !DILocation(line: 120, column: 7, scope: !938)
!966 = !DILocation(line: 119, column: 10, scope: !938)
!967 = !DILocation(line: 122, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !938, file: !3, line: 122, column: 7)
!969 = !DILocation(line: 122, column: 7, scope: !938)
!970 = !DILocation(line: 123, column: 4, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 122, column: 29)
!972 = !DILocation(line: 125, column: 3, scope: !938)
!973 = !DILocation(line: 133, column: 53, scope: !938)
!974 = !DILocation(line: 134, column: 8, scope: !938)
!975 = !DILocation(line: 133, column: 7, scope: !938)
!976 = !DILocation(line: 132, column: 10, scope: !938)
!977 = !DILocation(line: 135, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !938, file: !3, line: 135, column: 7)
!979 = !DILocation(line: 135, column: 7, scope: !938)
!980 = !DILocation(line: 136, column: 4, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 135, column: 29)
!982 = !DILocation(line: 138, column: 27, scope: !938)
!983 = !DILocation(line: 138, column: 25, scope: !938)
!984 = !DILocation(line: 138, column: 20, scope: !938)
!985 = !DILocation(line: 138, column: 18, scope: !938)
!986 = !DILocation(line: 139, column: 3, scope: !938)
!987 = !DILocation(line: 147, column: 50, scope: !938)
!988 = !DILocation(line: 148, column: 8, scope: !938)
!989 = !DILocation(line: 147, column: 7, scope: !938)
!990 = !DILocation(line: 146, column: 10, scope: !938)
!991 = !DILocation(line: 149, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !938, file: !3, line: 149, column: 7)
!993 = !DILocation(line: 149, column: 7, scope: !938)
!994 = !DILocation(line: 150, column: 4, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !3, line: 149, column: 29)
!996 = !DILocation(line: 152, column: 3, scope: !938)
!997 = !DILocation(line: 158, column: 3, scope: !938)
!998 = !DILocation(line: 161, column: 10, scope: !922)
!999 = !DILocation(line: 161, column: 2, scope: !922)
!1000 = !DILocation(line: 162, column: 1, scope: !922)
