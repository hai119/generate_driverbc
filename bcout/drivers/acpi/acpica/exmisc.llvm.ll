; ModuleID = '../bcout/drivers/acpi/acpica/exmisc.llvm.bc'
source_filename = "drivers/acpi/acpica/exmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }

@_acpi_module_name = internal constant [7 x i8] c"exmisc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Invalid Reference Class 0x%2.2X\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid descriptor type 0x%X\00", align 1
@acpi_gbl_integer_bit_width = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid numeric logical opcode: %X\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid object type for logical operator: %X\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid comparison opcode: %X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_get_object_reference(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %return_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !810 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %return_desc.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %reference_obj = alloca %union.acpi_operand_object*, align 8
  %referenced_obj = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store %union.acpi_operand_object** %return_desc, %union.acpi_operand_object*** %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %return_desc.addr, metadata !816, metadata !DIExpression()), !dbg !817
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %reference_obj, metadata !820, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %referenced_obj, metadata !822, metadata !DIExpression()), !dbg !823
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !824
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %0, align 8, !dbg !825
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !826
  %2 = bitcast %union.acpi_operand_object* %1 to i8*, !dbg !826
  %3 = bitcast i8* %2 to %union.acpi_descriptor*, !dbg !826
  %common = bitcast %union.acpi_descriptor* %3 to %struct.acpi_common_descriptor*, !dbg !826
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !826
  %4 = load i8, i8* %descriptor_type, align 8, !dbg !826
  %conv = zext i8 %4 to i32, !dbg !826
  switch i32 %conv, label %sw.default11 [
    i32 14, label %sw.bb
    i32 15, label %sw.bb10
  ], !dbg !827

sw.bb:                                            ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !828
  %common1 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_common*, !dbg !831
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 2, !dbg !832
  %6 = load i8, i8* %type, align 1, !dbg !832
  %conv2 = zext i8 %6 to i32, !dbg !828
  %cmp = icmp ne i32 %conv2, 20, !dbg !833
  br i1 %cmp, label %if.then, label %if.end, !dbg !834

if.then:                                          ; preds = %sw.bb
  store i32 12291, i32* %retval, align 4, !dbg !835
  br label %return, !dbg !835

if.end:                                           ; preds = %sw.bb
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !837
  %reference = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_reference*, !dbg !838
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !839
  %8 = load i8, i8* %class, align 1, !dbg !839
  %conv4 = zext i8 %8 to i32, !dbg !837
  switch i32 %conv4, label %sw.default [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
    i32 6, label %sw.bb5
  ], !dbg !840

sw.bb5:                                           ; preds = %if.end, %if.end, %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !841
  %reference6 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_reference*, !dbg !843
  %object = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference6, i32 0, i32 8, !dbg !844
  %10 = load i8*, i8** %object, align 8, !dbg !844
  %11 = bitcast i8* %10 to %union.acpi_operand_object*, !dbg !841
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %referenced_obj, align 8, !dbg !845
  br label %sw.epilog, !dbg !846

sw.default:                                       ; preds = %if.end
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !847
  %reference7 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_reference*, !dbg !847
  %class8 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference7, i32 0, i32 5, !dbg !847
  %13 = load i8, i8* %class8, align 1, !dbg !847
  %conv9 = zext i8 %13 to i32, !dbg !847
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %conv9) #3, !dbg !847
  store i32 12291, i32* %retval, align 4, !dbg !848
  br label %return, !dbg !848

sw.epilog:                                        ; preds = %sw.bb5
  br label %sw.epilog15, !dbg !849

sw.bb10:                                          ; preds = %entry
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !850
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %referenced_obj, align 8, !dbg !851
  br label %sw.epilog15, !dbg !852

sw.default11:                                     ; preds = %entry
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !853
  %16 = bitcast %union.acpi_operand_object* %15 to i8*, !dbg !853
  %17 = bitcast i8* %16 to %union.acpi_descriptor*, !dbg !853
  %common12 = bitcast %union.acpi_descriptor* %17 to %struct.acpi_common_descriptor*, !dbg !853
  %descriptor_type13 = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common12, i32 0, i32 1, !dbg !853
  %18 = load i8, i8* %descriptor_type13, align 8, !dbg !853
  %conv14 = zext i8 %18 to i32, !dbg !853
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %conv14) #3, !dbg !853
  store i32 8, i32* %retval, align 4, !dbg !854
  br label %return, !dbg !854

sw.epilog15:                                      ; preds = %sw.bb10, %sw.epilog
  %call = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 89, i32 128, i32 20) #3, !dbg !855
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %reference_obj, align 8, !dbg !856
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %reference_obj, align 8, !dbg !857
  %tobool = icmp ne %union.acpi_operand_object* %19, null, !dbg !857
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !859

if.then16:                                        ; preds = %sw.epilog15
  store i32 4, i32* %retval, align 4, !dbg !860
  br label %return, !dbg !860

if.end17:                                         ; preds = %sw.epilog15
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %reference_obj, align 8, !dbg !862
  %reference18 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_reference*, !dbg !863
  %class19 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference18, i32 0, i32 5, !dbg !864
  store i8 2, i8* %class19, align 1, !dbg !865
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %referenced_obj, align 8, !dbg !866
  %22 = bitcast %union.acpi_operand_object* %21 to i8*, !dbg !866
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %reference_obj, align 8, !dbg !867
  %reference20 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_reference*, !dbg !868
  %object21 = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference20, i32 0, i32 8, !dbg !869
  store i8* %22, i8** %object21, align 8, !dbg !870
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %reference_obj, align 8, !dbg !871
  %25 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %return_desc.addr, align 8, !dbg !872
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %25, align 8, !dbg !873
  store i32 0, i32* %retval, align 4, !dbg !874
  br label %return, !dbg !874

return:                                           ; preds = %if.end17, %if.then16, %sw.default11, %sw.default, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !875
  ret i32 %26, !dbg !875
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @acpi_ex_do_math_op(i16 zeroext %opcode, i64 %integer0, i64 %integer1) #0 !dbg !876 {
entry:
  %retval = alloca i64, align 8
  %opcode.addr = alloca i16, align 2
  %integer0.addr = alloca i64, align 8
  %integer1.addr = alloca i64, align 8
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !879, metadata !DIExpression()), !dbg !880
  store i64 %integer0, i64* %integer0.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %integer0.addr, metadata !881, metadata !DIExpression()), !dbg !882
  store i64 %integer1, i64* %integer1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %integer1.addr, metadata !883, metadata !DIExpression()), !dbg !884
  %0 = load i16, i16* %opcode.addr, align 2, !dbg !885
  %conv = zext i16 %0 to i32, !dbg !885
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 123, label %sw.bb1
    i32 124, label %sw.bb2
    i32 125, label %sw.bb4
    i32 126, label %sw.bb5
    i32 127, label %sw.bb8
    i32 119, label %sw.bb9
    i32 121, label %sw.bb10
    i32 122, label %sw.bb13
    i32 116, label %sw.bb19
  ], !dbg !886

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %integer0.addr, align 8, !dbg !887
  %2 = load i64, i64* %integer1.addr, align 8, !dbg !889
  %add = add i64 %1, %2, !dbg !890
  store i64 %add, i64* %retval, align 8, !dbg !891
  br label %return, !dbg !891

sw.bb1:                                           ; preds = %entry
  %3 = load i64, i64* %integer0.addr, align 8, !dbg !892
  %4 = load i64, i64* %integer1.addr, align 8, !dbg !893
  %and = and i64 %3, %4, !dbg !894
  store i64 %and, i64* %retval, align 8, !dbg !895
  br label %return, !dbg !895

sw.bb2:                                           ; preds = %entry
  %5 = load i64, i64* %integer0.addr, align 8, !dbg !896
  %6 = load i64, i64* %integer1.addr, align 8, !dbg !897
  %and3 = and i64 %5, %6, !dbg !898
  %neg = xor i64 %and3, -1, !dbg !899
  store i64 %neg, i64* %retval, align 8, !dbg !900
  br label %return, !dbg !900

sw.bb4:                                           ; preds = %entry
  %7 = load i64, i64* %integer0.addr, align 8, !dbg !901
  %8 = load i64, i64* %integer1.addr, align 8, !dbg !902
  %or = or i64 %7, %8, !dbg !903
  store i64 %or, i64* %retval, align 8, !dbg !904
  br label %return, !dbg !904

sw.bb5:                                           ; preds = %entry
  %9 = load i64, i64* %integer0.addr, align 8, !dbg !905
  %10 = load i64, i64* %integer1.addr, align 8, !dbg !906
  %or6 = or i64 %9, %10, !dbg !907
  %neg7 = xor i64 %or6, -1, !dbg !908
  store i64 %neg7, i64* %retval, align 8, !dbg !909
  br label %return, !dbg !909

sw.bb8:                                           ; preds = %entry
  %11 = load i64, i64* %integer0.addr, align 8, !dbg !910
  %12 = load i64, i64* %integer1.addr, align 8, !dbg !911
  %xor = xor i64 %11, %12, !dbg !912
  store i64 %xor, i64* %retval, align 8, !dbg !913
  br label %return, !dbg !913

sw.bb9:                                           ; preds = %entry
  %13 = load i64, i64* %integer0.addr, align 8, !dbg !914
  %14 = load i64, i64* %integer1.addr, align 8, !dbg !915
  %mul = mul i64 %13, %14, !dbg !916
  store i64 %mul, i64* %retval, align 8, !dbg !917
  br label %return, !dbg !917

sw.bb10:                                          ; preds = %entry
  %15 = load i64, i64* %integer1.addr, align 8, !dbg !918
  %16 = load i8, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !920
  %conv11 = zext i8 %16 to i64, !dbg !920
  %cmp = icmp uge i64 %15, %conv11, !dbg !921
  br i1 %cmp, label %if.then, label %if.end, !dbg !922

if.then:                                          ; preds = %sw.bb10
  store i64 0, i64* %retval, align 8, !dbg !923
  br label %return, !dbg !923

if.end:                                           ; preds = %sw.bb10
  %17 = load i64, i64* %integer0.addr, align 8, !dbg !925
  %18 = load i64, i64* %integer1.addr, align 8, !dbg !926
  %shl = shl i64 %17, %18, !dbg !927
  store i64 %shl, i64* %retval, align 8, !dbg !928
  br label %return, !dbg !928

sw.bb13:                                          ; preds = %entry
  %19 = load i64, i64* %integer1.addr, align 8, !dbg !929
  %20 = load i8, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !931
  %conv14 = zext i8 %20 to i64, !dbg !931
  %cmp15 = icmp uge i64 %19, %conv14, !dbg !932
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !933

if.then17:                                        ; preds = %sw.bb13
  store i64 0, i64* %retval, align 8, !dbg !934
  br label %return, !dbg !934

if.end18:                                         ; preds = %sw.bb13
  %21 = load i64, i64* %integer0.addr, align 8, !dbg !936
  %22 = load i64, i64* %integer1.addr, align 8, !dbg !937
  %shr = lshr i64 %21, %22, !dbg !938
  store i64 %shr, i64* %retval, align 8, !dbg !939
  br label %return, !dbg !939

sw.bb19:                                          ; preds = %entry
  %23 = load i64, i64* %integer0.addr, align 8, !dbg !940
  %24 = load i64, i64* %integer1.addr, align 8, !dbg !941
  %sub = sub i64 %23, %24, !dbg !942
  store i64 %sub, i64* %retval, align 8, !dbg !943
  br label %return, !dbg !943

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !944
  br label %return, !dbg !944

return:                                           ; preds = %sw.default, %sw.bb19, %if.end18, %if.then17, %if.end, %if.then, %sw.bb9, %sw.bb8, %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %25 = load i64, i64* %retval, align 8, !dbg !945
  ret i64 %25, !dbg !945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_do_logical_numeric_op(i16 zeroext %opcode, i64 %integer0, i64 %integer1, i8* %logical_result) #0 !dbg !946 {
entry:
  %opcode.addr = alloca i16, align 2
  %integer0.addr = alloca i64, align 8
  %integer1.addr = alloca i64, align 8
  %logical_result.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %local_result = alloca i8, align 1
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !949, metadata !DIExpression()), !dbg !950
  store i64 %integer0, i64* %integer0.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %integer0.addr, metadata !951, metadata !DIExpression()), !dbg !952
  store i64 %integer1, i64* %integer1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %integer1.addr, metadata !953, metadata !DIExpression()), !dbg !954
  store i8* %logical_result, i8** %logical_result.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %logical_result.addr, metadata !955, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i32* %status, metadata !957, metadata !DIExpression()), !dbg !958
  store i32 0, i32* %status, align 4, !dbg !958
  call void @llvm.dbg.declare(metadata i8* %local_result, metadata !959, metadata !DIExpression()), !dbg !960
  store i8 0, i8* %local_result, align 1, !dbg !960
  %0 = load i16, i16* %opcode.addr, align 2, !dbg !961
  %conv = zext i16 %0 to i32, !dbg !961
  switch i32 %conv, label %sw.default [
    i32 144, label %sw.bb
    i32 145, label %sw.bb2
  ], !dbg !962

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %integer0.addr, align 8, !dbg !963
  %tobool = icmp ne i64 %1, 0, !dbg !963
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !966

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load i64, i64* %integer1.addr, align 8, !dbg !967
  %tobool1 = icmp ne i64 %2, 0, !dbg !967
  br i1 %tobool1, label %if.then, label %if.end, !dbg !968

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %local_result, align 1, !dbg !969
  br label %if.end, !dbg !971

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !972

sw.bb2:                                           ; preds = %entry
  %3 = load i64, i64* %integer0.addr, align 8, !dbg !973
  %tobool3 = icmp ne i64 %3, 0, !dbg !973
  br i1 %tobool3, label %if.then5, label %lor.lhs.false, !dbg !975

lor.lhs.false:                                    ; preds = %sw.bb2
  %4 = load i64, i64* %integer1.addr, align 8, !dbg !976
  %tobool4 = icmp ne i64 %4, 0, !dbg !976
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !977

if.then5:                                         ; preds = %lor.lhs.false, %sw.bb2
  store i8 1, i8* %local_result, align 1, !dbg !978
  br label %if.end6, !dbg !980

if.end6:                                          ; preds = %if.then5, %lor.lhs.false
  br label %sw.epilog, !dbg !981

sw.default:                                       ; preds = %entry
  %5 = load i16, i16* %opcode.addr, align 2, !dbg !982
  %conv7 = zext i16 %5 to i32, !dbg !982
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 234, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %conv7) #3, !dbg !982
  store i32 12303, i32* %status, align 4, !dbg !983
  br label %sw.epilog, !dbg !984

sw.epilog:                                        ; preds = %sw.default, %if.end6, %if.end
  %6 = load i8, i8* %local_result, align 1, !dbg !985
  %7 = load i8*, i8** %logical_result.addr, align 8, !dbg !986
  store i8 %6, i8* %7, align 1, !dbg !987
  %8 = load i32, i32* %status, align 4, !dbg !988
  ret i32 %8, !dbg !988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_do_logical_op(i16 zeroext %opcode, %union.acpi_operand_object* %operand0, %union.acpi_operand_object* %operand1, i8* %logical_result) #0 !dbg !989 {
entry:
  %opcode.addr = alloca i16, align 2
  %operand0.addr = alloca %union.acpi_operand_object*, align 8
  %operand1.addr = alloca %union.acpi_operand_object*, align 8
  %logical_result.addr = alloca i8*, align 8
  %local_operand1 = alloca %union.acpi_operand_object*, align 8
  %integer0 = alloca i64, align 8
  %integer1 = alloca i64, align 8
  %length0 = alloca i32, align 4
  %length1 = alloca i32, align 4
  %status = alloca i32, align 4
  %local_result = alloca i8, align 1
  %compare = alloca i32, align 4
  store i16 %opcode, i16* %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %opcode.addr, metadata !992, metadata !DIExpression()), !dbg !993
  store %union.acpi_operand_object* %operand0, %union.acpi_operand_object** %operand0.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand0.addr, metadata !994, metadata !DIExpression()), !dbg !995
  store %union.acpi_operand_object* %operand1, %union.acpi_operand_object** %operand1.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand1.addr, metadata !996, metadata !DIExpression()), !dbg !997
  store i8* %logical_result, i8** %logical_result.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %logical_result.addr, metadata !998, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %local_operand1, metadata !1000, metadata !DIExpression()), !dbg !1001
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1002
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1001
  call void @llvm.dbg.declare(metadata i64* %integer0, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.declare(metadata i64* %integer1, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %length0, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %length1, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i32 0, i32* %status, align 4, !dbg !1012
  call void @llvm.dbg.declare(metadata i8* %local_result, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i8 0, i8* %local_result, align 1, !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %compare, metadata !1015, metadata !DIExpression()), !dbg !1017
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1018
  %common = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_common*, !dbg !1019
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1020
  %2 = load i8, i8* %type, align 1, !dbg !1020
  %conv = zext i8 %2 to i32, !dbg !1018
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ], !dbg !1021

sw.bb:                                            ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1022
  %call = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %3, %union.acpi_operand_object** %local_operand1, i32 1) #3, !dbg !1024
  store i32 %call, i32* %status, align 4, !dbg !1025
  br label %sw.epilog, !dbg !1026

sw.bb1:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1027
  %call2 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %4, %union.acpi_operand_object** %local_operand1, i32 2) #3, !dbg !1028
  store i32 %call2, i32* %status, align 4, !dbg !1029
  br label %sw.epilog, !dbg !1030

sw.bb3:                                           ; preds = %entry
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1031
  %call4 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %5, %union.acpi_operand_object** %local_operand1) #3, !dbg !1032
  store i32 %call4, i32* %status, align 4, !dbg !1033
  br label %sw.epilog, !dbg !1034

sw.default:                                       ; preds = %entry
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1035
  %common5 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_common*, !dbg !1035
  %type6 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common5, i32 0, i32 2, !dbg !1035
  %7 = load i8, i8* %type6, align 1, !dbg !1035
  %conv7 = zext i8 %7 to i32, !dbg !1035
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %conv7) #3, !dbg !1035
  store i32 12303, i32* %status, align 4, !dbg !1036
  br label %sw.epilog, !dbg !1037

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %8 = load i32, i32* %status, align 4, !dbg !1038
  %tobool = icmp ne i32 %8, 0, !dbg !1038
  br i1 %tobool, label %if.then, label %if.end, !dbg !1040

if.then:                                          ; preds = %sw.epilog
  br label %cleanup, !dbg !1041

if.end:                                           ; preds = %sw.epilog
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1043
  %common8 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_common*, !dbg !1045
  %type9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 2, !dbg !1046
  %10 = load i8, i8* %type9, align 1, !dbg !1046
  %conv10 = zext i8 %10 to i32, !dbg !1043
  %cmp = icmp eq i32 %conv10, 1, !dbg !1047
  br i1 %cmp, label %if.then12, label %if.else, !dbg !1048

if.then12:                                        ; preds = %if.end
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1049
  %integer = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_integer*, !dbg !1051
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1052
  %12 = load i64, i64* %value, align 8, !dbg !1052
  store i64 %12, i64* %integer0, align 8, !dbg !1053
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1054
  %integer13 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_integer*, !dbg !1055
  %value14 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer13, i32 0, i32 6, !dbg !1056
  %14 = load i64, i64* %value14, align 8, !dbg !1056
  store i64 %14, i64* %integer1, align 8, !dbg !1057
  %15 = load i16, i16* %opcode.addr, align 2, !dbg !1058
  %conv15 = zext i16 %15 to i32, !dbg !1058
  switch i32 %conv15, label %sw.default31 [
    i32 147, label %sw.bb16
    i32 148, label %sw.bb21
    i32 149, label %sw.bb26
  ], !dbg !1059

sw.bb16:                                          ; preds = %if.then12
  %16 = load i64, i64* %integer0, align 8, !dbg !1060
  %17 = load i64, i64* %integer1, align 8, !dbg !1063
  %cmp17 = icmp eq i64 %16, %17, !dbg !1064
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1065

if.then19:                                        ; preds = %sw.bb16
  store i8 1, i8* %local_result, align 1, !dbg !1066
  br label %if.end20, !dbg !1068

if.end20:                                         ; preds = %if.then19, %sw.bb16
  br label %sw.epilog33, !dbg !1069

sw.bb21:                                          ; preds = %if.then12
  %18 = load i64, i64* %integer0, align 8, !dbg !1070
  %19 = load i64, i64* %integer1, align 8, !dbg !1072
  %cmp22 = icmp ugt i64 %18, %19, !dbg !1073
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !1074

if.then24:                                        ; preds = %sw.bb21
  store i8 1, i8* %local_result, align 1, !dbg !1075
  br label %if.end25, !dbg !1077

if.end25:                                         ; preds = %if.then24, %sw.bb21
  br label %sw.epilog33, !dbg !1078

sw.bb26:                                          ; preds = %if.then12
  %20 = load i64, i64* %integer0, align 8, !dbg !1079
  %21 = load i64, i64* %integer1, align 8, !dbg !1081
  %cmp27 = icmp ult i64 %20, %21, !dbg !1082
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1083

if.then29:                                        ; preds = %sw.bb26
  store i8 1, i8* %local_result, align 1, !dbg !1084
  br label %if.end30, !dbg !1086

if.end30:                                         ; preds = %if.then29, %sw.bb26
  br label %sw.epilog33, !dbg !1087

sw.default31:                                     ; preds = %if.then12
  %22 = load i16, i16* %opcode.addr, align 2, !dbg !1088
  %conv32 = zext i16 %22 to i32, !dbg !1088
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 362, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %conv32) #3, !dbg !1088
  store i32 12303, i32* %status, align 4, !dbg !1089
  br label %sw.epilog33, !dbg !1090

sw.epilog33:                                      ; preds = %sw.default31, %if.end30, %if.end25, %if.end20
  br label %if.end80, !dbg !1091

if.else:                                          ; preds = %if.end
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1092
  %buffer = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_buffer*, !dbg !1094
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1095
  %24 = load i32, i32* %length, align 8, !dbg !1095
  store i32 %24, i32* %length0, align 4, !dbg !1096
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1097
  %buffer34 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_buffer*, !dbg !1098
  %length35 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer34, i32 0, i32 6, !dbg !1099
  %26 = load i32, i32* %length35, align 8, !dbg !1099
  store i32 %26, i32* %length1, align 4, !dbg !1100
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1101
  %buffer36 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_buffer*, !dbg !1102
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer36, i32 0, i32 5, !dbg !1103
  %28 = load i8*, i8** %pointer, align 8, !dbg !1103
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1104
  %buffer37 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_buffer*, !dbg !1105
  %pointer38 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer37, i32 0, i32 5, !dbg !1106
  %30 = load i8*, i8** %pointer38, align 8, !dbg !1106
  %31 = load i32, i32* %length0, align 4, !dbg !1107
  %32 = load i32, i32* %length1, align 4, !dbg !1108
  %cmp39 = icmp ugt i32 %31, %32, !dbg !1109
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !1110

cond.true:                                        ; preds = %if.else
  %33 = load i32, i32* %length1, align 4, !dbg !1111
  br label %cond.end, !dbg !1110

cond.false:                                       ; preds = %if.else
  %34 = load i32, i32* %length0, align 4, !dbg !1112
  br label %cond.end, !dbg !1110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ], !dbg !1110
  %conv41 = zext i32 %cond to i64, !dbg !1110
  %call42 = call i32 @memcmp(i8* %28, i8* %30, i64 %conv41) #3, !dbg !1113
  store i32 %call42, i32* %compare, align 4, !dbg !1114
  %35 = load i16, i16* %opcode.addr, align 2, !dbg !1115
  %conv43 = zext i16 %35 to i32, !dbg !1115
  switch i32 %conv43, label %sw.default77 [
    i32 147, label %sw.bb44
    i32 148, label %sw.bb51
    i32 149, label %sw.bb64
  ], !dbg !1116

sw.bb44:                                          ; preds = %cond.end
  %36 = load i32, i32* %length0, align 4, !dbg !1117
  %37 = load i32, i32* %length1, align 4, !dbg !1120
  %cmp45 = icmp eq i32 %36, %37, !dbg !1121
  br i1 %cmp45, label %land.lhs.true, label %if.end50, !dbg !1122

land.lhs.true:                                    ; preds = %sw.bb44
  %38 = load i32, i32* %compare, align 4, !dbg !1123
  %cmp47 = icmp eq i32 %38, 0, !dbg !1124
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1125

if.then49:                                        ; preds = %land.lhs.true
  store i8 1, i8* %local_result, align 1, !dbg !1126
  br label %if.end50, !dbg !1128

if.end50:                                         ; preds = %if.then49, %land.lhs.true, %sw.bb44
  br label %sw.epilog79, !dbg !1129

sw.bb51:                                          ; preds = %cond.end
  %39 = load i32, i32* %compare, align 4, !dbg !1130
  %cmp52 = icmp sgt i32 %39, 0, !dbg !1132
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !1133

if.then54:                                        ; preds = %sw.bb51
  store i8 1, i8* %local_result, align 1, !dbg !1134
  br label %cleanup, !dbg !1136

if.end55:                                         ; preds = %sw.bb51
  %40 = load i32, i32* %compare, align 4, !dbg !1137
  %cmp56 = icmp slt i32 %40, 0, !dbg !1139
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1140

if.then58:                                        ; preds = %if.end55
  br label %cleanup, !dbg !1141

if.end59:                                         ; preds = %if.end55
  %41 = load i32, i32* %length0, align 4, !dbg !1143
  %42 = load i32, i32* %length1, align 4, !dbg !1145
  %cmp60 = icmp ugt i32 %41, %42, !dbg !1146
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !1147

if.then62:                                        ; preds = %if.end59
  store i8 1, i8* %local_result, align 1, !dbg !1148
  br label %if.end63, !dbg !1150

if.end63:                                         ; preds = %if.then62, %if.end59
  br label %sw.epilog79, !dbg !1151

sw.bb64:                                          ; preds = %cond.end
  %43 = load i32, i32* %compare, align 4, !dbg !1152
  %cmp65 = icmp sgt i32 %43, 0, !dbg !1154
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !1155

if.then67:                                        ; preds = %sw.bb64
  br label %cleanup, !dbg !1156

if.end68:                                         ; preds = %sw.bb64
  %44 = load i32, i32* %compare, align 4, !dbg !1158
  %cmp69 = icmp slt i32 %44, 0, !dbg !1160
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !1161

if.then71:                                        ; preds = %if.end68
  store i8 1, i8* %local_result, align 1, !dbg !1162
  br label %cleanup, !dbg !1164

if.end72:                                         ; preds = %if.end68
  %45 = load i32, i32* %length0, align 4, !dbg !1165
  %46 = load i32, i32* %length1, align 4, !dbg !1167
  %cmp73 = icmp ult i32 %45, %46, !dbg !1168
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !1169

if.then75:                                        ; preds = %if.end72
  store i8 1, i8* %local_result, align 1, !dbg !1170
  br label %if.end76, !dbg !1172

if.end76:                                         ; preds = %if.then75, %if.end72
  br label %sw.epilog79, !dbg !1173

sw.default77:                                     ; preds = %cond.end
  %47 = load i16, i16* %opcode.addr, align 2, !dbg !1174
  %conv78 = zext i16 %47 to i32, !dbg !1174
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 432, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %conv78) #3, !dbg !1174
  store i32 12303, i32* %status, align 4, !dbg !1175
  br label %sw.epilog79, !dbg !1176

sw.epilog79:                                      ; preds = %sw.default77, %if.end76, %if.end63, %if.end50
  br label %if.end80

if.end80:                                         ; preds = %sw.epilog79, %sw.epilog33
  br label %cleanup, !dbg !1177

cleanup:                                          ; preds = %if.end80, %if.then71, %if.then67, %if.then58, %if.then54, %if.then
  call void @llvm.dbg.label(metadata !1178), !dbg !1179
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1180
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1182
  %cmp81 = icmp ne %union.acpi_operand_object* %48, %49, !dbg !1183
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !1184

if.then83:                                        ; preds = %cleanup
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1185
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %50) #3, !dbg !1187
  br label %if.end84, !dbg !1188

if.end84:                                         ; preds = %if.then83, %cleanup
  %51 = load i8, i8* %local_result, align 1, !dbg !1189
  %52 = load i8*, i8** %logical_result.addr, align 8, !dbg !1190
  store i8 %51, i8* %52, align 1, !dbg !1191
  %53 = load i32, i32* %status, align 4, !dbg !1192
  ret i32 %53, !dbg !1192
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!805, !806, !807, !808}
!llvm.ident = !{!809}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !803, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !802, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exmisc.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !25, !159}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 432, size: 1600, elements: !20)
!20 = !{!21, !32, !800, !801}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !19, file: !6, line: 433, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 427, size: 128, elements: !23)
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !22, file: !6, line: 428, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !6, line: 429, baseType: !27, size: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !19, file: !6, line: 434, baseType: !33, size: 576)
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !34)
!34 = !{!35, !47, !63, !77, !114, !128, !137, !451, !468, !483, !496, !574, !586, !600, !610, !628, !650, !669, !688, !707, !720, !746, !763, !776, !790, !799}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !33, file: !6, line: 368, baseType: !36, size: 128)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !37)
!37 = !{!38, !40, !41, !42, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !6, line: 74, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !6, line: 74, baseType: !27, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !6, line: 74, baseType: !27, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !6, line: 74, baseType: !43, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !6, line: 74, baseType: !27, size: 8, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !33, file: !6, line: 369, baseType: !48, size: 192)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !59}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !48, file: !6, line: 77, baseType: !39, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !6, line: 77, baseType: !27, size: 8, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !6, line: 77, baseType: !27, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !48, file: !6, line: 77, baseType: !43, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !6, line: 77, baseType: !27, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !48, file: !6, line: 77, baseType: !56, size: 24, offset: 104)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 3)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !48, file: !6, line: 78, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !62)
!62 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !33, file: !6, line: 370, baseType: !64, size: 256)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !74}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !6, line: 94, baseType: !39, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !6, line: 94, baseType: !27, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !6, line: 94, baseType: !27, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !6, line: 94, baseType: !43, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !6, line: 94, baseType: !27, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !64, file: !6, line: 94, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !64, file: !6, line: 94, baseType: !75, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !33, file: !6, line: 371, baseType: !78, size: 384)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !87, !88, !89, !90}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !6, line: 98, baseType: !39, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !6, line: 98, baseType: !27, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !6, line: 98, baseType: !27, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !6, line: 98, baseType: !43, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !6, line: 98, baseType: !27, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !78, file: !6, line: 98, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !78, file: !6, line: 98, baseType: !75, size: 32, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !78, file: !6, line: 99, baseType: !75, size: 32, offset: 224)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !78, file: !6, line: 100, baseType: !86, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !6, line: 101, baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !93, line: 133, size: 384, elements: !94)
!93 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98, !99, !108, !109, !110, !111}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !92, file: !93, line: 134, baseType: !39, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !93, line: 135, baseType: !27, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !93, line: 136, baseType: !27, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !93, line: 137, baseType: !43, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !93, line: 138, baseType: !100, size: 32, offset: 96)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !101, line: 327, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !100, file: !101, line: 328, baseType: !75, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !100, file: !101, line: 329, baseType: !105, size: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !92, file: !93, line: 139, baseType: !91, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !92, file: !93, line: 140, baseType: !91, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !92, file: !93, line: 141, baseType: !91, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !92, file: !93, line: 142, baseType: !112, size: 16, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !113, line: 445, baseType: !43)
!113 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !33, file: !6, line: 372, baseType: !115, size: 384)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !125, !126, !127}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !6, line: 105, baseType: !39, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !6, line: 105, baseType: !27, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !6, line: 105, baseType: !27, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !6, line: 105, baseType: !43, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !6, line: 105, baseType: !27, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !115, file: !6, line: 105, baseType: !91, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !115, file: !6, line: 106, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !115, file: !6, line: 107, baseType: !86, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !115, file: !6, line: 108, baseType: !75, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !115, file: !6, line: 109, baseType: !75, size: 32, offset: 352)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !33, file: !6, line: 373, baseType: !129, size: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !6, line: 119, baseType: !39, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !6, line: 119, baseType: !27, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !6, line: 119, baseType: !27, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !6, line: 119, baseType: !43, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !6, line: 119, baseType: !27, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !129, file: !6, line: 119, baseType: !25, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !33, file: !6, line: 374, baseType: !138, size: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !448, !449, !450}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !6, line: 144, baseType: !39, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !6, line: 144, baseType: !27, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !6, line: 144, baseType: !27, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !6, line: 144, baseType: !43, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !6, line: 144, baseType: !27, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !138, file: !6, line: 144, baseType: !27, size: 8, offset: 104)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !138, file: !6, line: 145, baseType: !27, size: 8, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !138, file: !6, line: 146, baseType: !27, size: 8, offset: 120)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !138, file: !6, line: 147, baseType: !39, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !6, line: 148, baseType: !39, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !138, file: !6, line: 149, baseType: !86, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !138, file: !6, line: 153, baseType: !152, size: 64, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !6, line: 150, size: 64, elements: !153)
!153 = !{!154, !447}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !152, file: !6, line: 151, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !93, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !113, line: 421, baseType: !75)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !27, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !27, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !43, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !27, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !27, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !27, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !112, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !27, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !27, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !27, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !27, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !27, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !27, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !27, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !27, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !86, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !75, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !75, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !75, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !75, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !93, line: 893, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !93, line: 894, baseType: !86, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !93, line: 895, baseType: !86, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !93, line: 896, baseType: !86, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !93, line: 897, baseType: !86, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !93, line: 898, baseType: !86, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !93, line: 899, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !93, line: 875, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !93, line: 876, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !93, line: 828, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !93, line: 829, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !93, line: 829, baseType: !27, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !93, line: 829, baseType: !27, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !93, line: 829, baseType: !43, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !93, line: 829, baseType: !86, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !93, line: 829, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !93, line: 829, baseType: !91, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !93, line: 829, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !93, line: 716, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !93, line: 717, baseType: !60, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !93, line: 718, baseType: !75, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !93, line: 719, baseType: !72, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !93, line: 720, baseType: !86, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !93, line: 721, baseType: !72, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !93, line: 722, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !93, line: 829, baseType: !27, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !93, line: 877, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !93, line: 835, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !93, line: 836, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !93, line: 836, baseType: !27, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !93, line: 836, baseType: !27, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !93, line: 836, baseType: !43, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !93, line: 836, baseType: !86, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !93, line: 836, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !93, line: 836, baseType: !91, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !93, line: 836, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !93, line: 836, baseType: !27, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !93, line: 836, baseType: !72, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !93, line: 837, baseType: !86, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !93, line: 838, baseType: !75, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !93, line: 839, baseType: !75, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !93, line: 878, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !93, line: 846, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !93, line: 847, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !93, line: 847, baseType: !27, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !93, line: 847, baseType: !27, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !93, line: 847, baseType: !43, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !93, line: 847, baseType: !86, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !93, line: 847, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !93, line: 847, baseType: !91, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !93, line: 847, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !93, line: 847, baseType: !27, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !93, line: 847, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !93, line: 848, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !93, line: 849, baseType: !72, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !93, line: 850, baseType: !27, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !93, line: 851, baseType: !72, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !93, line: 852, baseType: !72, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !93, line: 853, baseType: !72, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !93, line: 854, baseType: !105, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !93, line: 855, baseType: !75, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !93, line: 856, baseType: !75, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !93, line: 857, baseType: !75, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !93, line: 858, baseType: !75, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !93, line: 859, baseType: !75, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !93, line: 860, baseType: !75, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !93, line: 861, baseType: !75, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !93, line: 862, baseType: !75, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !93, line: 863, baseType: !75, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !93, line: 864, baseType: !75, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !93, line: 865, baseType: !75, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !93, line: 866, baseType: !75, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !93, line: 867, baseType: !75, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !93, line: 868, baseType: !43, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !93, line: 869, baseType: !27, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !93, line: 870, baseType: !27, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !93, line: 871, baseType: !27, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !93, line: 872, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !93, line: 900, baseType: !91, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !93, line: 901, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !93, line: 663, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !93, line: 664, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !93, line: 567, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !93, line: 568, baseType: !25, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !93, line: 568, baseType: !27, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !93, line: 568, baseType: !27, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !93, line: 568, baseType: !43, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !93, line: 568, baseType: !43, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !93, line: 665, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !93, line: 593, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !93, line: 594, baseType: !25, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !93, line: 594, baseType: !27, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !93, line: 594, baseType: !27, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !93, line: 594, baseType: !43, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !93, line: 594, baseType: !43, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !93, line: 594, baseType: !43, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !93, line: 595, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !93, line: 596, baseType: !86, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !93, line: 597, baseType: !86, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !93, line: 598, baseType: !60, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !93, line: 666, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !93, line: 573, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !93, line: 574, baseType: !25, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !93, line: 574, baseType: !27, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !93, line: 574, baseType: !27, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !93, line: 574, baseType: !43, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !93, line: 574, baseType: !43, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !93, line: 574, baseType: !39, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !93, line: 667, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !93, line: 604, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !93, line: 605, baseType: !25, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !93, line: 605, baseType: !27, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !93, line: 605, baseType: !27, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !93, line: 605, baseType: !43, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !93, line: 605, baseType: !43, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !93, line: 605, baseType: !91, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !93, line: 668, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !93, line: 608, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !93, line: 609, baseType: !25, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !93, line: 609, baseType: !27, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !93, line: 609, baseType: !27, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !93, line: 609, baseType: !43, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !93, line: 609, baseType: !43, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !93, line: 609, baseType: !75, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !93, line: 610, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !93, line: 611, baseType: !86, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !93, line: 612, baseType: !86, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !93, line: 613, baseType: !75, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !93, line: 669, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !93, line: 580, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !93, line: 581, baseType: !25, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !93, line: 581, baseType: !27, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !93, line: 581, baseType: !27, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !93, line: 581, baseType: !43, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !93, line: 581, baseType: !43, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !93, line: 581, baseType: !75, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !93, line: 582, baseType: !39, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !93, line: 583, baseType: !39, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !93, line: 584, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !93, line: 585, baseType: !25, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !93, line: 586, baseType: !75, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !93, line: 670, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !93, line: 620, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !93, line: 621, baseType: !25, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !93, line: 621, baseType: !27, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !93, line: 621, baseType: !27, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !93, line: 621, baseType: !43, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !93, line: 621, baseType: !43, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !93, line: 621, baseType: !27, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !93, line: 622, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !93, line: 623, baseType: !39, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !93, line: 624, baseType: !60, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !93, line: 671, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !93, line: 631, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !93, line: 632, baseType: !25, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !93, line: 632, baseType: !27, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !93, line: 632, baseType: !27, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !93, line: 632, baseType: !43, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !93, line: 632, baseType: !43, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !93, line: 633, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !93, line: 672, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !93, line: 654, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !93, line: 655, baseType: !25, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !93, line: 655, baseType: !27, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !93, line: 655, baseType: !27, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !93, line: 655, baseType: !43, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !93, line: 655, baseType: !43, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !93, line: 655, baseType: !27, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !93, line: 656, baseType: !91, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !93, line: 657, baseType: !39, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !93, line: 658, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !93, line: 645, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !93, line: 646, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !113, line: 1052, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !75, !25}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !113, line: 424, baseType: !25)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !93, line: 647, baseType: !25, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !93, line: 902, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !93, line: 903, baseType: !75, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !75, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !75, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !43, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !27, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !124, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !86, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !124, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !91, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !39, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !91, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !39, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !91, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !72, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !93, line: 702, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !93, line: 706, baseType: !75, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !93, line: 707, baseType: !75, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !93, line: 708, baseType: !43, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !93, line: 709, baseType: !27, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !93, line: 710, baseType: !27, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !93, line: 711, baseType: !27, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !39, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !39, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !93, line: 637, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!159, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !93, line: 641, baseType: !156)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !152, file: !6, line: 152, baseType: !39, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !138, file: !6, line: 155, baseType: !75, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !138, file: !6, line: 156, baseType: !112, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !138, file: !6, line: 157, baseType: !27, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !33, file: !6, line: 375, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !39, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !43, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !43, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !25, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !60, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !39, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !39, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !91, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !27, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !33, file: !6, line: 376, baseType: !469, size: 448)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !39, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !43, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !91, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !39, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !39, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !113, line: 129, baseType: !60)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !75, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !33, file: !6, line: 377, baseType: !484, size: 320)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !6, line: 185, baseType: !39, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !6, line: 185, baseType: !27, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !6, line: 185, baseType: !27, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !6, line: 185, baseType: !43, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !6, line: 185, baseType: !27, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !6, line: 185, baseType: !492, size: 128, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !6, line: 185, baseType: !39, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !33, file: !6, line: 378, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !6, line: 188, baseType: !39, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !6, line: 188, baseType: !27, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !6, line: 188, baseType: !27, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !6, line: 188, baseType: !43, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !6, line: 188, baseType: !27, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !6, line: 189, baseType: !492, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !6, line: 189, baseType: !39, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !497, file: !6, line: 189, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !93, line: 480, size: 576, elements: !509)
!509 = !{!510, !511, !512, !513, !521, !536, !568, !569, !570, !571, !572, !573}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !93, line: 481, baseType: !91, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !93, line: 482, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !93, line: 483, baseType: !507, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !508, file: !93, line: 484, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !93, line: 497, size: 256, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !93, line: 498, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !93, line: 499, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !515, file: !93, line: 500, baseType: !507, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !515, file: !93, line: 501, baseType: !75, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !508, file: !93, line: 485, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !93, line: 466, size: 320, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !523, file: !93, line: 467, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !93, line: 459, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !526, file: !93, line: 460, baseType: !27, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !526, file: !93, line: 461, baseType: !60, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !523, file: !93, line: 468, baseType: !526, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !523, file: !93, line: 469, baseType: !43, size: 16, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !523, file: !93, line: 470, baseType: !27, size: 8, offset: 272)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !523, file: !93, line: 471, baseType: !27, size: 8, offset: 280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !523, file: !93, line: 472, baseType: !27, size: 8, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !523, file: !93, line: 473, baseType: !27, size: 8, offset: 296)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !508, file: !93, line: 486, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !93, line: 448, size: 192, elements: !539)
!539 = !{!540, !563, !564, !565, !566, !567}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !538, file: !93, line: 449, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !93, line: 438, size: 64, elements: !542)
!542 = !{!543, !544, !557}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !541, file: !93, line: 439, baseType: !91, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !541, file: !93, line: 440, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !93, line: 419, size: 256, elements: !547)
!547 = !{!548, !553, !554, !555, !556}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !93, line: 420, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !113, line: 1049, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!75, !389, !75, !25}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !546, file: !93, line: 421, baseType: !25, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !93, line: 422, baseType: !91, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !546, file: !93, line: 423, baseType: !27, size: 8, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !546, file: !93, line: 424, baseType: !27, size: 8, offset: 200)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !541, file: !93, line: 441, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !93, line: 429, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !559, file: !93, line: 430, baseType: !91, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !93, line: 431, baseType: !558, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !538, file: !93, line: 450, baseType: !522, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !93, line: 451, baseType: !27, size: 8, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !538, file: !93, line: 452, baseType: !27, size: 8, offset: 136)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !538, file: !93, line: 453, baseType: !27, size: 8, offset: 144)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !538, file: !93, line: 454, baseType: !27, size: 8, offset: 152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !93, line: 487, baseType: !60, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !508, file: !93, line: 488, baseType: !75, size: 32, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !508, file: !93, line: 489, baseType: !43, size: 16, offset: 480)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !508, file: !93, line: 490, baseType: !43, size: 16, offset: 496)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !93, line: 491, baseType: !27, size: 8, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !508, file: !93, line: 492, baseType: !27, size: 8, offset: 520)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !33, file: !6, line: 379, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !6, line: 193, baseType: !39, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !6, line: 193, baseType: !27, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !6, line: 193, baseType: !27, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !6, line: 193, baseType: !43, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !6, line: 193, baseType: !27, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !6, line: 193, baseType: !492, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !6, line: 193, baseType: !39, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !575, file: !6, line: 193, baseType: !75, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !575, file: !6, line: 194, baseType: !75, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !33, file: !6, line: 380, baseType: !587, size: 384)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !6, line: 198, baseType: !39, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !6, line: 198, baseType: !27, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !6, line: 198, baseType: !27, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !6, line: 198, baseType: !43, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !6, line: 198, baseType: !27, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !587, file: !6, line: 200, baseType: !27, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !587, file: !6, line: 201, baseType: !27, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !587, file: !6, line: 202, baseType: !492, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !587, file: !6, line: 202, baseType: !39, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !587, file: !6, line: 202, baseType: !599, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !113, line: 128, baseType: !60)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !33, file: !6, line: 381, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !6, line: 206, baseType: !39, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !6, line: 206, baseType: !27, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !6, line: 206, baseType: !27, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !6, line: 206, baseType: !43, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !6, line: 206, baseType: !27, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !6, line: 206, baseType: !492, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !6, line: 206, baseType: !39, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !33, file: !6, line: 382, baseType: !611, size: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !6, line: 234, baseType: !39, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !6, line: 234, baseType: !43, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !6, line: 234, baseType: !91, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !6, line: 234, baseType: !75, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !6, line: 234, baseType: !75, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !6, line: 234, baseType: !75, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !6, line: 234, baseType: !27, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !6, line: 234, baseType: !39, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !33, file: !6, line: 383, baseType: !629, size: 576)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !629, file: !6, line: 238, baseType: !39, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !629, file: !6, line: 238, baseType: !43, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 104)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 112)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !629, file: !6, line: 238, baseType: !91, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !629, file: !6, line: 238, baseType: !75, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !629, file: !6, line: 238, baseType: !75, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !6, line: 238, baseType: !75, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !629, file: !6, line: 238, baseType: !27, size: 8, offset: 296)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !629, file: !6, line: 238, baseType: !43, size: 16, offset: 304)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !629, file: !6, line: 239, baseType: !39, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !629, file: !6, line: 240, baseType: !86, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !629, file: !6, line: 241, baseType: !43, size: 16, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !629, file: !6, line: 242, baseType: !86, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !33, file: !6, line: 384, baseType: !651, size: 384)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !6, line: 263, baseType: !39, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !6, line: 263, baseType: !43, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !6, line: 263, baseType: !91, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !6, line: 263, baseType: !75, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !6, line: 263, baseType: !75, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !6, line: 263, baseType: !75, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !651, file: !6, line: 263, baseType: !27, size: 8, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !651, file: !6, line: 264, baseType: !39, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !33, file: !6, line: 385, baseType: !670, size: 448)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !6, line: 246, baseType: !39, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !6, line: 246, baseType: !43, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 104)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 120)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !6, line: 246, baseType: !91, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !670, file: !6, line: 246, baseType: !75, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !670, file: !6, line: 246, baseType: !75, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !6, line: 246, baseType: !75, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !670, file: !6, line: 246, baseType: !27, size: 8, offset: 296)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !670, file: !6, line: 246, baseType: !39, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !670, file: !6, line: 247, baseType: !39, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !33, file: !6, line: 386, baseType: !689, size: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !6, line: 251, baseType: !39, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !6, line: 251, baseType: !43, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 120)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !6, line: 251, baseType: !91, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !689, file: !6, line: 251, baseType: !75, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !689, file: !6, line: 251, baseType: !75, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !6, line: 251, baseType: !75, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !689, file: !6, line: 251, baseType: !27, size: 8, offset: 296)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !689, file: !6, line: 256, baseType: !39, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !689, file: !6, line: 257, baseType: !39, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !33, file: !6, line: 387, baseType: !708, size: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !708, file: !6, line: 274, baseType: !39, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !708, file: !6, line: 274, baseType: !27, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !708, file: !6, line: 274, baseType: !27, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !708, file: !6, line: 274, baseType: !43, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !6, line: 274, baseType: !27, size: 8, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !6, line: 274, baseType: !91, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !708, file: !6, line: 275, baseType: !75, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !708, file: !6, line: 276, baseType: !385, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !708, file: !6, line: 277, baseType: !25, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !708, file: !6, line: 278, baseType: !492, size: 128, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !33, file: !6, line: 388, baseType: !721, size: 512)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !736, !737, !738, !744, !745}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !721, file: !6, line: 282, baseType: !39, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !6, line: 282, baseType: !27, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !6, line: 282, baseType: !27, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !721, file: !6, line: 282, baseType: !43, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !6, line: 282, baseType: !27, size: 8, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !721, file: !6, line: 282, baseType: !27, size: 8, offset: 104)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !721, file: !6, line: 283, baseType: !27, size: 8, offset: 112)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !721, file: !6, line: 284, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !113, line: 1084, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!159, !75, !481, !75, !735, !25, !25}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !6, line: 285, baseType: !91, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !721, file: !6, line: 286, baseType: !25, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !721, file: !6, line: 287, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !113, line: 1102, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!159, !389, !75, !25, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !721, file: !6, line: 288, baseType: !39, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !6, line: 289, baseType: !39, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !33, file: !6, line: 389, baseType: !747, size: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !6, line: 308, baseType: !39, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !6, line: 308, baseType: !27, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !6, line: 308, baseType: !27, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !6, line: 308, baseType: !43, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !6, line: 308, baseType: !27, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !747, file: !6, line: 308, baseType: !27, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !747, file: !6, line: 309, baseType: !27, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !747, file: !6, line: 310, baseType: !27, size: 8, offset: 120)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !747, file: !6, line: 311, baseType: !25, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !6, line: 312, baseType: !91, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !747, file: !6, line: 313, baseType: !124, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !747, file: !6, line: 314, baseType: !86, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !747, file: !6, line: 315, baseType: !86, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !6, line: 316, baseType: !75, size: 32, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !33, file: !6, line: 390, baseType: !764, size: 448)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !6, line: 341, baseType: !39, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !6, line: 341, baseType: !27, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !6, line: 341, baseType: !27, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !6, line: 341, baseType: !43, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !6, line: 341, baseType: !27, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !764, file: !6, line: 341, baseType: !91, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !764, file: !6, line: 342, baseType: !91, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !764, file: !6, line: 343, baseType: !25, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !764, file: !6, line: 344, baseType: !86, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !764, file: !6, line: 345, baseType: !75, size: 32, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !6, line: 391, baseType: !777, size: 256)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !789}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !6, line: 351, baseType: !39, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !6, line: 351, baseType: !27, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !6, line: 351, baseType: !27, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !6, line: 351, baseType: !43, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !6, line: 351, baseType: !27, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !777, file: !6, line: 351, baseType: !785, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !113, line: 1055, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !389, !25}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !777, file: !6, line: 352, baseType: !25, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !33, file: !6, line: 392, baseType: !791, size: 192)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !791, file: !6, line: 358, baseType: !39, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !791, file: !6, line: 358, baseType: !27, size: 8, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !6, line: 358, baseType: !27, size: 8, offset: 72)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !791, file: !6, line: 358, baseType: !43, size: 16, offset: 80)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !6, line: 358, baseType: !27, size: 8, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !6, line: 358, baseType: !39, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !33, file: !6, line: 399, baseType: !92, size: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !6, line: 435, baseType: !92, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !19, file: !6, line: 436, baseType: !195, size: 1600)
!802 = !{!0}
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 56, elements: !399)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!805 = !{i32 7, !"Dwarf Version", i32 4}
!806 = !{i32 2, !"Debug Info Version", i32 3}
!807 = !{i32 1, !"wchar_size", i32 2}
!808 = !{i32 1, !"Code Model", i32 2}
!809 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!810 = distinct !DISubprogram(name: "acpi_ex_get_object_reference", scope: !3, file: !3, line: 33, type: !811, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!159, !39, !124, !160}
!813 = !{}
!814 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !810, file: !3, line: 33, type: !39)
!815 = !DILocation(line: 33, column: 57, scope: !810)
!816 = !DILocalVariable(name: "return_desc", arg: 2, scope: !810, file: !3, line: 34, type: !124)
!817 = !DILocation(line: 34, column: 37, scope: !810)
!818 = !DILocalVariable(name: "walk_state", arg: 3, scope: !810, file: !3, line: 35, type: !160)
!819 = !DILocation(line: 35, column: 33, scope: !810)
!820 = !DILocalVariable(name: "reference_obj", scope: !810, file: !3, line: 37, type: !39)
!821 = !DILocation(line: 37, column: 29, scope: !810)
!822 = !DILocalVariable(name: "referenced_obj", scope: !810, file: !3, line: 38, type: !39)
!823 = !DILocation(line: 38, column: 29, scope: !810)
!824 = !DILocation(line: 42, column: 3, scope: !810)
!825 = !DILocation(line: 42, column: 15, scope: !810)
!826 = !DILocation(line: 44, column: 10, scope: !810)
!827 = !DILocation(line: 44, column: 2, scope: !810)
!828 = !DILocation(line: 47, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 47, column: 7)
!830 = distinct !DILexicalBlock(scope: !810, file: !3, line: 44, column: 46)
!831 = !DILocation(line: 47, column: 17, scope: !829)
!832 = !DILocation(line: 47, column: 24, scope: !829)
!833 = !DILocation(line: 47, column: 29, scope: !829)
!834 = !DILocation(line: 47, column: 7, scope: !830)
!835 = !DILocation(line: 48, column: 4, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !3, line: 47, column: 59)
!837 = !DILocation(line: 54, column: 11, scope: !830)
!838 = !DILocation(line: 54, column: 21, scope: !830)
!839 = !DILocation(line: 54, column: 31, scope: !830)
!840 = !DILocation(line: 54, column: 3, scope: !830)
!841 = !DILocation(line: 61, column: 21, scope: !842)
!842 = distinct !DILexicalBlock(scope: !830, file: !3, line: 54, column: 38)
!843 = !DILocation(line: 61, column: 31, scope: !842)
!844 = !DILocation(line: 61, column: 41, scope: !842)
!845 = !DILocation(line: 61, column: 19, scope: !842)
!846 = !DILocation(line: 62, column: 4, scope: !842)
!847 = !DILocation(line: 66, column: 4, scope: !842)
!848 = !DILocation(line: 68, column: 4, scope: !842)
!849 = !DILocation(line: 70, column: 3, scope: !830)
!850 = !DILocation(line: 76, column: 20, scope: !830)
!851 = !DILocation(line: 76, column: 18, scope: !830)
!852 = !DILocation(line: 77, column: 3, scope: !830)
!853 = !DILocation(line: 81, column: 3, scope: !830)
!854 = !DILocation(line: 83, column: 3, scope: !830)
!855 = !DILocation(line: 89, column: 6, scope: !810)
!856 = !DILocation(line: 88, column: 16, scope: !810)
!857 = !DILocation(line: 90, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !810, file: !3, line: 90, column: 6)
!859 = !DILocation(line: 90, column: 6, scope: !810)
!860 = !DILocation(line: 91, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 90, column: 22)
!862 = !DILocation(line: 94, column: 2, scope: !810)
!863 = !DILocation(line: 94, column: 17, scope: !810)
!864 = !DILocation(line: 94, column: 27, scope: !810)
!865 = !DILocation(line: 94, column: 33, scope: !810)
!866 = !DILocation(line: 95, column: 36, scope: !810)
!867 = !DILocation(line: 95, column: 2, scope: !810)
!868 = !DILocation(line: 95, column: 17, scope: !810)
!869 = !DILocation(line: 95, column: 27, scope: !810)
!870 = !DILocation(line: 95, column: 34, scope: !810)
!871 = !DILocation(line: 96, column: 17, scope: !810)
!872 = !DILocation(line: 96, column: 3, scope: !810)
!873 = !DILocation(line: 96, column: 15, scope: !810)
!874 = !DILocation(line: 103, column: 2, scope: !810)
!875 = !DILocation(line: 104, column: 1, scope: !810)
!876 = distinct !DISubprogram(name: "acpi_ex_do_math_op", scope: !3, file: !3, line: 122, type: !877, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!877 = !DISubroutineType(types: !878)
!878 = !{!60, !43, !60, !60}
!879 = !DILocalVariable(name: "opcode", arg: 1, scope: !876, file: !3, line: 122, type: !43)
!880 = !DILocation(line: 122, column: 28, scope: !876)
!881 = !DILocalVariable(name: "integer0", arg: 2, scope: !876, file: !3, line: 122, type: !60)
!882 = !DILocation(line: 122, column: 40, scope: !876)
!883 = !DILocalVariable(name: "integer1", arg: 3, scope: !876, file: !3, line: 122, type: !60)
!884 = !DILocation(line: 122, column: 54, scope: !876)
!885 = !DILocation(line: 127, column: 10, scope: !876)
!886 = !DILocation(line: 127, column: 2, scope: !876)
!887 = !DILocation(line: 130, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !876, file: !3, line: 127, column: 18)
!889 = !DILocation(line: 130, column: 22, scope: !888)
!890 = !DILocation(line: 130, column: 20, scope: !888)
!891 = !DILocation(line: 130, column: 3, scope: !888)
!892 = !DILocation(line: 134, column: 11, scope: !888)
!893 = !DILocation(line: 134, column: 22, scope: !888)
!894 = !DILocation(line: 134, column: 20, scope: !888)
!895 = !DILocation(line: 134, column: 3, scope: !888)
!896 = !DILocation(line: 138, column: 13, scope: !888)
!897 = !DILocation(line: 138, column: 24, scope: !888)
!898 = !DILocation(line: 138, column: 22, scope: !888)
!899 = !DILocation(line: 138, column: 11, scope: !888)
!900 = !DILocation(line: 138, column: 3, scope: !888)
!901 = !DILocation(line: 142, column: 11, scope: !888)
!902 = !DILocation(line: 142, column: 22, scope: !888)
!903 = !DILocation(line: 142, column: 20, scope: !888)
!904 = !DILocation(line: 142, column: 3, scope: !888)
!905 = !DILocation(line: 146, column: 13, scope: !888)
!906 = !DILocation(line: 146, column: 24, scope: !888)
!907 = !DILocation(line: 146, column: 22, scope: !888)
!908 = !DILocation(line: 146, column: 11, scope: !888)
!909 = !DILocation(line: 146, column: 3, scope: !888)
!910 = !DILocation(line: 150, column: 11, scope: !888)
!911 = !DILocation(line: 150, column: 22, scope: !888)
!912 = !DILocation(line: 150, column: 20, scope: !888)
!913 = !DILocation(line: 150, column: 3, scope: !888)
!914 = !DILocation(line: 154, column: 11, scope: !888)
!915 = !DILocation(line: 154, column: 22, scope: !888)
!916 = !DILocation(line: 154, column: 20, scope: !888)
!917 = !DILocation(line: 154, column: 3, scope: !888)
!918 = !DILocation(line: 162, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !888, file: !3, line: 162, column: 7)
!920 = !DILocation(line: 162, column: 19, scope: !919)
!921 = !DILocation(line: 162, column: 16, scope: !919)
!922 = !DILocation(line: 162, column: 7, scope: !888)
!923 = !DILocation(line: 163, column: 4, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 162, column: 47)
!925 = !DILocation(line: 165, column: 11, scope: !888)
!926 = !DILocation(line: 165, column: 23, scope: !888)
!927 = !DILocation(line: 165, column: 20, scope: !888)
!928 = !DILocation(line: 165, column: 3, scope: !888)
!929 = !DILocation(line: 173, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !888, file: !3, line: 173, column: 7)
!931 = !DILocation(line: 173, column: 19, scope: !930)
!932 = !DILocation(line: 173, column: 16, scope: !930)
!933 = !DILocation(line: 173, column: 7, scope: !888)
!934 = !DILocation(line: 174, column: 4, scope: !935)
!935 = distinct !DILexicalBlock(scope: !930, file: !3, line: 173, column: 47)
!936 = !DILocation(line: 176, column: 11, scope: !888)
!937 = !DILocation(line: 176, column: 23, scope: !888)
!938 = !DILocation(line: 176, column: 20, scope: !888)
!939 = !DILocation(line: 176, column: 3, scope: !888)
!940 = !DILocation(line: 180, column: 11, scope: !888)
!941 = !DILocation(line: 180, column: 22, scope: !888)
!942 = !DILocation(line: 180, column: 20, scope: !888)
!943 = !DILocation(line: 180, column: 3, scope: !888)
!944 = !DILocation(line: 184, column: 3, scope: !888)
!945 = !DILocation(line: 186, column: 1, scope: !876)
!946 = distinct !DISubprogram(name: "acpi_ex_do_logical_numeric_op", scope: !3, file: !3, line: 209, type: !947, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!947 = !DISubroutineType(types: !948)
!948 = !{!159, !43, !60, !60, !86}
!949 = !DILocalVariable(name: "opcode", arg: 1, scope: !946, file: !3, line: 209, type: !43)
!950 = !DILocation(line: 209, column: 35, scope: !946)
!951 = !DILocalVariable(name: "integer0", arg: 2, scope: !946, file: !3, line: 210, type: !60)
!952 = !DILocation(line: 210, column: 14, scope: !946)
!953 = !DILocalVariable(name: "integer1", arg: 3, scope: !946, file: !3, line: 210, type: !60)
!954 = !DILocation(line: 210, column: 28, scope: !946)
!955 = !DILocalVariable(name: "logical_result", arg: 4, scope: !946, file: !3, line: 210, type: !86)
!956 = !DILocation(line: 210, column: 42, scope: !946)
!957 = !DILocalVariable(name: "status", scope: !946, file: !3, line: 212, type: !159)
!958 = !DILocation(line: 212, column: 14, scope: !946)
!959 = !DILocalVariable(name: "local_result", scope: !946, file: !3, line: 213, type: !27)
!960 = !DILocation(line: 213, column: 5, scope: !946)
!961 = !DILocation(line: 217, column: 10, scope: !946)
!962 = !DILocation(line: 217, column: 2, scope: !946)
!963 = !DILocation(line: 220, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 220, column: 7)
!965 = distinct !DILexicalBlock(scope: !946, file: !3, line: 217, column: 18)
!966 = !DILocation(line: 220, column: 16, scope: !964)
!967 = !DILocation(line: 220, column: 19, scope: !964)
!968 = !DILocation(line: 220, column: 7, scope: !965)
!969 = !DILocation(line: 221, column: 17, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !3, line: 220, column: 29)
!971 = !DILocation(line: 222, column: 3, scope: !970)
!972 = !DILocation(line: 223, column: 3, scope: !965)
!973 = !DILocation(line: 227, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !965, file: !3, line: 227, column: 7)
!975 = !DILocation(line: 227, column: 16, scope: !974)
!976 = !DILocation(line: 227, column: 19, scope: !974)
!977 = !DILocation(line: 227, column: 7, scope: !965)
!978 = !DILocation(line: 228, column: 17, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 227, column: 29)
!980 = !DILocation(line: 229, column: 3, scope: !979)
!981 = !DILocation(line: 230, column: 3, scope: !965)
!982 = !DILocation(line: 234, column: 3, scope: !965)
!983 = !DILocation(line: 236, column: 10, scope: !965)
!984 = !DILocation(line: 237, column: 3, scope: !965)
!985 = !DILocation(line: 242, column: 20, scope: !946)
!986 = !DILocation(line: 242, column: 3, scope: !946)
!987 = !DILocation(line: 242, column: 18, scope: !946)
!988 = !DILocation(line: 243, column: 2, scope: !946)
!989 = distinct !DISubprogram(name: "acpi_ex_do_logical_op", scope: !3, file: !3, line: 273, type: !990, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !813)
!990 = !DISubroutineType(types: !991)
!991 = !{!159, !43, !39, !39, !86}
!992 = !DILocalVariable(name: "opcode", arg: 1, scope: !989, file: !3, line: 273, type: !43)
!993 = !DILocation(line: 273, column: 27, scope: !989)
!994 = !DILocalVariable(name: "operand0", arg: 2, scope: !989, file: !3, line: 274, type: !39)
!995 = !DILocation(line: 274, column: 36, scope: !989)
!996 = !DILocalVariable(name: "operand1", arg: 3, scope: !989, file: !3, line: 275, type: !39)
!997 = !DILocation(line: 275, column: 36, scope: !989)
!998 = !DILocalVariable(name: "logical_result", arg: 4, scope: !989, file: !3, line: 275, type: !86)
!999 = !DILocation(line: 275, column: 51, scope: !989)
!1000 = !DILocalVariable(name: "local_operand1", scope: !989, file: !3, line: 277, type: !39)
!1001 = !DILocation(line: 277, column: 29, scope: !989)
!1002 = !DILocation(line: 277, column: 46, scope: !989)
!1003 = !DILocalVariable(name: "integer0", scope: !989, file: !3, line: 278, type: !60)
!1004 = !DILocation(line: 278, column: 6, scope: !989)
!1005 = !DILocalVariable(name: "integer1", scope: !989, file: !3, line: 279, type: !60)
!1006 = !DILocation(line: 279, column: 6, scope: !989)
!1007 = !DILocalVariable(name: "length0", scope: !989, file: !3, line: 280, type: !75)
!1008 = !DILocation(line: 280, column: 6, scope: !989)
!1009 = !DILocalVariable(name: "length1", scope: !989, file: !3, line: 281, type: !75)
!1010 = !DILocation(line: 281, column: 6, scope: !989)
!1011 = !DILocalVariable(name: "status", scope: !989, file: !3, line: 282, type: !159)
!1012 = !DILocation(line: 282, column: 14, scope: !989)
!1013 = !DILocalVariable(name: "local_result", scope: !989, file: !3, line: 283, type: !27)
!1014 = !DILocation(line: 283, column: 5, scope: !989)
!1015 = !DILocalVariable(name: "compare", scope: !989, file: !3, line: 284, type: !1016)
!1016 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1017 = !DILocation(line: 284, column: 6, scope: !989)
!1018 = !DILocation(line: 295, column: 10, scope: !989)
!1019 = !DILocation(line: 295, column: 20, scope: !989)
!1020 = !DILocation(line: 295, column: 27, scope: !989)
!1021 = !DILocation(line: 295, column: 2, scope: !989)
!1022 = !DILocation(line: 298, column: 39, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !989, file: !3, line: 295, column: 33)
!1024 = !DILocation(line: 298, column: 12, scope: !1023)
!1025 = !DILocation(line: 298, column: 10, scope: !1023)
!1026 = !DILocation(line: 300, column: 3, scope: !1023)
!1027 = !DILocation(line: 305, column: 33, scope: !1023)
!1028 = !DILocation(line: 305, column: 7, scope: !1023)
!1029 = !DILocation(line: 304, column: 10, scope: !1023)
!1030 = !DILocation(line: 307, column: 3, scope: !1023)
!1031 = !DILocation(line: 311, column: 38, scope: !1023)
!1032 = !DILocation(line: 311, column: 12, scope: !1023)
!1033 = !DILocation(line: 311, column: 10, scope: !1023)
!1034 = !DILocation(line: 312, column: 3, scope: !1023)
!1035 = !DILocation(line: 316, column: 3, scope: !1023)
!1036 = !DILocation(line: 319, column: 10, scope: !1023)
!1037 = !DILocation(line: 320, column: 3, scope: !1023)
!1038 = !DILocation(line: 323, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !989, file: !3, line: 323, column: 6)
!1040 = !DILocation(line: 323, column: 6, scope: !989)
!1041 = !DILocation(line: 324, column: 3, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 323, column: 28)
!1043 = !DILocation(line: 330, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !989, file: !3, line: 330, column: 6)
!1045 = !DILocation(line: 330, column: 16, scope: !1044)
!1046 = !DILocation(line: 330, column: 23, scope: !1044)
!1047 = !DILocation(line: 330, column: 28, scope: !1044)
!1048 = !DILocation(line: 330, column: 6, scope: !989)
!1049 = !DILocation(line: 335, column: 14, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 330, column: 50)
!1051 = !DILocation(line: 335, column: 24, scope: !1050)
!1052 = !DILocation(line: 335, column: 32, scope: !1050)
!1053 = !DILocation(line: 335, column: 12, scope: !1050)
!1054 = !DILocation(line: 336, column: 14, scope: !1050)
!1055 = !DILocation(line: 336, column: 30, scope: !1050)
!1056 = !DILocation(line: 336, column: 38, scope: !1050)
!1057 = !DILocation(line: 336, column: 12, scope: !1050)
!1058 = !DILocation(line: 338, column: 11, scope: !1050)
!1059 = !DILocation(line: 338, column: 3, scope: !1050)
!1060 = !DILocation(line: 341, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 341, column: 8)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 338, column: 19)
!1063 = !DILocation(line: 341, column: 20, scope: !1061)
!1064 = !DILocation(line: 341, column: 17, scope: !1061)
!1065 = !DILocation(line: 341, column: 8, scope: !1062)
!1066 = !DILocation(line: 342, column: 18, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 341, column: 30)
!1068 = !DILocation(line: 343, column: 4, scope: !1067)
!1069 = !DILocation(line: 344, column: 4, scope: !1062)
!1070 = !DILocation(line: 348, column: 8, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 348, column: 8)
!1072 = !DILocation(line: 348, column: 19, scope: !1071)
!1073 = !DILocation(line: 348, column: 17, scope: !1071)
!1074 = !DILocation(line: 348, column: 8, scope: !1062)
!1075 = !DILocation(line: 349, column: 18, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 348, column: 29)
!1077 = !DILocation(line: 350, column: 4, scope: !1076)
!1078 = !DILocation(line: 351, column: 4, scope: !1062)
!1079 = !DILocation(line: 355, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 355, column: 8)
!1081 = !DILocation(line: 355, column: 19, scope: !1080)
!1082 = !DILocation(line: 355, column: 17, scope: !1080)
!1083 = !DILocation(line: 355, column: 8, scope: !1062)
!1084 = !DILocation(line: 356, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 355, column: 29)
!1086 = !DILocation(line: 357, column: 4, scope: !1085)
!1087 = !DILocation(line: 358, column: 4, scope: !1062)
!1088 = !DILocation(line: 362, column: 4, scope: !1062)
!1089 = !DILocation(line: 364, column: 11, scope: !1062)
!1090 = !DILocation(line: 365, column: 4, scope: !1062)
!1091 = !DILocation(line: 367, column: 2, scope: !1050)
!1092 = !DILocation(line: 374, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 367, column: 9)
!1094 = !DILocation(line: 374, column: 23, scope: !1093)
!1095 = !DILocation(line: 374, column: 30, scope: !1093)
!1096 = !DILocation(line: 374, column: 11, scope: !1093)
!1097 = !DILocation(line: 375, column: 13, scope: !1093)
!1098 = !DILocation(line: 375, column: 29, scope: !1093)
!1099 = !DILocation(line: 375, column: 36, scope: !1093)
!1100 = !DILocation(line: 375, column: 11, scope: !1093)
!1101 = !DILocation(line: 379, column: 20, scope: !1093)
!1102 = !DILocation(line: 379, column: 30, scope: !1093)
!1103 = !DILocation(line: 379, column: 37, scope: !1093)
!1104 = !DILocation(line: 380, column: 6, scope: !1093)
!1105 = !DILocation(line: 380, column: 22, scope: !1093)
!1106 = !DILocation(line: 380, column: 29, scope: !1093)
!1107 = !DILocation(line: 381, column: 7, scope: !1093)
!1108 = !DILocation(line: 381, column: 17, scope: !1093)
!1109 = !DILocation(line: 381, column: 15, scope: !1093)
!1110 = !DILocation(line: 381, column: 6, scope: !1093)
!1111 = !DILocation(line: 381, column: 28, scope: !1093)
!1112 = !DILocation(line: 381, column: 38, scope: !1093)
!1113 = !DILocation(line: 379, column: 13, scope: !1093)
!1114 = !DILocation(line: 379, column: 11, scope: !1093)
!1115 = !DILocation(line: 383, column: 11, scope: !1093)
!1116 = !DILocation(line: 383, column: 3, scope: !1093)
!1117 = !DILocation(line: 388, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 388, column: 8)
!1119 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 383, column: 19)
!1120 = !DILocation(line: 388, column: 20, scope: !1118)
!1121 = !DILocation(line: 388, column: 17, scope: !1118)
!1122 = !DILocation(line: 388, column: 29, scope: !1118)
!1123 = !DILocation(line: 388, column: 33, scope: !1118)
!1124 = !DILocation(line: 388, column: 41, scope: !1118)
!1125 = !DILocation(line: 388, column: 8, scope: !1119)
!1126 = !DILocation(line: 392, column: 18, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 388, column: 48)
!1128 = !DILocation(line: 393, column: 4, scope: !1127)
!1129 = !DILocation(line: 394, column: 4, scope: !1119)
!1130 = !DILocation(line: 398, column: 8, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 398, column: 8)
!1132 = !DILocation(line: 398, column: 16, scope: !1131)
!1133 = !DILocation(line: 398, column: 8, scope: !1119)
!1134 = !DILocation(line: 399, column: 18, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 398, column: 21)
!1136 = !DILocation(line: 400, column: 5, scope: !1135)
!1137 = !DILocation(line: 402, column: 8, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 402, column: 8)
!1139 = !DILocation(line: 402, column: 16, scope: !1138)
!1140 = !DILocation(line: 402, column: 8, scope: !1119)
!1141 = !DILocation(line: 403, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 402, column: 21)
!1143 = !DILocation(line: 408, column: 8, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 408, column: 8)
!1145 = !DILocation(line: 408, column: 18, scope: !1144)
!1146 = !DILocation(line: 408, column: 16, scope: !1144)
!1147 = !DILocation(line: 408, column: 8, scope: !1119)
!1148 = !DILocation(line: 409, column: 18, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 408, column: 27)
!1150 = !DILocation(line: 410, column: 4, scope: !1149)
!1151 = !DILocation(line: 411, column: 4, scope: !1119)
!1152 = !DILocation(line: 415, column: 8, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 415, column: 8)
!1154 = !DILocation(line: 415, column: 16, scope: !1153)
!1155 = !DILocation(line: 415, column: 8, scope: !1119)
!1156 = !DILocation(line: 416, column: 5, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 415, column: 21)
!1158 = !DILocation(line: 418, column: 8, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 418, column: 8)
!1160 = !DILocation(line: 418, column: 16, scope: !1159)
!1161 = !DILocation(line: 418, column: 8, scope: !1119)
!1162 = !DILocation(line: 419, column: 18, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 418, column: 21)
!1164 = !DILocation(line: 420, column: 5, scope: !1163)
!1165 = !DILocation(line: 425, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 425, column: 8)
!1167 = !DILocation(line: 425, column: 18, scope: !1166)
!1168 = !DILocation(line: 425, column: 16, scope: !1166)
!1169 = !DILocation(line: 425, column: 8, scope: !1119)
!1170 = !DILocation(line: 426, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 425, column: 27)
!1172 = !DILocation(line: 427, column: 4, scope: !1171)
!1173 = !DILocation(line: 428, column: 4, scope: !1119)
!1174 = !DILocation(line: 432, column: 4, scope: !1119)
!1175 = !DILocation(line: 434, column: 11, scope: !1119)
!1176 = !DILocation(line: 435, column: 4, scope: !1119)
!1177 = !DILocation(line: 330, column: 31, scope: !1044)
!1178 = !DILabel(scope: !989, name: "cleanup", file: !3, line: 439)
!1179 = !DILocation(line: 439, column: 1, scope: !989)
!1180 = !DILocation(line: 443, column: 6, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !989, file: !3, line: 443, column: 6)
!1182 = !DILocation(line: 443, column: 24, scope: !1181)
!1183 = !DILocation(line: 443, column: 21, scope: !1181)
!1184 = !DILocation(line: 443, column: 6, scope: !989)
!1185 = !DILocation(line: 444, column: 28, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 443, column: 34)
!1187 = !DILocation(line: 444, column: 3, scope: !1186)
!1188 = !DILocation(line: 445, column: 2, scope: !1186)
!1189 = !DILocation(line: 449, column: 20, scope: !989)
!1190 = !DILocation(line: 449, column: 3, scope: !989)
!1191 = !DILocation(line: 449, column: 18, scope: !989)
!1192 = !DILocation(line: 450, column: 2, scope: !989)
