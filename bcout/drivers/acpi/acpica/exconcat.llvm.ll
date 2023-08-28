; ModuleID = '../bcout/drivers/acpi/acpica/exconcat.llvm.bc'
source_filename = "drivers/acpi/acpica/exconcat.c"
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
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exconcat\00", align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"Invalid object type: 0x%X\00", align 1
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" Object]\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_do_concatenate(%union.acpi_operand_object* %operand0, %union.acpi_operand_object* %operand1, %union.acpi_operand_object** %actual_return_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !34 {
entry:
  %operand0.addr = alloca %union.acpi_operand_object*, align 8
  %operand1.addr = alloca %union.acpi_operand_object*, align 8
  %actual_return_desc.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %local_operand0 = alloca %union.acpi_operand_object*, align 8
  %local_operand1 = alloca %union.acpi_operand_object*, align 8
  %temp_operand1 = alloca %union.acpi_operand_object*, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %buffer = alloca i8*, align 8
  %operand0_type = alloca i32, align 4
  %operand1_type = alloca i32, align 4
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %operand0, %union.acpi_operand_object** %operand0.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand0.addr, metadata !793, metadata !DIExpression()), !dbg !794
  store %union.acpi_operand_object* %operand1, %union.acpi_operand_object** %operand1.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand1.addr, metadata !795, metadata !DIExpression()), !dbg !796
  store %union.acpi_operand_object** %actual_return_desc, %union.acpi_operand_object*** %actual_return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %actual_return_desc.addr, metadata !797, metadata !DIExpression()), !dbg !798
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !799, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %local_operand0, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !803
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %local_operand0, align 8, !dbg !802
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %local_operand1, metadata !804, metadata !DIExpression()), !dbg !805
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !806
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %local_operand1, align 8, !dbg !805
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %temp_operand1, metadata !807, metadata !DIExpression()), !dbg !808
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %temp_operand1, align 8, !dbg !808
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !809, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.declare(metadata i8** %buffer, metadata !811, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.declare(metadata i32* %operand0_type, metadata !813, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata i32* %operand1_type, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata i32* %status, metadata !818, metadata !DIExpression()), !dbg !819
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !820
  %common = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_common*, !dbg !821
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !822
  %3 = load i8, i8* %type, align 1, !dbg !822
  %conv = zext i8 %3 to i32, !dbg !820
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
  ], !dbg !823

sw.bb:                                            ; preds = %entry, %entry, %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !824
  %common1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_common*, !dbg !826
  %type2 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 2, !dbg !827
  %5 = load i8, i8* %type2, align 1, !dbg !827
  %conv3 = zext i8 %5 to i32, !dbg !824
  store i32 %conv3, i32* %operand0_type, align 4, !dbg !828
  br label %sw.epilog, !dbg !829

sw.default:                                       ; preds = %entry
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !830
  %call = call i32 @acpi_ex_convert_to_object_type_string(%union.acpi_operand_object* %6, %union.acpi_operand_object** %local_operand0) #4, !dbg !831
  store i32 %call, i32* %status, align 4, !dbg !832
  %7 = load i32, i32* %status, align 4, !dbg !833
  %tobool = icmp ne i32 %7, 0, !dbg !833
  br i1 %tobool, label %if.then, label %if.end, !dbg !835

if.then:                                          ; preds = %sw.default
  br label %cleanup, !dbg !836

if.end:                                           ; preds = %sw.default
  store i32 2, i32* %operand0_type, align 4, !dbg !838
  br label %sw.epilog, !dbg !839

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !840
  %common4 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !841
  %type5 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common4, i32 0, i32 2, !dbg !842
  %9 = load i8, i8* %type5, align 1, !dbg !842
  %conv6 = zext i8 %9 to i32, !dbg !840
  switch i32 %conv6, label %sw.default11 [
    i32 1, label %sw.bb7
    i32 2, label %sw.bb7
    i32 3, label %sw.bb7
  ], !dbg !843

sw.bb7:                                           ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !844
  %common8 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !846
  %type9 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common8, i32 0, i32 2, !dbg !847
  %11 = load i8, i8* %type9, align 1, !dbg !847
  %conv10 = zext i8 %11 to i32, !dbg !844
  store i32 %conv10, i32* %operand1_type, align 4, !dbg !848
  br label %sw.epilog16, !dbg !849

sw.default11:                                     ; preds = %sw.epilog
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !850
  %call12 = call i32 @acpi_ex_convert_to_object_type_string(%union.acpi_operand_object* %12, %union.acpi_operand_object** %local_operand1) #4, !dbg !851
  store i32 %call12, i32* %status, align 4, !dbg !852
  %13 = load i32, i32* %status, align 4, !dbg !853
  %tobool13 = icmp ne i32 %13, 0, !dbg !853
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !855

if.then14:                                        ; preds = %sw.default11
  br label %cleanup, !dbg !856

if.end15:                                         ; preds = %sw.default11
  store i32 2, i32* %operand1_type, align 4, !dbg !858
  br label %sw.epilog16, !dbg !859

sw.epilog16:                                      ; preds = %if.end15, %sw.bb7
  %14 = load i32, i32* %operand0_type, align 4, !dbg !860
  switch i32 %14, label %sw.default26 [
    i32 1, label %sw.bb17
    i32 3, label %sw.bb19
    i32 2, label %sw.bb21
  ], !dbg !861

sw.bb17:                                          ; preds = %sw.epilog16
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !862
  %call18 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %15, %union.acpi_operand_object** %temp_operand1, i32 1) #4, !dbg !864
  store i32 %call18, i32* %status, align 4, !dbg !865
  br label %sw.epilog30, !dbg !866

sw.bb19:                                          ; preds = %sw.epilog16
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !867
  %call20 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %16, %union.acpi_operand_object** %temp_operand1) #4, !dbg !868
  store i32 %call20, i32* %status, align 4, !dbg !869
  br label %sw.epilog30, !dbg !870

sw.bb21:                                          ; preds = %sw.epilog16
  %17 = load i32, i32* %operand1_type, align 4, !dbg !871
  switch i32 %17, label %sw.default24 [
    i32 1, label %sw.bb22
    i32 2, label %sw.bb22
    i32 3, label %sw.bb22
  ], !dbg !872

sw.bb22:                                          ; preds = %sw.bb21, %sw.bb21, %sw.bb21
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !873
  %call23 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %18, %union.acpi_operand_object** %temp_operand1, i32 2) #4, !dbg !875
  store i32 %call23, i32* %status, align 4, !dbg !876
  br label %sw.epilog25, !dbg !877

sw.default24:                                     ; preds = %sw.bb21
  store i32 0, i32* %status, align 4, !dbg !878
  br label %sw.epilog25, !dbg !879

sw.epilog25:                                      ; preds = %sw.default24, %sw.bb22
  br label %sw.epilog30, !dbg !880

sw.default26:                                     ; preds = %sw.epilog16
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !881
  %common27 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_common*, !dbg !881
  %type28 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common27, i32 0, i32 2, !dbg !881
  %20 = load i8, i8* %type28, align 1, !dbg !881
  %conv29 = zext i8 %20 to i32, !dbg !881
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %conv29) #4, !dbg !881
  store i32 12303, i32* %status, align 4, !dbg !882
  br label %sw.epilog30, !dbg !883

sw.epilog30:                                      ; preds = %sw.default26, %sw.epilog25, %sw.bb19, %sw.bb17
  %21 = load i32, i32* %status, align 4, !dbg !884
  %tobool31 = icmp ne i32 %21, 0, !dbg !884
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !886

if.then32:                                        ; preds = %sw.epilog30
  br label %cleanup, !dbg !887

if.end33:                                         ; preds = %sw.epilog30
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !889
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !891
  %cmp = icmp ne %union.acpi_operand_object* %22, %23, !dbg !892
  br i1 %cmp, label %land.lhs.true, label %if.end38, !dbg !893

land.lhs.true:                                    ; preds = %if.end33
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !894
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_operand1, align 8, !dbg !895
  %cmp35 = icmp ne %union.acpi_operand_object* %24, %25, !dbg !896
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !897

if.then37:                                        ; preds = %land.lhs.true
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !898
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %26) #4, !dbg !900
  br label %if.end38, !dbg !901

if.end38:                                         ; preds = %if.then37, %land.lhs.true, %if.end33
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %temp_operand1, align 8, !dbg !902
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %local_operand1, align 8, !dbg !903
  %28 = load i32, i32* %operand0_type, align 4, !dbg !904
  switch i32 %28, label %sw.default97 [
    i32 1, label %sw.bb39
    i32 2, label %sw.bb52
    i32 3, label %sw.bb69
  ], !dbg !905

sw.bb39:                                          ; preds = %if.end38
  %29 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !906
  %conv40 = zext i8 %29 to i32, !dbg !906
  %shl = shl i32 %conv40, 1, !dbg !906
  %conv41 = zext i32 %shl to i64, !dbg !908
  %call42 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %conv41) #4, !dbg !909
  store %union.acpi_operand_object* %call42, %union.acpi_operand_object** %return_desc, align 8, !dbg !910
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !911
  %tobool43 = icmp ne %union.acpi_operand_object* %30, null, !dbg !911
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !913

if.then44:                                        ; preds = %sw.bb39
  store i32 4, i32* %status, align 4, !dbg !914
  br label %cleanup, !dbg !916

if.end45:                                         ; preds = %sw.bb39
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !917
  %buffer46 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_buffer*, !dbg !918
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer46, i32 0, i32 5, !dbg !919
  %32 = load i8*, i8** %pointer, align 8, !dbg !919
  store i8* %32, i8** %buffer, align 8, !dbg !920
  %33 = load i8*, i8** %buffer, align 8, !dbg !921
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !922
  %integer = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_integer*, !dbg !923
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !924
  %35 = bitcast i64* %value to i8*, !dbg !925
  %36 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !926
  %conv47 = zext i8 %36 to i64, !dbg !926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 8 %35, i64 %conv47, i1 false), !dbg !925
  %37 = load i8*, i8** %buffer, align 8, !dbg !927
  %38 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !928
  %conv48 = zext i8 %38 to i32, !dbg !928
  %idx.ext = sext i32 %conv48 to i64, !dbg !929
  %add.ptr = getelementptr i8, i8* %37, i64 %idx.ext, !dbg !929
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !930
  %integer49 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_integer*, !dbg !931
  %value50 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer49, i32 0, i32 6, !dbg !932
  %40 = bitcast i64* %value50 to i8*, !dbg !933
  %41 = load i8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !934
  %conv51 = zext i8 %41 to i64, !dbg !934
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 8 %40, i64 %conv51, i1 false), !dbg !933
  br label %sw.epilog101, !dbg !935

sw.bb52:                                          ; preds = %if.end38
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand0, align 8, !dbg !936
  %string = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_string*, !dbg !937
  %length = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 6, !dbg !938
  %43 = load i32, i32* %length, align 8, !dbg !938
  %conv53 = zext i32 %43 to i64, !dbg !939
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !940
  %string54 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_string*, !dbg !941
  %length55 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string54, i32 0, i32 6, !dbg !942
  %45 = load i32, i32* %length55, align 8, !dbg !942
  %conv56 = zext i32 %45 to i64, !dbg !940
  %add = add i64 %conv53, %conv56, !dbg !943
  %call57 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %add) #4, !dbg !944
  store %union.acpi_operand_object* %call57, %union.acpi_operand_object** %return_desc, align 8, !dbg !945
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !946
  %tobool58 = icmp ne %union.acpi_operand_object* %46, null, !dbg !946
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !948

if.then59:                                        ; preds = %sw.bb52
  store i32 4, i32* %status, align 4, !dbg !949
  br label %cleanup, !dbg !951

if.end60:                                         ; preds = %sw.bb52
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !952
  %string61 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_string*, !dbg !953
  %pointer62 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string61, i32 0, i32 5, !dbg !954
  %48 = load i8*, i8** %pointer62, align 8, !dbg !954
  store i8* %48, i8** %buffer, align 8, !dbg !955
  %49 = load i8*, i8** %buffer, align 8, !dbg !956
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand0, align 8, !dbg !957
  %string63 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_string*, !dbg !958
  %pointer64 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string63, i32 0, i32 5, !dbg !959
  %51 = load i8*, i8** %pointer64, align 8, !dbg !959
  %call65 = call i8* @strcpy(i8* %49, i8* %51) #4, !dbg !960
  %52 = load i8*, i8** %buffer, align 8, !dbg !961
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !962
  %string66 = bitcast %union.acpi_operand_object* %53 to %struct.acpi_object_string*, !dbg !963
  %pointer67 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string66, i32 0, i32 5, !dbg !964
  %54 = load i8*, i8** %pointer67, align 8, !dbg !964
  %call68 = call i8* @strcat(i8* %52, i8* %54) #4, !dbg !965
  br label %sw.epilog101, !dbg !966

sw.bb69:                                          ; preds = %if.end38
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !967
  %buffer70 = bitcast %union.acpi_operand_object* %55 to %struct.acpi_object_buffer*, !dbg !968
  %length71 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer70, i32 0, i32 6, !dbg !969
  %56 = load i32, i32* %length71, align 8, !dbg !969
  %conv72 = zext i32 %56 to i64, !dbg !970
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !971
  %buffer73 = bitcast %union.acpi_operand_object* %57 to %struct.acpi_object_buffer*, !dbg !972
  %length74 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer73, i32 0, i32 6, !dbg !973
  %58 = load i32, i32* %length74, align 8, !dbg !973
  %conv75 = zext i32 %58 to i64, !dbg !971
  %add76 = add i64 %conv72, %conv75, !dbg !974
  %call77 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %add76) #4, !dbg !975
  store %union.acpi_operand_object* %call77, %union.acpi_operand_object** %return_desc, align 8, !dbg !976
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !977
  %tobool78 = icmp ne %union.acpi_operand_object* %59, null, !dbg !977
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !979

if.then79:                                        ; preds = %sw.bb69
  store i32 4, i32* %status, align 4, !dbg !980
  br label %cleanup, !dbg !982

if.end80:                                         ; preds = %sw.bb69
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !983
  %buffer81 = bitcast %union.acpi_operand_object* %60 to %struct.acpi_object_buffer*, !dbg !984
  %pointer82 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer81, i32 0, i32 5, !dbg !985
  %61 = load i8*, i8** %pointer82, align 8, !dbg !985
  store i8* %61, i8** %buffer, align 8, !dbg !986
  %62 = load i8*, i8** %buffer, align 8, !dbg !987
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !988
  %buffer83 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_buffer*, !dbg !989
  %pointer84 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer83, i32 0, i32 5, !dbg !990
  %64 = load i8*, i8** %pointer84, align 8, !dbg !990
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !991
  %buffer85 = bitcast %union.acpi_operand_object* %65 to %struct.acpi_object_buffer*, !dbg !992
  %length86 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer85, i32 0, i32 6, !dbg !993
  %66 = load i32, i32* %length86, align 8, !dbg !993
  %conv87 = zext i32 %66 to i64, !dbg !991
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %64, i64 %conv87, i1 false), !dbg !994
  %67 = load i8*, i8** %buffer, align 8, !dbg !995
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !996
  %buffer88 = bitcast %union.acpi_operand_object* %68 to %struct.acpi_object_buffer*, !dbg !997
  %length89 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer88, i32 0, i32 6, !dbg !998
  %69 = load i32, i32* %length89, align 8, !dbg !998
  %idx.ext90 = zext i32 %69 to i64, !dbg !999
  %add.ptr91 = getelementptr i8, i8* %67, i64 %idx.ext90, !dbg !999
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1000
  %buffer92 = bitcast %union.acpi_operand_object* %70 to %struct.acpi_object_buffer*, !dbg !1001
  %pointer93 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer92, i32 0, i32 5, !dbg !1002
  %71 = load i8*, i8** %pointer93, align 8, !dbg !1002
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1003
  %buffer94 = bitcast %union.acpi_operand_object* %72 to %struct.acpi_object_buffer*, !dbg !1004
  %length95 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer94, i32 0, i32 6, !dbg !1005
  %73 = load i32, i32* %length95, align 8, !dbg !1005
  %conv96 = zext i32 %73 to i64, !dbg !1003
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr91, i8* align 1 %71, i64 %conv96, i1 false), !dbg !1006
  br label %sw.epilog101, !dbg !1007

sw.default97:                                     ; preds = %if.end38
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1008
  %common98 = bitcast %union.acpi_operand_object* %74 to %struct.acpi_object_common*, !dbg !1008
  %type99 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common98, i32 0, i32 2, !dbg !1008
  %75 = load i8, i8* %type99, align 1, !dbg !1008
  %conv100 = zext i8 %75 to i32, !dbg !1008
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 265, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %conv100) #4, !dbg !1008
  store i32 12303, i32* %status, align 4, !dbg !1009
  br label %cleanup, !dbg !1010

sw.epilog101:                                     ; preds = %if.end80, %if.end60, %if.end45
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1011
  %77 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %actual_return_desc.addr, align 8, !dbg !1012
  store %union.acpi_operand_object* %76, %union.acpi_operand_object** %77, align 8, !dbg !1013
  br label %cleanup, !dbg !1014

cleanup:                                          ; preds = %sw.epilog101, %sw.default97, %if.then79, %if.then59, %if.then44, %if.then32, %if.then14, %if.then
  call void @llvm.dbg.label(metadata !1015), !dbg !1016
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand0, align 8, !dbg !1017
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1019
  %cmp102 = icmp ne %union.acpi_operand_object* %78, %79, !dbg !1020
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !1021

if.then104:                                       ; preds = %cleanup
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand0, align 8, !dbg !1022
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %80) #4, !dbg !1024
  br label %if.end105, !dbg !1025

if.end105:                                        ; preds = %if.then104, %cleanup
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1026
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1028
  %cmp106 = icmp ne %union.acpi_operand_object* %81, %82, !dbg !1029
  br i1 %cmp106, label %if.then108, label %if.end109, !dbg !1030

if.then108:                                       ; preds = %if.end105
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %local_operand1, align 8, !dbg !1031
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %83) #4, !dbg !1033
  br label %if.end109, !dbg !1034

if.end109:                                        ; preds = %if.then108, %if.end105
  %84 = load i32, i32* %status, align 4, !dbg !1035
  ret i32 %84, !dbg !1035
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_convert_to_object_type_string(%union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %result_desc) #0 !dbg !1036 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object**, align 8
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %type_string = alloca i8*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  store %union.acpi_operand_object** %result_desc, %union.acpi_operand_object*** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %result_desc.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i8** %type_string, metadata !1045, metadata !DIExpression()), !dbg !1047
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1048
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !1049
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1050
  %1 = load i8, i8* %type, align 1, !dbg !1050
  %conv = zext i8 %1 to i32, !dbg !1048
  %call = call i8* @acpi_ut_get_type_name(i32 %conv) #4, !dbg !1051
  store i8* %call, i8** %type_string, align 8, !dbg !1052
  %2 = load i8*, i8** %type_string, align 8, !dbg !1053
  %call1 = call i64 @strlen(i8* %2) #4, !dbg !1054
  %add = add i64 %call1, 9, !dbg !1055
  %call2 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %add) #4, !dbg !1056
  store %union.acpi_operand_object* %call2, %union.acpi_operand_object** %return_desc, align 8, !dbg !1057
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1058
  %tobool = icmp ne %union.acpi_operand_object* %3, null, !dbg !1058
  br i1 %tobool, label %if.end, label %if.then, !dbg !1060

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !1061
  br label %return, !dbg !1061

if.end:                                           ; preds = %entry
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1063
  %string = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_string*, !dbg !1064
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1065
  %5 = load i8*, i8** %pointer, align 8, !dbg !1065
  %call3 = call i8* @strcpy(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !1066
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1067
  %string4 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_string*, !dbg !1068
  %pointer5 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string4, i32 0, i32 5, !dbg !1069
  %7 = load i8*, i8** %pointer5, align 8, !dbg !1069
  %8 = load i8*, i8** %type_string, align 8, !dbg !1070
  %call6 = call i8* @strcat(i8* %7, i8* %8) #4, !dbg !1071
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1072
  %string7 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_string*, !dbg !1073
  %pointer8 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string7, i32 0, i32 5, !dbg !1074
  %10 = load i8*, i8** %pointer8, align 8, !dbg !1074
  %call9 = call i8* @strcat(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !1075
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1076
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %result_desc.addr, align 8, !dbg !1077
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %12, align 8, !dbg !1078
  store i32 0, i32* %retval, align 4, !dbg !1079
  br label %return, !dbg !1079

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1080
  ret i32 %13, !dbg !1080
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_concat_template(%union.acpi_operand_object* %operand0, %union.acpi_operand_object* %operand1, %union.acpi_operand_object** %actual_return_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1081 {
entry:
  %retval = alloca i32, align 4
  %operand0.addr = alloca %union.acpi_operand_object*, align 8
  %operand1.addr = alloca %union.acpi_operand_object*, align 8
  %actual_return_desc.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  %return_desc = alloca %union.acpi_operand_object*, align 8
  %new_buf = alloca i8*, align 8
  %end_tag = alloca i8*, align 8
  %length0 = alloca i64, align 8
  %length1 = alloca i64, align 8
  %new_length = alloca i64, align 8
  store %union.acpi_operand_object* %operand0, %union.acpi_operand_object** %operand0.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand0.addr, metadata !1082, metadata !DIExpression()), !dbg !1083
  store %union.acpi_operand_object* %operand1, %union.acpi_operand_object** %operand1.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand1.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  store %union.acpi_operand_object** %actual_return_desc, %union.acpi_operand_object*** %actual_return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %actual_return_desc.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %return_desc, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata i8** %new_buf, metadata !1094, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.declare(metadata i8** %end_tag, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata i64* %length0, metadata !1098, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.declare(metadata i64* %length1, metadata !1100, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.declare(metadata i64* %new_length, metadata !1102, metadata !DIExpression()), !dbg !1103
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1104
  %call = call i32 @acpi_ut_get_resource_end_tag(%union.acpi_operand_object* %0, i8** %end_tag) #4, !dbg !1105
  store i32 %call, i32* %status, align 4, !dbg !1106
  %1 = load i32, i32* %status, align 4, !dbg !1107
  %tobool = icmp ne i32 %1, 0, !dbg !1107
  br i1 %tobool, label %if.then, label %if.end, !dbg !1109

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !1110
  store i32 %2, i32* %retval, align 4, !dbg !1110
  br label %return, !dbg !1110

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %end_tag, align 8, !dbg !1112
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1112
  %buffer = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_buffer*, !dbg !1112
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1112
  %5 = load i8*, i8** %pointer, align 8, !dbg !1112
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64, !dbg !1112
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !1112
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1112
  store i64 %sub.ptr.sub, i64* %length0, align 8, !dbg !1113
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1114
  %call1 = call i32 @acpi_ut_get_resource_end_tag(%union.acpi_operand_object* %6, i8** %end_tag) #4, !dbg !1115
  store i32 %call1, i32* %status, align 4, !dbg !1116
  %7 = load i32, i32* %status, align 4, !dbg !1117
  %tobool2 = icmp ne i32 %7, 0, !dbg !1117
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1119

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4, !dbg !1120
  store i32 %8, i32* %retval, align 4, !dbg !1120
  br label %return, !dbg !1120

if.end4:                                          ; preds = %if.end
  %9 = load i8*, i8** %end_tag, align 8, !dbg !1122
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1122
  %buffer5 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_buffer*, !dbg !1122
  %pointer6 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer5, i32 0, i32 5, !dbg !1122
  %11 = load i8*, i8** %pointer6, align 8, !dbg !1122
  %sub.ptr.lhs.cast7 = ptrtoint i8* %9 to i64, !dbg !1122
  %sub.ptr.rhs.cast8 = ptrtoint i8* %11 to i64, !dbg !1122
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8, !dbg !1122
  store i64 %sub.ptr.sub9, i64* %length1, align 8, !dbg !1123
  %12 = load i64, i64* %length0, align 8, !dbg !1124
  %13 = load i64, i64* %length1, align 8, !dbg !1125
  %add = add i64 %12, %13, !dbg !1126
  %add10 = add i64 %add, 2, !dbg !1127
  store i64 %add10, i64* %new_length, align 8, !dbg !1128
  %14 = load i64, i64* %new_length, align 8, !dbg !1129
  %call11 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %14) #4, !dbg !1130
  store %union.acpi_operand_object* %call11, %union.acpi_operand_object** %return_desc, align 8, !dbg !1131
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1132
  %tobool12 = icmp ne %union.acpi_operand_object* %15, null, !dbg !1132
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1134

if.then13:                                        ; preds = %if.end4
  store i32 4, i32* %retval, align 4, !dbg !1135
  br label %return, !dbg !1135

if.end14:                                         ; preds = %if.end4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1137
  %buffer15 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_buffer*, !dbg !1138
  %pointer16 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer15, i32 0, i32 5, !dbg !1139
  %17 = load i8*, i8** %pointer16, align 8, !dbg !1139
  store i8* %17, i8** %new_buf, align 8, !dbg !1140
  %18 = load i8*, i8** %new_buf, align 8, !dbg !1141
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand0.addr, align 8, !dbg !1142
  %buffer17 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_buffer*, !dbg !1143
  %pointer18 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer17, i32 0, i32 5, !dbg !1144
  %20 = load i8*, i8** %pointer18, align 8, !dbg !1144
  %21 = load i64, i64* %length0, align 8, !dbg !1145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %20, i64 %21, i1 false), !dbg !1146
  %22 = load i8*, i8** %new_buf, align 8, !dbg !1147
  %23 = load i64, i64* %length0, align 8, !dbg !1148
  %add.ptr = getelementptr i8, i8* %22, i64 %23, !dbg !1149
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand1.addr, align 8, !dbg !1150
  %buffer19 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_buffer*, !dbg !1151
  %pointer20 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer19, i32 0, i32 5, !dbg !1152
  %25 = load i8*, i8** %pointer20, align 8, !dbg !1152
  %26 = load i64, i64* %length1, align 8, !dbg !1153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %25, i64 %26, i1 false), !dbg !1154
  %27 = load i8*, i8** %new_buf, align 8, !dbg !1155
  %28 = load i64, i64* %new_length, align 8, !dbg !1156
  %sub = sub i64 %28, 1, !dbg !1157
  %arrayidx = getelementptr i8, i8* %27, i64 %sub, !dbg !1155
  store i8 0, i8* %arrayidx, align 1, !dbg !1158
  %29 = load i8*, i8** %new_buf, align 8, !dbg !1159
  %30 = load i64, i64* %new_length, align 8, !dbg !1160
  %sub21 = sub i64 %30, 2, !dbg !1161
  %arrayidx22 = getelementptr i8, i8* %29, i64 %sub21, !dbg !1159
  store i8 121, i8* %arrayidx22, align 1, !dbg !1162
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %return_desc, align 8, !dbg !1163
  %32 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %actual_return_desc.addr, align 8, !dbg !1164
  store %union.acpi_operand_object* %31, %union.acpi_operand_object** %32, align 8, !dbg !1165
  store i32 0, i32* %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

return:                                           ; preds = %if.end14, %if.then13, %if.then3, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !1167
  ret i32 %33, !dbg !1167
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_get_resource_end_tag(%union.acpi_operand_object*, i8**) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exconcat.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !8, !17, !19, !23}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !16)
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{!0}
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 72, elements: !27)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!27 = !{!28}
!28 = !DISubrange(count: 9)
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"Code Model", i32 2}
!33 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!34 = distinct !DISubprogram(name: "acpi_ex_do_concatenate", scope: !3, file: !3, line: 47, type: !35, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!35 = !DISubroutineType(types: !36)
!36 = !{!6, !37, !37, !120, !155}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !39, line: 367, size: 576, elements: !40)
!39 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!40 = !{!41, !52, !65, !75, !110, !124, !133, !444, !461, !476, !489, !567, !579, !593, !603, !621, !643, !662, !681, !700, !713, !739, !756, !769, !783, !792}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !38, file: !39, line: 368, baseType: !42, size: 128)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !39, line: 73, size: 128, elements: !43)
!43 = !{!44, !45, !46, !47, !51}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !42, file: !39, line: 74, baseType: !37, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !39, line: 74, baseType: !20, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !39, line: 74, baseType: !20, size: 8, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !42, file: !39, line: 74, baseType: !48, size: 16, offset: 80)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !39, line: 74, baseType: !20, size: 8, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !38, file: !39, line: 369, baseType: !53, size: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !39, line: 76, size: 192, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !64}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !39, line: 77, baseType: !37, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !39, line: 77, baseType: !20, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !39, line: 77, baseType: !20, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !39, line: 77, baseType: !48, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !39, line: 77, baseType: !20, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !53, file: !39, line: 77, baseType: !61, size: 24, offset: 104)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !53, file: !39, line: 78, baseType: !14, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !38, file: !39, line: 370, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !39, line: 93, size: 256, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !39, line: 94, baseType: !37, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !39, line: 94, baseType: !20, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !39, line: 94, baseType: !20, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !39, line: 94, baseType: !48, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !39, line: 94, baseType: !20, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !39, line: 94, baseType: !17, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !39, line: 94, baseType: !8, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !38, file: !39, line: 371, baseType: !76, size: 384)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !39, line: 97, size: 384, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !39, line: 98, baseType: !37, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !39, line: 98, baseType: !20, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !39, line: 98, baseType: !20, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !39, line: 98, baseType: !48, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !39, line: 98, baseType: !20, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !76, file: !39, line: 98, baseType: !19, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !76, file: !39, line: 98, baseType: !8, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !76, file: !39, line: 99, baseType: !8, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !76, file: !39, line: 100, baseType: !19, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !76, file: !39, line: 101, baseType: !88, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !90, line: 133, size: 384, elements: !91)
!90 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !94, !95, !96, !105, !106, !107, !108}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !89, file: !90, line: 134, baseType: !37, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !90, line: 135, baseType: !20, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !90, line: 136, baseType: !20, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 137, baseType: !48, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !90, line: 138, baseType: !97, size: 32, offset: 96)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !98, line: 327, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !97, file: !98, line: 328, baseType: !8, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !97, file: !98, line: 329, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !89, file: !90, line: 139, baseType: !88, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !89, file: !90, line: 140, baseType: !88, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !89, file: !90, line: 141, baseType: !88, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !89, file: !90, line: 142, baseType: !109, size: 16, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !48)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !38, file: !39, line: 372, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !39, line: 104, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !121, !122, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !39, line: 105, baseType: !37, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !39, line: 105, baseType: !20, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !39, line: 105, baseType: !20, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !39, line: 105, baseType: !48, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !39, line: 105, baseType: !20, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !39, line: 105, baseType: !88, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !111, file: !39, line: 106, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !39, line: 107, baseType: !19, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !39, line: 108, baseType: !8, size: 32, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !111, file: !39, line: 109, baseType: !8, size: 32, offset: 352)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !38, file: !39, line: 373, baseType: !125, size: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !39, line: 118, size: 192, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !39, line: 119, baseType: !37, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !39, line: 119, baseType: !20, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !39, line: 119, baseType: !20, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !39, line: 119, baseType: !48, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !39, line: 119, baseType: !20, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !125, file: !39, line: 119, baseType: !23, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !38, file: !39, line: 374, baseType: !134, size: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !39, line: 143, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !441, !442, !443}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !39, line: 144, baseType: !37, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !39, line: 144, baseType: !20, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !39, line: 144, baseType: !20, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !39, line: 144, baseType: !48, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !39, line: 144, baseType: !20, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !134, file: !39, line: 144, baseType: !20, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !134, file: !39, line: 145, baseType: !20, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !134, file: !39, line: 146, baseType: !20, size: 8, offset: 120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !39, line: 147, baseType: !37, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !39, line: 148, baseType: !37, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !39, line: 149, baseType: !19, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !134, file: !39, line: 153, baseType: !148, size: 64, offset: 320)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !39, line: 150, size: 64, elements: !149)
!149 = !{!150, !440}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !148, file: !39, line: 151, baseType: !151, size: 64)
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
!162 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !156, file: !157, line: 41, baseType: !48, size: 16, offset: 80)
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
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !156, file: !157, line: 54, baseType: !19, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !156, file: !157, line: 55, baseType: !8, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !156, file: !157, line: 56, baseType: !8, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !156, file: !157, line: 57, baseType: !8, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !156, file: !157, line: 58, baseType: !8, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !156, file: !157, line: 60, baseType: !181, size: 640, offset: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !90, line: 893, size: 640, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !269, !270, !386, !387}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !90, line: 894, baseType: !19, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !181, file: !90, line: 895, baseType: !19, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !181, file: !90, line: 896, baseType: !19, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !181, file: !90, line: 897, baseType: !19, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !181, file: !90, line: 898, baseType: !19, size: 64, offset: 256)
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
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !90, line: 829, baseType: !48, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !90, line: 829, baseType: !19, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !90, line: 829, baseType: !189, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !90, line: 829, baseType: !88, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !90, line: 829, baseType: !203, size: 64, offset: 320)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !90, line: 716, size: 64, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !203, file: !90, line: 717, baseType: !14, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !90, line: 718, baseType: !8, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !203, file: !90, line: 719, baseType: !17, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !90, line: 720, baseType: !19, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !90, line: 721, baseType: !17, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !203, file: !90, line: 722, baseType: !189, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !90, line: 829, baseType: !20, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !190, file: !90, line: 877, baseType: !213, size: 640)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !90, line: 835, size: 640, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !90, line: 836, baseType: !189, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !90, line: 836, baseType: !20, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !90, line: 836, baseType: !20, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !90, line: 836, baseType: !48, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !90, line: 836, baseType: !19, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !90, line: 836, baseType: !189, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !90, line: 836, baseType: !88, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !90, line: 836, baseType: !203, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !90, line: 836, baseType: !20, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !213, file: !90, line: 836, baseType: !17, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !90, line: 837, baseType: !19, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !213, file: !90, line: 838, baseType: !8, size: 32, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !90, line: 839, baseType: !8, size: 32, offset: 608)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !190, file: !90, line: 878, baseType: !229, size: 1600)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !90, line: 846, size: 1600, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !90, line: 847, baseType: !189, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !90, line: 847, baseType: !20, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !90, line: 847, baseType: !20, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !90, line: 847, baseType: !48, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !90, line: 847, baseType: !19, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !90, line: 847, baseType: !189, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !90, line: 847, baseType: !88, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !90, line: 847, baseType: !203, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !90, line: 847, baseType: !20, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !229, file: !90, line: 847, baseType: !189, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !229, file: !90, line: 848, baseType: !189, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !229, file: !90, line: 849, baseType: !17, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !229, file: !90, line: 850, baseType: !20, size: 8, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !229, file: !90, line: 851, baseType: !17, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !229, file: !90, line: 852, baseType: !17, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !229, file: !90, line: 853, baseType: !17, size: 64, offset: 832)
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
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !229, file: !90, line: 868, baseType: !48, size: 16, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !229, file: !90, line: 869, baseType: !20, size: 8, offset: 1360)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !229, file: !90, line: 870, baseType: !20, size: 8, offset: 1368)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !229, file: !90, line: 871, baseType: !20, size: 8, offset: 1376)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !229, file: !90, line: 872, baseType: !266, size: 160, offset: 1384)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !267)
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
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !90, line: 568, baseType: !23, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !275, file: !90, line: 568, baseType: !20, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !90, line: 568, baseType: !20, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !90, line: 568, baseType: !48, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !90, line: 568, baseType: !48, size: 16, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !272, file: !90, line: 665, baseType: !283, size: 384)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !90, line: 593, size: 384, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !90, line: 594, baseType: !23, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !90, line: 594, baseType: !20, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !90, line: 594, baseType: !20, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !90, line: 594, baseType: !48, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !90, line: 594, baseType: !48, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !283, file: !90, line: 594, baseType: !48, size: 16, offset: 112)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !283, file: !90, line: 595, baseType: !189, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !283, file: !90, line: 596, baseType: !19, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !283, file: !90, line: 597, baseType: !19, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !283, file: !90, line: 598, baseType: !14, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !272, file: !90, line: 666, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !90, line: 573, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !90, line: 574, baseType: !23, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !90, line: 574, baseType: !20, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !90, line: 574, baseType: !20, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !90, line: 574, baseType: !48, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !90, line: 574, baseType: !48, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !296, file: !90, line: 574, baseType: !37, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !272, file: !90, line: 667, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !90, line: 604, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !90, line: 605, baseType: !23, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !90, line: 605, baseType: !20, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !90, line: 605, baseType: !20, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !90, line: 605, baseType: !48, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !90, line: 605, baseType: !48, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !305, file: !90, line: 605, baseType: !88, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !272, file: !90, line: 668, baseType: !314, size: 448)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !90, line: 608, size: 448, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !90, line: 609, baseType: !23, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !90, line: 609, baseType: !20, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !90, line: 609, baseType: !20, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !90, line: 609, baseType: !48, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !90, line: 609, baseType: !48, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !314, file: !90, line: 609, baseType: !8, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !314, file: !90, line: 610, baseType: !189, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !314, file: !90, line: 611, baseType: !19, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !314, file: !90, line: 612, baseType: !19, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !314, file: !90, line: 613, baseType: !8, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !272, file: !90, line: 669, baseType: !327, size: 512)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !90, line: 580, size: 512, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !90, line: 581, baseType: !23, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !90, line: 581, baseType: !20, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !90, line: 581, baseType: !20, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !90, line: 581, baseType: !48, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !90, line: 581, baseType: !48, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !327, file: !90, line: 581, baseType: !8, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !327, file: !90, line: 582, baseType: !37, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !327, file: !90, line: 583, baseType: !37, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !327, file: !90, line: 584, baseType: !155, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !327, file: !90, line: 585, baseType: !23, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !327, file: !90, line: 586, baseType: !8, size: 32, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !272, file: !90, line: 670, baseType: !341, size: 320)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !90, line: 620, size: 320, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !90, line: 621, baseType: !23, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !90, line: 621, baseType: !20, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !90, line: 621, baseType: !20, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !90, line: 621, baseType: !48, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !90, line: 621, baseType: !48, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !341, file: !90, line: 621, baseType: !20, size: 8, offset: 112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !341, file: !90, line: 622, baseType: !155, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !341, file: !90, line: 623, baseType: !37, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !341, file: !90, line: 624, baseType: !14, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !272, file: !90, line: 671, baseType: !353, size: 640)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !90, line: 631, size: 640, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !90, line: 632, baseType: !23, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !90, line: 632, baseType: !20, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !90, line: 632, baseType: !20, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !90, line: 632, baseType: !48, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !90, line: 632, baseType: !48, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !353, file: !90, line: 633, baseType: !361, size: 512, offset: 128)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !272, file: !90, line: 672, baseType: !365, size: 320)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !90, line: 654, size: 320, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !90, line: 655, baseType: !23, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !90, line: 655, baseType: !20, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !90, line: 655, baseType: !20, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !90, line: 655, baseType: !48, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !90, line: 655, baseType: !48, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !365, file: !90, line: 655, baseType: !20, size: 8, offset: 112)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !365, file: !90, line: 656, baseType: !88, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !365, file: !90, line: 657, baseType: !37, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !365, file: !90, line: 658, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !90, line: 645, size: 128, elements: !378)
!378 = !{!379, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !377, file: !90, line: 646, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384, !8, !23}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !23)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !377, file: !90, line: 647, baseType: !23, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !181, file: !90, line: 902, baseType: !189, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !181, file: !90, line: 903, baseType: !8, size: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !156, file: !157, line: 61, baseType: !8, size: 32, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !156, file: !157, line: 62, baseType: !8, size: 32, offset: 1120)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !156, file: !157, line: 63, baseType: !48, size: 16, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !156, file: !157, line: 64, baseType: !20, size: 8, offset: 1168)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !156, file: !157, line: 66, baseType: !393, size: 2688, offset: 1216)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2688, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 7)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !156, file: !157, line: 67, baseType: !397, size: 3072, offset: 3904)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 3072, elements: !362)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !156, file: !157, line: 68, baseType: !399, size: 576, offset: 6976)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 576, elements: !27)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !156, file: !157, line: 69, baseType: !120, size: 64, offset: 7552)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !156, file: !157, line: 71, baseType: !19, size: 64, offset: 7616)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !156, file: !157, line: 72, baseType: !120, size: 64, offset: 7680)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !156, file: !157, line: 73, baseType: !271, size: 64, offset: 7744)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !156, file: !157, line: 74, baseType: !88, size: 64, offset: 7808)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !156, file: !157, line: 75, baseType: !37, size: 64, offset: 7872)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !156, file: !157, line: 76, baseType: !88, size: 64, offset: 7936)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !156, file: !157, line: 77, baseType: !189, size: 64, offset: 8000)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !156, file: !157, line: 78, baseType: !37, size: 64, offset: 8064)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !156, file: !157, line: 79, baseType: !88, size: 64, offset: 8128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !156, file: !157, line: 80, baseType: !17, size: 64, offset: 8192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !156, file: !157, line: 81, baseType: !189, size: 64, offset: 8256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !156, file: !157, line: 82, baseType: !413, size: 64, offset: 8320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !90, line: 702, size: 128, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !415, file: !90, line: 706, baseType: !8, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !415, file: !90, line: 707, baseType: !8, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !90, line: 708, baseType: !48, size: 16, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !415, file: !90, line: 709, baseType: !20, size: 8, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !415, file: !90, line: 710, baseType: !20, size: 8, offset: 88)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !415, file: !90, line: 711, baseType: !20, size: 8, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !156, file: !157, line: 83, baseType: !189, size: 64, offset: 8384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !156, file: !157, line: 84, baseType: !37, size: 64, offset: 8448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !156, file: !157, line: 85, baseType: !271, size: 64, offset: 8512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !156, file: !157, line: 86, baseType: !37, size: 64, offset: 8576)
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
!440 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !148, file: !39, line: 152, baseType: !37, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !39, line: 155, baseType: !8, size: 32, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !39, line: 156, baseType: !109, size: 16, offset: 416)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !134, file: !39, line: 157, baseType: !20, size: 8, offset: 432)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !39, line: 375, baseType: !445, size: 576)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !39, line: 122, size: 576, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !445, file: !39, line: 123, baseType: !37, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !445, file: !39, line: 123, baseType: !20, size: 8, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !39, line: 123, baseType: !20, size: 8, offset: 72)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !445, file: !39, line: 123, baseType: !48, size: 16, offset: 80)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !39, line: 123, baseType: !20, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !445, file: !39, line: 123, baseType: !20, size: 8, offset: 104)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !445, file: !39, line: 124, baseType: !48, size: 16, offset: 112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !445, file: !39, line: 125, baseType: !23, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !445, file: !39, line: 126, baseType: !14, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !445, file: !39, line: 127, baseType: !431, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !445, file: !39, line: 128, baseType: !37, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !39, line: 129, baseType: !37, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !39, line: 130, baseType: !88, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !445, file: !39, line: 131, baseType: !20, size: 8, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !38, file: !39, line: 376, baseType: !462, size: 448)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !39, line: 134, size: 448, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !475}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !39, line: 135, baseType: !37, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !39, line: 135, baseType: !20, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !39, line: 135, baseType: !20, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !39, line: 135, baseType: !48, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !39, line: 135, baseType: !20, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !462, file: !39, line: 135, baseType: !20, size: 8, offset: 104)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !462, file: !39, line: 136, baseType: !88, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !462, file: !39, line: 137, baseType: !37, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !39, line: 138, baseType: !37, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !462, file: !39, line: 139, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !14)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !462, file: !39, line: 140, baseType: !8, size: 32, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !38, file: !39, line: 377, baseType: !477, size: 320)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !39, line: 184, size: 320, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !488}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !39, line: 185, baseType: !37, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !39, line: 185, baseType: !20, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !39, line: 185, baseType: !20, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !39, line: 185, baseType: !48, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !39, line: 185, baseType: !20, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !477, file: !39, line: 185, baseType: !485, size: 128, offset: 128)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 2)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !477, file: !39, line: 185, baseType: !37, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !38, file: !39, line: 378, baseType: !490, size: 384)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !39, line: 187, size: 384, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !39, line: 188, baseType: !37, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !39, line: 188, baseType: !20, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !39, line: 188, baseType: !20, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !39, line: 188, baseType: !48, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !39, line: 188, baseType: !20, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !490, file: !39, line: 189, baseType: !485, size: 128, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !39, line: 189, baseType: !37, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !490, file: !39, line: 189, baseType: !500, size: 64, offset: 320)
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
!522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !519, file: !90, line: 461, baseType: !14, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !516, file: !90, line: 468, baseType: !519, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !516, file: !90, line: 469, baseType: !48, size: 16, offset: 256)
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
!545 = !{!8, !384, !8, !23}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !539, file: !90, line: 421, baseType: !23, size: 64, offset: 64)
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
!561 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !501, file: !90, line: 487, baseType: !14, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !501, file: !90, line: 488, baseType: !8, size: 32, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !501, file: !90, line: 489, baseType: !48, size: 16, offset: 480)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !501, file: !90, line: 490, baseType: !48, size: 16, offset: 496)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !501, file: !90, line: 491, baseType: !20, size: 8, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !501, file: !90, line: 492, baseType: !20, size: 8, offset: 520)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !38, file: !39, line: 379, baseType: !568, size: 384)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !39, line: 192, size: 384, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !568, file: !39, line: 193, baseType: !37, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !568, file: !39, line: 193, baseType: !20, size: 8, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !39, line: 193, baseType: !20, size: 8, offset: 72)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !568, file: !39, line: 193, baseType: !48, size: 16, offset: 80)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !39, line: 193, baseType: !20, size: 8, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !568, file: !39, line: 193, baseType: !485, size: 128, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !568, file: !39, line: 193, baseType: !37, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !568, file: !39, line: 193, baseType: !8, size: 32, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !568, file: !39, line: 194, baseType: !8, size: 32, offset: 352)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !38, file: !39, line: 380, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !39, line: 197, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !39, line: 198, baseType: !37, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !39, line: 198, baseType: !20, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !39, line: 198, baseType: !20, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !39, line: 198, baseType: !48, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !39, line: 198, baseType: !20, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !580, file: !39, line: 200, baseType: !20, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !580, file: !39, line: 201, baseType: !20, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !39, line: 202, baseType: !485, size: 128, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !39, line: 202, baseType: !37, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !580, file: !39, line: 202, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !14)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !38, file: !39, line: 381, baseType: !594, size: 320)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !39, line: 205, size: 320, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !39, line: 206, baseType: !37, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !39, line: 206, baseType: !20, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !39, line: 206, baseType: !20, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !39, line: 206, baseType: !48, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !39, line: 206, baseType: !20, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !594, file: !39, line: 206, baseType: !485, size: 128, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !594, file: !39, line: 206, baseType: !37, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !38, file: !39, line: 382, baseType: !604, size: 384)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !39, line: 233, size: 384, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !39, line: 234, baseType: !37, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !39, line: 234, baseType: !48, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 104)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 120)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !39, line: 234, baseType: !88, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !604, file: !39, line: 234, baseType: !8, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !604, file: !39, line: 234, baseType: !8, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !39, line: 234, baseType: !8, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !604, file: !39, line: 234, baseType: !20, size: 8, offset: 296)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !604, file: !39, line: 234, baseType: !37, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !38, file: !39, line: 383, baseType: !622, size: 576)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !39, line: 237, size: 576, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !622, file: !39, line: 238, baseType: !37, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !622, file: !39, line: 238, baseType: !48, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 104)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 120)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !39, line: 238, baseType: !88, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !622, file: !39, line: 238, baseType: !8, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !622, file: !39, line: 238, baseType: !8, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !622, file: !39, line: 238, baseType: !8, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !622, file: !39, line: 238, baseType: !20, size: 8, offset: 296)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !622, file: !39, line: 238, baseType: !48, size: 16, offset: 304)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !622, file: !39, line: 239, baseType: !37, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !622, file: !39, line: 240, baseType: !19, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !622, file: !39, line: 241, baseType: !48, size: 16, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !622, file: !39, line: 242, baseType: !19, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !38, file: !39, line: 384, baseType: !644, size: 384)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !39, line: 262, size: 384, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !39, line: 263, baseType: !37, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !39, line: 263, baseType: !48, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 104)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 120)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !39, line: 263, baseType: !88, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !644, file: !39, line: 263, baseType: !8, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !644, file: !39, line: 263, baseType: !8, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !644, file: !39, line: 263, baseType: !8, size: 32, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 288)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 296)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !644, file: !39, line: 263, baseType: !20, size: 8, offset: 304)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !644, file: !39, line: 264, baseType: !37, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !38, file: !39, line: 385, baseType: !663, size: 448)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !39, line: 245, size: 448, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !39, line: 246, baseType: !37, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !39, line: 246, baseType: !48, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 104)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !39, line: 246, baseType: !88, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !663, file: !39, line: 246, baseType: !8, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !663, file: !39, line: 246, baseType: !8, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !39, line: 246, baseType: !8, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !663, file: !39, line: 246, baseType: !20, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !663, file: !39, line: 246, baseType: !37, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !663, file: !39, line: 247, baseType: !37, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !38, file: !39, line: 386, baseType: !682, size: 448)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !39, line: 250, size: 448, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !39, line: 251, baseType: !37, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !39, line: 251, baseType: !48, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 104)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 120)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !682, file: !39, line: 251, baseType: !88, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !682, file: !39, line: 251, baseType: !8, size: 32, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !682, file: !39, line: 251, baseType: !8, size: 32, offset: 224)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !682, file: !39, line: 251, baseType: !8, size: 32, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 288)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !682, file: !39, line: 251, baseType: !20, size: 8, offset: 296)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !682, file: !39, line: 256, baseType: !37, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !682, file: !39, line: 257, baseType: !37, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !38, file: !39, line: 387, baseType: !701, size: 512)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !39, line: 273, size: 512, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !701, file: !39, line: 274, baseType: !37, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !39, line: 274, baseType: !20, size: 8, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !39, line: 274, baseType: !20, size: 8, offset: 72)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !701, file: !39, line: 274, baseType: !48, size: 16, offset: 80)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !39, line: 274, baseType: !20, size: 8, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !39, line: 274, baseType: !88, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !701, file: !39, line: 275, baseType: !8, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !701, file: !39, line: 276, baseType: !380, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !701, file: !39, line: 277, baseType: !23, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !39, line: 278, baseType: !485, size: 128, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !38, file: !39, line: 388, baseType: !714, size: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !39, line: 281, size: 512, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !729, !730, !731, !737, !738}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !714, file: !39, line: 282, baseType: !37, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !39, line: 282, baseType: !20, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !39, line: 282, baseType: !20, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !714, file: !39, line: 282, baseType: !48, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !39, line: 282, baseType: !20, size: 8, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !714, file: !39, line: 282, baseType: !20, size: 8, offset: 104)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !714, file: !39, line: 283, baseType: !20, size: 8, offset: 112)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !714, file: !39, line: 284, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!6, !8, !474, !8, !728, !23, !23}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !714, file: !39, line: 285, baseType: !88, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !714, file: !39, line: 286, baseType: !23, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !714, file: !39, line: 287, baseType: !732, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!6, !384, !8, !23, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !714, file: !39, line: 288, baseType: !37, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !39, line: 289, baseType: !37, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !38, file: !39, line: 389, baseType: !740, size: 512)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !39, line: 307, size: 512, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !740, file: !39, line: 308, baseType: !37, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !39, line: 308, baseType: !20, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !39, line: 308, baseType: !20, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !740, file: !39, line: 308, baseType: !48, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !39, line: 308, baseType: !20, size: 8, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !740, file: !39, line: 308, baseType: !20, size: 8, offset: 104)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !740, file: !39, line: 309, baseType: !20, size: 8, offset: 112)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !740, file: !39, line: 310, baseType: !20, size: 8, offset: 120)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !740, file: !39, line: 311, baseType: !23, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !740, file: !39, line: 312, baseType: !88, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !740, file: !39, line: 313, baseType: !120, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !740, file: !39, line: 314, baseType: !19, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !740, file: !39, line: 315, baseType: !19, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !740, file: !39, line: 316, baseType: !8, size: 32, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !38, file: !39, line: 390, baseType: !757, size: 448)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !39, line: 340, size: 448, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !39, line: 341, baseType: !37, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !39, line: 341, baseType: !20, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !39, line: 341, baseType: !20, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !39, line: 341, baseType: !48, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !39, line: 341, baseType: !20, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !757, file: !39, line: 341, baseType: !88, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !757, file: !39, line: 342, baseType: !88, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !757, file: !39, line: 343, baseType: !23, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !757, file: !39, line: 344, baseType: !19, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !757, file: !39, line: 345, baseType: !8, size: 32, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !39, line: 391, baseType: !770, size: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !39, line: 350, size: 256, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !782}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !770, file: !39, line: 351, baseType: !37, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !39, line: 351, baseType: !20, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !39, line: 351, baseType: !20, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !770, file: !39, line: 351, baseType: !48, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !39, line: 351, baseType: !20, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !770, file: !39, line: 351, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !384, !23}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !770, file: !39, line: 352, baseType: !23, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !38, file: !39, line: 392, baseType: !784, size: 192)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !39, line: 357, size: 192, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !784, file: !39, line: 358, baseType: !37, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !784, file: !39, line: 358, baseType: !20, size: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !39, line: 358, baseType: !20, size: 8, offset: 72)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !784, file: !39, line: 358, baseType: !48, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !39, line: 358, baseType: !20, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !39, line: 358, baseType: !37, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !39, line: 399, baseType: !89, size: 384)
!793 = !DILocalVariable(name: "operand0", arg: 1, scope: !34, file: !3, line: 47, type: !37)
!794 = !DILocation(line: 47, column: 51, scope: !34)
!795 = !DILocalVariable(name: "operand1", arg: 2, scope: !34, file: !3, line: 48, type: !37)
!796 = !DILocation(line: 48, column: 37, scope: !34)
!797 = !DILocalVariable(name: "actual_return_desc", arg: 3, scope: !34, file: !3, line: 49, type: !120)
!798 = !DILocation(line: 49, column: 38, scope: !34)
!799 = !DILocalVariable(name: "walk_state", arg: 4, scope: !34, file: !3, line: 50, type: !155)
!800 = !DILocation(line: 50, column: 34, scope: !34)
!801 = !DILocalVariable(name: "local_operand0", scope: !34, file: !3, line: 52, type: !37)
!802 = !DILocation(line: 52, column: 29, scope: !34)
!803 = !DILocation(line: 52, column: 46, scope: !34)
!804 = !DILocalVariable(name: "local_operand1", scope: !34, file: !3, line: 53, type: !37)
!805 = !DILocation(line: 53, column: 29, scope: !34)
!806 = !DILocation(line: 53, column: 46, scope: !34)
!807 = !DILocalVariable(name: "temp_operand1", scope: !34, file: !3, line: 54, type: !37)
!808 = !DILocation(line: 54, column: 29, scope: !34)
!809 = !DILocalVariable(name: "return_desc", scope: !34, file: !3, line: 55, type: !37)
!810 = !DILocation(line: 55, column: 29, scope: !34)
!811 = !DILocalVariable(name: "buffer", scope: !34, file: !3, line: 56, type: !17)
!812 = !DILocation(line: 56, column: 8, scope: !34)
!813 = !DILocalVariable(name: "operand0_type", scope: !34, file: !3, line: 57, type: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !7, line: 635, baseType: !8)
!815 = !DILocation(line: 57, column: 19, scope: !34)
!816 = !DILocalVariable(name: "operand1_type", scope: !34, file: !3, line: 58, type: !814)
!817 = !DILocation(line: 58, column: 19, scope: !34)
!818 = !DILocalVariable(name: "status", scope: !34, file: !3, line: 59, type: !6)
!819 = !DILocation(line: 59, column: 14, scope: !34)
!820 = !DILocation(line: 65, column: 10, scope: !34)
!821 = !DILocation(line: 65, column: 20, scope: !34)
!822 = !DILocation(line: 65, column: 27, scope: !34)
!823 = !DILocation(line: 65, column: 2, scope: !34)
!824 = !DILocation(line: 70, column: 19, scope: !825)
!825 = distinct !DILexicalBlock(scope: !34, file: !3, line: 65, column: 33)
!826 = !DILocation(line: 70, column: 29, scope: !825)
!827 = !DILocation(line: 70, column: 36, scope: !825)
!828 = !DILocation(line: 70, column: 17, scope: !825)
!829 = !DILocation(line: 71, column: 3, scope: !825)
!830 = !DILocation(line: 78, column: 45, scope: !825)
!831 = !DILocation(line: 78, column: 7, scope: !825)
!832 = !DILocation(line: 77, column: 10, scope: !825)
!833 = !DILocation(line: 80, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !3, line: 80, column: 7)
!835 = !DILocation(line: 80, column: 7, scope: !825)
!836 = !DILocation(line: 81, column: 4, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 80, column: 29)
!838 = !DILocation(line: 84, column: 17, scope: !825)
!839 = !DILocation(line: 85, column: 3, scope: !825)
!840 = !DILocation(line: 90, column: 10, scope: !34)
!841 = !DILocation(line: 90, column: 20, scope: !34)
!842 = !DILocation(line: 90, column: 27, scope: !34)
!843 = !DILocation(line: 90, column: 2, scope: !34)
!844 = !DILocation(line: 95, column: 19, scope: !845)
!845 = distinct !DILexicalBlock(scope: !34, file: !3, line: 90, column: 33)
!846 = !DILocation(line: 95, column: 29, scope: !845)
!847 = !DILocation(line: 95, column: 36, scope: !845)
!848 = !DILocation(line: 95, column: 17, scope: !845)
!849 = !DILocation(line: 96, column: 3, scope: !845)
!850 = !DILocation(line: 103, column: 45, scope: !845)
!851 = !DILocation(line: 103, column: 7, scope: !845)
!852 = !DILocation(line: 102, column: 10, scope: !845)
!853 = !DILocation(line: 105, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !845, file: !3, line: 105, column: 7)
!855 = !DILocation(line: 105, column: 7, scope: !845)
!856 = !DILocation(line: 106, column: 4, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !3, line: 105, column: 29)
!858 = !DILocation(line: 109, column: 17, scope: !845)
!859 = !DILocation(line: 110, column: 3, scope: !845)
!860 = !DILocation(line: 120, column: 10, scope: !34)
!861 = !DILocation(line: 120, column: 2, scope: !34)
!862 = !DILocation(line: 124, column: 34, scope: !863)
!863 = distinct !DILexicalBlock(scope: !34, file: !3, line: 120, column: 25)
!864 = !DILocation(line: 124, column: 7, scope: !863)
!865 = !DILocation(line: 123, column: 10, scope: !863)
!866 = !DILocation(line: 126, column: 3, scope: !863)
!867 = !DILocation(line: 131, column: 33, scope: !863)
!868 = !DILocation(line: 131, column: 7, scope: !863)
!869 = !DILocation(line: 130, column: 10, scope: !863)
!870 = !DILocation(line: 132, column: 3, scope: !863)
!871 = !DILocation(line: 136, column: 11, scope: !863)
!872 = !DILocation(line: 136, column: 3, scope: !863)
!873 = !DILocation(line: 144, column: 34, scope: !874)
!874 = distinct !DILexicalBlock(scope: !863, file: !3, line: 136, column: 26)
!875 = !DILocation(line: 144, column: 8, scope: !874)
!876 = !DILocation(line: 143, column: 11, scope: !874)
!877 = !DILocation(line: 147, column: 4, scope: !874)
!878 = !DILocation(line: 151, column: 11, scope: !874)
!879 = !DILocation(line: 152, column: 4, scope: !874)
!880 = !DILocation(line: 154, column: 3, scope: !863)
!881 = !DILocation(line: 158, column: 3, scope: !863)
!882 = !DILocation(line: 160, column: 10, scope: !863)
!883 = !DILocation(line: 161, column: 2, scope: !863)
!884 = !DILocation(line: 163, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !34, file: !3, line: 163, column: 6)
!886 = !DILocation(line: 163, column: 6, scope: !34)
!887 = !DILocation(line: 164, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 163, column: 28)
!889 = !DILocation(line: 169, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !34, file: !3, line: 169, column: 6)
!891 = !DILocation(line: 169, column: 25, scope: !890)
!892 = !DILocation(line: 169, column: 22, scope: !890)
!893 = !DILocation(line: 169, column: 35, scope: !890)
!894 = !DILocation(line: 169, column: 39, scope: !890)
!895 = !DILocation(line: 169, column: 57, scope: !890)
!896 = !DILocation(line: 169, column: 54, scope: !890)
!897 = !DILocation(line: 169, column: 6, scope: !34)
!898 = !DILocation(line: 170, column: 28, scope: !899)
!899 = distinct !DILexicalBlock(scope: !890, file: !3, line: 169, column: 73)
!900 = !DILocation(line: 170, column: 3, scope: !899)
!901 = !DILocation(line: 171, column: 2, scope: !899)
!902 = !DILocation(line: 173, column: 19, scope: !34)
!903 = !DILocation(line: 173, column: 17, scope: !34)
!904 = !DILocation(line: 186, column: 10, scope: !34)
!905 = !DILocation(line: 186, column: 2, scope: !34)
!906 = !DILocation(line: 193, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !34, file: !3, line: 186, column: 25)
!908 = !DILocation(line: 192, column: 46, scope: !907)
!909 = !DILocation(line: 192, column: 17, scope: !907)
!910 = !DILocation(line: 192, column: 15, scope: !907)
!911 = !DILocation(line: 195, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !3, line: 195, column: 7)
!913 = !DILocation(line: 195, column: 7, scope: !907)
!914 = !DILocation(line: 196, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 195, column: 21)
!916 = !DILocation(line: 197, column: 4, scope: !915)
!917 = !DILocation(line: 200, column: 20, scope: !907)
!918 = !DILocation(line: 200, column: 33, scope: !907)
!919 = !DILocation(line: 200, column: 40, scope: !907)
!920 = !DILocation(line: 200, column: 10, scope: !907)
!921 = !DILocation(line: 204, column: 10, scope: !907)
!922 = !DILocation(line: 204, column: 19, scope: !907)
!923 = !DILocation(line: 204, column: 29, scope: !907)
!924 = !DILocation(line: 204, column: 37, scope: !907)
!925 = !DILocation(line: 204, column: 3, scope: !907)
!926 = !DILocation(line: 205, column: 10, scope: !907)
!927 = !DILocation(line: 209, column: 10, scope: !907)
!928 = !DILocation(line: 209, column: 19, scope: !907)
!929 = !DILocation(line: 209, column: 17, scope: !907)
!930 = !DILocation(line: 210, column: 11, scope: !907)
!931 = !DILocation(line: 210, column: 27, scope: !907)
!932 = !DILocation(line: 210, column: 35, scope: !907)
!933 = !DILocation(line: 209, column: 3, scope: !907)
!934 = !DILocation(line: 211, column: 10, scope: !907)
!935 = !DILocation(line: 212, column: 3, scope: !907)
!936 = !DILocation(line: 219, column: 12, scope: !907)
!937 = !DILocation(line: 220, column: 12, scope: !907)
!938 = !DILocation(line: 220, column: 19, scope: !907)
!939 = !DILocation(line: 218, column: 47, scope: !907)
!940 = !DILocation(line: 221, column: 12, scope: !907)
!941 = !DILocation(line: 222, column: 12, scope: !907)
!942 = !DILocation(line: 222, column: 19, scope: !907)
!943 = !DILocation(line: 220, column: 26, scope: !907)
!944 = !DILocation(line: 218, column: 17, scope: !907)
!945 = !DILocation(line: 218, column: 15, scope: !907)
!946 = !DILocation(line: 223, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !907, file: !3, line: 223, column: 7)
!948 = !DILocation(line: 223, column: 7, scope: !907)
!949 = !DILocation(line: 224, column: 11, scope: !950)
!950 = distinct !DILexicalBlock(scope: !947, file: !3, line: 223, column: 21)
!951 = !DILocation(line: 225, column: 4, scope: !950)
!952 = !DILocation(line: 228, column: 12, scope: !907)
!953 = !DILocation(line: 228, column: 25, scope: !907)
!954 = !DILocation(line: 228, column: 32, scope: !907)
!955 = !DILocation(line: 228, column: 10, scope: !907)
!956 = !DILocation(line: 232, column: 10, scope: !907)
!957 = !DILocation(line: 232, column: 18, scope: !907)
!958 = !DILocation(line: 232, column: 34, scope: !907)
!959 = !DILocation(line: 232, column: 41, scope: !907)
!960 = !DILocation(line: 232, column: 3, scope: !907)
!961 = !DILocation(line: 233, column: 10, scope: !907)
!962 = !DILocation(line: 233, column: 18, scope: !907)
!963 = !DILocation(line: 233, column: 34, scope: !907)
!964 = !DILocation(line: 233, column: 41, scope: !907)
!965 = !DILocation(line: 233, column: 3, scope: !907)
!966 = !DILocation(line: 234, column: 3, scope: !907)
!967 = !DILocation(line: 241, column: 12, scope: !907)
!968 = !DILocation(line: 241, column: 22, scope: !907)
!969 = !DILocation(line: 242, column: 12, scope: !907)
!970 = !DILocation(line: 240, column: 47, scope: !907)
!971 = !DILocation(line: 243, column: 12, scope: !907)
!972 = !DILocation(line: 244, column: 12, scope: !907)
!973 = !DILocation(line: 244, column: 19, scope: !907)
!974 = !DILocation(line: 242, column: 19, scope: !907)
!975 = !DILocation(line: 240, column: 17, scope: !907)
!976 = !DILocation(line: 240, column: 15, scope: !907)
!977 = !DILocation(line: 245, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !907, file: !3, line: 245, column: 7)
!979 = !DILocation(line: 245, column: 7, scope: !907)
!980 = !DILocation(line: 246, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 245, column: 21)
!982 = !DILocation(line: 247, column: 4, scope: !981)
!983 = !DILocation(line: 250, column: 20, scope: !907)
!984 = !DILocation(line: 250, column: 33, scope: !907)
!985 = !DILocation(line: 250, column: 40, scope: !907)
!986 = !DILocation(line: 250, column: 10, scope: !907)
!987 = !DILocation(line: 254, column: 10, scope: !907)
!988 = !DILocation(line: 254, column: 18, scope: !907)
!989 = !DILocation(line: 254, column: 28, scope: !907)
!990 = !DILocation(line: 254, column: 35, scope: !907)
!991 = !DILocation(line: 255, column: 10, scope: !907)
!992 = !DILocation(line: 255, column: 20, scope: !907)
!993 = !DILocation(line: 255, column: 27, scope: !907)
!994 = !DILocation(line: 254, column: 3, scope: !907)
!995 = !DILocation(line: 256, column: 10, scope: !907)
!996 = !DILocation(line: 256, column: 19, scope: !907)
!997 = !DILocation(line: 256, column: 29, scope: !907)
!998 = !DILocation(line: 256, column: 36, scope: !907)
!999 = !DILocation(line: 256, column: 17, scope: !907)
!1000 = !DILocation(line: 257, column: 10, scope: !907)
!1001 = !DILocation(line: 257, column: 26, scope: !907)
!1002 = !DILocation(line: 257, column: 33, scope: !907)
!1003 = !DILocation(line: 258, column: 10, scope: !907)
!1004 = !DILocation(line: 258, column: 26, scope: !907)
!1005 = !DILocation(line: 258, column: 33, scope: !907)
!1006 = !DILocation(line: 256, column: 3, scope: !907)
!1007 = !DILocation(line: 259, column: 3, scope: !907)
!1008 = !DILocation(line: 265, column: 3, scope: !907)
!1009 = !DILocation(line: 267, column: 10, scope: !907)
!1010 = !DILocation(line: 268, column: 3, scope: !907)
!1011 = !DILocation(line: 271, column: 24, scope: !34)
!1012 = !DILocation(line: 271, column: 3, scope: !34)
!1013 = !DILocation(line: 271, column: 22, scope: !34)
!1014 = !DILocation(line: 271, column: 2, scope: !34)
!1015 = !DILabel(scope: !34, name: "cleanup", file: !3, line: 273)
!1016 = !DILocation(line: 273, column: 1, scope: !34)
!1017 = !DILocation(line: 274, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !34, file: !3, line: 274, column: 6)
!1019 = !DILocation(line: 274, column: 24, scope: !1018)
!1020 = !DILocation(line: 274, column: 21, scope: !1018)
!1021 = !DILocation(line: 274, column: 6, scope: !34)
!1022 = !DILocation(line: 275, column: 28, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 274, column: 34)
!1024 = !DILocation(line: 275, column: 3, scope: !1023)
!1025 = !DILocation(line: 276, column: 2, scope: !1023)
!1026 = !DILocation(line: 278, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !34, file: !3, line: 278, column: 6)
!1028 = !DILocation(line: 278, column: 24, scope: !1027)
!1029 = !DILocation(line: 278, column: 21, scope: !1027)
!1030 = !DILocation(line: 278, column: 6, scope: !34)
!1031 = !DILocation(line: 279, column: 28, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 278, column: 34)
!1033 = !DILocation(line: 279, column: 3, scope: !1032)
!1034 = !DILocation(line: 280, column: 2, scope: !1032)
!1035 = !DILocation(line: 282, column: 2, scope: !34)
!1036 = distinct !DISubprogram(name: "acpi_ex_convert_to_object_type_string", scope: !3, file: !3, line: 301, type: !1037, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!6, !37, !120}
!1039 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1036, file: !3, line: 301, type: !37)
!1040 = !DILocation(line: 301, column: 66, scope: !1036)
!1041 = !DILocalVariable(name: "result_desc", arg: 2, scope: !1036, file: !3, line: 302, type: !120)
!1042 = !DILocation(line: 302, column: 39, scope: !1036)
!1043 = !DILocalVariable(name: "return_desc", scope: !1036, file: !3, line: 304, type: !37)
!1044 = !DILocation(line: 304, column: 29, scope: !1036)
!1045 = !DILocalVariable(name: "type_string", scope: !1036, file: !3, line: 305, type: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1047 = !DILocation(line: 305, column: 14, scope: !1036)
!1048 = !DILocation(line: 307, column: 38, scope: !1036)
!1049 = !DILocation(line: 307, column: 48, scope: !1036)
!1050 = !DILocation(line: 307, column: 55, scope: !1036)
!1051 = !DILocation(line: 307, column: 16, scope: !1036)
!1052 = !DILocation(line: 307, column: 14, scope: !1036)
!1053 = !DILocation(line: 309, column: 64, scope: !1036)
!1054 = !DILocation(line: 309, column: 57, scope: !1036)
!1055 = !DILocation(line: 309, column: 77, scope: !1036)
!1056 = !DILocation(line: 309, column: 16, scope: !1036)
!1057 = !DILocation(line: 309, column: 14, scope: !1036)
!1058 = !DILocation(line: 310, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 310, column: 6)
!1060 = !DILocation(line: 310, column: 6, scope: !1036)
!1061 = !DILocation(line: 311, column: 3, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 310, column: 20)
!1063 = !DILocation(line: 314, column: 9, scope: !1036)
!1064 = !DILocation(line: 314, column: 22, scope: !1036)
!1065 = !DILocation(line: 314, column: 29, scope: !1036)
!1066 = !DILocation(line: 314, column: 2, scope: !1036)
!1067 = !DILocation(line: 315, column: 9, scope: !1036)
!1068 = !DILocation(line: 315, column: 22, scope: !1036)
!1069 = !DILocation(line: 315, column: 29, scope: !1036)
!1070 = !DILocation(line: 315, column: 38, scope: !1036)
!1071 = !DILocation(line: 315, column: 2, scope: !1036)
!1072 = !DILocation(line: 316, column: 9, scope: !1036)
!1073 = !DILocation(line: 316, column: 22, scope: !1036)
!1074 = !DILocation(line: 316, column: 29, scope: !1036)
!1075 = !DILocation(line: 316, column: 2, scope: !1036)
!1076 = !DILocation(line: 318, column: 17, scope: !1036)
!1077 = !DILocation(line: 318, column: 3, scope: !1036)
!1078 = !DILocation(line: 318, column: 15, scope: !1036)
!1079 = !DILocation(line: 319, column: 2, scope: !1036)
!1080 = !DILocation(line: 320, column: 1, scope: !1036)
!1081 = distinct !DISubprogram(name: "acpi_ex_concat_template", scope: !3, file: !3, line: 338, type: !35, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1082 = !DILocalVariable(name: "operand0", arg: 1, scope: !1081, file: !3, line: 338, type: !37)
!1083 = !DILocation(line: 338, column: 52, scope: !1081)
!1084 = !DILocalVariable(name: "operand1", arg: 2, scope: !1081, file: !3, line: 339, type: !37)
!1085 = !DILocation(line: 339, column: 31, scope: !1081)
!1086 = !DILocalVariable(name: "actual_return_desc", arg: 3, scope: !1081, file: !3, line: 340, type: !120)
!1087 = !DILocation(line: 340, column: 32, scope: !1081)
!1088 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1081, file: !3, line: 341, type: !155)
!1089 = !DILocation(line: 341, column: 28, scope: !1081)
!1090 = !DILocalVariable(name: "status", scope: !1081, file: !3, line: 343, type: !6)
!1091 = !DILocation(line: 343, column: 14, scope: !1081)
!1092 = !DILocalVariable(name: "return_desc", scope: !1081, file: !3, line: 344, type: !37)
!1093 = !DILocation(line: 344, column: 29, scope: !1081)
!1094 = !DILocalVariable(name: "new_buf", scope: !1081, file: !3, line: 345, type: !19)
!1095 = !DILocation(line: 345, column: 6, scope: !1081)
!1096 = !DILocalVariable(name: "end_tag", scope: !1081, file: !3, line: 346, type: !19)
!1097 = !DILocation(line: 346, column: 6, scope: !1081)
!1098 = !DILocalVariable(name: "length0", scope: !1081, file: !3, line: 347, type: !13)
!1099 = !DILocation(line: 347, column: 12, scope: !1081)
!1100 = !DILocalVariable(name: "length1", scope: !1081, file: !3, line: 348, type: !13)
!1101 = !DILocation(line: 348, column: 12, scope: !1081)
!1102 = !DILocalVariable(name: "new_length", scope: !1081, file: !3, line: 349, type: !13)
!1103 = !DILocation(line: 349, column: 12, scope: !1081)
!1104 = !DILocation(line: 361, column: 40, scope: !1081)
!1105 = !DILocation(line: 361, column: 11, scope: !1081)
!1106 = !DILocation(line: 361, column: 9, scope: !1081)
!1107 = !DILocation(line: 362, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 362, column: 6)
!1109 = !DILocation(line: 362, column: 6, scope: !1081)
!1110 = !DILocation(line: 363, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 362, column: 28)
!1112 = !DILocation(line: 366, column: 12, scope: !1081)
!1113 = !DILocation(line: 366, column: 10, scope: !1081)
!1114 = !DILocation(line: 370, column: 40, scope: !1081)
!1115 = !DILocation(line: 370, column: 11, scope: !1081)
!1116 = !DILocation(line: 370, column: 9, scope: !1081)
!1117 = !DILocation(line: 371, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 371, column: 6)
!1119 = !DILocation(line: 371, column: 6, scope: !1081)
!1120 = !DILocation(line: 372, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 371, column: 28)
!1122 = !DILocation(line: 375, column: 12, scope: !1081)
!1123 = !DILocation(line: 375, column: 10, scope: !1081)
!1124 = !DILocation(line: 379, column: 15, scope: !1081)
!1125 = !DILocation(line: 379, column: 25, scope: !1081)
!1126 = !DILocation(line: 379, column: 23, scope: !1081)
!1127 = !DILocation(line: 379, column: 33, scope: !1081)
!1128 = !DILocation(line: 379, column: 13, scope: !1081)
!1129 = !DILocation(line: 383, column: 45, scope: !1081)
!1130 = !DILocation(line: 383, column: 16, scope: !1081)
!1131 = !DILocation(line: 383, column: 14, scope: !1081)
!1132 = !DILocation(line: 384, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 384, column: 6)
!1134 = !DILocation(line: 384, column: 6, scope: !1081)
!1135 = !DILocation(line: 385, column: 3, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 384, column: 20)
!1137 = !DILocation(line: 392, column: 12, scope: !1081)
!1138 = !DILocation(line: 392, column: 25, scope: !1081)
!1139 = !DILocation(line: 392, column: 32, scope: !1081)
!1140 = !DILocation(line: 392, column: 10, scope: !1081)
!1141 = !DILocation(line: 393, column: 9, scope: !1081)
!1142 = !DILocation(line: 393, column: 18, scope: !1081)
!1143 = !DILocation(line: 393, column: 28, scope: !1081)
!1144 = !DILocation(line: 393, column: 35, scope: !1081)
!1145 = !DILocation(line: 393, column: 44, scope: !1081)
!1146 = !DILocation(line: 393, column: 2, scope: !1081)
!1147 = !DILocation(line: 394, column: 9, scope: !1081)
!1148 = !DILocation(line: 394, column: 19, scope: !1081)
!1149 = !DILocation(line: 394, column: 17, scope: !1081)
!1150 = !DILocation(line: 394, column: 28, scope: !1081)
!1151 = !DILocation(line: 394, column: 38, scope: !1081)
!1152 = !DILocation(line: 394, column: 45, scope: !1081)
!1153 = !DILocation(line: 394, column: 54, scope: !1081)
!1154 = !DILocation(line: 394, column: 2, scope: !1081)
!1155 = !DILocation(line: 398, column: 2, scope: !1081)
!1156 = !DILocation(line: 398, column: 10, scope: !1081)
!1157 = !DILocation(line: 398, column: 21, scope: !1081)
!1158 = !DILocation(line: 398, column: 26, scope: !1081)
!1159 = !DILocation(line: 399, column: 2, scope: !1081)
!1160 = !DILocation(line: 399, column: 10, scope: !1081)
!1161 = !DILocation(line: 399, column: 21, scope: !1081)
!1162 = !DILocation(line: 399, column: 26, scope: !1081)
!1163 = !DILocation(line: 403, column: 24, scope: !1081)
!1164 = !DILocation(line: 403, column: 3, scope: !1081)
!1165 = !DILocation(line: 403, column: 22, scope: !1081)
!1166 = !DILocation(line: 404, column: 2, scope: !1081)
!1167 = !DILocation(line: 405, column: 1, scope: !1081)
