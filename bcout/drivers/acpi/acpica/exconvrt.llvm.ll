; ModuleID = '../bcout/drivers/acpi/acpica/exconvrt.llvm.bc'
source_filename = "drivers/acpi/acpica/exconvrt.c"
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
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"exconvrt\00", align 1, !dbg !0
@.str = private unnamed_addr constant [45 x i8] c"Bad destination type during conversion: 0x%X\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Unknown Target type ID 0x%X AmlOpcode 0x%X DestType %s\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %result_desc, i32 %implicit_conversion) #0 !dbg !33 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object**, align 8
  %implicit_conversion.addr = alloca i32, align 4
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %pointer = alloca i8*, align 8
  %result = alloca i64, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store %union.acpi_operand_object** %result_desc, %union.acpi_operand_object*** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %result_desc.addr, metadata !795, metadata !DIExpression()), !dbg !796
  store i32 %implicit_conversion, i32* %implicit_conversion.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %implicit_conversion.addr, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata i8** %pointer, metadata !801, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.declare(metadata i64* %result, metadata !803, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.declare(metadata i32* %i, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata i32* %count, metadata !807, metadata !DIExpression()), !dbg !808
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !809
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !810
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !811
  %1 = load i8, i8* %type, align 1, !dbg !811
  %conv = zext i8 %1 to i32, !dbg !809
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb1
  ], !dbg !812

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !813
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !815
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %3, align 8, !dbg !816
  store i32 0, i32* %retval, align 4, !dbg !817
  br label %return, !dbg !817

sw.bb1:                                           ; preds = %entry, %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !818
  %buffer = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_buffer*, !dbg !819
  %pointer2 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !820
  %5 = load i8*, i8** %pointer2, align 8, !dbg !820
  store i8* %5, i8** %pointer, align 8, !dbg !821
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !822
  %buffer3 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_buffer*, !dbg !823
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer3, i32 0, i32 6, !dbg !824
  %7 = load i32, i32* %length, align 8, !dbg !824
  store i32 %7, i32* %count, align 4, !dbg !825
  br label %sw.epilog, !dbg !826

sw.default:                                       ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

sw.epilog:                                        ; preds = %sw.bb1
  store i64 0, i64* %result, align 8, !dbg !828
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !829
  %common4 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !830
  %type5 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 2, !dbg !831
  %9 = load i8, i8* %type5, align 1, !dbg !831
  %conv6 = zext i8 %9 to i32, !dbg !829
  switch i32 %conv6, label %sw.default21 [
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
  ], !dbg !832

sw.bb7:                                           ; preds = %sw.epilog
  %10 = load i32, i32* %implicit_conversion.addr, align 4, !dbg !833
  %tobool = icmp ne i32 %10, 0, !dbg !833
  br i1 %tobool, label %if.then, label %if.else, !dbg !836

if.then:                                          ; preds = %sw.bb7
  %11 = load i8*, i8** %pointer, align 8, !dbg !837
  %call = call i64 @acpi_ut_implicit_strtoul64(i8* %11) #4, !dbg !839
  store i64 %call, i64* %result, align 8, !dbg !840
  br label %if.end, !dbg !841

if.else:                                          ; preds = %sw.bb7
  %12 = load i8*, i8** %pointer, align 8, !dbg !842
  %call8 = call i64 @acpi_ut_explicit_strtoul64(i8* %12) #4, !dbg !844
  store i64 %call8, i64* %result, align 8, !dbg !845
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog22, !dbg !846

sw.bb9:                                           ; preds = %sw.epilog
  %13 = load i32, i32* %count, align 4, !dbg !847
  %tobool10 = icmp ne i32 %13, 0, !dbg !847
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !849

if.then11:                                        ; preds = %sw.bb9
  store i32 12298, i32* %retval, align 4, !dbg !850
  br label %return, !dbg !850

if.end12:                                         ; preds = %sw.bb9
  %14 = load i32, i32* %count, align 4, !dbg !852
  %15 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !854
  %conv13 = zext i8 %15 to i32, !dbg !854
  %cmp = icmp ugt i32 %14, %conv13, !dbg !855
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !856

if.then15:                                        ; preds = %if.end12
  %16 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !857
  %conv16 = zext i8 %16 to i32, !dbg !857
  store i32 %conv16, i32* %count, align 4, !dbg !859
  br label %if.end17, !dbg !860

if.end17:                                         ; preds = %if.then15, %if.end12
  store i32 0, i32* %i, align 4, !dbg !861
  br label %for.cond, !dbg !863

for.cond:                                         ; preds = %for.inc, %if.end17
  %17 = load i32, i32* %i, align 4, !dbg !864
  %18 = load i32, i32* %count, align 4, !dbg !866
  %cmp18 = icmp ult i32 %17, %18, !dbg !867
  br i1 %cmp18, label %for.body, label %for.end, !dbg !868

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %pointer, align 8, !dbg !869
  %20 = load i32, i32* %i, align 4, !dbg !871
  %idxprom = zext i32 %20 to i64, !dbg !869
  %arrayidx = getelementptr i8, i8* %19, i64 %idxprom, !dbg !869
  %21 = load i8, i8* %arrayidx, align 1, !dbg !869
  %conv20 = zext i8 %21 to i64, !dbg !872
  %22 = load i32, i32* %i, align 4, !dbg !873
  %mul = mul i32 %22, 8, !dbg !874
  %sh_prom = zext i32 %mul to i64, !dbg !875
  %shl = shl i64 %conv20, %sh_prom, !dbg !875
  %23 = load i64, i64* %result, align 8, !dbg !876
  %or = or i64 %23, %shl, !dbg !876
  store i64 %or, i64* %result, align 8, !dbg !876
  br label %for.inc, !dbg !877

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !dbg !878
  %inc = add i32 %24, 1, !dbg !878
  store i32 %inc, i32* %i, align 4, !dbg !878
  br label %for.cond, !dbg !879, !llvm.loop !880

for.end:                                          ; preds = %for.cond
  br label %sw.epilog22, !dbg !882

sw.default21:                                     ; preds = %sw.epilog
  br label %sw.epilog22, !dbg !883

sw.epilog22:                                      ; preds = %sw.default21, %for.end, %if.end
  %25 = load i64, i64* %result, align 8, !dbg !884
  %call23 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i64 %25) #4, !dbg !885
  store %union.acpi_operand_object* %call23, %union.acpi_operand_object** %return_desc, align 8, !dbg !886
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !887
  %tobool24 = icmp ne %union.acpi_operand_object* %26, null, !dbg !887
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !889

if.then25:                                        ; preds = %sw.epilog22
  store i32 4, i32* %retval, align 4, !dbg !890
  br label %return, !dbg !890

if.end26:                                         ; preds = %sw.epilog22
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !892
  %call27 = call zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %27) #4, !dbg !893
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !894
  %29 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !895
  store %union.acpi_operand_object* %28, %union.acpi_operand_object** %29, align 8, !dbg !896
  store i32 0, i32* %retval, align 4, !dbg !897
  br label %return, !dbg !897

return:                                           ; preds = %if.end26, %if.then25, %if.then11, %sw.default, %sw.bb
  %30 = load i32, i32* %retval, align 4, !dbg !898
  ret i32 %30, !dbg !898
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @acpi_ut_implicit_strtoul64(i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @acpi_ut_explicit_strtoul64(i8*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i64) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %result_desc) #0 !dbg !899 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %new_buf = alloca i8*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store %union.acpi_operand_object** %result_desc, %union.acpi_operand_object*** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %result_desc.addr, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata i8** %new_buf, metadata !908, metadata !DIExpression()), !dbg !909
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !910
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !911
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !912
  %1 = load i8, i8* %type, align 1, !dbg !912
  %conv = zext i8 %1 to i32, !dbg !910
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !913

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !914
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !916
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %3, align 8, !dbg !917
  store i32 0, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

sw.bb1:                                           ; preds = %entry
  %4 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !919
  %conv2 = zext i8 %4 to i64, !dbg !919
  %call = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv2) #4, !dbg !920
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !921
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !922
  %tobool = icmp ne %union.acpi_operand_object* %5, null, !dbg !922
  br i1 %tobool, label %if.end, label %if.then, !dbg !924

if.then:                                          ; preds = %sw.bb1
  store i32 4, i32* %retval, align 4, !dbg !925
  br label %return, !dbg !925

if.end:                                           ; preds = %sw.bb1
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !927
  %buffer = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_buffer*, !dbg !928
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !929
  %7 = load i8*, i8** %pointer, align 8, !dbg !929
  store i8* %7, i8** %new_buf, align 8, !dbg !930
  %8 = load i8*, i8** %new_buf, align 8, !dbg !931
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !932
  %integer = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_integer*, !dbg !933
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !934
  %10 = bitcast i64* %value to i8*, !dbg !935
  %11 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !936
  %conv3 = zext i8 %11 to i64, !dbg !936
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 8 %10, i64 %conv3, i1 false), !dbg !935
  br label %sw.epilog, !dbg !937

sw.bb4:                                           ; preds = %entry
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !938
  %string = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_string*, !dbg !939
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !940
  %13 = load i32, i32* %length, align 8, !dbg !940
  %conv5 = zext i32 %13 to i64, !dbg !941
  %add = add i64 %conv5, 1, !dbg !942
  %call6 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %add) #4, !dbg !943
  store %union.acpi_operand_object* %call6, %union.acpi_operand_object** %return_desc, align 8, !dbg !944
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !945
  %tobool7 = icmp ne %union.acpi_operand_object* %14, null, !dbg !945
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !947

if.then8:                                         ; preds = %sw.bb4
  store i32 4, i32* %retval, align 4, !dbg !948
  br label %return, !dbg !948

if.end9:                                          ; preds = %sw.bb4
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !950
  %buffer10 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_buffer*, !dbg !951
  %pointer11 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer10, i32 0, i32 5, !dbg !952
  %16 = load i8*, i8** %pointer11, align 8, !dbg !952
  store i8* %16, i8** %new_buf, align 8, !dbg !953
  %17 = load i8*, i8** %new_buf, align 8, !dbg !954
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !955
  %string12 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_string*, !dbg !956
  %pointer13 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string12, i32 0, i32 5, !dbg !957
  %19 = load i8*, i8** %pointer13, align 8, !dbg !957
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !958
  %string14 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_string*, !dbg !959
  %length15 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string14, i32 0, i32 6, !dbg !960
  %21 = load i32, i32* %length15, align 8, !dbg !960
  %conv16 = zext i32 %21 to i64, !dbg !958
  %call17 = call i8* @strncpy(i8* %17, i8* %19, i64 %conv16) #4, !dbg !961
  br label %sw.epilog, !dbg !962

sw.default:                                       ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !963
  br label %return, !dbg !963

sw.epilog:                                        ; preds = %if.end9, %if.end
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !964
  %common18 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_common*, !dbg !965
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common18, i32 0, i32 4, !dbg !966
  %23 = load i8, i8* %flags, align 4, !dbg !967
  %conv19 = zext i8 %23 to i32, !dbg !967
  %or = or i32 %conv19, 4, !dbg !967
  %conv20 = trunc i32 %or to i8, !dbg !967
  store i8 %conv20, i8* %flags, align 4, !dbg !967
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !968
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !969
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %25, align 8, !dbg !970
  store i32 0, i32* %retval, align 4, !dbg !971
  br label %return, !dbg !971

return:                                           ; preds = %sw.epilog, %sw.default, %if.then8, %if.then, %sw.bb
  %26 = load i32, i32* %retval, align 4, !dbg !972
  ret i32 %26, !dbg !972
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %result_desc, i32 %type) #0 !dbg !973 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object**, align 8
  %type.addr = alloca i32, align 4
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %new_buf = alloca i8*, align 8
  %i = alloca i32, align 4
  %string_length = alloca i32, align 4
  %base = alloca i16, align 2
  %separator = alloca i8, align 1
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !974, metadata !DIExpression()), !dbg !975
  store %union.acpi_operand_object** %result_desc, %union.acpi_operand_object*** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %result_desc.addr, metadata !976, metadata !DIExpression()), !dbg !977
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !980, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.declare(metadata i8** %new_buf, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata i32* %i, metadata !984, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata i32* %string_length, metadata !986, metadata !DIExpression()), !dbg !987
  store i32 0, i32* %string_length, align 4, !dbg !987
  call void @llvm.dbg.declare(metadata i16* %base, metadata !988, metadata !DIExpression()), !dbg !989
  store i16 16, i16* %base, align 2, !dbg !989
  call void @llvm.dbg.declare(metadata i8* %separator, metadata !990, metadata !DIExpression()), !dbg !991
  store i8 44, i8* %separator, align 1, !dbg !991
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !992
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !993
  %type1 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !994
  %1 = load i8, i8* %type1, align 1, !dbg !994
  %conv = zext i8 %1 to i32, !dbg !992
  switch i32 %conv, label %sw.default80 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb7
  ], !dbg !995

sw.bb:                                            ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !996
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !998
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %3, align 8, !dbg !999
  store i32 0, i32* %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

sw.bb2:                                           ; preds = %entry
  %4 = load i32, i32* %type.addr, align 4, !dbg !1001
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb3
  ], !dbg !1002

sw.bb3:                                           ; preds = %sw.bb2
  store i32 20, i32* %string_length, align 4, !dbg !1003
  store i16 10, i16* %base, align 2, !dbg !1005
  br label %sw.epilog, !dbg !1006

sw.default:                                       ; preds = %sw.bb2
  %5 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !1007
  %conv4 = zext i8 %5 to i32, !dbg !1007
  %shl = shl i32 %conv4, 1, !dbg !1007
  store i32 %shl, i32* %string_length, align 4, !dbg !1008
  br label %sw.epilog, !dbg !1009

sw.epilog:                                        ; preds = %sw.default, %sw.bb3
  %6 = load i32, i32* %string_length, align 4, !dbg !1010
  %conv5 = zext i32 %6 to i64, !dbg !1011
  %call = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %conv5) #4, !dbg !1012
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %return_desc, align 8, !dbg !1013
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1014
  %tobool = icmp ne %union.acpi_operand_object* %7, null, !dbg !1014
  br i1 %tobool, label %if.end, label %if.then, !dbg !1016

if.then:                                          ; preds = %sw.epilog
  store i32 4, i32* %retval, align 4, !dbg !1017
  br label %return, !dbg !1017

if.end:                                           ; preds = %sw.epilog
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1019
  %buffer = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_buffer*, !dbg !1020
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1021
  %9 = load i8*, i8** %pointer, align 8, !dbg !1021
  store i8* %9, i8** %new_buf, align 8, !dbg !1022
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1023
  %integer = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_integer*, !dbg !1024
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1025
  %11 = load i64, i64* %value, align 8, !dbg !1025
  %12 = load i16, i16* %base, align 2, !dbg !1026
  %13 = load i8*, i8** %new_buf, align 8, !dbg !1027
  %14 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !1028
  %call6 = call i32 @acpi_ex_convert_to_ascii(i64 %11, i16 zeroext %12, i8* %13, i8 zeroext %14) #4, !dbg !1029
  store i32 %call6, i32* %string_length, align 4, !dbg !1030
  %15 = load i32, i32* %string_length, align 4, !dbg !1031
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1032
  %string = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_string*, !dbg !1033
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !1034
  store i32 %15, i32* %length, align 8, !dbg !1035
  %17 = load i8*, i8** %new_buf, align 8, !dbg !1036
  %18 = load i32, i32* %string_length, align 4, !dbg !1037
  %idxprom = zext i32 %18 to i64, !dbg !1036
  %arrayidx = getelementptr i8, i8* %17, i64 %idxprom, !dbg !1036
  store i8 0, i8* %arrayidx, align 1, !dbg !1038
  br label %sw.epilog81, !dbg !1039

sw.bb7:                                           ; preds = %entry
  %19 = load i32, i32* %type.addr, align 4, !dbg !1040
  switch i32 %19, label %sw.default40 [
    i32 3, label %sw.bb8
    i32 2, label %sw.bb33
    i32 1, label %sw.bb36
  ], !dbg !1041

sw.bb8:                                           ; preds = %sw.bb7
  store i16 10, i16* %base, align 2, !dbg !1042
  store i32 0, i32* %i, align 4, !dbg !1044
  br label %for.cond, !dbg !1046

for.cond:                                         ; preds = %for.inc, %sw.bb8
  %20 = load i32, i32* %i, align 4, !dbg !1047
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1049
  %buffer9 = bitcast %union.acpi_operand_object* %21 to %struct.acpi_object_buffer*, !dbg !1050
  %length10 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer9, i32 0, i32 6, !dbg !1051
  %22 = load i32, i32* %length10, align 8, !dbg !1051
  %cmp = icmp ult i32 %20, %22, !dbg !1052
  br i1 %cmp, label %for.body, label %for.end, !dbg !1053

for.body:                                         ; preds = %for.cond
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1054
  %buffer12 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_buffer*, !dbg !1057
  %pointer13 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer12, i32 0, i32 5, !dbg !1058
  %24 = load i8*, i8** %pointer13, align 8, !dbg !1058
  %25 = load i32, i32* %i, align 4, !dbg !1059
  %idxprom14 = zext i32 %25 to i64, !dbg !1054
  %arrayidx15 = getelementptr i8, i8* %24, i64 %idxprom14, !dbg !1054
  %26 = load i8, i8* %arrayidx15, align 1, !dbg !1054
  %conv16 = zext i8 %26 to i32, !dbg !1054
  %cmp17 = icmp sge i32 %conv16, 100, !dbg !1060
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !1061

if.then19:                                        ; preds = %for.body
  %27 = load i32, i32* %string_length, align 4, !dbg !1062
  %add = add i32 %27, 4, !dbg !1062
  store i32 %add, i32* %string_length, align 4, !dbg !1062
  br label %if.end32, !dbg !1064

if.else:                                          ; preds = %for.body
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1065
  %buffer20 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_buffer*, !dbg !1067
  %pointer21 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer20, i32 0, i32 5, !dbg !1068
  %29 = load i8*, i8** %pointer21, align 8, !dbg !1068
  %30 = load i32, i32* %i, align 4, !dbg !1069
  %idxprom22 = zext i32 %30 to i64, !dbg !1065
  %arrayidx23 = getelementptr i8, i8* %29, i64 %idxprom22, !dbg !1065
  %31 = load i8, i8* %arrayidx23, align 1, !dbg !1065
  %conv24 = zext i8 %31 to i32, !dbg !1065
  %cmp25 = icmp sge i32 %conv24, 10, !dbg !1070
  br i1 %cmp25, label %if.then27, label %if.else29, !dbg !1071

if.then27:                                        ; preds = %if.else
  %32 = load i32, i32* %string_length, align 4, !dbg !1072
  %add28 = add i32 %32, 3, !dbg !1072
  store i32 %add28, i32* %string_length, align 4, !dbg !1072
  br label %if.end31, !dbg !1074

if.else29:                                        ; preds = %if.else
  %33 = load i32, i32* %string_length, align 4, !dbg !1075
  %add30 = add i32 %33, 2, !dbg !1075
  store i32 %add30, i32* %string_length, align 4, !dbg !1075
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  br label %for.inc, !dbg !1077

for.inc:                                          ; preds = %if.end32
  %34 = load i32, i32* %i, align 4, !dbg !1078
  %inc = add i32 %34, 1, !dbg !1078
  store i32 %inc, i32* %i, align 4, !dbg !1078
  br label %for.cond, !dbg !1079, !llvm.loop !1080

for.end:                                          ; preds = %for.cond
  br label %sw.epilog41, !dbg !1082

sw.bb33:                                          ; preds = %sw.bb7
  store i8 32, i8* %separator, align 1, !dbg !1083
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1084
  %buffer34 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_buffer*, !dbg !1085
  %length35 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer34, i32 0, i32 6, !dbg !1086
  %36 = load i32, i32* %length35, align 8, !dbg !1086
  %mul = mul i32 %36, 5, !dbg !1087
  store i32 %mul, i32* %string_length, align 4, !dbg !1088
  br label %sw.epilog41, !dbg !1089

sw.bb36:                                          ; preds = %sw.bb7
  store i8 44, i8* %separator, align 1, !dbg !1090
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1091
  %buffer37 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_buffer*, !dbg !1092
  %length38 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer37, i32 0, i32 6, !dbg !1093
  %38 = load i32, i32* %length38, align 8, !dbg !1093
  %mul39 = mul i32 %38, 5, !dbg !1094
  store i32 %mul39, i32* %string_length, align 4, !dbg !1095
  br label %sw.epilog41, !dbg !1096

sw.default40:                                     ; preds = %sw.bb7
  store i32 4097, i32* %retval, align 4, !dbg !1097
  br label %return, !dbg !1097

sw.epilog41:                                      ; preds = %sw.bb36, %sw.bb33, %for.end
  %39 = load i32, i32* %string_length, align 4, !dbg !1098
  %tobool42 = icmp ne i32 %39, 0, !dbg !1098
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1100

if.then43:                                        ; preds = %sw.epilog41
  %40 = load i32, i32* %string_length, align 4, !dbg !1101
  %dec = add i32 %40, -1, !dbg !1101
  store i32 %dec, i32* %string_length, align 4, !dbg !1101
  br label %if.end44, !dbg !1103

if.end44:                                         ; preds = %if.then43, %sw.epilog41
  %41 = load i32, i32* %string_length, align 4, !dbg !1104
  %conv45 = zext i32 %41 to i64, !dbg !1105
  %call46 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %conv45) #4, !dbg !1106
  store %union.acpi_operand_object* %call46, %union.acpi_operand_object** %return_desc, align 8, !dbg !1107
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1108
  %tobool47 = icmp ne %union.acpi_operand_object* %42, null, !dbg !1108
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !1110

if.then48:                                        ; preds = %if.end44
  store i32 4, i32* %retval, align 4, !dbg !1111
  br label %return, !dbg !1111

if.end49:                                         ; preds = %if.end44
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1113
  %buffer50 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_buffer*, !dbg !1114
  %pointer51 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer50, i32 0, i32 5, !dbg !1115
  %44 = load i8*, i8** %pointer51, align 8, !dbg !1115
  store i8* %44, i8** %new_buf, align 8, !dbg !1116
  store i32 0, i32* %i, align 4, !dbg !1117
  br label %for.cond52, !dbg !1119

for.cond52:                                       ; preds = %for.inc71, %if.end49
  %45 = load i32, i32* %i, align 4, !dbg !1120
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1122
  %buffer53 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_buffer*, !dbg !1123
  %length54 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer53, i32 0, i32 6, !dbg !1124
  %47 = load i32, i32* %length54, align 8, !dbg !1124
  %cmp55 = icmp ult i32 %45, %47, !dbg !1125
  br i1 %cmp55, label %for.body57, label %for.end73, !dbg !1126

for.body57:                                       ; preds = %for.cond52
  %48 = load i16, i16* %base, align 2, !dbg !1127
  %conv58 = zext i16 %48 to i32, !dbg !1127
  %cmp59 = icmp eq i32 %conv58, 16, !dbg !1130
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !1131

if.then61:                                        ; preds = %for.body57
  %49 = load i8*, i8** %new_buf, align 8, !dbg !1132
  %incdec.ptr = getelementptr i8, i8* %49, i32 1, !dbg !1132
  store i8* %incdec.ptr, i8** %new_buf, align 8, !dbg !1132
  store i8 48, i8* %49, align 1, !dbg !1134
  %50 = load i8*, i8** %new_buf, align 8, !dbg !1135
  %incdec.ptr62 = getelementptr i8, i8* %50, i32 1, !dbg !1135
  store i8* %incdec.ptr62, i8** %new_buf, align 8, !dbg !1135
  store i8 120, i8* %50, align 1, !dbg !1136
  br label %if.end63, !dbg !1137

if.end63:                                         ; preds = %if.then61, %for.body57
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1138
  %buffer64 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_buffer*, !dbg !1139
  %pointer65 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer64, i32 0, i32 5, !dbg !1140
  %52 = load i8*, i8** %pointer65, align 8, !dbg !1140
  %53 = load i32, i32* %i, align 4, !dbg !1141
  %idxprom66 = zext i32 %53 to i64, !dbg !1138
  %arrayidx67 = getelementptr i8, i8* %52, i64 %idxprom66, !dbg !1138
  %54 = load i8, i8* %arrayidx67, align 1, !dbg !1138
  %conv68 = zext i8 %54 to i64, !dbg !1142
  %55 = load i16, i16* %base, align 2, !dbg !1143
  %56 = load i8*, i8** %new_buf, align 8, !dbg !1144
  %call69 = call i32 @acpi_ex_convert_to_ascii(i64 %conv68, i16 zeroext %55, i8* %56, i8 zeroext 1) #4, !dbg !1145
  %57 = load i8*, i8** %new_buf, align 8, !dbg !1146
  %idx.ext = zext i32 %call69 to i64, !dbg !1146
  %add.ptr = getelementptr i8, i8* %57, i64 %idx.ext, !dbg !1146
  store i8* %add.ptr, i8** %new_buf, align 8, !dbg !1146
  %58 = load i8, i8* %separator, align 1, !dbg !1147
  %59 = load i8*, i8** %new_buf, align 8, !dbg !1148
  %incdec.ptr70 = getelementptr i8, i8* %59, i32 1, !dbg !1148
  store i8* %incdec.ptr70, i8** %new_buf, align 8, !dbg !1148
  store i8 %58, i8* %59, align 1, !dbg !1149
  br label %for.inc71, !dbg !1150

for.inc71:                                        ; preds = %if.end63
  %60 = load i32, i32* %i, align 4, !dbg !1151
  %inc72 = add i32 %60, 1, !dbg !1151
  store i32 %inc72, i32* %i, align 4, !dbg !1151
  br label %for.cond52, !dbg !1152, !llvm.loop !1153

for.end73:                                        ; preds = %for.cond52
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1155
  %buffer74 = bitcast %union.acpi_operand_object* %61 to %struct.acpi_object_buffer*, !dbg !1157
  %length75 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer74, i32 0, i32 6, !dbg !1158
  %62 = load i32, i32* %length75, align 8, !dbg !1158
  %tobool76 = icmp ne i32 %62, 0, !dbg !1155
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !1159

if.then77:                                        ; preds = %for.end73
  %63 = load i8*, i8** %new_buf, align 8, !dbg !1160
  %incdec.ptr78 = getelementptr i8, i8* %63, i32 -1, !dbg !1160
  store i8* %incdec.ptr78, i8** %new_buf, align 8, !dbg !1160
  br label %if.end79, !dbg !1162

if.end79:                                         ; preds = %if.then77, %for.end73
  %64 = load i8*, i8** %new_buf, align 8, !dbg !1163
  store i8 0, i8* %64, align 1, !dbg !1164
  br label %sw.epilog81, !dbg !1165

sw.default80:                                     ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

sw.epilog81:                                      ; preds = %if.end79, %if.end
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1167
  %66 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1168
  store %union.acpi_operand_object* %65, %union.acpi_operand_object** %66, align 8, !dbg !1169
  store i32 0, i32* %retval, align 4, !dbg !1170
  br label %return, !dbg !1170

return:                                           ; preds = %sw.epilog81, %sw.default80, %if.then48, %sw.default40, %if.then, %sw.bb
  %67 = load i32, i32* %retval, align 4, !dbg !1171
  ret i32 %67, !dbg !1171
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_convert_to_ascii(i64 %integer, i16 zeroext %base, i8* %string, i8 zeroext %data_width) #0 !dbg !1172 {
entry:
  %retval = alloca i32, align 4
  %integer.addr = alloca i64, align 8
  %base.addr = alloca i16, align 2
  %string.addr = alloca i8*, align 8
  %data_width.addr = alloca i8, align 1
  %digit = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %hex_length = alloca i32, align 4
  %decimal_length = alloca i32, align 4
  %remainder = alloca i32, align 4
  %supress_zeros = alloca i8, align 1
  store i64 %integer, i64* %integer.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %integer.addr, metadata !1175, metadata !DIExpression()), !dbg !1176
  store i16 %base, i16* %base.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %base.addr, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !1179, metadata !DIExpression()), !dbg !1180
  store i8 %data_width, i8* %data_width.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data_width.addr, metadata !1181, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata i64* %digit, metadata !1183, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata i32* %k, metadata !1189, metadata !DIExpression()), !dbg !1190
  store i32 0, i32* %k, align 4, !dbg !1190
  call void @llvm.dbg.declare(metadata i32* %hex_length, metadata !1191, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.declare(metadata i32* %decimal_length, metadata !1193, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.declare(metadata i8* %supress_zeros, metadata !1197, metadata !DIExpression()), !dbg !1198
  %0 = load i16, i16* %base.addr, align 2, !dbg !1199
  %conv = zext i16 %0 to i32, !dbg !1199
  switch i32 %conv, label %sw.default32 [
    i32 10, label %sw.bb
    i32 16, label %sw.bb18
  ], !dbg !1200

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* %data_width.addr, align 1, !dbg !1201
  %conv1 = zext i8 %1 to i32, !dbg !1201
  switch i32 %conv1, label %sw.default [
    i32 1, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
  ], !dbg !1203

sw.bb2:                                           ; preds = %sw.bb
  store i32 3, i32* %decimal_length, align 4, !dbg !1204
  br label %sw.epilog, !dbg !1206

sw.bb3:                                           ; preds = %sw.bb
  store i32 10, i32* %decimal_length, align 4, !dbg !1207
  br label %sw.epilog, !dbg !1208

sw.bb4:                                           ; preds = %sw.bb
  br label %sw.default, !dbg !1208

sw.default:                                       ; preds = %sw.bb, %sw.bb4
  store i32 20, i32* %decimal_length, align 4, !dbg !1209
  br label %sw.epilog, !dbg !1210

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2
  store i8 1, i8* %supress_zeros, align 1, !dbg !1211
  store i32 0, i32* %remainder, align 4, !dbg !1212
  %2 = load i32, i32* %decimal_length, align 4, !dbg !1213
  store i32 %2, i32* %i, align 4, !dbg !1215
  br label %for.cond, !dbg !1216

for.cond:                                         ; preds = %for.inc16, %sw.epilog
  %3 = load i32, i32* %i, align 4, !dbg !1217
  %cmp = icmp ugt i32 %3, 0, !dbg !1219
  br i1 %cmp, label %for.body, label %for.end17, !dbg !1220

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %integer.addr, align 8, !dbg !1221
  store i64 %4, i64* %digit, align 8, !dbg !1223
  store i32 0, i32* %j, align 4, !dbg !1224
  br label %for.cond6, !dbg !1226

for.cond6:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4, !dbg !1227
  %6 = load i32, i32* %i, align 4, !dbg !1229
  %cmp7 = icmp ult i32 %5, %6, !dbg !1230
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !1231

for.body9:                                        ; preds = %for.cond6
  %7 = load i64, i64* %digit, align 8, !dbg !1232
  %call = call i32 @acpi_ut_short_divide(i64 %7, i32 10, i64* %digit, i32* %remainder) #4, !dbg !1234
  br label %for.inc, !dbg !1235

for.inc:                                          ; preds = %for.body9
  %8 = load i32, i32* %j, align 4, !dbg !1236
  %inc = add i32 %8, 1, !dbg !1236
  store i32 %inc, i32* %j, align 4, !dbg !1236
  br label %for.cond6, !dbg !1237, !llvm.loop !1238

for.end:                                          ; preds = %for.cond6
  %9 = load i32, i32* %remainder, align 4, !dbg !1240
  %cmp10 = icmp ne i32 %9, 0, !dbg !1242
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1243

if.then:                                          ; preds = %for.end
  store i8 0, i8* %supress_zeros, align 1, !dbg !1244
  br label %if.end, !dbg !1246

if.end:                                           ; preds = %if.then, %for.end
  %10 = load i8, i8* %supress_zeros, align 1, !dbg !1247
  %tobool = icmp ne i8 %10, 0, !dbg !1247
  br i1 %tobool, label %if.end15, label %if.then12, !dbg !1249

if.then12:                                        ; preds = %if.end
  %11 = load i32, i32* %remainder, align 4, !dbg !1250
  %add = add i32 48, %11, !dbg !1252
  %conv13 = trunc i32 %add to i8, !dbg !1253
  %12 = load i8*, i8** %string.addr, align 8, !dbg !1254
  %13 = load i32, i32* %k, align 4, !dbg !1255
  %idxprom = zext i32 %13 to i64, !dbg !1254
  %arrayidx = getelementptr i8, i8* %12, i64 %idxprom, !dbg !1254
  store i8 %conv13, i8* %arrayidx, align 1, !dbg !1256
  %14 = load i32, i32* %k, align 4, !dbg !1257
  %inc14 = add i32 %14, 1, !dbg !1257
  store i32 %inc14, i32* %k, align 4, !dbg !1257
  br label %if.end15, !dbg !1258

if.end15:                                         ; preds = %if.then12, %if.end
  br label %for.inc16, !dbg !1259

for.inc16:                                        ; preds = %if.end15
  %15 = load i32, i32* %i, align 4, !dbg !1260
  %dec = add i32 %15, -1, !dbg !1260
  store i32 %dec, i32* %i, align 4, !dbg !1260
  br label %for.cond, !dbg !1261, !llvm.loop !1262

for.end17:                                        ; preds = %for.cond
  br label %sw.epilog33, !dbg !1264

sw.bb18:                                          ; preds = %entry
  %16 = load i8, i8* %data_width.addr, align 1, !dbg !1265
  %conv19 = zext i8 %16 to i32, !dbg !1265
  %mul = mul i32 %conv19, 2, !dbg !1266
  store i32 %mul, i32* %hex_length, align 4, !dbg !1267
  store i32 0, i32* %i, align 4, !dbg !1268
  %17 = load i32, i32* %hex_length, align 4, !dbg !1270
  %sub = sub i32 %17, 1, !dbg !1271
  store i32 %sub, i32* %j, align 4, !dbg !1272
  br label %for.cond20, !dbg !1273

for.cond20:                                       ; preds = %for.inc28, %sw.bb18
  %18 = load i32, i32* %i, align 4, !dbg !1274
  %19 = load i32, i32* %hex_length, align 4, !dbg !1276
  %cmp21 = icmp ult i32 %18, %19, !dbg !1277
  br i1 %cmp21, label %for.body23, label %for.end31, !dbg !1278

for.body23:                                       ; preds = %for.cond20
  %20 = load i64, i64* %integer.addr, align 8, !dbg !1279
  %21 = load i32, i32* %j, align 4, !dbg !1281
  %shl = shl i32 %21, 2, !dbg !1281
  %call24 = call signext i8 @acpi_ut_hex_to_ascii_char(i64 %20, i32 %shl) #4, !dbg !1282
  %22 = load i8*, i8** %string.addr, align 8, !dbg !1283
  %23 = load i32, i32* %k, align 4, !dbg !1284
  %idxprom25 = zext i32 %23 to i64, !dbg !1283
  %arrayidx26 = getelementptr i8, i8* %22, i64 %idxprom25, !dbg !1283
  store i8 %call24, i8* %arrayidx26, align 1, !dbg !1285
  %24 = load i32, i32* %k, align 4, !dbg !1286
  %inc27 = add i32 %24, 1, !dbg !1286
  store i32 %inc27, i32* %k, align 4, !dbg !1286
  br label %for.inc28, !dbg !1287

for.inc28:                                        ; preds = %for.body23
  %25 = load i32, i32* %i, align 4, !dbg !1288
  %inc29 = add i32 %25, 1, !dbg !1288
  store i32 %inc29, i32* %i, align 4, !dbg !1288
  %26 = load i32, i32* %j, align 4, !dbg !1289
  %dec30 = add i32 %26, -1, !dbg !1289
  store i32 %dec30, i32* %j, align 4, !dbg !1289
  br label %for.cond20, !dbg !1290, !llvm.loop !1291

for.end31:                                        ; preds = %for.cond20
  br label %sw.epilog33, !dbg !1293

sw.default32:                                     ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1294
  br label %return, !dbg !1294

sw.epilog33:                                      ; preds = %for.end31, %for.end17
  %27 = load i32, i32* %k, align 4, !dbg !1295
  %tobool34 = icmp ne i32 %27, 0, !dbg !1295
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !1297

if.then35:                                        ; preds = %sw.epilog33
  %28 = load i8*, i8** %string.addr, align 8, !dbg !1298
  %arrayidx36 = getelementptr i8, i8* %28, i64 0, !dbg !1298
  store i8 48, i8* %arrayidx36, align 1, !dbg !1300
  store i32 1, i32* %k, align 4, !dbg !1301
  br label %if.end37, !dbg !1302

if.end37:                                         ; preds = %if.then35, %sw.epilog33
  %29 = load i8*, i8** %string.addr, align 8, !dbg !1303
  %30 = load i32, i32* %k, align 4, !dbg !1304
  %idxprom38 = zext i32 %30 to i64, !dbg !1303
  %arrayidx39 = getelementptr i8, i8* %29, i64 %idxprom38, !dbg !1303
  store i8 0, i8* %arrayidx39, align 1, !dbg !1305
  %31 = load i32, i32* %k, align 4, !dbg !1306
  store i32 %31, i32* %retval, align 4, !dbg !1307
  br label %return, !dbg !1307

return:                                           ; preds = %if.end37, %sw.default32
  %32 = load i32, i32* %retval, align 4, !dbg !1308
  ret i32 %32, !dbg !1308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_convert_to_target_type(i32 %destination_type, %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %result_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1309 {
entry:
  %destination_type.addr = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  store i32 %destination_type, i32* %destination_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %destination_type.addr, metadata !1313, metadata !DIExpression()), !dbg !1314
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !1315, metadata !DIExpression()), !dbg !1316
  store %union.acpi_operand_object** %result_desc, %union.acpi_operand_object*** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %result_desc.addr, metadata !1317, metadata !DIExpression()), !dbg !1318
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1319, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i32 0, i32* %status, align 4, !dbg !1322
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1323
  %1 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1324
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %1, align 8, !dbg !1325
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1326
  %op_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 41, !dbg !1326
  %3 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info, align 8, !dbg !1326
  %runtime_args = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %3, i32 0, i32 1, !dbg !1326
  %4 = load i32, i32* %runtime_args, align 4, !dbg !1326
  %and = and i32 %4, 31, !dbg !1326
  switch i32 %and, label %sw.default12 [
    i32 17, label %sw.bb
    i32 16, label %sw.bb
    i32 11, label %sw.bb
    i32 15, label %sw.bb3
    i32 18, label %sw.bb3
    i32 14, label %sw.bb11
  ], !dbg !1327

sw.bb:                                            ; preds = %entry, %entry, %entry
  %5 = load i32, i32* %destination_type.addr, align 4, !dbg !1328
  switch i32 %5, label %sw.default [
    i32 17, label %sw.bb1
  ], !dbg !1330

sw.bb1:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1331

sw.default:                                       ; preds = %sw.bb
  %6 = load i32, i32* %destination_type.addr, align 4, !dbg !1333
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1335
  %common = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_common*, !dbg !1336
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1337
  %8 = load i8, i8* %type, align 1, !dbg !1337
  %conv = zext i8 %8 to i32, !dbg !1335
  %cmp = icmp ne i32 %6, %conv, !dbg !1338
  br i1 %cmp, label %if.then, label %if.end, !dbg !1339

if.then:                                          ; preds = %sw.default
  store i32 8, i32* %status, align 4, !dbg !1340
  br label %if.end, !dbg !1342

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog, !dbg !1343

sw.epilog:                                        ; preds = %if.end, %sw.bb1
  br label %sw.epilog18, !dbg !1344

sw.bb3:                                           ; preds = %entry, %entry
  %9 = load i32, i32* %destination_type.addr, align 4, !dbg !1345
  switch i32 %9, label %sw.default9 [
    i32 1, label %sw.bb4
    i32 14, label %sw.bb4
    i32 18, label %sw.bb4
    i32 19, label %sw.bb4
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ], !dbg !1346

sw.bb4:                                           ; preds = %sw.bb3, %sw.bb3, %sw.bb3, %sw.bb3
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1347
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1349
  %call = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %10, %union.acpi_operand_object** %11, i32 1) #4, !dbg !1350
  store i32 %call, i32* %status, align 4, !dbg !1351
  br label %sw.epilog10, !dbg !1352

sw.bb5:                                           ; preds = %sw.bb3
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1353
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1354
  %call6 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %12, %union.acpi_operand_object** %13, i32 2) #4, !dbg !1355
  store i32 %call6, i32* %status, align 4, !dbg !1356
  br label %sw.epilog10, !dbg !1357

sw.bb7:                                           ; preds = %sw.bb3
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !1358
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1359
  %call8 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %14, %union.acpi_operand_object** %15) #4, !dbg !1360
  store i32 %call8, i32* %status, align 4, !dbg !1361
  br label %sw.epilog10, !dbg !1362

sw.default9:                                      ; preds = %sw.bb3
  %16 = load i32, i32* %destination_type.addr, align 4, !dbg !1363
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16) #4, !dbg !1363
  store i32 12303, i32* %status, align 4, !dbg !1364
  br label %sw.epilog10, !dbg !1365

sw.epilog10:                                      ; preds = %sw.default9, %sw.bb7, %sw.bb5, %sw.bb4
  br label %sw.epilog18, !dbg !1366

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog18, !dbg !1367

sw.default12:                                     ; preds = %entry
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1368
  %op_info13 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 41, !dbg !1368
  %18 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %op_info13, align 8, !dbg !1368
  %runtime_args14 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %18, i32 0, i32 1, !dbg !1368
  %19 = load i32, i32* %runtime_args14, align 4, !dbg !1368
  %and15 = and i32 %19, 31, !dbg !1368
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1368
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 3, !dbg !1368
  %21 = load i16, i16* %opcode, align 2, !dbg !1368
  %conv16 = zext i16 %21 to i32, !dbg !1368
  %22 = load i32, i32* %destination_type.addr, align 4, !dbg !1368
  %call17 = call i8* @acpi_ut_get_type_name(i32 %22) #4, !dbg !1368
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 672, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %and15, i32 %conv16, i8* %call17) #4, !dbg !1368
  store i32 12303, i32* %status, align 4, !dbg !1369
  br label %sw.epilog18, !dbg !1370

sw.epilog18:                                      ; preds = %sw.default12, %sw.bb11, %sw.epilog10, %sw.epilog
  %23 = load i32, i32* %status, align 4, !dbg !1371
  %cmp19 = icmp eq i32 %23, 8, !dbg !1373
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1374

if.then21:                                        ; preds = %sw.epilog18
  store i32 0, i32* %status, align 4, !dbg !1375
  br label %if.end22, !dbg !1377

if.end22:                                         ; preds = %if.then21, %sw.epilog18
  %24 = load i32, i32* %status, align 4, !dbg !1378
  ret i32 %24, !dbg !1378
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_short_divide(i64, i32, i64*, i32*) #2

; Function Attrs: noredzone
declare dso_local signext i8 @acpi_ut_hex_to_ascii_char(i64, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !23, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exconvrt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !15, !16, !19, !8, !20}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !18)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !16)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!0}
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 72, elements: !26)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!26 = !{!27}
!27 = !DISubrange(count: 9)
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!33 = distinct !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !3, file: !3, line: 38, type: !34, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!34 = !DISubroutineType(types: !35)
!35 = !{!6, !36, !120, !8}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !38, line: 367, size: 576, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !51, !64, !74, !110, !124, !133, !444, !461, !476, !489, !567, !579, !593, !603, !621, !643, !662, !681, !700, !713, !739, !756, !769, !783, !792}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !38, line: 368, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !38, line: 73, size: 128, elements: !42)
!42 = !{!43, !44, !45, !46, !50}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !38, line: 74, baseType: !36, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !38, line: 74, baseType: !20, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !38, line: 74, baseType: !20, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !38, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !38, line: 74, baseType: !20, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !38, line: 369, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !38, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !38, line: 77, baseType: !36, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !38, line: 77, baseType: !20, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !38, line: 77, baseType: !20, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !38, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !38, line: 77, baseType: !20, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !38, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !38, line: 78, baseType: !16, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !38, line: 370, baseType: !65, size: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !38, line: 93, size: 256, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !38, line: 94, baseType: !36, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !38, line: 94, baseType: !20, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !38, line: 94, baseType: !20, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !38, line: 94, baseType: !47, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !38, line: 94, baseType: !20, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !38, line: 94, baseType: !13, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !38, line: 94, baseType: !8, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !38, line: 371, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !38, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !38, line: 98, baseType: !36, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !38, line: 98, baseType: !20, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !38, line: 98, baseType: !20, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !38, line: 98, baseType: !47, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !38, line: 98, baseType: !20, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !38, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !38, line: 98, baseType: !8, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !38, line: 99, baseType: !8, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !38, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !38, line: 101, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !90, line: 133, size: 384, elements: !91)
!90 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !94, !95, !96, !105, !106, !107, !108}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !89, file: !90, line: 134, baseType: !36, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !90, line: 135, baseType: !20, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !90, line: 136, baseType: !20, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 137, baseType: !47, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !90, line: 138, baseType: !97, size: 32, offset: 96)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !98, line: 327, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !97, file: !98, line: 328, baseType: !8, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !97, file: !98, line: 329, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !90, line: 139, baseType: !88, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !89, file: !90, line: 140, baseType: !88, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !89, file: !90, line: 141, baseType: !88, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !89, file: !90, line: 142, baseType: !109, size: 16, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !47)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !38, line: 372, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !38, line: 104, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !121, !122, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !38, line: 105, baseType: !36, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !38, line: 105, baseType: !20, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !38, line: 105, baseType: !20, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !38, line: 105, baseType: !47, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !38, line: 105, baseType: !20, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !38, line: 105, baseType: !88, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !111, file: !38, line: 106, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !38, line: 107, baseType: !83, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !38, line: 108, baseType: !8, size: 32, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !111, file: !38, line: 109, baseType: !8, size: 32, offset: 352)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !38, line: 373, baseType: !125, size: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !38, line: 118, size: 192, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !38, line: 119, baseType: !36, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !38, line: 119, baseType: !20, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !38, line: 119, baseType: !20, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !38, line: 119, baseType: !47, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !38, line: 119, baseType: !20, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !125, file: !38, line: 119, baseType: !15, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !38, line: 374, baseType: !134, size: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !38, line: 143, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !441, !442, !443}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !38, line: 144, baseType: !36, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !38, line: 144, baseType: !20, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !38, line: 144, baseType: !20, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !38, line: 144, baseType: !47, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !38, line: 144, baseType: !20, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !134, file: !38, line: 144, baseType: !20, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !134, file: !38, line: 145, baseType: !20, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !134, file: !38, line: 146, baseType: !20, size: 8, offset: 120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !38, line: 147, baseType: !36, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !38, line: 148, baseType: !36, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !38, line: 149, baseType: !83, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !134, file: !38, line: 153, baseType: !148, size: 64, offset: 320)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !38, line: 150, size: 64, elements: !149)
!149 = !{!150, !440}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !148, file: !38, line: 151, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !90, line: 248, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!6, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !157, line: 37, size: 9024, elements: !158)
!157 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !388, !389, !390, !391, !392, !396, !398, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !423, !424, !425, !426, !427, !428, !429, !430, !432, !438}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !157, line: 38, baseType: !155, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !157, line: 39, baseType: !20, size: 8, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !156, file: !157, line: 40, baseType: !20, size: 8, offset: 72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !156, file: !157, line: 41, baseType: !47, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !156, file: !157, line: 42, baseType: !20, size: 8, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !156, file: !157, line: 43, baseType: !20, size: 8, offset: 104)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !156, file: !157, line: 44, baseType: !20, size: 8, offset: 112)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !156, file: !157, line: 45, baseType: !109, size: 16, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !156, file: !157, line: 46, baseType: !20, size: 8, offset: 144)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !156, file: !157, line: 47, baseType: !20, size: 8, offset: 152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !156, file: !157, line: 48, baseType: !20, size: 8, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !156, file: !157, line: 49, baseType: !20, size: 8, offset: 168)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !156, file: !157, line: 50, baseType: !20, size: 8, offset: 176)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !156, file: !157, line: 51, baseType: !20, size: 8, offset: 184)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !156, file: !157, line: 52, baseType: !20, size: 8, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !156, file: !157, line: 53, baseType: !20, size: 8, offset: 200)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !156, file: !157, line: 54, baseType: !83, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !156, file: !157, line: 55, baseType: !8, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !156, file: !157, line: 56, baseType: !8, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !156, file: !157, line: 57, baseType: !8, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !156, file: !157, line: 58, baseType: !8, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !156, file: !157, line: 60, baseType: !181, size: 640, offset: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !90, line: 893, size: 640, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !269, !270, !386, !387}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !90, line: 894, baseType: !83, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !181, file: !90, line: 895, baseType: !83, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !181, file: !90, line: 896, baseType: !83, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !181, file: !90, line: 897, baseType: !83, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !181, file: !90, line: 898, baseType: !83, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !181, file: !90, line: 899, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !90, line: 875, size: 1600, elements: !191)
!191 = !{!192, !212, !228}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !190, file: !90, line: 876, baseType: !193, size: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !90, line: 828, size: 448, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !211}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !90, line: 829, baseType: !189, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !90, line: 829, baseType: !20, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !90, line: 829, baseType: !20, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !90, line: 829, baseType: !47, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !90, line: 829, baseType: !83, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !90, line: 829, baseType: !189, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !90, line: 829, baseType: !88, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !90, line: 829, baseType: !203, size: 64, offset: 320)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !90, line: 716, size: 64, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !203, file: !90, line: 717, baseType: !16, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !90, line: 718, baseType: !8, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !203, file: !90, line: 719, baseType: !13, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !90, line: 720, baseType: !83, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !90, line: 721, baseType: !13, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !203, file: !90, line: 722, baseType: !189, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !90, line: 829, baseType: !20, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !190, file: !90, line: 877, baseType: !213, size: 640)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !90, line: 835, size: 640, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !90, line: 836, baseType: !189, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !90, line: 836, baseType: !20, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !90, line: 836, baseType: !20, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !90, line: 836, baseType: !47, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !90, line: 836, baseType: !83, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !90, line: 836, baseType: !189, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !90, line: 836, baseType: !88, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !90, line: 836, baseType: !203, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !90, line: 836, baseType: !20, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !213, file: !90, line: 836, baseType: !13, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !90, line: 837, baseType: !83, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !213, file: !90, line: 838, baseType: !8, size: 32, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !90, line: 839, baseType: !8, size: 32, offset: 608)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !190, file: !90, line: 878, baseType: !229, size: 1600)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !90, line: 846, size: 1600, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !90, line: 847, baseType: !189, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !90, line: 847, baseType: !20, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !90, line: 847, baseType: !20, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !90, line: 847, baseType: !47, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !90, line: 847, baseType: !83, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !90, line: 847, baseType: !189, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !90, line: 847, baseType: !88, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !90, line: 847, baseType: !203, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !90, line: 847, baseType: !20, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !229, file: !90, line: 847, baseType: !189, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !229, file: !90, line: 848, baseType: !189, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !229, file: !90, line: 849, baseType: !13, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !229, file: !90, line: 850, baseType: !20, size: 8, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !229, file: !90, line: 851, baseType: !13, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !229, file: !90, line: 852, baseType: !13, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !229, file: !90, line: 853, baseType: !13, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !229, file: !90, line: 854, baseType: !102, size: 32, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !229, file: !90, line: 855, baseType: !8, size: 32, offset: 928)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !229, file: !90, line: 856, baseType: !8, size: 32, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !229, file: !90, line: 857, baseType: !8, size: 32, offset: 992)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !229, file: !90, line: 858, baseType: !8, size: 32, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !229, file: !90, line: 859, baseType: !8, size: 32, offset: 1056)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !229, file: !90, line: 860, baseType: !8, size: 32, offset: 1088)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !229, file: !90, line: 861, baseType: !8, size: 32, offset: 1120)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !229, file: !90, line: 862, baseType: !8, size: 32, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !229, file: !90, line: 863, baseType: !8, size: 32, offset: 1184)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !229, file: !90, line: 864, baseType: !8, size: 32, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !229, file: !90, line: 865, baseType: !8, size: 32, offset: 1248)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !229, file: !90, line: 866, baseType: !8, size: 32, offset: 1280)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !229, file: !90, line: 867, baseType: !8, size: 32, offset: 1312)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !229, file: !90, line: 868, baseType: !47, size: 16, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !229, file: !90, line: 869, baseType: !20, size: 8, offset: 1360)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !229, file: !90, line: 870, baseType: !20, size: 8, offset: 1368)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !229, file: !90, line: 871, baseType: !20, size: 8, offset: 1376)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !229, file: !90, line: 872, baseType: !266, size: 160, offset: 1384)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 20)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !181, file: !90, line: 900, baseType: !88, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !181, file: !90, line: 901, baseType: !271, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !90, line: 663, size: 640, elements: !273)
!273 = !{!274, !282, !295, !304, !313, !326, !340, !352, !364}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !272, file: !90, line: 664, baseType: !275, size: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !90, line: 567, size: 128, elements: !276)
!276 = !{!277, !278, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !90, line: 568, baseType: !15, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !275, file: !90, line: 568, baseType: !20, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !90, line: 568, baseType: !20, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !90, line: 568, baseType: !47, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !90, line: 568, baseType: !47, size: 16, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !272, file: !90, line: 665, baseType: !283, size: 384)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !90, line: 593, size: 384, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !90, line: 594, baseType: !15, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !90, line: 594, baseType: !20, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !90, line: 594, baseType: !20, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !90, line: 594, baseType: !47, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !90, line: 594, baseType: !47, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !283, file: !90, line: 594, baseType: !47, size: 16, offset: 112)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !283, file: !90, line: 595, baseType: !189, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !283, file: !90, line: 596, baseType: !83, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !283, file: !90, line: 597, baseType: !83, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !283, file: !90, line: 598, baseType: !16, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !272, file: !90, line: 666, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !90, line: 573, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !90, line: 574, baseType: !15, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !90, line: 574, baseType: !20, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !90, line: 574, baseType: !20, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !90, line: 574, baseType: !47, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !90, line: 574, baseType: !47, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !296, file: !90, line: 574, baseType: !36, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !272, file: !90, line: 667, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !90, line: 604, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !90, line: 605, baseType: !15, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !90, line: 605, baseType: !20, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !90, line: 605, baseType: !20, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !90, line: 605, baseType: !47, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !90, line: 605, baseType: !47, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !305, file: !90, line: 605, baseType: !88, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !272, file: !90, line: 668, baseType: !314, size: 448)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !90, line: 608, size: 448, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !90, line: 609, baseType: !15, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !90, line: 609, baseType: !20, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !90, line: 609, baseType: !20, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !90, line: 609, baseType: !47, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !90, line: 609, baseType: !47, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !314, file: !90, line: 609, baseType: !8, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !314, file: !90, line: 610, baseType: !189, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !314, file: !90, line: 611, baseType: !83, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !314, file: !90, line: 612, baseType: !83, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !314, file: !90, line: 613, baseType: !8, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !272, file: !90, line: 669, baseType: !327, size: 512)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !90, line: 580, size: 512, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !90, line: 581, baseType: !15, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !90, line: 581, baseType: !20, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !90, line: 581, baseType: !20, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !90, line: 581, baseType: !47, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !90, line: 581, baseType: !47, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !327, file: !90, line: 581, baseType: !8, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !327, file: !90, line: 582, baseType: !36, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !327, file: !90, line: 583, baseType: !36, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !327, file: !90, line: 584, baseType: !155, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !327, file: !90, line: 585, baseType: !15, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !327, file: !90, line: 586, baseType: !8, size: 32, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !272, file: !90, line: 670, baseType: !341, size: 320)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !90, line: 620, size: 320, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !90, line: 621, baseType: !15, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !90, line: 621, baseType: !20, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !90, line: 621, baseType: !20, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !90, line: 621, baseType: !47, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !90, line: 621, baseType: !47, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !341, file: !90, line: 621, baseType: !20, size: 8, offset: 112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !341, file: !90, line: 622, baseType: !155, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !341, file: !90, line: 623, baseType: !36, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !341, file: !90, line: 624, baseType: !16, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !272, file: !90, line: 671, baseType: !353, size: 640)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !90, line: 631, size: 640, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !90, line: 632, baseType: !15, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !90, line: 632, baseType: !20, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !90, line: 632, baseType: !20, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !90, line: 632, baseType: !47, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !90, line: 632, baseType: !47, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !353, file: !90, line: 633, baseType: !361, size: 512, offset: 128)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !272, file: !90, line: 672, baseType: !365, size: 320)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !90, line: 654, size: 320, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !90, line: 655, baseType: !15, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !90, line: 655, baseType: !20, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !90, line: 655, baseType: !20, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !90, line: 655, baseType: !47, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !90, line: 655, baseType: !47, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !365, file: !90, line: 655, baseType: !20, size: 8, offset: 112)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !365, file: !90, line: 656, baseType: !88, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !365, file: !90, line: 657, baseType: !36, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !365, file: !90, line: 658, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !90, line: 645, size: 128, elements: !378)
!378 = !{!379, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !377, file: !90, line: 646, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384, !8, !15}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !15)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !377, file: !90, line: 647, baseType: !15, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !181, file: !90, line: 902, baseType: !189, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !181, file: !90, line: 903, baseType: !8, size: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !156, file: !157, line: 61, baseType: !8, size: 32, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !156, file: !157, line: 62, baseType: !8, size: 32, offset: 1120)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !156, file: !157, line: 63, baseType: !47, size: 16, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !156, file: !157, line: 64, baseType: !20, size: 8, offset: 1168)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !156, file: !157, line: 66, baseType: !393, size: 2688, offset: 1216)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2688, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 7)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !156, file: !157, line: 67, baseType: !397, size: 3072, offset: 3904)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 3072, elements: !362)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !156, file: !157, line: 68, baseType: !399, size: 576, offset: 6976)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 576, elements: !26)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !156, file: !157, line: 69, baseType: !120, size: 64, offset: 7552)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !156, file: !157, line: 71, baseType: !83, size: 64, offset: 7616)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !156, file: !157, line: 72, baseType: !120, size: 64, offset: 7680)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !156, file: !157, line: 73, baseType: !271, size: 64, offset: 7744)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !156, file: !157, line: 74, baseType: !88, size: 64, offset: 7808)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !156, file: !157, line: 75, baseType: !36, size: 64, offset: 7872)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !156, file: !157, line: 76, baseType: !88, size: 64, offset: 7936)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !156, file: !157, line: 77, baseType: !189, size: 64, offset: 8000)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !156, file: !157, line: 78, baseType: !36, size: 64, offset: 8064)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !156, file: !157, line: 79, baseType: !88, size: 64, offset: 8128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !156, file: !157, line: 80, baseType: !13, size: 64, offset: 8192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !156, file: !157, line: 81, baseType: !189, size: 64, offset: 8256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !156, file: !157, line: 82, baseType: !413, size: 64, offset: 8320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !90, line: 702, size: 128, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !415, file: !90, line: 706, baseType: !8, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !415, file: !90, line: 707, baseType: !8, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !90, line: 708, baseType: !47, size: 16, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !415, file: !90, line: 709, baseType: !20, size: 8, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !415, file: !90, line: 710, baseType: !20, size: 8, offset: 88)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !415, file: !90, line: 711, baseType: !20, size: 8, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !156, file: !157, line: 83, baseType: !189, size: 64, offset: 8384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !156, file: !157, line: 84, baseType: !36, size: 64, offset: 8448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !156, file: !157, line: 85, baseType: !271, size: 64, offset: 8512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !156, file: !157, line: 86, baseType: !36, size: 64, offset: 8576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !156, file: !157, line: 87, baseType: !271, size: 64, offset: 8640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !156, file: !157, line: 88, baseType: !189, size: 64, offset: 8704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !156, file: !157, line: 89, baseType: !189, size: 64, offset: 8768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !156, file: !157, line: 90, baseType: !431, size: 64, offset: 8832)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !156, file: !157, line: 91, baseType: !433, size: 64, offset: 8896)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !90, line: 637, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!6, !155, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !156, file: !157, line: 92, baseType: !439, size: 64, offset: 8960)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !90, line: 641, baseType: !152)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !148, file: !38, line: 152, baseType: !36, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !38, line: 155, baseType: !8, size: 32, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !38, line: 156, baseType: !109, size: 16, offset: 416)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !134, file: !38, line: 157, baseType: !20, size: 8, offset: 432)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !38, line: 375, baseType: !445, size: 576)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !38, line: 122, size: 576, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !445, file: !38, line: 123, baseType: !36, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !445, file: !38, line: 123, baseType: !20, size: 8, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !38, line: 123, baseType: !20, size: 8, offset: 72)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !445, file: !38, line: 123, baseType: !47, size: 16, offset: 80)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !38, line: 123, baseType: !20, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !445, file: !38, line: 123, baseType: !20, size: 8, offset: 104)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !445, file: !38, line: 124, baseType: !47, size: 16, offset: 112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !445, file: !38, line: 125, baseType: !15, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !445, file: !38, line: 126, baseType: !16, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !445, file: !38, line: 127, baseType: !431, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !445, file: !38, line: 128, baseType: !36, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !38, line: 129, baseType: !36, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !38, line: 130, baseType: !88, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !445, file: !38, line: 131, baseType: !20, size: 8, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !38, line: 376, baseType: !462, size: 448)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !38, line: 134, size: 448, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !475}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !38, line: 135, baseType: !36, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !38, line: 135, baseType: !20, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !38, line: 135, baseType: !20, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !38, line: 135, baseType: !47, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !38, line: 135, baseType: !20, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !462, file: !38, line: 135, baseType: !20, size: 8, offset: 104)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !462, file: !38, line: 136, baseType: !88, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !462, file: !38, line: 137, baseType: !36, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !38, line: 138, baseType: !36, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !462, file: !38, line: 139, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !16)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !462, file: !38, line: 140, baseType: !8, size: 32, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !38, line: 377, baseType: !477, size: 320)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !38, line: 184, size: 320, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !488}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !38, line: 185, baseType: !36, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !38, line: 185, baseType: !20, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !38, line: 185, baseType: !20, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !38, line: 185, baseType: !47, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !38, line: 185, baseType: !20, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !477, file: !38, line: 185, baseType: !485, size: 128, offset: 128)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 2)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !477, file: !38, line: 185, baseType: !36, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !38, line: 378, baseType: !490, size: 384)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !38, line: 187, size: 384, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !38, line: 188, baseType: !36, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !38, line: 188, baseType: !20, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !38, line: 188, baseType: !20, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !38, line: 188, baseType: !47, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !38, line: 188, baseType: !20, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !490, file: !38, line: 189, baseType: !485, size: 128, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !38, line: 189, baseType: !36, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !490, file: !38, line: 189, baseType: !500, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !90, line: 480, size: 576, elements: !502)
!502 = !{!503, !504, !505, !506, !514, !529, !561, !562, !563, !564, !565, !566}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !501, file: !90, line: 481, baseType: !88, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !501, file: !90, line: 482, baseType: !500, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !90, line: 483, baseType: !500, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !501, file: !90, line: 484, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !90, line: 497, size: 256, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !90, line: 498, baseType: !507, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !90, line: 499, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !508, file: !90, line: 500, baseType: !500, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !508, file: !90, line: 501, baseType: !8, size: 32, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !501, file: !90, line: 485, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !90, line: 466, size: 320, elements: !517)
!517 = !{!518, !523, !524, !525, !526, !527, !528}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !516, file: !90, line: 467, baseType: !519, size: 128)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !90, line: 459, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !519, file: !90, line: 460, baseType: !20, size: 8)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !519, file: !90, line: 461, baseType: !16, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !516, file: !90, line: 468, baseType: !519, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !516, file: !90, line: 469, baseType: !47, size: 16, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !516, file: !90, line: 470, baseType: !20, size: 8, offset: 272)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !516, file: !90, line: 471, baseType: !20, size: 8, offset: 280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !516, file: !90, line: 472, baseType: !20, size: 8, offset: 288)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !516, file: !90, line: 473, baseType: !20, size: 8, offset: 296)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !501, file: !90, line: 486, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !90, line: 448, size: 192, elements: !532)
!532 = !{!533, !556, !557, !558, !559, !560}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !531, file: !90, line: 449, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !90, line: 438, size: 64, elements: !535)
!535 = !{!536, !537, !550}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !90, line: 439, baseType: !88, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !534, file: !90, line: 440, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !90, line: 419, size: 256, elements: !540)
!540 = !{!541, !546, !547, !548, !549}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !539, file: !90, line: 420, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!8, !384, !8, !15}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !539, file: !90, line: 421, baseType: !15, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !539, file: !90, line: 422, baseType: !88, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !539, file: !90, line: 423, baseType: !20, size: 8, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !539, file: !90, line: 424, baseType: !20, size: 8, offset: 200)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !534, file: !90, line: 441, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !90, line: 429, size: 128, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !552, file: !90, line: 430, baseType: !88, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !90, line: 431, baseType: !551, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !531, file: !90, line: 450, baseType: !515, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !90, line: 451, baseType: !20, size: 8, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !531, file: !90, line: 452, baseType: !20, size: 8, offset: 136)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !531, file: !90, line: 453, baseType: !20, size: 8, offset: 144)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !531, file: !90, line: 454, baseType: !20, size: 8, offset: 152)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !501, file: !90, line: 487, baseType: !16, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !501, file: !90, line: 488, baseType: !8, size: 32, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !501, file: !90, line: 489, baseType: !47, size: 16, offset: 480)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !501, file: !90, line: 490, baseType: !47, size: 16, offset: 496)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !501, file: !90, line: 491, baseType: !20, size: 8, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !501, file: !90, line: 492, baseType: !20, size: 8, offset: 520)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !38, line: 379, baseType: !568, size: 384)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !38, line: 192, size: 384, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !568, file: !38, line: 193, baseType: !36, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !568, file: !38, line: 193, baseType: !20, size: 8, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !38, line: 193, baseType: !20, size: 8, offset: 72)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !568, file: !38, line: 193, baseType: !47, size: 16, offset: 80)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !38, line: 193, baseType: !20, size: 8, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !568, file: !38, line: 193, baseType: !485, size: 128, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !568, file: !38, line: 193, baseType: !36, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !568, file: !38, line: 193, baseType: !8, size: 32, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !568, file: !38, line: 194, baseType: !8, size: 32, offset: 352)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !38, line: 380, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !38, line: 197, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !38, line: 198, baseType: !36, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !38, line: 198, baseType: !20, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !38, line: 198, baseType: !20, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !38, line: 198, baseType: !47, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !38, line: 198, baseType: !20, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !580, file: !38, line: 200, baseType: !20, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !580, file: !38, line: 201, baseType: !20, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !38, line: 202, baseType: !485, size: 128, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !38, line: 202, baseType: !36, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !580, file: !38, line: 202, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !16)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !38, line: 381, baseType: !594, size: 320)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !38, line: 205, size: 320, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !38, line: 206, baseType: !36, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !38, line: 206, baseType: !20, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !38, line: 206, baseType: !20, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !38, line: 206, baseType: !47, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !38, line: 206, baseType: !20, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !594, file: !38, line: 206, baseType: !485, size: 128, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !594, file: !38, line: 206, baseType: !36, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !38, line: 382, baseType: !604, size: 384)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !38, line: 233, size: 384, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !38, line: 234, baseType: !36, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !38, line: 234, baseType: !47, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 104)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 120)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !38, line: 234, baseType: !88, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !604, file: !38, line: 234, baseType: !8, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !604, file: !38, line: 234, baseType: !8, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !38, line: 234, baseType: !8, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !604, file: !38, line: 234, baseType: !20, size: 8, offset: 296)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !604, file: !38, line: 234, baseType: !36, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !38, line: 383, baseType: !622, size: 576)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !38, line: 237, size: 576, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !622, file: !38, line: 238, baseType: !36, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !622, file: !38, line: 238, baseType: !47, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 104)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 120)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !38, line: 238, baseType: !88, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !622, file: !38, line: 238, baseType: !8, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !622, file: !38, line: 238, baseType: !8, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !622, file: !38, line: 238, baseType: !8, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !622, file: !38, line: 238, baseType: !20, size: 8, offset: 296)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !622, file: !38, line: 238, baseType: !47, size: 16, offset: 304)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !622, file: !38, line: 239, baseType: !36, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !622, file: !38, line: 240, baseType: !83, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !622, file: !38, line: 241, baseType: !47, size: 16, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !622, file: !38, line: 242, baseType: !83, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !38, line: 384, baseType: !644, size: 384)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !38, line: 262, size: 384, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !38, line: 263, baseType: !36, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !38, line: 263, baseType: !47, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 104)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 120)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !38, line: 263, baseType: !88, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !644, file: !38, line: 263, baseType: !8, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !644, file: !38, line: 263, baseType: !8, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !644, file: !38, line: 263, baseType: !8, size: 32, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 288)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 296)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !644, file: !38, line: 263, baseType: !20, size: 8, offset: 304)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !644, file: !38, line: 264, baseType: !36, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !38, line: 385, baseType: !663, size: 448)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !38, line: 245, size: 448, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !38, line: 246, baseType: !36, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !38, line: 246, baseType: !47, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 104)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !38, line: 246, baseType: !88, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !663, file: !38, line: 246, baseType: !8, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !663, file: !38, line: 246, baseType: !8, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !38, line: 246, baseType: !8, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !663, file: !38, line: 246, baseType: !20, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !663, file: !38, line: 246, baseType: !36, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !663, file: !38, line: 247, baseType: !36, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !38, line: 386, baseType: !682, size: 448)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !38, line: 250, size: 448, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !38, line: 251, baseType: !36, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !38, line: 251, baseType: !47, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 104)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 120)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !682, file: !38, line: 251, baseType: !88, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !682, file: !38, line: 251, baseType: !8, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !682, file: !38, line: 251, baseType: !8, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !682, file: !38, line: 251, baseType: !8, size: 32, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 288)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !682, file: !38, line: 251, baseType: !20, size: 8, offset: 296)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !682, file: !38, line: 256, baseType: !36, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !682, file: !38, line: 257, baseType: !36, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !38, line: 387, baseType: !701, size: 512)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !38, line: 273, size: 512, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !701, file: !38, line: 274, baseType: !36, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !38, line: 274, baseType: !20, size: 8, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !38, line: 274, baseType: !20, size: 8, offset: 72)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !701, file: !38, line: 274, baseType: !47, size: 16, offset: 80)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !38, line: 274, baseType: !20, size: 8, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !38, line: 274, baseType: !88, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !701, file: !38, line: 275, baseType: !8, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !701, file: !38, line: 276, baseType: !380, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !701, file: !38, line: 277, baseType: !15, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !38, line: 278, baseType: !485, size: 128, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !38, line: 388, baseType: !714, size: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !38, line: 281, size: 512, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !729, !730, !731, !737, !738}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !714, file: !38, line: 282, baseType: !36, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !38, line: 282, baseType: !20, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !38, line: 282, baseType: !20, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !714, file: !38, line: 282, baseType: !47, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !38, line: 282, baseType: !20, size: 8, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !714, file: !38, line: 282, baseType: !20, size: 8, offset: 104)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !714, file: !38, line: 283, baseType: !20, size: 8, offset: 112)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !714, file: !38, line: 284, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!6, !8, !474, !8, !728, !15, !15}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !714, file: !38, line: 285, baseType: !88, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !714, file: !38, line: 286, baseType: !15, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !714, file: !38, line: 287, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!6, !384, !8, !15, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !714, file: !38, line: 288, baseType: !36, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !38, line: 289, baseType: !36, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !38, line: 389, baseType: !740, size: 512)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !38, line: 307, size: 512, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !740, file: !38, line: 308, baseType: !36, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !38, line: 308, baseType: !20, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !38, line: 308, baseType: !20, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !740, file: !38, line: 308, baseType: !47, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !38, line: 308, baseType: !20, size: 8, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !740, file: !38, line: 308, baseType: !20, size: 8, offset: 104)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !740, file: !38, line: 309, baseType: !20, size: 8, offset: 112)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !740, file: !38, line: 310, baseType: !20, size: 8, offset: 120)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !740, file: !38, line: 311, baseType: !15, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !740, file: !38, line: 312, baseType: !88, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !740, file: !38, line: 313, baseType: !120, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !740, file: !38, line: 314, baseType: !83, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !740, file: !38, line: 315, baseType: !83, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !740, file: !38, line: 316, baseType: !8, size: 32, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !38, line: 390, baseType: !757, size: 448)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !38, line: 340, size: 448, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !38, line: 341, baseType: !36, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !38, line: 341, baseType: !20, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !38, line: 341, baseType: !20, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !38, line: 341, baseType: !47, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !38, line: 341, baseType: !20, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !757, file: !38, line: 341, baseType: !88, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !757, file: !38, line: 342, baseType: !88, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !757, file: !38, line: 343, baseType: !15, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !757, file: !38, line: 344, baseType: !83, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !757, file: !38, line: 345, baseType: !8, size: 32, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !38, line: 391, baseType: !770, size: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !38, line: 350, size: 256, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !782}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !770, file: !38, line: 351, baseType: !36, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !38, line: 351, baseType: !20, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !38, line: 351, baseType: !20, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !770, file: !38, line: 351, baseType: !47, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !38, line: 351, baseType: !20, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !770, file: !38, line: 351, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !384, !15}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !770, file: !38, line: 352, baseType: !15, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !38, line: 392, baseType: !784, size: 192)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !38, line: 357, size: 192, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !784, file: !38, line: 358, baseType: !36, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !784, file: !38, line: 358, baseType: !20, size: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !38, line: 358, baseType: !20, size: 8, offset: 72)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !784, file: !38, line: 358, baseType: !47, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !38, line: 358, baseType: !20, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !38, line: 358, baseType: !36, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !38, line: 399, baseType: !89, size: 384)
!793 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !33, file: !3, line: 38, type: !36)
!794 = !DILocation(line: 38, column: 55, scope: !33)
!795 = !DILocalVariable(name: "result_desc", arg: 2, scope: !33, file: !3, line: 39, type: !120)
!796 = !DILocation(line: 39, column: 35, scope: !33)
!797 = !DILocalVariable(name: "implicit_conversion", arg: 3, scope: !33, file: !3, line: 40, type: !8)
!798 = !DILocation(line: 40, column: 11, scope: !33)
!799 = !DILocalVariable(name: "return_desc", scope: !33, file: !3, line: 42, type: !36)
!800 = !DILocation(line: 42, column: 29, scope: !33)
!801 = !DILocalVariable(name: "pointer", scope: !33, file: !3, line: 43, type: !83)
!802 = !DILocation(line: 43, column: 6, scope: !33)
!803 = !DILocalVariable(name: "result", scope: !33, file: !3, line: 44, type: !16)
!804 = !DILocation(line: 44, column: 6, scope: !33)
!805 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 45, type: !8)
!806 = !DILocation(line: 45, column: 6, scope: !33)
!807 = !DILocalVariable(name: "count", scope: !33, file: !3, line: 46, type: !8)
!808 = !DILocation(line: 46, column: 6, scope: !33)
!809 = !DILocation(line: 50, column: 10, scope: !33)
!810 = !DILocation(line: 50, column: 20, scope: !33)
!811 = !DILocation(line: 50, column: 27, scope: !33)
!812 = !DILocation(line: 50, column: 2, scope: !33)
!813 = !DILocation(line: 55, column: 18, scope: !814)
!814 = distinct !DILexicalBlock(scope: !33, file: !3, line: 50, column: 33)
!815 = !DILocation(line: 55, column: 4, scope: !814)
!816 = !DILocation(line: 55, column: 16, scope: !814)
!817 = !DILocation(line: 56, column: 3, scope: !814)
!818 = !DILocation(line: 63, column: 13, scope: !814)
!819 = !DILocation(line: 63, column: 23, scope: !814)
!820 = !DILocation(line: 63, column: 30, scope: !814)
!821 = !DILocation(line: 63, column: 11, scope: !814)
!822 = !DILocation(line: 64, column: 11, scope: !814)
!823 = !DILocation(line: 64, column: 21, scope: !814)
!824 = !DILocation(line: 64, column: 28, scope: !814)
!825 = !DILocation(line: 64, column: 9, scope: !814)
!826 = !DILocation(line: 65, column: 3, scope: !814)
!827 = !DILocation(line: 69, column: 3, scope: !814)
!828 = !DILocation(line: 81, column: 9, scope: !33)
!829 = !DILocation(line: 85, column: 10, scope: !33)
!830 = !DILocation(line: 85, column: 20, scope: !33)
!831 = !DILocation(line: 85, column: 27, scope: !33)
!832 = !DILocation(line: 85, column: 2, scope: !33)
!833 = !DILocation(line: 96, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 96, column: 7)
!835 = distinct !DILexicalBlock(scope: !33, file: !3, line: 85, column: 33)
!836 = !DILocation(line: 96, column: 7, scope: !835)
!837 = !DILocation(line: 98, column: 35, scope: !838)
!838 = distinct !DILexicalBlock(scope: !834, file: !3, line: 96, column: 28)
!839 = !DILocation(line: 98, column: 8, scope: !838)
!840 = !DILocation(line: 97, column: 11, scope: !838)
!841 = !DILocation(line: 100, column: 3, scope: !838)
!842 = !DILocation(line: 102, column: 35, scope: !843)
!843 = distinct !DILexicalBlock(scope: !834, file: !3, line: 100, column: 10)
!844 = !DILocation(line: 102, column: 8, scope: !843)
!845 = !DILocation(line: 101, column: 11, scope: !843)
!846 = !DILocation(line: 105, column: 3, scope: !835)
!847 = !DILocation(line: 111, column: 8, scope: !848)
!848 = distinct !DILexicalBlock(scope: !835, file: !3, line: 111, column: 7)
!849 = !DILocation(line: 111, column: 7, scope: !835)
!850 = !DILocation(line: 112, column: 4, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 111, column: 15)
!852 = !DILocation(line: 117, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !835, file: !3, line: 117, column: 7)
!854 = !DILocation(line: 117, column: 15, scope: !853)
!855 = !DILocation(line: 117, column: 13, scope: !853)
!856 = !DILocation(line: 117, column: 7, scope: !835)
!857 = !DILocation(line: 118, column: 12, scope: !858)
!858 = distinct !DILexicalBlock(scope: !853, file: !3, line: 117, column: 44)
!859 = !DILocation(line: 118, column: 10, scope: !858)
!860 = !DILocation(line: 119, column: 3, scope: !858)
!861 = !DILocation(line: 125, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !835, file: !3, line: 125, column: 3)
!863 = !DILocation(line: 125, column: 8, scope: !862)
!864 = !DILocation(line: 125, column: 15, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 125, column: 3)
!866 = !DILocation(line: 125, column: 19, scope: !865)
!867 = !DILocation(line: 125, column: 17, scope: !865)
!868 = !DILocation(line: 125, column: 3, scope: !862)
!869 = !DILocation(line: 131, column: 22, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !3, line: 125, column: 31)
!871 = !DILocation(line: 131, column: 30, scope: !870)
!872 = !DILocation(line: 131, column: 16, scope: !870)
!873 = !DILocation(line: 131, column: 38, scope: !870)
!874 = !DILocation(line: 131, column: 40, scope: !870)
!875 = !DILocation(line: 131, column: 34, scope: !870)
!876 = !DILocation(line: 131, column: 11, scope: !870)
!877 = !DILocation(line: 132, column: 3, scope: !870)
!878 = !DILocation(line: 125, column: 27, scope: !865)
!879 = !DILocation(line: 125, column: 3, scope: !865)
!880 = distinct !{!880, !868, !881}
!881 = !DILocation(line: 132, column: 3, scope: !862)
!882 = !DILocation(line: 133, column: 3, scope: !835)
!883 = !DILocation(line: 139, column: 3, scope: !835)
!884 = !DILocation(line: 144, column: 46, scope: !33)
!885 = !DILocation(line: 144, column: 16, scope: !33)
!886 = !DILocation(line: 144, column: 14, scope: !33)
!887 = !DILocation(line: 145, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !33, file: !3, line: 145, column: 6)
!889 = !DILocation(line: 145, column: 6, scope: !33)
!890 = !DILocation(line: 146, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 145, column: 20)
!892 = !DILocation(line: 154, column: 40, scope: !33)
!893 = !DILocation(line: 154, column: 8, scope: !33)
!894 = !DILocation(line: 155, column: 17, scope: !33)
!895 = !DILocation(line: 155, column: 3, scope: !33)
!896 = !DILocation(line: 155, column: 15, scope: !33)
!897 = !DILocation(line: 156, column: 2, scope: !33)
!898 = !DILocation(line: 157, column: 1, scope: !33)
!899 = distinct !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !3, file: !3, line: 174, type: !900, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!900 = !DISubroutineType(types: !901)
!901 = !{!6, !36, !120}
!902 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !899, file: !3, line: 174, type: !36)
!903 = !DILocation(line: 174, column: 54, scope: !899)
!904 = !DILocalVariable(name: "result_desc", arg: 2, scope: !899, file: !3, line: 175, type: !120)
!905 = !DILocation(line: 175, column: 34, scope: !899)
!906 = !DILocalVariable(name: "return_desc", scope: !899, file: !3, line: 177, type: !36)
!907 = !DILocation(line: 177, column: 29, scope: !899)
!908 = !DILocalVariable(name: "new_buf", scope: !899, file: !3, line: 178, type: !83)
!909 = !DILocation(line: 178, column: 6, scope: !899)
!910 = !DILocation(line: 182, column: 10, scope: !899)
!911 = !DILocation(line: 182, column: 20, scope: !899)
!912 = !DILocation(line: 182, column: 27, scope: !899)
!913 = !DILocation(line: 182, column: 2, scope: !899)
!914 = !DILocation(line: 187, column: 18, scope: !915)
!915 = distinct !DILexicalBlock(scope: !899, file: !3, line: 182, column: 33)
!916 = !DILocation(line: 187, column: 4, scope: !915)
!917 = !DILocation(line: 187, column: 16, scope: !915)
!918 = !DILocation(line: 188, column: 3, scope: !915)
!919 = !DILocation(line: 196, column: 36, scope: !915)
!920 = !DILocation(line: 196, column: 7, scope: !915)
!921 = !DILocation(line: 195, column: 15, scope: !915)
!922 = !DILocation(line: 197, column: 8, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !3, line: 197, column: 7)
!924 = !DILocation(line: 197, column: 7, scope: !915)
!925 = !DILocation(line: 198, column: 4, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !3, line: 197, column: 21)
!927 = !DILocation(line: 203, column: 13, scope: !915)
!928 = !DILocation(line: 203, column: 26, scope: !915)
!929 = !DILocation(line: 203, column: 33, scope: !915)
!930 = !DILocation(line: 203, column: 11, scope: !915)
!931 = !DILocation(line: 204, column: 10, scope: !915)
!932 = !DILocation(line: 204, column: 20, scope: !915)
!933 = !DILocation(line: 204, column: 30, scope: !915)
!934 = !DILocation(line: 204, column: 38, scope: !915)
!935 = !DILocation(line: 204, column: 3, scope: !915)
!936 = !DILocation(line: 205, column: 10, scope: !915)
!937 = !DILocation(line: 206, column: 3, scope: !915)
!938 = !DILocation(line: 219, column: 11, scope: !915)
!939 = !DILocation(line: 219, column: 21, scope: !915)
!940 = !DILocation(line: 220, column: 11, scope: !915)
!941 = !DILocation(line: 218, column: 46, scope: !915)
!942 = !DILocation(line: 220, column: 18, scope: !915)
!943 = !DILocation(line: 218, column: 17, scope: !915)
!944 = !DILocation(line: 218, column: 15, scope: !915)
!945 = !DILocation(line: 221, column: 8, scope: !946)
!946 = distinct !DILexicalBlock(scope: !915, file: !3, line: 221, column: 7)
!947 = !DILocation(line: 221, column: 7, scope: !915)
!948 = !DILocation(line: 222, column: 4, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !3, line: 221, column: 21)
!950 = !DILocation(line: 227, column: 13, scope: !915)
!951 = !DILocation(line: 227, column: 26, scope: !915)
!952 = !DILocation(line: 227, column: 33, scope: !915)
!953 = !DILocation(line: 227, column: 11, scope: !915)
!954 = !DILocation(line: 228, column: 19, scope: !915)
!955 = !DILocation(line: 228, column: 36, scope: !915)
!956 = !DILocation(line: 228, column: 46, scope: !915)
!957 = !DILocation(line: 228, column: 53, scope: !915)
!958 = !DILocation(line: 229, column: 4, scope: !915)
!959 = !DILocation(line: 229, column: 14, scope: !915)
!960 = !DILocation(line: 229, column: 21, scope: !915)
!961 = !DILocation(line: 228, column: 3, scope: !915)
!962 = !DILocation(line: 230, column: 3, scope: !915)
!963 = !DILocation(line: 234, column: 3, scope: !915)
!964 = !DILocation(line: 239, column: 2, scope: !899)
!965 = !DILocation(line: 239, column: 15, scope: !899)
!966 = !DILocation(line: 239, column: 22, scope: !899)
!967 = !DILocation(line: 239, column: 28, scope: !899)
!968 = !DILocation(line: 240, column: 17, scope: !899)
!969 = !DILocation(line: 240, column: 3, scope: !899)
!970 = !DILocation(line: 240, column: 15, scope: !899)
!971 = !DILocation(line: 241, column: 2, scope: !899)
!972 = !DILocation(line: 242, column: 1, scope: !899)
!973 = distinct !DISubprogram(name: "acpi_ex_convert_to_string", scope: !3, file: !3, line: 373, type: !34, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!974 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !973, file: !3, line: 373, type: !36)
!975 = !DILocation(line: 373, column: 55, scope: !973)
!976 = !DILocalVariable(name: "result_desc", arg: 2, scope: !973, file: !3, line: 374, type: !120)
!977 = !DILocation(line: 374, column: 35, scope: !973)
!978 = !DILocalVariable(name: "type", arg: 3, scope: !973, file: !3, line: 374, type: !8)
!979 = !DILocation(line: 374, column: 52, scope: !973)
!980 = !DILocalVariable(name: "return_desc", scope: !973, file: !3, line: 376, type: !36)
!981 = !DILocation(line: 376, column: 29, scope: !973)
!982 = !DILocalVariable(name: "new_buf", scope: !973, file: !3, line: 377, type: !83)
!983 = !DILocation(line: 377, column: 6, scope: !973)
!984 = !DILocalVariable(name: "i", scope: !973, file: !3, line: 378, type: !8)
!985 = !DILocation(line: 378, column: 6, scope: !973)
!986 = !DILocalVariable(name: "string_length", scope: !973, file: !3, line: 379, type: !8)
!987 = !DILocation(line: 379, column: 6, scope: !973)
!988 = !DILocalVariable(name: "base", scope: !973, file: !3, line: 380, type: !47)
!989 = !DILocation(line: 380, column: 6, scope: !973)
!990 = !DILocalVariable(name: "separator", scope: !973, file: !3, line: 381, type: !20)
!991 = !DILocation(line: 381, column: 5, scope: !973)
!992 = !DILocation(line: 385, column: 10, scope: !973)
!993 = !DILocation(line: 385, column: 20, scope: !973)
!994 = !DILocation(line: 385, column: 27, scope: !973)
!995 = !DILocation(line: 385, column: 2, scope: !973)
!996 = !DILocation(line: 390, column: 18, scope: !997)
!997 = distinct !DILexicalBlock(scope: !973, file: !3, line: 385, column: 33)
!998 = !DILocation(line: 390, column: 4, scope: !997)
!999 = !DILocation(line: 390, column: 16, scope: !997)
!1000 = !DILocation(line: 391, column: 3, scope: !997)
!1001 = !DILocation(line: 395, column: 11, scope: !997)
!1002 = !DILocation(line: 395, column: 3, scope: !997)
!1003 = !DILocation(line: 402, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !997, file: !3, line: 395, column: 17)
!1005 = !DILocation(line: 403, column: 9, scope: !1004)
!1006 = !DILocation(line: 404, column: 4, scope: !1004)
!1007 = !DILocation(line: 410, column: 20, scope: !1004)
!1008 = !DILocation(line: 410, column: 18, scope: !1004)
!1009 = !DILocation(line: 411, column: 4, scope: !1004)
!1010 = !DILocation(line: 419, column: 47, scope: !997)
!1011 = !DILocation(line: 419, column: 36, scope: !997)
!1012 = !DILocation(line: 419, column: 7, scope: !997)
!1013 = !DILocation(line: 418, column: 15, scope: !997)
!1014 = !DILocation(line: 420, column: 8, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !997, file: !3, line: 420, column: 7)
!1016 = !DILocation(line: 420, column: 7, scope: !997)
!1017 = !DILocation(line: 421, column: 4, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 420, column: 21)
!1019 = !DILocation(line: 424, column: 13, scope: !997)
!1020 = !DILocation(line: 424, column: 26, scope: !997)
!1021 = !DILocation(line: 424, column: 33, scope: !997)
!1022 = !DILocation(line: 424, column: 11, scope: !997)
!1023 = !DILocation(line: 429, column: 32, scope: !997)
!1024 = !DILocation(line: 429, column: 42, scope: !997)
!1025 = !DILocation(line: 429, column: 50, scope: !997)
!1026 = !DILocation(line: 429, column: 57, scope: !997)
!1027 = !DILocation(line: 430, column: 11, scope: !997)
!1028 = !DILocation(line: 431, column: 11, scope: !997)
!1029 = !DILocation(line: 429, column: 7, scope: !997)
!1030 = !DILocation(line: 428, column: 17, scope: !997)
!1031 = !DILocation(line: 435, column: 32, scope: !997)
!1032 = !DILocation(line: 435, column: 3, scope: !997)
!1033 = !DILocation(line: 435, column: 16, scope: !997)
!1034 = !DILocation(line: 435, column: 23, scope: !997)
!1035 = !DILocation(line: 435, column: 30, scope: !997)
!1036 = !DILocation(line: 436, column: 3, scope: !997)
!1037 = !DILocation(line: 436, column: 11, scope: !997)
!1038 = !DILocation(line: 436, column: 26, scope: !997)
!1039 = !DILocation(line: 437, column: 3, scope: !997)
!1040 = !DILocation(line: 443, column: 11, scope: !997)
!1041 = !DILocation(line: 443, column: 3, scope: !997)
!1042 = !DILocation(line: 451, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !997, file: !3, line: 443, column: 17)
!1044 = !DILocation(line: 457, column: 11, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 457, column: 4)
!1046 = !DILocation(line: 457, column: 9, scope: !1045)
!1047 = !DILocation(line: 457, column: 16, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 457, column: 4)
!1049 = !DILocation(line: 457, column: 20, scope: !1048)
!1050 = !DILocation(line: 457, column: 30, scope: !1048)
!1051 = !DILocation(line: 457, column: 37, scope: !1048)
!1052 = !DILocation(line: 457, column: 18, scope: !1048)
!1053 = !DILocation(line: 457, column: 4, scope: !1045)
!1054 = !DILocation(line: 458, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 458, column: 9)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 457, column: 50)
!1057 = !DILocation(line: 458, column: 19, scope: !1055)
!1058 = !DILocation(line: 458, column: 26, scope: !1055)
!1059 = !DILocation(line: 458, column: 34, scope: !1055)
!1060 = !DILocation(line: 458, column: 37, scope: !1055)
!1061 = !DILocation(line: 458, column: 9, scope: !1056)
!1062 = !DILocation(line: 459, column: 20, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 458, column: 45)
!1064 = !DILocation(line: 460, column: 5, scope: !1063)
!1065 = !DILocation(line: 460, column: 16, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 460, column: 16)
!1067 = !DILocation(line: 460, column: 26, scope: !1066)
!1068 = !DILocation(line: 460, column: 33, scope: !1066)
!1069 = !DILocation(line: 460, column: 41, scope: !1066)
!1070 = !DILocation(line: 460, column: 44, scope: !1066)
!1071 = !DILocation(line: 460, column: 16, scope: !1055)
!1072 = !DILocation(line: 461, column: 20, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 460, column: 51)
!1074 = !DILocation(line: 462, column: 5, scope: !1073)
!1075 = !DILocation(line: 463, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 462, column: 12)
!1077 = !DILocation(line: 465, column: 4, scope: !1056)
!1078 = !DILocation(line: 457, column: 46, scope: !1048)
!1079 = !DILocation(line: 457, column: 4, scope: !1048)
!1080 = distinct !{!1080, !1053, !1081}
!1081 = !DILocation(line: 465, column: 4, scope: !1045)
!1082 = !DILocation(line: 466, column: 4, scope: !1043)
!1083 = !DILocation(line: 478, column: 14, scope: !1043)
!1084 = !DILocation(line: 479, column: 21, scope: !1043)
!1085 = !DILocation(line: 479, column: 31, scope: !1043)
!1086 = !DILocation(line: 479, column: 38, scope: !1043)
!1087 = !DILocation(line: 479, column: 45, scope: !1043)
!1088 = !DILocation(line: 479, column: 18, scope: !1043)
!1089 = !DILocation(line: 480, column: 4, scope: !1043)
!1090 = !DILocation(line: 491, column: 14, scope: !1043)
!1091 = !DILocation(line: 492, column: 21, scope: !1043)
!1092 = !DILocation(line: 492, column: 31, scope: !1043)
!1093 = !DILocation(line: 492, column: 38, scope: !1043)
!1094 = !DILocation(line: 492, column: 45, scope: !1043)
!1095 = !DILocation(line: 492, column: 18, scope: !1043)
!1096 = !DILocation(line: 493, column: 4, scope: !1043)
!1097 = !DILocation(line: 496, column: 4, scope: !1043)
!1098 = !DILocation(line: 504, column: 7, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !997, file: !3, line: 504, column: 7)
!1100 = !DILocation(line: 504, column: 7, scope: !997)
!1101 = !DILocation(line: 505, column: 17, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 504, column: 22)
!1103 = !DILocation(line: 506, column: 3, scope: !1102)
!1104 = !DILocation(line: 509, column: 47, scope: !997)
!1105 = !DILocation(line: 509, column: 36, scope: !997)
!1106 = !DILocation(line: 509, column: 7, scope: !997)
!1107 = !DILocation(line: 508, column: 15, scope: !997)
!1108 = !DILocation(line: 510, column: 8, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !997, file: !3, line: 510, column: 7)
!1110 = !DILocation(line: 510, column: 7, scope: !997)
!1111 = !DILocation(line: 511, column: 4, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 510, column: 21)
!1113 = !DILocation(line: 514, column: 13, scope: !997)
!1114 = !DILocation(line: 514, column: 26, scope: !997)
!1115 = !DILocation(line: 514, column: 33, scope: !997)
!1116 = !DILocation(line: 514, column: 11, scope: !997)
!1117 = !DILocation(line: 520, column: 10, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !997, file: !3, line: 520, column: 3)
!1119 = !DILocation(line: 520, column: 8, scope: !1118)
!1120 = !DILocation(line: 520, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 520, column: 3)
!1122 = !DILocation(line: 520, column: 19, scope: !1121)
!1123 = !DILocation(line: 520, column: 29, scope: !1121)
!1124 = !DILocation(line: 520, column: 36, scope: !1121)
!1125 = !DILocation(line: 520, column: 17, scope: !1121)
!1126 = !DILocation(line: 520, column: 3, scope: !1118)
!1127 = !DILocation(line: 521, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 521, column: 8)
!1129 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 520, column: 49)
!1130 = !DILocation(line: 521, column: 13, scope: !1128)
!1131 = !DILocation(line: 521, column: 8, scope: !1129)
!1132 = !DILocation(line: 525, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 521, column: 20)
!1134 = !DILocation(line: 525, column: 16, scope: !1133)
!1135 = !DILocation(line: 526, column: 13, scope: !1133)
!1136 = !DILocation(line: 526, column: 16, scope: !1133)
!1137 = !DILocation(line: 527, column: 4, scope: !1133)
!1138 = !DILocation(line: 529, column: 46, scope: !1129)
!1139 = !DILocation(line: 530, column: 12, scope: !1129)
!1140 = !DILocation(line: 530, column: 19, scope: !1129)
!1141 = !DILocation(line: 530, column: 27, scope: !1129)
!1142 = !DILocation(line: 529, column: 40, scope: !1129)
!1143 = !DILocation(line: 531, column: 12, scope: !1129)
!1144 = !DILocation(line: 531, column: 18, scope: !1129)
!1145 = !DILocation(line: 529, column: 15, scope: !1129)
!1146 = !DILocation(line: 529, column: 12, scope: !1129)
!1147 = !DILocation(line: 535, column: 17, scope: !1129)
!1148 = !DILocation(line: 535, column: 12, scope: !1129)
!1149 = !DILocation(line: 535, column: 15, scope: !1129)
!1150 = !DILocation(line: 536, column: 3, scope: !1129)
!1151 = !DILocation(line: 520, column: 45, scope: !1121)
!1152 = !DILocation(line: 520, column: 3, scope: !1121)
!1153 = distinct !{!1153, !1126, !1154}
!1154 = !DILocation(line: 536, column: 3, scope: !1118)
!1155 = !DILocation(line: 542, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !997, file: !3, line: 542, column: 7)
!1157 = !DILocation(line: 542, column: 17, scope: !1156)
!1158 = !DILocation(line: 542, column: 24, scope: !1156)
!1159 = !DILocation(line: 542, column: 7, scope: !997)
!1160 = !DILocation(line: 543, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 542, column: 32)
!1162 = !DILocation(line: 544, column: 3, scope: !1161)
!1163 = !DILocation(line: 545, column: 4, scope: !997)
!1164 = !DILocation(line: 545, column: 12, scope: !997)
!1165 = !DILocation(line: 546, column: 3, scope: !997)
!1166 = !DILocation(line: 550, column: 3, scope: !997)
!1167 = !DILocation(line: 553, column: 17, scope: !973)
!1168 = !DILocation(line: 553, column: 3, scope: !973)
!1169 = !DILocation(line: 553, column: 15, scope: !973)
!1170 = !DILocation(line: 554, column: 2, scope: !973)
!1171 = !DILocation(line: 555, column: 1, scope: !973)
!1172 = distinct !DISubprogram(name: "acpi_ex_convert_to_ascii", scope: !3, file: !3, line: 260, type: !1173, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!8, !16, !47, !83, !20}
!1175 = !DILocalVariable(name: "integer", arg: 1, scope: !1172, file: !3, line: 260, type: !16)
!1176 = !DILocation(line: 260, column: 30, scope: !1172)
!1177 = !DILocalVariable(name: "base", arg: 2, scope: !1172, file: !3, line: 260, type: !47)
!1178 = !DILocation(line: 260, column: 43, scope: !1172)
!1179 = !DILocalVariable(name: "string", arg: 3, scope: !1172, file: !3, line: 260, type: !83)
!1180 = !DILocation(line: 260, column: 53, scope: !1172)
!1181 = !DILocalVariable(name: "data_width", arg: 4, scope: !1172, file: !3, line: 260, type: !20)
!1182 = !DILocation(line: 260, column: 64, scope: !1172)
!1183 = !DILocalVariable(name: "digit", scope: !1172, file: !3, line: 262, type: !16)
!1184 = !DILocation(line: 262, column: 6, scope: !1172)
!1185 = !DILocalVariable(name: "i", scope: !1172, file: !3, line: 263, type: !8)
!1186 = !DILocation(line: 263, column: 6, scope: !1172)
!1187 = !DILocalVariable(name: "j", scope: !1172, file: !3, line: 264, type: !8)
!1188 = !DILocation(line: 264, column: 6, scope: !1172)
!1189 = !DILocalVariable(name: "k", scope: !1172, file: !3, line: 265, type: !8)
!1190 = !DILocation(line: 265, column: 6, scope: !1172)
!1191 = !DILocalVariable(name: "hex_length", scope: !1172, file: !3, line: 266, type: !8)
!1192 = !DILocation(line: 266, column: 6, scope: !1172)
!1193 = !DILocalVariable(name: "decimal_length", scope: !1172, file: !3, line: 267, type: !8)
!1194 = !DILocation(line: 267, column: 6, scope: !1172)
!1195 = !DILocalVariable(name: "remainder", scope: !1172, file: !3, line: 268, type: !8)
!1196 = !DILocation(line: 268, column: 6, scope: !1172)
!1197 = !DILocalVariable(name: "supress_zeros", scope: !1172, file: !3, line: 269, type: !20)
!1198 = !DILocation(line: 269, column: 5, scope: !1172)
!1199 = !DILocation(line: 273, column: 10, scope: !1172)
!1200 = !DILocation(line: 273, column: 2, scope: !1172)
!1201 = !DILocation(line: 278, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 273, column: 16)
!1203 = !DILocation(line: 278, column: 3, scope: !1202)
!1204 = !DILocation(line: 281, column: 19, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 278, column: 23)
!1206 = !DILocation(line: 282, column: 4, scope: !1205)
!1207 = !DILocation(line: 286, column: 19, scope: !1205)
!1208 = !DILocation(line: 287, column: 4, scope: !1205)
!1209 = !DILocation(line: 292, column: 19, scope: !1205)
!1210 = !DILocation(line: 293, column: 4, scope: !1205)
!1211 = !DILocation(line: 296, column: 17, scope: !1202)
!1212 = !DILocation(line: 297, column: 13, scope: !1202)
!1213 = !DILocation(line: 299, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 299, column: 3)
!1215 = !DILocation(line: 299, column: 10, scope: !1214)
!1216 = !DILocation(line: 299, column: 8, scope: !1214)
!1217 = !DILocation(line: 299, column: 28, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 299, column: 3)
!1219 = !DILocation(line: 299, column: 30, scope: !1218)
!1220 = !DILocation(line: 299, column: 3, scope: !1214)
!1221 = !DILocation(line: 303, column: 12, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 299, column: 40)
!1223 = !DILocation(line: 303, column: 10, scope: !1222)
!1224 = !DILocation(line: 304, column: 11, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 304, column: 4)
!1226 = !DILocation(line: 304, column: 9, scope: !1225)
!1227 = !DILocation(line: 304, column: 16, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 304, column: 4)
!1229 = !DILocation(line: 304, column: 20, scope: !1228)
!1230 = !DILocation(line: 304, column: 18, scope: !1228)
!1231 = !DILocation(line: 304, column: 4, scope: !1225)
!1232 = !DILocation(line: 305, column: 32, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 304, column: 28)
!1234 = !DILocation(line: 305, column: 11, scope: !1233)
!1235 = !DILocation(line: 307, column: 4, scope: !1233)
!1236 = !DILocation(line: 304, column: 24, scope: !1228)
!1237 = !DILocation(line: 304, column: 4, scope: !1228)
!1238 = distinct !{!1238, !1231, !1239}
!1239 = !DILocation(line: 307, column: 4, scope: !1225)
!1240 = !DILocation(line: 311, column: 8, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 311, column: 8)
!1242 = !DILocation(line: 311, column: 18, scope: !1241)
!1243 = !DILocation(line: 311, column: 8, scope: !1222)
!1244 = !DILocation(line: 312, column: 19, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 311, column: 24)
!1246 = !DILocation(line: 313, column: 4, scope: !1245)
!1247 = !DILocation(line: 315, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 315, column: 8)
!1249 = !DILocation(line: 315, column: 8, scope: !1222)
!1250 = !DILocation(line: 316, column: 41, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 315, column: 24)
!1252 = !DILocation(line: 316, column: 39, scope: !1251)
!1253 = !DILocation(line: 316, column: 17, scope: !1251)
!1254 = !DILocation(line: 316, column: 5, scope: !1251)
!1255 = !DILocation(line: 316, column: 12, scope: !1251)
!1256 = !DILocation(line: 316, column: 15, scope: !1251)
!1257 = !DILocation(line: 317, column: 6, scope: !1251)
!1258 = !DILocation(line: 318, column: 4, scope: !1251)
!1259 = !DILocation(line: 319, column: 3, scope: !1222)
!1260 = !DILocation(line: 299, column: 36, scope: !1218)
!1261 = !DILocation(line: 299, column: 3, scope: !1218)
!1262 = distinct !{!1262, !1220, !1263}
!1263 = !DILocation(line: 319, column: 3, scope: !1214)
!1264 = !DILocation(line: 320, column: 3, scope: !1202)
!1265 = !DILocation(line: 326, column: 17, scope: !1202)
!1266 = !DILocation(line: 326, column: 28, scope: !1202)
!1267 = !DILocation(line: 326, column: 14, scope: !1202)
!1268 = !DILocation(line: 327, column: 10, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 327, column: 3)
!1270 = !DILocation(line: 327, column: 20, scope: !1269)
!1271 = !DILocation(line: 327, column: 31, scope: !1269)
!1272 = !DILocation(line: 327, column: 17, scope: !1269)
!1273 = !DILocation(line: 327, column: 8, scope: !1269)
!1274 = !DILocation(line: 327, column: 37, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 327, column: 3)
!1276 = !DILocation(line: 327, column: 41, scope: !1275)
!1277 = !DILocation(line: 327, column: 39, scope: !1275)
!1278 = !DILocation(line: 327, column: 3, scope: !1269)
!1279 = !DILocation(line: 332, column: 34, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 327, column: 63)
!1281 = !DILocation(line: 332, column: 43, scope: !1280)
!1282 = !DILocation(line: 332, column: 8, scope: !1280)
!1283 = !DILocation(line: 331, column: 4, scope: !1280)
!1284 = !DILocation(line: 331, column: 11, scope: !1280)
!1285 = !DILocation(line: 331, column: 14, scope: !1280)
!1286 = !DILocation(line: 333, column: 5, scope: !1280)
!1287 = !DILocation(line: 334, column: 3, scope: !1280)
!1288 = !DILocation(line: 327, column: 54, scope: !1275)
!1289 = !DILocation(line: 327, column: 59, scope: !1275)
!1290 = !DILocation(line: 327, column: 3, scope: !1275)
!1291 = distinct !{!1291, !1278, !1292}
!1292 = !DILocation(line: 334, column: 3, scope: !1269)
!1293 = !DILocation(line: 335, column: 3, scope: !1202)
!1294 = !DILocation(line: 338, column: 3, scope: !1202)
!1295 = !DILocation(line: 347, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 347, column: 6)
!1297 = !DILocation(line: 347, column: 6, scope: !1172)
!1298 = !DILocation(line: 348, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 347, column: 10)
!1300 = !DILocation(line: 348, column: 13, scope: !1299)
!1301 = !DILocation(line: 349, column: 5, scope: !1299)
!1302 = !DILocation(line: 350, column: 2, scope: !1299)
!1303 = !DILocation(line: 352, column: 2, scope: !1172)
!1304 = !DILocation(line: 352, column: 9, scope: !1172)
!1305 = !DILocation(line: 352, column: 12, scope: !1172)
!1306 = !DILocation(line: 353, column: 16, scope: !1172)
!1307 = !DILocation(line: 353, column: 2, scope: !1172)
!1308 = !DILocation(line: 354, column: 1, scope: !1172)
!1309 = distinct !DISubprogram(name: "acpi_ex_convert_to_target_type", scope: !3, file: !3, line: 573, type: !1310, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!6, !1312, !36, !120, !155}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !7, line: 635, baseType: !8)
!1313 = !DILocalVariable(name: "destination_type", arg: 1, scope: !1309, file: !3, line: 573, type: !1312)
!1314 = !DILocation(line: 573, column: 49, scope: !1309)
!1315 = !DILocalVariable(name: "source_desc", arg: 2, scope: !1309, file: !3, line: 574, type: !36)
!1316 = !DILocation(line: 574, column: 38, scope: !1309)
!1317 = !DILocalVariable(name: "result_desc", arg: 3, scope: !1309, file: !3, line: 575, type: !120)
!1318 = !DILocation(line: 575, column: 39, scope: !1309)
!1319 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1309, file: !3, line: 576, type: !155)
!1320 = !DILocation(line: 576, column: 35, scope: !1309)
!1321 = !DILocalVariable(name: "status", scope: !1309, file: !3, line: 578, type: !6)
!1322 = !DILocation(line: 578, column: 14, scope: !1309)
!1323 = !DILocation(line: 584, column: 17, scope: !1309)
!1324 = !DILocation(line: 584, column: 3, scope: !1309)
!1325 = !DILocation(line: 584, column: 15, scope: !1309)
!1326 = !DILocation(line: 590, column: 10, scope: !1309)
!1327 = !DILocation(line: 590, column: 2, scope: !1309)
!1328 = !DILocation(line: 595, column: 11, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 590, column: 67)
!1330 = !DILocation(line: 595, column: 3, scope: !1329)
!1331 = !DILocation(line: 600, column: 4, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 595, column: 29)
!1333 = !DILocation(line: 606, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 606, column: 8)
!1335 = !DILocation(line: 606, column: 28, scope: !1334)
!1336 = !DILocation(line: 606, column: 41, scope: !1334)
!1337 = !DILocation(line: 606, column: 48, scope: !1334)
!1338 = !DILocation(line: 606, column: 25, scope: !1334)
!1339 = !DILocation(line: 606, column: 8, scope: !1332)
!1340 = !DILocation(line: 613, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 606, column: 54)
!1342 = !DILocation(line: 614, column: 4, scope: !1341)
!1343 = !DILocation(line: 615, column: 3, scope: !1332)
!1344 = !DILocation(line: 616, column: 3, scope: !1329)
!1345 = !DILocation(line: 621, column: 11, scope: !1329)
!1346 = !DILocation(line: 621, column: 3, scope: !1329)
!1347 = !DILocation(line: 631, column: 35, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 621, column: 29)
!1349 = !DILocation(line: 631, column: 48, scope: !1348)
!1350 = !DILocation(line: 631, column: 8, scope: !1348)
!1351 = !DILocation(line: 630, column: 11, scope: !1348)
!1352 = !DILocation(line: 633, column: 4, scope: !1348)
!1353 = !DILocation(line: 641, column: 34, scope: !1348)
!1354 = !DILocation(line: 641, column: 47, scope: !1348)
!1355 = !DILocation(line: 641, column: 8, scope: !1348)
!1356 = !DILocation(line: 640, column: 11, scope: !1348)
!1357 = !DILocation(line: 643, column: 4, scope: !1348)
!1358 = !DILocation(line: 651, column: 34, scope: !1348)
!1359 = !DILocation(line: 651, column: 47, scope: !1348)
!1360 = !DILocation(line: 651, column: 8, scope: !1348)
!1361 = !DILocation(line: 650, column: 11, scope: !1348)
!1362 = !DILocation(line: 652, column: 4, scope: !1348)
!1363 = !DILocation(line: 656, column: 4, scope: !1348)
!1364 = !DILocation(line: 659, column: 11, scope: !1348)
!1365 = !DILocation(line: 660, column: 4, scope: !1348)
!1366 = !DILocation(line: 662, column: 3, scope: !1329)
!1367 = !DILocation(line: 668, column: 3, scope: !1329)
!1368 = !DILocation(line: 672, column: 3, scope: !1329)
!1369 = !DILocation(line: 678, column: 10, scope: !1329)
!1370 = !DILocation(line: 679, column: 2, scope: !1329)
!1371 = !DILocation(line: 687, column: 6, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 687, column: 6)
!1373 = !DILocation(line: 687, column: 13, scope: !1372)
!1374 = !DILocation(line: 687, column: 6, scope: !1309)
!1375 = !DILocation(line: 688, column: 10, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 687, column: 25)
!1377 = !DILocation(line: 689, column: 2, scope: !1376)
!1378 = !DILocation(line: 691, column: 2, scope: !1309)
