; ModuleID = '../bcout/drivers/acpi/acpica/nsconvert.llvm.bc'
source_filename = "drivers/acpi/acpica/nsconvert.c"
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
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }

@_acpi_module_name = internal constant [10 x i8] c"nsconvert\00", align 1, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_convert_to_integer(%union.acpi_operand_object* %original_object, %union.acpi_operand_object** %return_object) #0 !dbg !808 {
entry:
  %retval = alloca i32, align 4
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_object.addr = alloca %union.acpi_operand_object**, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %value = alloca i64, align 8
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object.addr, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata i32* %status, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata i64* %value, metadata !820, metadata !DIExpression()), !dbg !821
  store i64 0, i64* %value, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata i32* %i, metadata !822, metadata !DIExpression()), !dbg !823
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !824
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !825
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !826
  %1 = load i8, i8* %type, align 1, !dbg !826
  %conv = zext i8 %1 to i32, !dbg !824
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ], !dbg !827

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !828
  %string = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_string*, !dbg !830
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !831
  %3 = load i8*, i8** %pointer, align 8, !dbg !831
  %call = call i32 @acpi_ut_strtoul64(i8* %3, i64* %value) #4, !dbg !832
  store i32 %call, i32* %status, align 4, !dbg !833
  %4 = load i32, i32* %status, align 4, !dbg !834
  %tobool = icmp ne i32 %4, 0, !dbg !834
  br i1 %tobool, label %if.then, label %if.end, !dbg !836

if.then:                                          ; preds = %sw.bb
  %5 = load i32, i32* %status, align 4, !dbg !837
  store i32 %5, i32* %retval, align 4, !dbg !839
  br label %return, !dbg !839

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !840

sw.bb1:                                           ; preds = %entry
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !841
  %buffer = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_buffer*, !dbg !843
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !844
  %7 = load i32, i32* %length, align 8, !dbg !844
  %cmp = icmp ugt i32 %7, 8, !dbg !845
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !846

if.then3:                                         ; preds = %sw.bb1
  store i32 12291, i32* %retval, align 4, !dbg !847
  br label %return, !dbg !847

if.end4:                                          ; preds = %sw.bb1
  store i32 0, i32* %i, align 4, !dbg !849
  br label %for.cond, !dbg !851

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load i32, i32* %i, align 4, !dbg !852
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !854
  %buffer5 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_buffer*, !dbg !855
  %length6 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer5, i32 0, i32 6, !dbg !856
  %10 = load i32, i32* %length6, align 8, !dbg !856
  %cmp7 = icmp ult i32 %8, %10, !dbg !857
  br i1 %cmp7, label %for.body, label %for.end, !dbg !858

for.body:                                         ; preds = %for.cond
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !859
  %buffer9 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_buffer*, !dbg !861
  %pointer10 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer9, i32 0, i32 5, !dbg !862
  %12 = load i8*, i8** %pointer10, align 8, !dbg !862
  %13 = load i32, i32* %i, align 4, !dbg !863
  %idxprom = zext i32 %13 to i64, !dbg !859
  %arrayidx = getelementptr i8, i8* %12, i64 %idxprom, !dbg !859
  %14 = load i8, i8* %arrayidx, align 1, !dbg !859
  %conv11 = zext i8 %14 to i64, !dbg !864
  %15 = load i32, i32* %i, align 4, !dbg !865
  %mul = mul i32 %15, 8, !dbg !866
  %sh_prom = zext i32 %mul to i64, !dbg !867
  %shl = shl i64 %conv11, %sh_prom, !dbg !867
  %16 = load i64, i64* %value, align 8, !dbg !868
  %or = or i64 %16, %shl, !dbg !868
  store i64 %or, i64* %value, align 8, !dbg !868
  br label %for.inc, !dbg !869

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !870
  %inc = add i32 %17, 1, !dbg !870
  store i32 %inc, i32* %i, align 4, !dbg !870
  br label %for.cond, !dbg !871, !llvm.loop !872

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !874

sw.default:                                       ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !875
  br label %return, !dbg !875

sw.epilog:                                        ; preds = %for.end, %if.end
  %18 = load i64, i64* %value, align 8, !dbg !876
  %call12 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %18) #4, !dbg !877
  store %union.acpi_operand_object* %call12, %union.acpi_operand_object** %new_object, align 8, !dbg !878
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !879
  %tobool13 = icmp ne %union.acpi_operand_object* %19, null, !dbg !879
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !881

if.then14:                                        ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4, !dbg !882
  br label %return, !dbg !882

if.end15:                                         ; preds = %sw.epilog
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !884
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !885
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %21, align 8, !dbg !886
  store i32 0, i32* %retval, align 4, !dbg !887
  br label %return, !dbg !887

return:                                           ; preds = %if.end15, %if.then14, %sw.default, %if.then3, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !888
  ret i32 %22, !dbg !888
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_strtoul64(i8*, i64*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_convert_to_string(%union.acpi_operand_object* %original_object, %union.acpi_operand_object** %return_object) #0 !dbg !889 {
entry:
  %retval = alloca i32, align 4
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_object.addr = alloca %union.acpi_operand_object**, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %length = alloca i64, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !890, metadata !DIExpression()), !dbg !891
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object.addr, metadata !892, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !894, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata i64* %length, metadata !896, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i32* %status, metadata !899, metadata !DIExpression()), !dbg !900
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !901
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !902
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !903
  %1 = load i8, i8* %type, align 1, !dbg !903
  %conv = zext i8 %1 to i32, !dbg !901
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
  ], !dbg !904

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !905
  %integer = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_integer*, !dbg !908
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !909
  %3 = load i64, i64* %value, align 8, !dbg !909
  %cmp = icmp eq i64 %3, 0, !dbg !910
  br i1 %cmp, label %if.then, label %if.else, !dbg !911

if.then:                                          ; preds = %sw.bb
  %call = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 0) #4, !dbg !912
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %new_object, align 8, !dbg !914
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !915
  %tobool = icmp ne %union.acpi_operand_object* %4, null, !dbg !915
  br i1 %tobool, label %if.end, label %if.then2, !dbg !917

if.then2:                                         ; preds = %if.then
  store i32 4, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !920

if.else:                                          ; preds = %sw.bb
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !921
  %call3 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %5, %union.acpi_operand_object** %new_object, i32 2) #4, !dbg !923
  store i32 %call3, i32* %status, align 4, !dbg !924
  %6 = load i32, i32* %status, align 4, !dbg !925
  %tobool4 = icmp ne i32 %6, 0, !dbg !925
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !927

if.then5:                                         ; preds = %if.else
  %7 = load i32, i32* %status, align 4, !dbg !928
  store i32 %7, i32* %retval, align 4, !dbg !930
  br label %return, !dbg !930

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  br label %sw.epilog, !dbg !931

sw.bb8:                                           ; preds = %entry
  store i64 0, i64* %length, align 8, !dbg !932
  br label %while.cond, !dbg !933

while.cond:                                       ; preds = %while.body, %sw.bb8
  %8 = load i64, i64* %length, align 8, !dbg !934
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !935
  %buffer = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_buffer*, !dbg !936
  %length9 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !937
  %10 = load i32, i32* %length9, align 8, !dbg !937
  %conv10 = zext i32 %10 to i64, !dbg !935
  %cmp11 = icmp ult i64 %8, %conv10, !dbg !938
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !939

land.rhs:                                         ; preds = %while.cond
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !940
  %buffer13 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_buffer*, !dbg !941
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer13, i32 0, i32 5, !dbg !942
  %12 = load i8*, i8** %pointer, align 8, !dbg !942
  %13 = load i64, i64* %length, align 8, !dbg !943
  %arrayidx = getelementptr i8, i8* %12, i64 %13, !dbg !940
  %14 = load i8, i8* %arrayidx, align 1, !dbg !940
  %conv14 = zext i8 %14 to i32, !dbg !944
  %tobool15 = icmp ne i32 %conv14, 0, !dbg !939
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool15, %land.rhs ], !dbg !945
  br i1 %15, label %while.body, label %while.end, !dbg !933

while.body:                                       ; preds = %land.end
  %16 = load i64, i64* %length, align 8, !dbg !946
  %inc = add i64 %16, 1, !dbg !946
  store i64 %inc, i64* %length, align 8, !dbg !946
  br label %while.cond, !dbg !933, !llvm.loop !948

while.end:                                        ; preds = %land.end
  %17 = load i64, i64* %length, align 8, !dbg !950
  %call16 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %17) #4, !dbg !951
  store %union.acpi_operand_object* %call16, %union.acpi_operand_object** %new_object, align 8, !dbg !952
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !953
  %tobool17 = icmp ne %union.acpi_operand_object* %18, null, !dbg !953
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !955

if.then18:                                        ; preds = %while.end
  store i32 4, i32* %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end19:                                         ; preds = %while.end
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !958
  %string = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_string*, !dbg !959
  %pointer20 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !960
  %20 = load i8*, i8** %pointer20, align 8, !dbg !960
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !961
  %buffer21 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_buffer*, !dbg !962
  %pointer22 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer21, i32 0, i32 5, !dbg !963
  %22 = load i8*, i8** %pointer22, align 8, !dbg !963
  %23 = load i64, i64* %length, align 8, !dbg !964
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %22, i64 %23, i1 false), !dbg !965
  br label %sw.epilog, !dbg !966

sw.default:                                       ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !967
  br label %return, !dbg !967

sw.epilog:                                        ; preds = %if.end19, %if.end7
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !968
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !969
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %25, align 8, !dbg !970
  store i32 0, i32* %retval, align 4, !dbg !971
  br label %return, !dbg !971

return:                                           ; preds = %sw.epilog, %sw.default, %if.then18, %if.then5, %if.then2
  %26 = load i32, i32* %retval, align 4, !dbg !972
  ret i32 %26, !dbg !972
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_convert_to_buffer(%union.acpi_operand_object* %original_object, %union.acpi_operand_object** %return_object) #0 !dbg !973 {
entry:
  %retval = alloca i32, align 4
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_object.addr = alloca %union.acpi_operand_object**, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %elements = alloca %union.acpi_operand_object**, align 8
  %dword_buffer = alloca i32*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !974, metadata !DIExpression()), !dbg !975
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object.addr, metadata !976, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %status, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %elements, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata i32** %dword_buffer, metadata !984, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata i32* %count, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata i32* %i, metadata !988, metadata !DIExpression()), !dbg !989
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !990
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !991
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !992
  %1 = load i8, i8* %type, align 1, !dbg !992
  %conv = zext i8 %1 to i32, !dbg !990
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb12
  ], !dbg !993

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !994
  %call = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %2, %union.acpi_operand_object** %new_object) #4, !dbg !996
  store i32 %call, i32* %status, align 4, !dbg !997
  %3 = load i32, i32* %status, align 4, !dbg !998
  %tobool = icmp ne i32 %3, 0, !dbg !998
  br i1 %tobool, label %if.then, label %if.end, !dbg !1000

if.then:                                          ; preds = %sw.bb
  %4 = load i32, i32* %status, align 4, !dbg !1001
  store i32 %4, i32* %retval, align 4, !dbg !1003
  br label %return, !dbg !1003

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1004

sw.bb1:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1005
  %string = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_string*, !dbg !1006
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1007
  %6 = load i32, i32* %length, align 8, !dbg !1007
  %conv2 = zext i32 %6 to i64, !dbg !1005
  %call3 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv2) #4, !dbg !1008
  store %union.acpi_operand_object* %call3, %union.acpi_operand_object** %new_object, align 8, !dbg !1009
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1010
  %tobool4 = icmp ne %union.acpi_operand_object* %7, null, !dbg !1010
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1012

if.then5:                                         ; preds = %sw.bb1
  store i32 4, i32* %retval, align 4, !dbg !1013
  br label %return, !dbg !1013

if.end6:                                          ; preds = %sw.bb1
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1015
  %buffer = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_buffer*, !dbg !1016
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1017
  %9 = load i8*, i8** %pointer, align 8, !dbg !1017
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1018
  %string7 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_string*, !dbg !1019
  %pointer8 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string7, i32 0, i32 5, !dbg !1020
  %11 = load i8*, i8** %pointer8, align 8, !dbg !1020
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1021
  %string9 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_string*, !dbg !1022
  %length10 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string9, i32 0, i32 6, !dbg !1023
  %13 = load i32, i32* %length10, align 8, !dbg !1023
  %conv11 = zext i32 %13 to i64, !dbg !1021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %11, i64 %conv11, i1 false), !dbg !1024
  br label %sw.epilog, !dbg !1025

sw.bb12:                                          ; preds = %entry
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1026
  %package = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_package*, !dbg !1027
  %elements13 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !1028
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements13, align 8, !dbg !1028
  store %union.acpi_operand_object** %15, %union.acpi_operand_object*** %elements, align 8, !dbg !1029
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1030
  %package14 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_package*, !dbg !1031
  %count15 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package14, i32 0, i32 9, !dbg !1032
  %17 = load i32, i32* %count15, align 4, !dbg !1032
  store i32 %17, i32* %count, align 4, !dbg !1033
  store i32 0, i32* %i, align 4, !dbg !1034
  br label %for.cond, !dbg !1036

for.cond:                                         ; preds = %for.inc, %sw.bb12
  %18 = load i32, i32* %i, align 4, !dbg !1037
  %19 = load i32, i32* %count, align 4, !dbg !1039
  %cmp = icmp ult i32 %18, %19, !dbg !1040
  br i1 %cmp, label %for.body, label %for.end, !dbg !1041

for.body:                                         ; preds = %for.cond
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1042
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %20, align 8, !dbg !1045
  %tobool17 = icmp ne %union.acpi_operand_object* %21, null, !dbg !1045
  br i1 %tobool17, label %lor.lhs.false, label %if.then23, !dbg !1046

lor.lhs.false:                                    ; preds = %for.body
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1047
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %22, align 8, !dbg !1048
  %common18 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_common*, !dbg !1049
  %type19 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common18, i32 0, i32 2, !dbg !1050
  %24 = load i8, i8* %type19, align 1, !dbg !1050
  %conv20 = zext i8 %24 to i32, !dbg !1051
  %cmp21 = icmp ne i32 %conv20, 1, !dbg !1052
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1053

if.then23:                                        ; preds = %lor.lhs.false, %for.body
  store i32 12291, i32* %retval, align 4, !dbg !1054
  br label %return, !dbg !1054

if.end24:                                         ; preds = %lor.lhs.false
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1056
  %incdec.ptr = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %25, i32 1, !dbg !1056
  store %union.acpi_operand_object** %incdec.ptr, %union.acpi_operand_object*** %elements, align 8, !dbg !1056
  br label %for.inc, !dbg !1057

for.inc:                                          ; preds = %if.end24
  %26 = load i32, i32* %i, align 4, !dbg !1058
  %inc = add i32 %26, 1, !dbg !1058
  store i32 %inc, i32* %i, align 4, !dbg !1058
  br label %for.cond, !dbg !1059, !llvm.loop !1060

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %count, align 4, !dbg !1062
  %shl = shl i32 %27, 2, !dbg !1062
  %conv25 = zext i32 %shl to i64, !dbg !1062
  %call26 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv25) #4, !dbg !1063
  store %union.acpi_operand_object* %call26, %union.acpi_operand_object** %new_object, align 8, !dbg !1064
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1065
  %tobool27 = icmp ne %union.acpi_operand_object* %28, null, !dbg !1065
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1067

if.then28:                                        ; preds = %for.end
  store i32 4, i32* %retval, align 4, !dbg !1068
  br label %return, !dbg !1068

if.end29:                                         ; preds = %for.end
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1070
  %package30 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_package*, !dbg !1071
  %elements31 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package30, i32 0, i32 6, !dbg !1072
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements31, align 8, !dbg !1072
  store %union.acpi_operand_object** %30, %union.acpi_operand_object*** %elements, align 8, !dbg !1073
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1074
  %buffer32 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_buffer*, !dbg !1074
  %pointer33 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer32, i32 0, i32 5, !dbg !1074
  %32 = load i8*, i8** %pointer33, align 8, !dbg !1074
  %33 = bitcast i8* %32 to i32*, !dbg !1074
  store i32* %33, i32** %dword_buffer, align 8, !dbg !1075
  store i32 0, i32* %i, align 4, !dbg !1076
  br label %for.cond34, !dbg !1078

for.cond34:                                       ; preds = %for.inc41, %if.end29
  %34 = load i32, i32* %i, align 4, !dbg !1079
  %35 = load i32, i32* %count, align 4, !dbg !1081
  %cmp35 = icmp ult i32 %34, %35, !dbg !1082
  br i1 %cmp35, label %for.body37, label %for.end43, !dbg !1083

for.body37:                                       ; preds = %for.cond34
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1084
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %36, align 8, !dbg !1086
  %integer = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_integer*, !dbg !1087
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1088
  %38 = load i64, i64* %value, align 8, !dbg !1088
  %conv38 = trunc i64 %38 to i32, !dbg !1089
  %39 = load i32*, i32** %dword_buffer, align 8, !dbg !1090
  store i32 %conv38, i32* %39, align 4, !dbg !1091
  %40 = load i32*, i32** %dword_buffer, align 8, !dbg !1092
  %incdec.ptr39 = getelementptr i32, i32* %40, i32 1, !dbg !1092
  store i32* %incdec.ptr39, i32** %dword_buffer, align 8, !dbg !1092
  %41 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !1093
  %incdec.ptr40 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %41, i32 1, !dbg !1093
  store %union.acpi_operand_object** %incdec.ptr40, %union.acpi_operand_object*** %elements, align 8, !dbg !1093
  br label %for.inc41, !dbg !1094

for.inc41:                                        ; preds = %for.body37
  %42 = load i32, i32* %i, align 4, !dbg !1095
  %inc42 = add i32 %42, 1, !dbg !1095
  store i32 %inc42, i32* %i, align 4, !dbg !1095
  br label %for.cond34, !dbg !1096, !llvm.loop !1097

for.end43:                                        ; preds = %for.cond34
  br label %sw.epilog, !dbg !1099

sw.default:                                       ; preds = %entry
  store i32 12291, i32* %retval, align 4, !dbg !1100
  br label %return, !dbg !1100

sw.epilog:                                        ; preds = %for.end43, %if.end6, %if.end
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1101
  %44 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !1102
  store %union.acpi_operand_object* %43, %union.acpi_operand_object** %44, align 8, !dbg !1103
  store i32 0, i32* %retval, align 4, !dbg !1104
  br label %return, !dbg !1104

return:                                           ; preds = %sw.epilog, %sw.default, %if.then28, %if.then23, %if.then5, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !1105
  ret i32 %45, !dbg !1105
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_convert_to_unicode(%struct.acpi_namespace_node* %scope, %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %return_object) #0 !dbg !1106 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca %struct.acpi_namespace_node*, align 8
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_object.addr = alloca %union.acpi_operand_object**, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %ascii_string = alloca i8*, align 8
  %unicode_buffer = alloca i16*, align 8
  %unicode_length = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.acpi_namespace_node* %scope, %struct.acpi_namespace_node** %scope.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %scope.addr, metadata !1109, metadata !DIExpression()), !dbg !1110
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !1111, metadata !DIExpression()), !dbg !1112
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object.addr, metadata !1113, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.declare(metadata i8** %ascii_string, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.declare(metadata i16** %unicode_buffer, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %unicode_length, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1123, metadata !DIExpression()), !dbg !1124
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1125
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1125
  br i1 %tobool, label %if.end, label %if.then, !dbg !1127

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1128
  br label %return, !dbg !1128

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1130
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1132
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1133
  %2 = load i8, i8* %type, align 1, !dbg !1133
  %conv = zext i8 %2 to i32, !dbg !1130
  %cmp = icmp eq i32 %conv, 3, !dbg !1134
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !1135

if.then2:                                         ; preds = %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1136
  %buffer = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_buffer*, !dbg !1139
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1140
  %4 = load i32, i32* %length, align 8, !dbg !1140
  %cmp3 = icmp ult i32 %4, 2, !dbg !1141
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1142

if.then5:                                         ; preds = %if.then2
  store i32 12292, i32* %retval, align 4, !dbg !1143
  br label %return, !dbg !1143

if.end6:                                          ; preds = %if.then2
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !1145
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8, !dbg !1146
  store i32 0, i32* %retval, align 4, !dbg !1147
  br label %return, !dbg !1147

if.end7:                                          ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1148
  %string = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_string*, !dbg !1149
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1150
  %7 = load i8*, i8** %pointer, align 8, !dbg !1150
  store i8* %7, i8** %ascii_string, align 8, !dbg !1151
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1152
  %string8 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_string*, !dbg !1153
  %length9 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string8, i32 0, i32 6, !dbg !1154
  %9 = load i32, i32* %length9, align 8, !dbg !1154
  %mul = mul i32 %9, 2, !dbg !1155
  %add = add i32 %mul, 2, !dbg !1156
  store i32 %add, i32* %unicode_length, align 4, !dbg !1157
  %10 = load i32, i32* %unicode_length, align 4, !dbg !1158
  %conv10 = zext i32 %10 to i64, !dbg !1158
  %call = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv10) #4, !dbg !1159
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %new_object, align 8, !dbg !1160
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1161
  %tobool11 = icmp ne %union.acpi_operand_object* %11, null, !dbg !1161
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1163

if.then12:                                        ; preds = %if.end7
  store i32 4, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

if.end13:                                         ; preds = %if.end7
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1166
  %buffer14 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_buffer*, !dbg !1166
  %pointer15 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer14, i32 0, i32 5, !dbg !1166
  %13 = load i8*, i8** %pointer15, align 8, !dbg !1166
  %14 = bitcast i8* %13 to i16*, !dbg !1166
  store i16* %14, i16** %unicode_buffer, align 8, !dbg !1167
  store i32 0, i32* %i, align 4, !dbg !1168
  br label %for.cond, !dbg !1170

for.cond:                                         ; preds = %for.inc, %if.end13
  %15 = load i32, i32* %i, align 4, !dbg !1171
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1173
  %string16 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_string*, !dbg !1174
  %length17 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string16, i32 0, i32 6, !dbg !1175
  %17 = load i32, i32* %length17, align 8, !dbg !1175
  %cmp18 = icmp ult i32 %15, %17, !dbg !1176
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1177

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %ascii_string, align 8, !dbg !1178
  %19 = load i32, i32* %i, align 4, !dbg !1180
  %idxprom = zext i32 %19 to i64, !dbg !1178
  %arrayidx = getelementptr i8, i8* %18, i64 %idxprom, !dbg !1178
  %20 = load i8, i8* %arrayidx, align 1, !dbg !1178
  %conv20 = sext i8 %20 to i16, !dbg !1181
  %21 = load i16*, i16** %unicode_buffer, align 8, !dbg !1182
  %22 = load i32, i32* %i, align 4, !dbg !1183
  %idxprom21 = zext i32 %22 to i64, !dbg !1182
  %arrayidx22 = getelementptr i16, i16* %21, i64 %idxprom21, !dbg !1182
  store i16 %conv20, i16* %arrayidx22, align 2, !dbg !1184
  br label %for.inc, !dbg !1185

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !1186
  %inc = add i32 %23, 1, !dbg !1186
  store i32 %inc, i32* %i, align 4, !dbg !1186
  br label %for.cond, !dbg !1187, !llvm.loop !1188

for.end:                                          ; preds = %for.cond
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1190
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !1191
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %25, align 8, !dbg !1192
  store i32 0, i32* %retval, align 4, !dbg !1193
  br label %return, !dbg !1193

return:                                           ; preds = %for.end, %if.then12, %if.end6, %if.then5, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !1194
  ret i32 %26, !dbg !1194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_convert_to_resource(%struct.acpi_namespace_node* %scope, %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %return_object) #0 !dbg !1195 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca %struct.acpi_namespace_node*, align 8
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_object.addr = alloca %union.acpi_operand_object**, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %buffer = alloca i8*, align 8
  store %struct.acpi_namespace_node* %scope, %struct.acpi_namespace_node** %scope.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %scope.addr, metadata !1196, metadata !DIExpression()), !dbg !1197
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !1198, metadata !DIExpression()), !dbg !1199
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object.addr, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !1204, metadata !DIExpression()), !dbg !1205
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1206
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1206
  br i1 %tobool, label %if.then, label %if.end9, !dbg !1208

if.then:                                          ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1209
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1211
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1212
  %2 = load i8, i8* %type, align 1, !dbg !1212
  %conv = zext i8 %2 to i32, !dbg !1209
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb8
  ], !dbg !1213

sw.bb:                                            ; preds = %if.then
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1214
  %integer = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_integer*, !dbg !1217
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1218
  %4 = load i64, i64* %value, align 8, !dbg !1218
  %tobool1 = icmp ne i64 %4, 0, !dbg !1214
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1219

if.then2:                                         ; preds = %sw.bb
  store i32 12291, i32* %retval, align 4, !dbg !1220
  br label %return, !dbg !1220

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1222

sw.bb3:                                           ; preds = %if.then
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1223
  %buffer4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_buffer*, !dbg !1225
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer4, i32 0, i32 6, !dbg !1226
  %6 = load i32, i32* %length, align 8, !dbg !1226
  %tobool5 = icmp ne i32 %6, 0, !dbg !1223
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1227

if.then6:                                         ; preds = %sw.bb3
  %7 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !1228
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %7, align 8, !dbg !1230
  store i32 0, i32* %retval, align 4, !dbg !1231
  br label %return, !dbg !1231

if.end7:                                          ; preds = %sw.bb3
  br label %sw.epilog, !dbg !1232

sw.bb8:                                           ; preds = %if.then
  br label %sw.default, !dbg !1232

sw.default:                                       ; preds = %if.then, %sw.bb8
  store i32 12291, i32* %retval, align 4, !dbg !1233
  br label %return, !dbg !1233

sw.epilog:                                        ; preds = %if.end7, %if.end
  br label %if.end9, !dbg !1234

if.end9:                                          ; preds = %sw.epilog, %entry
  %call = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 2) #4, !dbg !1235
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %new_object, align 8, !dbg !1236
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1237
  %tobool10 = icmp ne %union.acpi_operand_object* %8, null, !dbg !1237
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1239

if.then11:                                        ; preds = %if.end9
  store i32 4, i32* %retval, align 4, !dbg !1240
  br label %return, !dbg !1240

if.end12:                                         ; preds = %if.end9
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1242
  %buffer13 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_buffer*, !dbg !1242
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer13, i32 0, i32 5, !dbg !1242
  %10 = load i8*, i8** %pointer, align 8, !dbg !1242
  store i8* %10, i8** %buffer, align 8, !dbg !1243
  %11 = load i8*, i8** %buffer, align 8, !dbg !1244
  %arrayidx = getelementptr i8, i8* %11, i64 0, !dbg !1244
  store i8 121, i8* %arrayidx, align 1, !dbg !1245
  %12 = load i8*, i8** %buffer, align 8, !dbg !1246
  %arrayidx14 = getelementptr i8, i8* %12, i64 1, !dbg !1246
  store i8 0, i8* %arrayidx14, align 1, !dbg !1247
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1248
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !1249
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %14, align 8, !dbg !1250
  store i32 0, i32* %retval, align 4, !dbg !1251
  br label %return, !dbg !1251

return:                                           ; preds = %if.end12, %if.then11, %sw.default, %if.then6, %if.then2
  %15 = load i32, i32* %retval, align 4, !dbg !1252
  ret i32 %15, !dbg !1252
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ns_convert_to_reference(%struct.acpi_namespace_node* %scope, %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %return_object) #0 !dbg !1253 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca %struct.acpi_namespace_node*, align 8
  %original_object.addr = alloca %union.acpi_operand_object*, align 8
  %return_object.addr = alloca %union.acpi_operand_object**, align 8
  %new_object = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %scope_info = alloca %union.acpi_generic_state, align 8
  %name = alloca i8*, align 8
  store %struct.acpi_namespace_node* %scope, %struct.acpi_namespace_node** %scope.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %scope.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  store %union.acpi_operand_object* %original_object, %union.acpi_operand_object** %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %original_object.addr, metadata !1256, metadata !DIExpression()), !dbg !1257
  store %union.acpi_operand_object** %return_object, %union.acpi_operand_object*** %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_object.addr, metadata !1258, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %new_object, metadata !1260, metadata !DIExpression()), !dbg !1261
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %new_object, align 8, !dbg !1261
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1262, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state* %scope_info, metadata !1266, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata i8** %name, metadata !1268, metadata !DIExpression()), !dbg !1269
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1270
  %string = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_string*, !dbg !1271
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1272
  %1 = load i8*, i8** %pointer, align 8, !dbg !1272
  %call = call i32 @acpi_ns_internalize_name(i8* %1, i8** %name) #4, !dbg !1273
  store i32 %call, i32* %status, align 4, !dbg !1274
  %2 = load i32, i32* %status, align 4, !dbg !1275
  %tobool = icmp ne i32 %2, 0, !dbg !1275
  br i1 %tobool, label %if.then, label %if.end, !dbg !1277

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4, !dbg !1278
  store i32 %3, i32* %retval, align 4, !dbg !1278
  br label %return, !dbg !1278

if.end:                                           ; preds = %entry
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %scope.addr, align 8, !dbg !1280
  %5 = bitcast %struct.acpi_namespace_node* %4 to i8*, !dbg !1280
  %6 = bitcast i8* %5 to %struct.acpi_namespace_node*, !dbg !1280
  %scope1 = bitcast %union.acpi_generic_state* %scope_info to %struct.acpi_scope_state*, !dbg !1281
  %node2 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope1, i32 0, i32 5, !dbg !1282
  store %struct.acpi_namespace_node* %6, %struct.acpi_namespace_node** %node2, align 8, !dbg !1283
  %7 = load i8*, i8** %name, align 8, !dbg !1284
  %call3 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %scope_info, i8* %7, i32 0, i32 3, i32 3, %struct.acpi_walk_state* null, %struct.acpi_namespace_node** %node) #4, !dbg !1285
  store i32 %call3, i32* %status, align 4, !dbg !1286
  %8 = load i32, i32* %status, align 4, !dbg !1287
  %tobool4 = icmp ne i32 %8, 0, !dbg !1287
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !1289

if.then5:                                         ; preds = %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %original_object.addr, align 8, !dbg !1290
  %string6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_string*, !dbg !1290
  %pointer7 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string6, i32 0, i32 5, !dbg !1290
  %10 = load i8*, i8** %pointer7, align 8, !dbg !1290
  %11 = load i32, i32* %status, align 4, !dbg !1290
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 465, %union.acpi_generic_state* %scope_info, i8* %10, i32 %11) #4, !dbg !1290
  br label %error_exit, !dbg !1292

if.end8:                                          ; preds = %if.end
  %call9 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 471, i32 16, i32 20) #4, !dbg !1293
  store %union.acpi_operand_object* %call9, %union.acpi_operand_object** %new_object, align 8, !dbg !1294
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1295
  %tobool10 = icmp ne %union.acpi_operand_object* %12, null, !dbg !1295
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1297

if.then11:                                        ; preds = %if.end8
  store i32 4, i32* %status, align 4, !dbg !1298
  br label %error_exit, !dbg !1300

if.end12:                                         ; preds = %if.end8
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1301
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1302
  %reference = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_reference*, !dbg !1303
  %node13 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 9, !dbg !1304
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %node13, align 8, !dbg !1305
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1306
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %15, i32 0, i32 0, !dbg !1307
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1307
  %17 = bitcast %union.acpi_operand_object* %16 to i8*, !dbg !1306
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1308
  %reference14 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_reference*, !dbg !1309
  %object15 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference14, i32 0, i32 8, !dbg !1310
  store i8* %17, i8** %object15, align 8, !dbg !1311
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1312
  %reference16 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_reference*, !dbg !1313
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference16, i32 0, i32 5, !dbg !1314
  store i8 5, i8* %class, align 1, !dbg !1315
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1316
  %object17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 0, !dbg !1317
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object17, align 8, !dbg !1317
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %21) #4, !dbg !1318
  br label %error_exit, !dbg !1318

error_exit:                                       ; preds = %if.end12, %if.then11, %if.then5
  call void @llvm.dbg.label(metadata !1319), !dbg !1320
  %22 = load i8*, i8** %name, align 8, !dbg !1321
  call void @acpi_os_free(i8* %22) #4, !dbg !1321
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %new_object, align 8, !dbg !1322
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_object.addr, align 8, !dbg !1323
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %24, align 8, !dbg !1324
  %25 = load i32, i32* %status, align 4, !dbg !1325
  store i32 %25, i32* %retval, align 4, !dbg !1326
  br label %return, !dbg !1326

return:                                           ; preds = %error_exit, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !1327
  ret i32 %26, !dbg !1327
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_internalize_name(i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1328 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1332, metadata !DIExpression()), !dbg !1333
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1334
  call void @kfree(i8* %0) #4, !dbg !1335
  ret void, !dbg !1336
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!803, !804, !805, !806}
!llvm.ident = !{!807}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !799, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !798, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsconvert.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 321, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3, isUnsigned: true)
!19 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5, isUnsigned: true)
!21 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6, isUnsigned: true)
!22 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6, isUnsigned: true)
!23 = !{!24, !30, !26, !33, !34, !35, !36, !39, !43}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !25, line: 421, baseType: !26)
!25 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !32)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !45)
!45 = !{!46, !785, !786, !787, !788, !794, !795, !796, !797}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !44, file: !6, line: 134, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !13, line: 367, size: 576, elements: !49)
!49 = !{!50, !58, !71, !83, !96, !110, !119, !436, !453, !468, !481, !559, !571, !585, !595, !613, !635, !654, !673, !692, !705, !731, !748, !761, !775, !784}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !48, file: !13, line: 368, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !13, line: 73, size: 128, elements: !52)
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !13, line: 74, baseType: !47, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !13, line: 74, baseType: !40, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !13, line: 74, baseType: !40, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !13, line: 74, baseType: !36, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !13, line: 74, baseType: !40, size: 8, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !48, file: !13, line: 369, baseType: !59, size: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !13, line: 76, size: 192, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !70}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !59, file: !13, line: 77, baseType: !47, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !59, file: !13, line: 77, baseType: !40, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !13, line: 77, baseType: !40, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !59, file: !13, line: 77, baseType: !36, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !13, line: 77, baseType: !40, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !59, file: !13, line: 77, baseType: !67, size: 24, offset: 104)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !59, file: !13, line: 78, baseType: !30, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !48, file: !13, line: 370, baseType: !72, size: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !13, line: 93, size: 256, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !82}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !72, file: !13, line: 94, baseType: !47, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !13, line: 94, baseType: !40, size: 8, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !13, line: 94, baseType: !40, size: 8, offset: 72)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !72, file: !13, line: 94, baseType: !36, size: 16, offset: 80)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !13, line: 94, baseType: !40, size: 8, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !72, file: !13, line: 94, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !72, file: !13, line: 94, baseType: !26, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !48, file: !13, line: 371, baseType: !84, size: 384)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !13, line: 97, size: 384, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !13, line: 98, baseType: !47, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !13, line: 98, baseType: !40, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !13, line: 98, baseType: !40, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !13, line: 98, baseType: !36, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !13, line: 98, baseType: !40, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !84, file: !13, line: 98, baseType: !39, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !13, line: 98, baseType: !26, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !84, file: !13, line: 99, baseType: !26, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !84, file: !13, line: 100, baseType: !39, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !13, line: 101, baseType: !43, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !48, file: !13, line: 372, baseType: !97, size: 384)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !13, line: 104, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !107, !108, !109}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !13, line: 105, baseType: !47, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !13, line: 105, baseType: !40, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !13, line: 105, baseType: !40, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !13, line: 105, baseType: !36, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !13, line: 105, baseType: !40, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !13, line: 105, baseType: !43, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !97, file: !13, line: 106, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !97, file: !13, line: 107, baseType: !39, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !97, file: !13, line: 108, baseType: !26, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !97, file: !13, line: 109, baseType: !26, size: 32, offset: 352)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !48, file: !13, line: 373, baseType: !111, size: 192)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !13, line: 118, size: 192, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !13, line: 119, baseType: !47, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !13, line: 119, baseType: !40, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !13, line: 119, baseType: !40, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !13, line: 119, baseType: !36, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !13, line: 119, baseType: !40, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !111, file: !13, line: 119, baseType: !34, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !48, file: !13, line: 374, baseType: !120, size: 448)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !13, line: 143, size: 448, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !433, !434, !435}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !13, line: 144, baseType: !47, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !13, line: 144, baseType: !40, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !13, line: 144, baseType: !40, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !13, line: 144, baseType: !36, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !13, line: 144, baseType: !40, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !120, file: !13, line: 144, baseType: !40, size: 8, offset: 104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !120, file: !13, line: 145, baseType: !40, size: 8, offset: 112)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !120, file: !13, line: 146, baseType: !40, size: 8, offset: 120)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !120, file: !13, line: 147, baseType: !47, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !13, line: 148, baseType: !47, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !13, line: 149, baseType: !39, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !120, file: !13, line: 153, baseType: !134, size: 64, offset: 320)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !13, line: 150, size: 64, elements: !135)
!135 = !{!136, !432}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !134, file: !13, line: 151, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!24, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !143, line: 37, size: 9024, elements: !144)
!143 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !378, !379, !380, !381, !382, !386, !388, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !415, !416, !417, !418, !419, !420, !421, !422, !424, !430}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 38, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !143, line: 39, baseType: !40, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !142, file: !143, line: 40, baseType: !40, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !142, file: !143, line: 41, baseType: !36, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !142, file: !143, line: 42, baseType: !40, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !142, file: !143, line: 43, baseType: !40, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !142, file: !143, line: 44, baseType: !40, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !143, line: 45, baseType: !153, size: 16, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !25, line: 445, baseType: !36)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !142, file: !143, line: 46, baseType: !40, size: 8, offset: 144)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !142, file: !143, line: 47, baseType: !40, size: 8, offset: 152)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !142, file: !143, line: 48, baseType: !40, size: 8, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !142, file: !143, line: 49, baseType: !40, size: 8, offset: 168)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !142, file: !143, line: 50, baseType: !40, size: 8, offset: 176)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !142, file: !143, line: 51, baseType: !40, size: 8, offset: 184)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !142, file: !143, line: 52, baseType: !40, size: 8, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !142, file: !143, line: 53, baseType: !40, size: 8, offset: 200)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !142, file: !143, line: 54, baseType: !39, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !142, file: !143, line: 55, baseType: !26, size: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !142, file: !143, line: 56, baseType: !26, size: 32, offset: 352)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !142, file: !143, line: 57, baseType: !26, size: 32, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !142, file: !143, line: 58, baseType: !26, size: 32, offset: 416)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !142, file: !143, line: 60, baseType: !168, size: 640, offset: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !259, !260, !376, !377}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !6, line: 894, baseType: !39, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !168, file: !6, line: 895, baseType: !39, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !168, file: !6, line: 896, baseType: !39, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !168, file: !6, line: 897, baseType: !39, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !168, file: !6, line: 898, baseType: !39, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !168, file: !6, line: 899, baseType: !176, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !178)
!178 = !{!179, !199, !215}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !177, file: !6, line: 876, baseType: !180, size: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !198}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !6, line: 829, baseType: !176, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !180, file: !6, line: 829, baseType: !40, size: 8, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !6, line: 829, baseType: !40, size: 8, offset: 72)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !180, file: !6, line: 829, baseType: !36, size: 16, offset: 80)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !180, file: !6, line: 829, baseType: !39, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !6, line: 829, baseType: !176, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !6, line: 829, baseType: !43, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !180, file: !6, line: 829, baseType: !190, size: 64, offset: 320)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !190, file: !6, line: 717, baseType: !30, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !190, file: !6, line: 718, baseType: !26, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !190, file: !6, line: 719, baseType: !80, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !190, file: !6, line: 720, baseType: !39, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !6, line: 721, baseType: !80, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !190, file: !6, line: 722, baseType: !176, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !180, file: !6, line: 829, baseType: !40, size: 8, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !177, file: !6, line: 877, baseType: !200, size: 640)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !6, line: 836, baseType: !176, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !6, line: 836, baseType: !40, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !6, line: 836, baseType: !40, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !200, file: !6, line: 836, baseType: !36, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !6, line: 836, baseType: !39, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !6, line: 836, baseType: !176, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !6, line: 836, baseType: !43, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !200, file: !6, line: 836, baseType: !190, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !200, file: !6, line: 836, baseType: !40, size: 8, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !200, file: !6, line: 836, baseType: !80, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !200, file: !6, line: 837, baseType: !39, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !200, file: !6, line: 838, baseType: !26, size: 32, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !6, line: 839, baseType: !26, size: 32, offset: 608)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !177, file: !6, line: 878, baseType: !216, size: 1600)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !6, line: 847, baseType: !176, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !216, file: !6, line: 847, baseType: !40, size: 8, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !6, line: 847, baseType: !40, size: 8, offset: 72)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !216, file: !6, line: 847, baseType: !36, size: 16, offset: 80)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !216, file: !6, line: 847, baseType: !39, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !6, line: 847, baseType: !176, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !216, file: !6, line: 847, baseType: !43, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !216, file: !6, line: 847, baseType: !190, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !216, file: !6, line: 847, baseType: !40, size: 8, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !216, file: !6, line: 847, baseType: !176, size: 64, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !216, file: !6, line: 848, baseType: !176, size: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !216, file: !6, line: 849, baseType: !80, size: 64, offset: 576)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !216, file: !6, line: 850, baseType: !40, size: 8, offset: 640)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !216, file: !6, line: 851, baseType: !80, size: 64, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !216, file: !6, line: 852, baseType: !80, size: 64, offset: 768)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !216, file: !6, line: 853, baseType: !80, size: 64, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !216, file: !6, line: 854, baseType: !235, size: 32, offset: 896)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 4)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !216, file: !6, line: 855, baseType: !26, size: 32, offset: 928)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !216, file: !6, line: 856, baseType: !26, size: 32, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !216, file: !6, line: 857, baseType: !26, size: 32, offset: 992)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !216, file: !6, line: 858, baseType: !26, size: 32, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !216, file: !6, line: 859, baseType: !26, size: 32, offset: 1056)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !216, file: !6, line: 860, baseType: !26, size: 32, offset: 1088)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !216, file: !6, line: 861, baseType: !26, size: 32, offset: 1120)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !216, file: !6, line: 862, baseType: !26, size: 32, offset: 1152)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !216, file: !6, line: 863, baseType: !26, size: 32, offset: 1184)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !216, file: !6, line: 864, baseType: !26, size: 32, offset: 1216)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !216, file: !6, line: 865, baseType: !26, size: 32, offset: 1248)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !216, file: !6, line: 866, baseType: !26, size: 32, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !216, file: !6, line: 867, baseType: !26, size: 32, offset: 1312)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !216, file: !6, line: 868, baseType: !36, size: 16, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !216, file: !6, line: 869, baseType: !40, size: 8, offset: 1360)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !216, file: !6, line: 870, baseType: !40, size: 8, offset: 1368)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !216, file: !6, line: 871, baseType: !40, size: 8, offset: 1376)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !216, file: !6, line: 872, baseType: !256, size: 160, offset: 1384)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 20)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !168, file: !6, line: 900, baseType: !43, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !168, file: !6, line: 901, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !263)
!263 = !{!264, !272, !285, !294, !303, !316, !330, !342, !354}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !262, file: !6, line: 664, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !266)
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !6, line: 568, baseType: !34, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !265, file: !6, line: 568, baseType: !40, size: 8, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !6, line: 568, baseType: !40, size: 8, offset: 72)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !265, file: !6, line: 568, baseType: !36, size: 16, offset: 80)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !6, line: 568, baseType: !36, size: 16, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !262, file: !6, line: 665, baseType: !273, size: 384)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !6, line: 594, baseType: !34, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !6, line: 594, baseType: !40, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !6, line: 594, baseType: !40, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !6, line: 594, baseType: !36, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !273, file: !6, line: 594, baseType: !36, size: 16, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !273, file: !6, line: 594, baseType: !36, size: 16, offset: 112)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !273, file: !6, line: 595, baseType: !176, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !273, file: !6, line: 596, baseType: !39, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !273, file: !6, line: 597, baseType: !39, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !273, file: !6, line: 598, baseType: !30, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !262, file: !6, line: 666, baseType: !286, size: 192)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !6, line: 574, baseType: !34, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !6, line: 574, baseType: !40, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !6, line: 574, baseType: !40, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !6, line: 574, baseType: !36, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !6, line: 574, baseType: !36, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !286, file: !6, line: 574, baseType: !47, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !262, file: !6, line: 667, baseType: !295, size: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !6, line: 605, baseType: !34, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !6, line: 605, baseType: !40, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !6, line: 605, baseType: !40, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !6, line: 605, baseType: !36, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !6, line: 605, baseType: !36, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !295, file: !6, line: 605, baseType: !43, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !262, file: !6, line: 668, baseType: !304, size: 448)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !6, line: 609, baseType: !34, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !6, line: 609, baseType: !40, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !6, line: 609, baseType: !40, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !6, line: 609, baseType: !36, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !6, line: 609, baseType: !36, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !304, file: !6, line: 609, baseType: !26, size: 32, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !304, file: !6, line: 610, baseType: !176, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !304, file: !6, line: 611, baseType: !39, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !304, file: !6, line: 612, baseType: !39, size: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !304, file: !6, line: 613, baseType: !26, size: 32, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !262, file: !6, line: 669, baseType: !317, size: 512)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !6, line: 581, baseType: !34, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !6, line: 581, baseType: !40, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !6, line: 581, baseType: !40, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !6, line: 581, baseType: !36, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !6, line: 581, baseType: !36, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !317, file: !6, line: 581, baseType: !26, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !317, file: !6, line: 582, baseType: !47, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !317, file: !6, line: 583, baseType: !47, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !317, file: !6, line: 584, baseType: !141, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !317, file: !6, line: 585, baseType: !34, size: 64, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !317, file: !6, line: 586, baseType: !26, size: 32, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !262, file: !6, line: 670, baseType: !331, size: 320)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 621, baseType: !34, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 621, baseType: !40, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 621, baseType: !40, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 621, baseType: !36, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 621, baseType: !36, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !331, file: !6, line: 621, baseType: !40, size: 8, offset: 112)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !331, file: !6, line: 622, baseType: !141, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !331, file: !6, line: 623, baseType: !47, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !331, file: !6, line: 624, baseType: !30, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !262, file: !6, line: 671, baseType: !343, size: 640)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !6, line: 632, baseType: !34, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !6, line: 632, baseType: !40, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !6, line: 632, baseType: !40, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !6, line: 632, baseType: !36, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !6, line: 632, baseType: !36, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !343, file: !6, line: 633, baseType: !351, size: 512, offset: 128)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !262, file: !6, line: 672, baseType: !355, size: 320)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !6, line: 655, baseType: !34, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !6, line: 655, baseType: !40, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !6, line: 655, baseType: !40, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !6, line: 655, baseType: !36, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !6, line: 655, baseType: !36, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !355, file: !6, line: 655, baseType: !40, size: 8, offset: 112)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !6, line: 656, baseType: !43, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !355, file: !6, line: 657, baseType: !47, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !355, file: !6, line: 658, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !368)
!368 = !{!369, !375}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !367, file: !6, line: 646, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !25, line: 1052, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !374, !26, !34}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !25, line: 424, baseType: !34)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !367, file: !6, line: 647, baseType: !34, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !168, file: !6, line: 902, baseType: !176, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !168, file: !6, line: 903, baseType: !26, size: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !142, file: !143, line: 61, baseType: !26, size: 32, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !142, file: !143, line: 62, baseType: !26, size: 32, offset: 1120)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !142, file: !143, line: 63, baseType: !36, size: 16, offset: 1152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !142, file: !143, line: 64, baseType: !40, size: 8, offset: 1168)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !142, file: !143, line: 66, baseType: !383, size: 2688, offset: 1216)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2688, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 7)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !142, file: !143, line: 67, baseType: !387, size: 3072, offset: 3904)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3072, elements: !352)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !142, file: !143, line: 68, baseType: !389, size: 576, offset: 6976)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 576, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 9)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !142, file: !143, line: 69, baseType: !106, size: 64, offset: 7552)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !142, file: !143, line: 71, baseType: !39, size: 64, offset: 7616)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !142, file: !143, line: 72, baseType: !106, size: 64, offset: 7680)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !142, file: !143, line: 73, baseType: !261, size: 64, offset: 7744)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !142, file: !143, line: 74, baseType: !43, size: 64, offset: 7808)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !142, file: !143, line: 75, baseType: !47, size: 64, offset: 7872)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !142, file: !143, line: 76, baseType: !43, size: 64, offset: 7936)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !142, file: !143, line: 77, baseType: !176, size: 64, offset: 8000)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !142, file: !143, line: 78, baseType: !47, size: 64, offset: 8064)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !142, file: !143, line: 79, baseType: !43, size: 64, offset: 8128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !142, file: !143, line: 80, baseType: !80, size: 64, offset: 8192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !142, file: !143, line: 81, baseType: !176, size: 64, offset: 8256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !142, file: !143, line: 82, baseType: !405, size: 64, offset: 8320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !407, file: !6, line: 706, baseType: !26, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !407, file: !6, line: 707, baseType: !26, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !6, line: 708, baseType: !36, size: 16, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !407, file: !6, line: 709, baseType: !40, size: 8, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !407, file: !6, line: 710, baseType: !40, size: 8, offset: 88)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !6, line: 711, baseType: !40, size: 8, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !142, file: !143, line: 83, baseType: !176, size: 64, offset: 8384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !142, file: !143, line: 84, baseType: !47, size: 64, offset: 8448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !142, file: !143, line: 85, baseType: !261, size: 64, offset: 8512)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !142, file: !143, line: 86, baseType: !47, size: 64, offset: 8576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !142, file: !143, line: 87, baseType: !261, size: 64, offset: 8640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !142, file: !143, line: 88, baseType: !176, size: 64, offset: 8704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !142, file: !143, line: 89, baseType: !176, size: 64, offset: 8768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !142, file: !143, line: 90, baseType: !423, size: 64, offset: 8832)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !142, file: !143, line: 91, baseType: !425, size: 64, offset: 8896)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!24, !141, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !142, file: !143, line: 92, baseType: !431, size: 64, offset: 8960)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !138)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !134, file: !13, line: 152, baseType: !47, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !13, line: 155, baseType: !26, size: 32, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !120, file: !13, line: 156, baseType: !153, size: 16, offset: 416)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !120, file: !13, line: 157, baseType: !40, size: 8, offset: 432)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !48, file: !13, line: 375, baseType: !437, size: 576)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !13, line: 122, size: 576, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !437, file: !13, line: 123, baseType: !47, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !437, file: !13, line: 123, baseType: !40, size: 8, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !13, line: 123, baseType: !40, size: 8, offset: 72)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !437, file: !13, line: 123, baseType: !36, size: 16, offset: 80)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !13, line: 123, baseType: !40, size: 8, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !437, file: !13, line: 123, baseType: !40, size: 8, offset: 104)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !437, file: !13, line: 124, baseType: !36, size: 16, offset: 112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !437, file: !13, line: 125, baseType: !34, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !437, file: !13, line: 126, baseType: !30, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !437, file: !13, line: 127, baseType: !423, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !13, line: 128, baseType: !47, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !13, line: 129, baseType: !47, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !437, file: !13, line: 130, baseType: !43, size: 64, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !437, file: !13, line: 131, baseType: !40, size: 8, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !48, file: !13, line: 376, baseType: !454, size: 448)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !13, line: 134, size: 448, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !467}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !13, line: 135, baseType: !47, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !13, line: 135, baseType: !40, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !13, line: 135, baseType: !40, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !13, line: 135, baseType: !36, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !13, line: 135, baseType: !40, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !454, file: !13, line: 135, baseType: !40, size: 8, offset: 104)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !13, line: 136, baseType: !43, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !454, file: !13, line: 137, baseType: !47, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !13, line: 138, baseType: !47, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !454, file: !13, line: 139, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !25, line: 129, baseType: !30)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !454, file: !13, line: 140, baseType: !26, size: 32, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !48, file: !13, line: 377, baseType: !469, size: 320)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !13, line: 184, size: 320, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !480}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !13, line: 185, baseType: !47, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !13, line: 185, baseType: !40, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !13, line: 185, baseType: !40, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !13, line: 185, baseType: !36, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !13, line: 185, baseType: !40, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !469, file: !13, line: 185, baseType: !477, size: 128, offset: 128)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 2)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !13, line: 185, baseType: !47, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !48, file: !13, line: 378, baseType: !482, size: 384)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !13, line: 187, size: 384, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !482, file: !13, line: 188, baseType: !47, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !482, file: !13, line: 188, baseType: !40, size: 8, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !482, file: !13, line: 188, baseType: !40, size: 8, offset: 72)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !482, file: !13, line: 188, baseType: !36, size: 16, offset: 80)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !13, line: 188, baseType: !40, size: 8, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !482, file: !13, line: 189, baseType: !477, size: 128, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !482, file: !13, line: 189, baseType: !47, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !482, file: !13, line: 189, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !494)
!494 = !{!495, !496, !497, !498, !506, !521, !553, !554, !555, !556, !557, !558}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !6, line: 481, baseType: !43, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !493, file: !6, line: 482, baseType: !492, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !493, file: !6, line: 483, baseType: !492, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !493, file: !6, line: 484, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !501)
!501 = !{!502, !503, !504, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !500, file: !6, line: 498, baseType: !499, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !6, line: 499, baseType: !499, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !500, file: !6, line: 500, baseType: !492, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !500, file: !6, line: 501, baseType: !26, size: 32, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !493, file: !6, line: 485, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !509)
!509 = !{!510, !515, !516, !517, !518, !519, !520}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !508, file: !6, line: 467, baseType: !511, size: 128)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !511, file: !6, line: 460, baseType: !40, size: 8)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !511, file: !6, line: 461, baseType: !30, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !508, file: !6, line: 468, baseType: !511, size: 128, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !508, file: !6, line: 469, baseType: !36, size: 16, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !508, file: !6, line: 470, baseType: !40, size: 8, offset: 272)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !508, file: !6, line: 471, baseType: !40, size: 8, offset: 280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !508, file: !6, line: 472, baseType: !40, size: 8, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !508, file: !6, line: 473, baseType: !40, size: 8, offset: 296)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !493, file: !6, line: 486, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !524)
!524 = !{!525, !548, !549, !550, !551, !552}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !523, file: !6, line: 449, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !527)
!527 = !{!528, !529, !542}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !526, file: !6, line: 439, baseType: !43, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !526, file: !6, line: 440, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !532)
!532 = !{!533, !538, !539, !540, !541}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !531, file: !6, line: 420, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !25, line: 1049, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!26, !374, !26, !34}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !6, line: 421, baseType: !34, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !6, line: 422, baseType: !43, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !531, file: !6, line: 423, baseType: !40, size: 8, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !531, file: !6, line: 424, baseType: !40, size: 8, offset: 200)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !526, file: !6, line: 441, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !544, file: !6, line: 430, baseType: !43, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !6, line: 431, baseType: !543, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !523, file: !6, line: 450, baseType: !507, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !6, line: 451, baseType: !40, size: 8, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !523, file: !6, line: 452, baseType: !40, size: 8, offset: 136)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !523, file: !6, line: 453, baseType: !40, size: 8, offset: 144)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !523, file: !6, line: 454, baseType: !40, size: 8, offset: 152)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !493, file: !6, line: 487, baseType: !30, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !493, file: !6, line: 488, baseType: !26, size: 32, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !493, file: !6, line: 489, baseType: !36, size: 16, offset: 480)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !493, file: !6, line: 490, baseType: !36, size: 16, offset: 496)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !493, file: !6, line: 491, baseType: !40, size: 8, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !493, file: !6, line: 492, baseType: !40, size: 8, offset: 520)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !48, file: !13, line: 379, baseType: !560, size: 384)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !13, line: 192, size: 384, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !560, file: !13, line: 193, baseType: !47, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !560, file: !13, line: 193, baseType: !40, size: 8, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !560, file: !13, line: 193, baseType: !40, size: 8, offset: 72)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !560, file: !13, line: 193, baseType: !36, size: 16, offset: 80)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !13, line: 193, baseType: !40, size: 8, offset: 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !560, file: !13, line: 193, baseType: !477, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !560, file: !13, line: 193, baseType: !47, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !560, file: !13, line: 193, baseType: !26, size: 32, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !560, file: !13, line: 194, baseType: !26, size: 32, offset: 352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !48, file: !13, line: 380, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !13, line: 197, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !13, line: 198, baseType: !47, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !13, line: 198, baseType: !40, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !13, line: 198, baseType: !40, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !13, line: 198, baseType: !36, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !13, line: 198, baseType: !40, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !572, file: !13, line: 200, baseType: !40, size: 8, offset: 104)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !572, file: !13, line: 201, baseType: !40, size: 8, offset: 112)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !13, line: 202, baseType: !477, size: 128, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !13, line: 202, baseType: !47, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !572, file: !13, line: 202, baseType: !584, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !25, line: 128, baseType: !30)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !48, file: !13, line: 381, baseType: !586, size: 320)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !13, line: 205, size: 320, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !13, line: 206, baseType: !47, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !13, line: 206, baseType: !40, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !13, line: 206, baseType: !40, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !13, line: 206, baseType: !36, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !13, line: 206, baseType: !40, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !13, line: 206, baseType: !477, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !13, line: 206, baseType: !47, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !48, file: !13, line: 382, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !13, line: 233, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !13, line: 234, baseType: !47, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !13, line: 234, baseType: !36, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 104)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 120)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !596, file: !13, line: 234, baseType: !43, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !596, file: !13, line: 234, baseType: !26, size: 32, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !596, file: !13, line: 234, baseType: !26, size: 32, offset: 224)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !596, file: !13, line: 234, baseType: !26, size: 32, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 288)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !596, file: !13, line: 234, baseType: !40, size: 8, offset: 296)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !596, file: !13, line: 234, baseType: !47, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !48, file: !13, line: 383, baseType: !614, size: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !13, line: 237, size: 576, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !614, file: !13, line: 238, baseType: !47, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 72)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !614, file: !13, line: 238, baseType: !36, size: 16, offset: 80)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 104)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 112)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 120)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !614, file: !13, line: 238, baseType: !43, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !614, file: !13, line: 238, baseType: !26, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !614, file: !13, line: 238, baseType: !26, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !614, file: !13, line: 238, baseType: !26, size: 32, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 288)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !614, file: !13, line: 238, baseType: !40, size: 8, offset: 296)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !614, file: !13, line: 238, baseType: !36, size: 16, offset: 304)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !614, file: !13, line: 239, baseType: !47, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !614, file: !13, line: 240, baseType: !39, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !614, file: !13, line: 241, baseType: !36, size: 16, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !614, file: !13, line: 242, baseType: !39, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !48, file: !13, line: 384, baseType: !636, size: 384)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !13, line: 262, size: 384, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !636, file: !13, line: 263, baseType: !47, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !636, file: !13, line: 263, baseType: !36, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 104)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 120)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !636, file: !13, line: 263, baseType: !43, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !636, file: !13, line: 263, baseType: !26, size: 32, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !636, file: !13, line: 263, baseType: !26, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !636, file: !13, line: 263, baseType: !26, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 288)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 296)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !636, file: !13, line: 263, baseType: !40, size: 8, offset: 304)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !636, file: !13, line: 264, baseType: !47, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !48, file: !13, line: 385, baseType: !655, size: 448)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !13, line: 245, size: 448, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !13, line: 246, baseType: !47, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !13, line: 246, baseType: !36, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !13, line: 246, baseType: !43, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !655, file: !13, line: 246, baseType: !26, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !655, file: !13, line: 246, baseType: !26, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !13, line: 246, baseType: !26, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !655, file: !13, line: 246, baseType: !40, size: 8, offset: 296)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !655, file: !13, line: 246, baseType: !47, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !655, file: !13, line: 247, baseType: !47, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !48, file: !13, line: 386, baseType: !674, size: 448)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !13, line: 250, size: 448, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !13, line: 251, baseType: !47, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !13, line: 251, baseType: !36, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !13, line: 251, baseType: !43, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !674, file: !13, line: 251, baseType: !26, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !674, file: !13, line: 251, baseType: !26, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !13, line: 251, baseType: !26, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !674, file: !13, line: 251, baseType: !40, size: 8, offset: 296)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !674, file: !13, line: 256, baseType: !47, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !674, file: !13, line: 257, baseType: !47, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !48, file: !13, line: 387, baseType: !693, size: 512)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !13, line: 273, size: 512, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !13, line: 274, baseType: !47, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !13, line: 274, baseType: !40, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !13, line: 274, baseType: !40, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !13, line: 274, baseType: !36, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !13, line: 274, baseType: !40, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !13, line: 274, baseType: !43, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !693, file: !13, line: 275, baseType: !26, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !693, file: !13, line: 276, baseType: !370, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !693, file: !13, line: 277, baseType: !34, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !13, line: 278, baseType: !477, size: 128, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !48, file: !13, line: 388, baseType: !706, size: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !13, line: 281, size: 512, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !721, !722, !723, !729, !730}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !13, line: 282, baseType: !47, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !13, line: 282, baseType: !40, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !13, line: 282, baseType: !40, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !13, line: 282, baseType: !36, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !13, line: 282, baseType: !40, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !706, file: !13, line: 282, baseType: !40, size: 8, offset: 104)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !706, file: !13, line: 283, baseType: !40, size: 8, offset: 112)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !706, file: !13, line: 284, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !25, line: 1084, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!24, !26, !466, !26, !720, !34, !34}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !13, line: 285, baseType: !43, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !706, file: !13, line: 286, baseType: !34, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !706, file: !13, line: 287, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !25, line: 1102, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!24, !374, !26, !34, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !706, file: !13, line: 288, baseType: !47, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !13, line: 289, baseType: !47, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !48, file: !13, line: 389, baseType: !732, size: 512)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !13, line: 307, size: 512, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !13, line: 308, baseType: !47, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !13, line: 308, baseType: !40, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !13, line: 308, baseType: !40, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !13, line: 308, baseType: !36, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !13, line: 308, baseType: !40, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !732, file: !13, line: 308, baseType: !40, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !732, file: !13, line: 309, baseType: !40, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !732, file: !13, line: 310, baseType: !40, size: 8, offset: 120)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !732, file: !13, line: 311, baseType: !34, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !13, line: 312, baseType: !43, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !732, file: !13, line: 313, baseType: !106, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !732, file: !13, line: 314, baseType: !39, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !732, file: !13, line: 315, baseType: !39, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !13, line: 316, baseType: !26, size: 32, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !48, file: !13, line: 390, baseType: !749, size: 448)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !13, line: 340, size: 448, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !13, line: 341, baseType: !47, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !13, line: 341, baseType: !40, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !13, line: 341, baseType: !40, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !13, line: 341, baseType: !36, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !13, line: 341, baseType: !40, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !749, file: !13, line: 341, baseType: !43, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !749, file: !13, line: 342, baseType: !43, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !749, file: !13, line: 343, baseType: !34, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !749, file: !13, line: 344, baseType: !39, size: 64, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !749, file: !13, line: 345, baseType: !26, size: 32, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !48, file: !13, line: 391, baseType: !762, size: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !13, line: 350, size: 256, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !774}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !762, file: !13, line: 351, baseType: !47, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !13, line: 351, baseType: !40, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !13, line: 351, baseType: !40, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !762, file: !13, line: 351, baseType: !36, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !13, line: 351, baseType: !40, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !762, file: !13, line: 351, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !25, line: 1055, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !374, !34}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !762, file: !13, line: 352, baseType: !34, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !48, file: !13, line: 392, baseType: !776, size: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !13, line: 357, size: 192, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !776, file: !13, line: 358, baseType: !47, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !776, file: !13, line: 358, baseType: !40, size: 8, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !776, file: !13, line: 358, baseType: !40, size: 8, offset: 72)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !776, file: !13, line: 358, baseType: !36, size: 16, offset: 80)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !13, line: 358, baseType: !40, size: 8, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !13, line: 358, baseType: !47, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !48, file: !13, line: 399, baseType: !44, size: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !6, line: 135, baseType: !40, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !6, line: 136, baseType: !40, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !6, line: 137, baseType: !36, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !6, line: 138, baseType: !789, size: 32, offset: 96)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !790, line: 327, size: 32, elements: !791)
!790 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !789, file: !790, line: 328, baseType: !26, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !789, file: !790, line: 329, baseType: !235, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !6, line: 139, baseType: !43, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !44, file: !6, line: 140, baseType: !43, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !44, file: !6, line: 141, baseType: !43, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !6, line: 142, baseType: !153, size: 16, offset: 320)
!798 = !{!0}
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 80, elements: !801)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!801 = !{!802}
!802 = !DISubrange(count: 10)
!803 = !{i32 7, !"Dwarf Version", i32 4}
!804 = !{i32 2, !"Debug Info Version", i32 3}
!805 = !{i32 1, !"wchar_size", i32 2}
!806 = !{i32 1, !"Code Model", i32 2}
!807 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!808 = distinct !DISubprogram(name: "acpi_ns_convert_to_integer", scope: !3, file: !3, line: 34, type: !809, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{!24, !47, !106}
!811 = !{}
!812 = !DILocalVariable(name: "original_object", arg: 1, scope: !808, file: !3, line: 34, type: !47)
!813 = !DILocation(line: 34, column: 55, scope: !808)
!814 = !DILocalVariable(name: "return_object", arg: 2, scope: !808, file: !3, line: 35, type: !106)
!815 = !DILocation(line: 35, column: 35, scope: !808)
!816 = !DILocalVariable(name: "new_object", scope: !808, file: !3, line: 37, type: !47)
!817 = !DILocation(line: 37, column: 29, scope: !808)
!818 = !DILocalVariable(name: "status", scope: !808, file: !3, line: 38, type: !24)
!819 = !DILocation(line: 38, column: 14, scope: !808)
!820 = !DILocalVariable(name: "value", scope: !808, file: !3, line: 39, type: !30)
!821 = !DILocation(line: 39, column: 6, scope: !808)
!822 = !DILocalVariable(name: "i", scope: !808, file: !3, line: 40, type: !26)
!823 = !DILocation(line: 40, column: 6, scope: !808)
!824 = !DILocation(line: 42, column: 10, scope: !808)
!825 = !DILocation(line: 42, column: 27, scope: !808)
!826 = !DILocation(line: 42, column: 34, scope: !808)
!827 = !DILocation(line: 42, column: 2, scope: !808)
!828 = !DILocation(line: 48, column: 25, scope: !829)
!829 = distinct !DILexicalBlock(scope: !808, file: !3, line: 42, column: 40)
!830 = !DILocation(line: 48, column: 42, scope: !829)
!831 = !DILocation(line: 48, column: 49, scope: !829)
!832 = !DILocation(line: 48, column: 7, scope: !829)
!833 = !DILocation(line: 47, column: 10, scope: !829)
!834 = !DILocation(line: 49, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !829, file: !3, line: 49, column: 7)
!836 = !DILocation(line: 49, column: 7, scope: !829)
!837 = !DILocation(line: 50, column: 12, scope: !838)
!838 = distinct !DILexicalBlock(scope: !835, file: !3, line: 49, column: 29)
!839 = !DILocation(line: 50, column: 4, scope: !838)
!840 = !DILocation(line: 52, column: 3, scope: !829)
!841 = !DILocation(line: 58, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !829, file: !3, line: 58, column: 7)
!843 = !DILocation(line: 58, column: 24, scope: !842)
!844 = !DILocation(line: 58, column: 31, scope: !842)
!845 = !DILocation(line: 58, column: 38, scope: !842)
!846 = !DILocation(line: 58, column: 7, scope: !829)
!847 = !DILocation(line: 59, column: 4, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !3, line: 58, column: 43)
!849 = !DILocation(line: 64, column: 10, scope: !850)
!850 = distinct !DILexicalBlock(scope: !829, file: !3, line: 64, column: 3)
!851 = !DILocation(line: 64, column: 8, scope: !850)
!852 = !DILocation(line: 64, column: 15, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 64, column: 3)
!854 = !DILocation(line: 64, column: 19, scope: !853)
!855 = !DILocation(line: 64, column: 36, scope: !853)
!856 = !DILocation(line: 64, column: 43, scope: !853)
!857 = !DILocation(line: 64, column: 17, scope: !853)
!858 = !DILocation(line: 64, column: 3, scope: !850)
!859 = !DILocation(line: 66, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !853, file: !3, line: 64, column: 56)
!861 = !DILocation(line: 66, column: 24, scope: !860)
!862 = !DILocation(line: 66, column: 31, scope: !860)
!863 = !DILocation(line: 66, column: 39, scope: !860)
!864 = !DILocation(line: 65, column: 14, scope: !860)
!865 = !DILocation(line: 66, column: 46, scope: !860)
!866 = !DILocation(line: 66, column: 48, scope: !860)
!867 = !DILocation(line: 66, column: 42, scope: !860)
!868 = !DILocation(line: 65, column: 10, scope: !860)
!869 = !DILocation(line: 68, column: 3, scope: !860)
!870 = !DILocation(line: 64, column: 52, scope: !853)
!871 = !DILocation(line: 64, column: 3, scope: !853)
!872 = distinct !{!872, !858, !873}
!873 = !DILocation(line: 68, column: 3, scope: !850)
!874 = !DILocation(line: 69, column: 3, scope: !829)
!875 = !DILocation(line: 73, column: 3, scope: !829)
!876 = !DILocation(line: 76, column: 45, scope: !808)
!877 = !DILocation(line: 76, column: 15, scope: !808)
!878 = !DILocation(line: 76, column: 13, scope: !808)
!879 = !DILocation(line: 77, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !808, file: !3, line: 77, column: 6)
!881 = !DILocation(line: 77, column: 6, scope: !808)
!882 = !DILocation(line: 78, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 77, column: 19)
!884 = !DILocation(line: 81, column: 19, scope: !808)
!885 = !DILocation(line: 81, column: 3, scope: !808)
!886 = !DILocation(line: 81, column: 17, scope: !808)
!887 = !DILocation(line: 82, column: 2, scope: !808)
!888 = !DILocation(line: 83, column: 1, scope: !808)
!889 = distinct !DISubprogram(name: "acpi_ns_convert_to_string", scope: !3, file: !3, line: 99, type: !809, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!890 = !DILocalVariable(name: "original_object", arg: 1, scope: !889, file: !3, line: 99, type: !47)
!891 = !DILocation(line: 99, column: 54, scope: !889)
!892 = !DILocalVariable(name: "return_object", arg: 2, scope: !889, file: !3, line: 100, type: !106)
!893 = !DILocation(line: 100, column: 34, scope: !889)
!894 = !DILocalVariable(name: "new_object", scope: !889, file: !3, line: 102, type: !47)
!895 = !DILocation(line: 102, column: 29, scope: !889)
!896 = !DILocalVariable(name: "length", scope: !889, file: !3, line: 103, type: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !25, line: 127, baseType: !30)
!898 = !DILocation(line: 103, column: 12, scope: !889)
!899 = !DILocalVariable(name: "status", scope: !889, file: !3, line: 104, type: !24)
!900 = !DILocation(line: 104, column: 14, scope: !889)
!901 = !DILocation(line: 106, column: 10, scope: !889)
!902 = !DILocation(line: 106, column: 27, scope: !889)
!903 = !DILocation(line: 106, column: 34, scope: !889)
!904 = !DILocation(line: 106, column: 2, scope: !889)
!905 = !DILocation(line: 113, column: 7, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !3, line: 113, column: 7)
!907 = distinct !DILexicalBlock(scope: !889, file: !3, line: 106, column: 40)
!908 = !DILocation(line: 113, column: 24, scope: !906)
!909 = !DILocation(line: 113, column: 32, scope: !906)
!910 = !DILocation(line: 113, column: 38, scope: !906)
!911 = !DILocation(line: 113, column: 7, scope: !907)
!912 = !DILocation(line: 117, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !906, file: !3, line: 113, column: 44)
!914 = !DILocation(line: 117, column: 15, scope: !913)
!915 = !DILocation(line: 118, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 118, column: 8)
!917 = !DILocation(line: 118, column: 8, scope: !913)
!918 = !DILocation(line: 119, column: 5, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 118, column: 21)
!920 = !DILocation(line: 121, column: 3, scope: !913)
!921 = !DILocation(line: 122, column: 39, scope: !922)
!922 = distinct !DILexicalBlock(scope: !906, file: !3, line: 121, column: 10)
!923 = !DILocation(line: 122, column: 13, scope: !922)
!924 = !DILocation(line: 122, column: 11, scope: !922)
!925 = !DILocation(line: 125, column: 8, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 125, column: 8)
!927 = !DILocation(line: 125, column: 8, scope: !922)
!928 = !DILocation(line: 126, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 125, column: 30)
!930 = !DILocation(line: 126, column: 5, scope: !929)
!931 = !DILocation(line: 129, column: 3, scope: !907)
!932 = !DILocation(line: 138, column: 10, scope: !907)
!933 = !DILocation(line: 139, column: 3, scope: !907)
!934 = !DILocation(line: 139, column: 11, scope: !907)
!935 = !DILocation(line: 139, column: 20, scope: !907)
!936 = !DILocation(line: 139, column: 37, scope: !907)
!937 = !DILocation(line: 139, column: 44, scope: !907)
!938 = !DILocation(line: 139, column: 18, scope: !907)
!939 = !DILocation(line: 139, column: 52, scope: !907)
!940 = !DILocation(line: 140, column: 11, scope: !907)
!941 = !DILocation(line: 140, column: 28, scope: !907)
!942 = !DILocation(line: 140, column: 35, scope: !907)
!943 = !DILocation(line: 140, column: 43, scope: !907)
!944 = !DILocation(line: 140, column: 10, scope: !907)
!945 = !DILocation(line: 0, scope: !907)
!946 = !DILocation(line: 141, column: 10, scope: !947)
!947 = distinct !DILexicalBlock(scope: !907, file: !3, line: 140, column: 53)
!948 = distinct !{!948, !933, !949}
!949 = !DILocation(line: 142, column: 3, scope: !907)
!950 = !DILocation(line: 146, column: 45, scope: !907)
!951 = !DILocation(line: 146, column: 16, scope: !907)
!952 = !DILocation(line: 146, column: 14, scope: !907)
!953 = !DILocation(line: 147, column: 8, scope: !954)
!954 = distinct !DILexicalBlock(scope: !907, file: !3, line: 147, column: 7)
!955 = !DILocation(line: 147, column: 7, scope: !907)
!956 = !DILocation(line: 148, column: 4, scope: !957)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 147, column: 20)
!958 = !DILocation(line: 155, column: 10, scope: !907)
!959 = !DILocation(line: 155, column: 22, scope: !907)
!960 = !DILocation(line: 155, column: 29, scope: !907)
!961 = !DILocation(line: 156, column: 10, scope: !907)
!962 = !DILocation(line: 156, column: 27, scope: !907)
!963 = !DILocation(line: 156, column: 34, scope: !907)
!964 = !DILocation(line: 156, column: 43, scope: !907)
!965 = !DILocation(line: 155, column: 3, scope: !907)
!966 = !DILocation(line: 157, column: 3, scope: !907)
!967 = !DILocation(line: 161, column: 3, scope: !907)
!968 = !DILocation(line: 164, column: 19, scope: !889)
!969 = !DILocation(line: 164, column: 3, scope: !889)
!970 = !DILocation(line: 164, column: 17, scope: !889)
!971 = !DILocation(line: 165, column: 2, scope: !889)
!972 = !DILocation(line: 166, column: 1, scope: !889)
!973 = distinct !DISubprogram(name: "acpi_ns_convert_to_buffer", scope: !3, file: !3, line: 182, type: !809, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!974 = !DILocalVariable(name: "original_object", arg: 1, scope: !973, file: !3, line: 182, type: !47)
!975 = !DILocation(line: 182, column: 54, scope: !973)
!976 = !DILocalVariable(name: "return_object", arg: 2, scope: !973, file: !3, line: 183, type: !106)
!977 = !DILocation(line: 183, column: 34, scope: !973)
!978 = !DILocalVariable(name: "new_object", scope: !973, file: !3, line: 185, type: !47)
!979 = !DILocation(line: 185, column: 29, scope: !973)
!980 = !DILocalVariable(name: "status", scope: !973, file: !3, line: 186, type: !24)
!981 = !DILocation(line: 186, column: 14, scope: !973)
!982 = !DILocalVariable(name: "elements", scope: !973, file: !3, line: 187, type: !106)
!983 = !DILocation(line: 187, column: 30, scope: !973)
!984 = !DILocalVariable(name: "dword_buffer", scope: !973, file: !3, line: 188, type: !33)
!985 = !DILocation(line: 188, column: 7, scope: !973)
!986 = !DILocalVariable(name: "count", scope: !973, file: !3, line: 189, type: !26)
!987 = !DILocation(line: 189, column: 6, scope: !973)
!988 = !DILocalVariable(name: "i", scope: !973, file: !3, line: 190, type: !26)
!989 = !DILocation(line: 190, column: 6, scope: !973)
!990 = !DILocation(line: 192, column: 10, scope: !973)
!991 = !DILocation(line: 192, column: 27, scope: !973)
!992 = !DILocation(line: 192, column: 34, scope: !973)
!993 = !DILocation(line: 192, column: 2, scope: !973)
!994 = !DILocation(line: 202, column: 33, scope: !995)
!995 = distinct !DILexicalBlock(scope: !973, file: !3, line: 192, column: 40)
!996 = !DILocation(line: 202, column: 7, scope: !995)
!997 = !DILocation(line: 201, column: 10, scope: !995)
!998 = !DILocation(line: 203, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !3, line: 203, column: 7)
!1000 = !DILocation(line: 203, column: 7, scope: !995)
!1001 = !DILocation(line: 204, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !3, line: 203, column: 29)
!1003 = !DILocation(line: 204, column: 4, scope: !1002)
!1004 = !DILocation(line: 206, column: 3, scope: !995)
!1005 = !DILocation(line: 213, column: 8, scope: !995)
!1006 = !DILocation(line: 213, column: 25, scope: !995)
!1007 = !DILocation(line: 213, column: 32, scope: !995)
!1008 = !DILocation(line: 212, column: 16, scope: !995)
!1009 = !DILocation(line: 212, column: 14, scope: !995)
!1010 = !DILocation(line: 214, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !995, file: !3, line: 214, column: 7)
!1012 = !DILocation(line: 214, column: 7, scope: !995)
!1013 = !DILocation(line: 215, column: 4, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 214, column: 20)
!1015 = !DILocation(line: 218, column: 10, scope: !995)
!1016 = !DILocation(line: 218, column: 22, scope: !995)
!1017 = !DILocation(line: 218, column: 29, scope: !995)
!1018 = !DILocation(line: 219, column: 10, scope: !995)
!1019 = !DILocation(line: 219, column: 27, scope: !995)
!1020 = !DILocation(line: 219, column: 34, scope: !995)
!1021 = !DILocation(line: 220, column: 10, scope: !995)
!1022 = !DILocation(line: 220, column: 27, scope: !995)
!1023 = !DILocation(line: 220, column: 34, scope: !995)
!1024 = !DILocation(line: 218, column: 3, scope: !995)
!1025 = !DILocation(line: 221, column: 3, scope: !995)
!1026 = !DILocation(line: 232, column: 14, scope: !995)
!1027 = !DILocation(line: 232, column: 31, scope: !995)
!1028 = !DILocation(line: 232, column: 39, scope: !995)
!1029 = !DILocation(line: 232, column: 12, scope: !995)
!1030 = !DILocation(line: 233, column: 11, scope: !995)
!1031 = !DILocation(line: 233, column: 28, scope: !995)
!1032 = !DILocation(line: 233, column: 36, scope: !995)
!1033 = !DILocation(line: 233, column: 9, scope: !995)
!1034 = !DILocation(line: 235, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !995, file: !3, line: 235, column: 3)
!1036 = !DILocation(line: 235, column: 8, scope: !1035)
!1037 = !DILocation(line: 235, column: 15, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 235, column: 3)
!1039 = !DILocation(line: 235, column: 19, scope: !1038)
!1040 = !DILocation(line: 235, column: 17, scope: !1038)
!1041 = !DILocation(line: 235, column: 3, scope: !1035)
!1042 = !DILocation(line: 236, column: 11, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 236, column: 8)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 235, column: 31)
!1045 = !DILocation(line: 236, column: 10, scope: !1043)
!1046 = !DILocation(line: 236, column: 21, scope: !1043)
!1047 = !DILocation(line: 237, column: 11, scope: !1043)
!1048 = !DILocation(line: 237, column: 10, scope: !1043)
!1049 = !DILocation(line: 237, column: 22, scope: !1043)
!1050 = !DILocation(line: 237, column: 29, scope: !1043)
!1051 = !DILocation(line: 237, column: 9, scope: !1043)
!1052 = !DILocation(line: 237, column: 34, scope: !1043)
!1053 = !DILocation(line: 236, column: 8, scope: !1044)
!1054 = !DILocation(line: 238, column: 5, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 237, column: 57)
!1056 = !DILocation(line: 240, column: 12, scope: !1044)
!1057 = !DILocation(line: 241, column: 3, scope: !1044)
!1058 = !DILocation(line: 235, column: 27, scope: !1038)
!1059 = !DILocation(line: 235, column: 3, scope: !1038)
!1060 = distinct !{!1060, !1041, !1061}
!1061 = !DILocation(line: 241, column: 3, scope: !1035)
!1062 = !DILocation(line: 245, column: 45, scope: !995)
!1063 = !DILocation(line: 245, column: 16, scope: !995)
!1064 = !DILocation(line: 245, column: 14, scope: !995)
!1065 = !DILocation(line: 246, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !995, file: !3, line: 246, column: 7)
!1067 = !DILocation(line: 246, column: 7, scope: !995)
!1068 = !DILocation(line: 247, column: 4, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 246, column: 20)
!1070 = !DILocation(line: 252, column: 14, scope: !995)
!1071 = !DILocation(line: 252, column: 31, scope: !995)
!1072 = !DILocation(line: 252, column: 39, scope: !995)
!1073 = !DILocation(line: 252, column: 12, scope: !995)
!1074 = !DILocation(line: 253, column: 18, scope: !995)
!1075 = !DILocation(line: 253, column: 16, scope: !995)
!1076 = !DILocation(line: 255, column: 10, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !995, file: !3, line: 255, column: 3)
!1078 = !DILocation(line: 255, column: 8, scope: !1077)
!1079 = !DILocation(line: 255, column: 15, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 255, column: 3)
!1081 = !DILocation(line: 255, column: 19, scope: !1080)
!1082 = !DILocation(line: 255, column: 17, scope: !1080)
!1083 = !DILocation(line: 255, column: 3, scope: !1077)
!1084 = !DILocation(line: 256, column: 27, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 255, column: 31)
!1086 = !DILocation(line: 256, column: 26, scope: !1085)
!1087 = !DILocation(line: 256, column: 38, scope: !1085)
!1088 = !DILocation(line: 256, column: 46, scope: !1085)
!1089 = !DILocation(line: 256, column: 20, scope: !1085)
!1090 = !DILocation(line: 256, column: 5, scope: !1085)
!1091 = !DILocation(line: 256, column: 18, scope: !1085)
!1092 = !DILocation(line: 257, column: 16, scope: !1085)
!1093 = !DILocation(line: 258, column: 12, scope: !1085)
!1094 = !DILocation(line: 259, column: 3, scope: !1085)
!1095 = !DILocation(line: 255, column: 27, scope: !1080)
!1096 = !DILocation(line: 255, column: 3, scope: !1080)
!1097 = distinct !{!1097, !1083, !1098}
!1098 = !DILocation(line: 259, column: 3, scope: !1077)
!1099 = !DILocation(line: 260, column: 3, scope: !995)
!1100 = !DILocation(line: 264, column: 3, scope: !995)
!1101 = !DILocation(line: 267, column: 19, scope: !973)
!1102 = !DILocation(line: 267, column: 3, scope: !973)
!1103 = !DILocation(line: 267, column: 17, scope: !973)
!1104 = !DILocation(line: 268, column: 2, scope: !973)
!1105 = !DILocation(line: 269, column: 1, scope: !973)
!1106 = distinct !DISubprogram(name: "acpi_ns_convert_to_unicode", scope: !3, file: !3, line: 286, type: !1107, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!24, !43, !47, !106}
!1109 = !DILocalVariable(name: "scope", arg: 1, scope: !1106, file: !3, line: 286, type: !43)
!1110 = !DILocation(line: 286, column: 56, scope: !1106)
!1111 = !DILocalVariable(name: "original_object", arg: 2, scope: !1106, file: !3, line: 287, type: !47)
!1112 = !DILocation(line: 287, column: 34, scope: !1106)
!1113 = !DILocalVariable(name: "return_object", arg: 3, scope: !1106, file: !3, line: 288, type: !106)
!1114 = !DILocation(line: 288, column: 35, scope: !1106)
!1115 = !DILocalVariable(name: "new_object", scope: !1106, file: !3, line: 290, type: !47)
!1116 = !DILocation(line: 290, column: 29, scope: !1106)
!1117 = !DILocalVariable(name: "ascii_string", scope: !1106, file: !3, line: 291, type: !80)
!1118 = !DILocation(line: 291, column: 8, scope: !1106)
!1119 = !DILocalVariable(name: "unicode_buffer", scope: !1106, file: !3, line: 292, type: !35)
!1120 = !DILocation(line: 292, column: 7, scope: !1106)
!1121 = !DILocalVariable(name: "unicode_length", scope: !1106, file: !3, line: 293, type: !26)
!1122 = !DILocation(line: 293, column: 6, scope: !1106)
!1123 = !DILocalVariable(name: "i", scope: !1106, file: !3, line: 294, type: !26)
!1124 = !DILocation(line: 294, column: 6, scope: !1106)
!1125 = !DILocation(line: 296, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 296, column: 6)
!1127 = !DILocation(line: 296, column: 6, scope: !1106)
!1128 = !DILocation(line: 297, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 296, column: 24)
!1130 = !DILocation(line: 302, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 302, column: 6)
!1132 = !DILocation(line: 302, column: 23, scope: !1131)
!1133 = !DILocation(line: 302, column: 30, scope: !1131)
!1134 = !DILocation(line: 302, column: 35, scope: !1131)
!1135 = !DILocation(line: 302, column: 6, scope: !1106)
!1136 = !DILocation(line: 303, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 303, column: 7)
!1138 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 302, column: 56)
!1139 = !DILocation(line: 303, column: 24, scope: !1137)
!1140 = !DILocation(line: 303, column: 31, scope: !1137)
!1141 = !DILocation(line: 303, column: 38, scope: !1137)
!1142 = !DILocation(line: 303, column: 7, scope: !1138)
!1143 = !DILocation(line: 304, column: 4, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 303, column: 43)
!1145 = !DILocation(line: 307, column: 4, scope: !1138)
!1146 = !DILocation(line: 307, column: 18, scope: !1138)
!1147 = !DILocation(line: 308, column: 3, scope: !1138)
!1148 = !DILocation(line: 315, column: 17, scope: !1106)
!1149 = !DILocation(line: 315, column: 34, scope: !1106)
!1150 = !DILocation(line: 315, column: 41, scope: !1106)
!1151 = !DILocation(line: 315, column: 15, scope: !1106)
!1152 = !DILocation(line: 316, column: 20, scope: !1106)
!1153 = !DILocation(line: 316, column: 37, scope: !1106)
!1154 = !DILocation(line: 316, column: 44, scope: !1106)
!1155 = !DILocation(line: 316, column: 51, scope: !1106)
!1156 = !DILocation(line: 316, column: 56, scope: !1106)
!1157 = !DILocation(line: 316, column: 17, scope: !1106)
!1158 = !DILocation(line: 320, column: 44, scope: !1106)
!1159 = !DILocation(line: 320, column: 15, scope: !1106)
!1160 = !DILocation(line: 320, column: 13, scope: !1106)
!1161 = !DILocation(line: 321, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 321, column: 6)
!1163 = !DILocation(line: 321, column: 6, scope: !1106)
!1164 = !DILocation(line: 322, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 321, column: 19)
!1166 = !DILocation(line: 325, column: 19, scope: !1106)
!1167 = !DILocation(line: 325, column: 17, scope: !1106)
!1168 = !DILocation(line: 329, column: 9, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 329, column: 2)
!1170 = !DILocation(line: 329, column: 7, scope: !1169)
!1171 = !DILocation(line: 329, column: 14, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 329, column: 2)
!1173 = !DILocation(line: 329, column: 18, scope: !1172)
!1174 = !DILocation(line: 329, column: 35, scope: !1172)
!1175 = !DILocation(line: 329, column: 42, scope: !1172)
!1176 = !DILocation(line: 329, column: 16, scope: !1172)
!1177 = !DILocation(line: 329, column: 2, scope: !1169)
!1178 = !DILocation(line: 330, column: 28, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 329, column: 55)
!1180 = !DILocation(line: 330, column: 41, scope: !1179)
!1181 = !DILocation(line: 330, column: 23, scope: !1179)
!1182 = !DILocation(line: 330, column: 3, scope: !1179)
!1183 = !DILocation(line: 330, column: 18, scope: !1179)
!1184 = !DILocation(line: 330, column: 21, scope: !1179)
!1185 = !DILocation(line: 331, column: 2, scope: !1179)
!1186 = !DILocation(line: 329, column: 51, scope: !1172)
!1187 = !DILocation(line: 329, column: 2, scope: !1172)
!1188 = distinct !{!1188, !1177, !1189}
!1189 = !DILocation(line: 331, column: 2, scope: !1169)
!1190 = !DILocation(line: 333, column: 19, scope: !1106)
!1191 = !DILocation(line: 333, column: 3, scope: !1106)
!1192 = !DILocation(line: 333, column: 17, scope: !1106)
!1193 = !DILocation(line: 334, column: 2, scope: !1106)
!1194 = !DILocation(line: 335, column: 1, scope: !1106)
!1195 = distinct !DISubprogram(name: "acpi_ns_convert_to_resource", scope: !3, file: !3, line: 353, type: !1107, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1196 = !DILocalVariable(name: "scope", arg: 1, scope: !1195, file: !3, line: 353, type: !43)
!1197 = !DILocation(line: 353, column: 57, scope: !1195)
!1198 = !DILocalVariable(name: "original_object", arg: 2, scope: !1195, file: !3, line: 354, type: !47)
!1199 = !DILocation(line: 354, column: 35, scope: !1195)
!1200 = !DILocalVariable(name: "return_object", arg: 3, scope: !1195, file: !3, line: 355, type: !106)
!1201 = !DILocation(line: 355, column: 36, scope: !1195)
!1202 = !DILocalVariable(name: "new_object", scope: !1195, file: !3, line: 357, type: !47)
!1203 = !DILocation(line: 357, column: 29, scope: !1195)
!1204 = !DILocalVariable(name: "buffer", scope: !1195, file: !3, line: 358, type: !39)
!1205 = !DILocation(line: 358, column: 6, scope: !1195)
!1206 = !DILocation(line: 369, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 369, column: 6)
!1208 = !DILocation(line: 369, column: 6, scope: !1195)
!1209 = !DILocation(line: 370, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 369, column: 23)
!1211 = !DILocation(line: 370, column: 28, scope: !1210)
!1212 = !DILocation(line: 370, column: 35, scope: !1210)
!1213 = !DILocation(line: 370, column: 3, scope: !1210)
!1214 = !DILocation(line: 375, column: 8, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 375, column: 8)
!1216 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 370, column: 41)
!1217 = !DILocation(line: 375, column: 25, scope: !1215)
!1218 = !DILocation(line: 375, column: 33, scope: !1215)
!1219 = !DILocation(line: 375, column: 8, scope: !1216)
!1220 = !DILocation(line: 376, column: 5, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 375, column: 40)
!1222 = !DILocation(line: 378, column: 4, scope: !1216)
!1223 = !DILocation(line: 382, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 382, column: 8)
!1225 = !DILocation(line: 382, column: 25, scope: !1224)
!1226 = !DILocation(line: 382, column: 32, scope: !1224)
!1227 = !DILocation(line: 382, column: 8, scope: !1216)
!1228 = !DILocation(line: 386, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 382, column: 40)
!1230 = !DILocation(line: 386, column: 20, scope: !1229)
!1231 = !DILocation(line: 387, column: 5, scope: !1229)
!1232 = !DILocation(line: 389, column: 4, scope: !1216)
!1233 = !DILocation(line: 394, column: 4, scope: !1216)
!1234 = !DILocation(line: 396, column: 2, scope: !1210)
!1235 = !DILocation(line: 400, column: 15, scope: !1195)
!1236 = !DILocation(line: 400, column: 13, scope: !1195)
!1237 = !DILocation(line: 401, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 401, column: 6)
!1239 = !DILocation(line: 401, column: 6, scope: !1195)
!1240 = !DILocation(line: 402, column: 3, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 401, column: 19)
!1242 = !DILocation(line: 405, column: 11, scope: !1195)
!1243 = !DILocation(line: 405, column: 9, scope: !1195)
!1244 = !DILocation(line: 409, column: 2, scope: !1195)
!1245 = !DILocation(line: 409, column: 12, scope: !1195)
!1246 = !DILocation(line: 410, column: 2, scope: !1195)
!1247 = !DILocation(line: 410, column: 12, scope: !1195)
!1248 = !DILocation(line: 412, column: 19, scope: !1195)
!1249 = !DILocation(line: 412, column: 3, scope: !1195)
!1250 = !DILocation(line: 412, column: 17, scope: !1195)
!1251 = !DILocation(line: 413, column: 2, scope: !1195)
!1252 = !DILocation(line: 414, column: 1, scope: !1195)
!1253 = distinct !DISubprogram(name: "acpi_ns_convert_to_reference", scope: !3, file: !3, line: 432, type: !1107, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1254 = !DILocalVariable(name: "scope", arg: 1, scope: !1253, file: !3, line: 432, type: !43)
!1255 = !DILocation(line: 432, column: 58, scope: !1253)
!1256 = !DILocalVariable(name: "original_object", arg: 2, scope: !1253, file: !3, line: 433, type: !47)
!1257 = !DILocation(line: 433, column: 36, scope: !1253)
!1258 = !DILocalVariable(name: "return_object", arg: 3, scope: !1253, file: !3, line: 434, type: !106)
!1259 = !DILocation(line: 434, column: 37, scope: !1253)
!1260 = !DILocalVariable(name: "new_object", scope: !1253, file: !3, line: 436, type: !47)
!1261 = !DILocation(line: 436, column: 29, scope: !1253)
!1262 = !DILocalVariable(name: "status", scope: !1253, file: !3, line: 437, type: !24)
!1263 = !DILocation(line: 437, column: 14, scope: !1253)
!1264 = !DILocalVariable(name: "node", scope: !1253, file: !3, line: 438, type: !43)
!1265 = !DILocation(line: 438, column: 30, scope: !1253)
!1266 = !DILocalVariable(name: "scope_info", scope: !1253, file: !3, line: 439, type: !262)
!1267 = !DILocation(line: 439, column: 27, scope: !1253)
!1268 = !DILocalVariable(name: "name", scope: !1253, file: !3, line: 440, type: !80)
!1269 = !DILocation(line: 440, column: 8, scope: !1253)
!1270 = !DILocation(line: 447, column: 31, scope: !1253)
!1271 = !DILocation(line: 447, column: 48, scope: !1253)
!1272 = !DILocation(line: 447, column: 55, scope: !1253)
!1273 = !DILocation(line: 447, column: 6, scope: !1253)
!1274 = !DILocation(line: 446, column: 9, scope: !1253)
!1275 = !DILocation(line: 448, column: 6, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 448, column: 6)
!1277 = !DILocation(line: 448, column: 6, scope: !1253)
!1278 = !DILocation(line: 449, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 448, column: 28)
!1280 = !DILocation(line: 455, column: 6, scope: !1253)
!1281 = !DILocation(line: 454, column: 13, scope: !1253)
!1282 = !DILocation(line: 454, column: 19, scope: !1253)
!1283 = !DILocation(line: 454, column: 24, scope: !1253)
!1284 = !DILocation(line: 457, column: 34, scope: !1253)
!1285 = !DILocation(line: 457, column: 6, scope: !1253)
!1286 = !DILocation(line: 456, column: 9, scope: !1253)
!1287 = !DILocation(line: 460, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 460, column: 6)
!1289 = !DILocation(line: 460, column: 6, scope: !1253)
!1290 = !DILocation(line: 464, column: 3, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 460, column: 28)
!1292 = !DILocation(line: 466, column: 3, scope: !1291)
!1293 = !DILocation(line: 471, column: 15, scope: !1253)
!1294 = !DILocation(line: 471, column: 13, scope: !1253)
!1295 = !DILocation(line: 472, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 472, column: 6)
!1297 = !DILocation(line: 472, column: 6, scope: !1253)
!1298 = !DILocation(line: 473, column: 10, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 472, column: 19)
!1300 = !DILocation(line: 474, column: 3, scope: !1299)
!1301 = !DILocation(line: 476, column: 31, scope: !1253)
!1302 = !DILocation(line: 476, column: 2, scope: !1253)
!1303 = !DILocation(line: 476, column: 14, scope: !1253)
!1304 = !DILocation(line: 476, column: 24, scope: !1253)
!1305 = !DILocation(line: 476, column: 29, scope: !1253)
!1306 = !DILocation(line: 477, column: 33, scope: !1253)
!1307 = !DILocation(line: 477, column: 39, scope: !1253)
!1308 = !DILocation(line: 477, column: 2, scope: !1253)
!1309 = !DILocation(line: 477, column: 14, scope: !1253)
!1310 = !DILocation(line: 477, column: 24, scope: !1253)
!1311 = !DILocation(line: 477, column: 31, scope: !1253)
!1312 = !DILocation(line: 478, column: 2, scope: !1253)
!1313 = !DILocation(line: 478, column: 14, scope: !1253)
!1314 = !DILocation(line: 478, column: 24, scope: !1253)
!1315 = !DILocation(line: 478, column: 30, scope: !1253)
!1316 = !DILocation(line: 484, column: 24, scope: !1253)
!1317 = !DILocation(line: 484, column: 30, scope: !1253)
!1318 = !DILocation(line: 484, column: 2, scope: !1253)
!1319 = !DILabel(scope: !1253, name: "error_exit", file: !3, line: 486)
!1320 = !DILocation(line: 486, column: 1, scope: !1253)
!1321 = !DILocation(line: 487, column: 2, scope: !1253)
!1322 = !DILocation(line: 488, column: 19, scope: !1253)
!1323 = !DILocation(line: 488, column: 3, scope: !1253)
!1324 = !DILocation(line: 488, column: 17, scope: !1253)
!1325 = !DILocation(line: 489, column: 10, scope: !1253)
!1326 = !DILocation(line: 489, column: 2, scope: !1253)
!1327 = !DILocation(line: 490, column: 1, scope: !1253)
!1328 = distinct !DISubprogram(name: "acpi_os_free", scope: !1329, file: !1329, line: 60, type: !1330, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !811)
!1329 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !34}
!1332 = !DILocalVariable(name: "memory", arg: 1, scope: !1328, file: !1329, line: 60, type: !34)
!1333 = !DILocation(line: 60, column: 39, scope: !1328)
!1334 = !DILocation(line: 62, column: 8, scope: !1328)
!1335 = !DILocation(line: 62, column: 2, scope: !1328)
!1336 = !DILocation(line: 63, column: 1, scope: !1328)
