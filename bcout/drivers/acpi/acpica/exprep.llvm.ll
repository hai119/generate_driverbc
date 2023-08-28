; ModuleID = '../bcout/drivers/acpi/acpica/exprep.llvm.bc'
source_filename = "drivers/acpi/acpica/exprep.c"
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
%struct.acpi_object_field_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.acpi_object_region_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i16, %union.acpi_operand_object*, i8*, i16, i8* }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_object_bank_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }
%struct.acpi_object_extra = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i8*, i8*, i32 }
%struct.acpi_object_index_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }

@_acpi_module_name = internal constant [7 x i8] c"exprep\00", align 1, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"Null RegionNode\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Needed Region, found type 0x%X (%s)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Null Index Object during field prep\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unknown field access type 0x%X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object* %obj_desc, i8 zeroext %field_flags, i8 zeroext %field_attribute, i32 %field_bit_position, i32 %field_bit_length) #0 !dbg !791 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %field_flags.addr = alloca i8, align 1
  %field_attribute.addr = alloca i8, align 1
  %field_bit_position.addr = alloca i32, align 4
  %field_bit_length.addr = alloca i32, align 4
  %access_bit_width = alloca i32, align 4
  %byte_alignment = alloca i32, align 4
  %nearest_byte_address = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !794, metadata !DIExpression()), !dbg !795
  store i8 %field_flags, i8* %field_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %field_flags.addr, metadata !796, metadata !DIExpression()), !dbg !797
  store i8 %field_attribute, i8* %field_attribute.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %field_attribute.addr, metadata !798, metadata !DIExpression()), !dbg !799
  store i32 %field_bit_position, i32* %field_bit_position.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field_bit_position.addr, metadata !800, metadata !DIExpression()), !dbg !801
  store i32 %field_bit_length, i32* %field_bit_length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %field_bit_length.addr, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %access_bit_width, metadata !804, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.declare(metadata i32* %byte_alignment, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata i32* %nearest_byte_address, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load i8, i8* %field_flags.addr, align 1, !dbg !810
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !811
  %common_field = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_field_common*, !dbg !812
  %field_flags1 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 5, !dbg !813
  store i8 %0, i8* %field_flags1, align 1, !dbg !814
  %2 = load i8, i8* %field_attribute.addr, align 1, !dbg !815
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !816
  %common_field2 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_field_common*, !dbg !817
  %attribute = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field2, i32 0, i32 6, !dbg !818
  store i8 %2, i8* %attribute, align 2, !dbg !819
  %4 = load i32, i32* %field_bit_length.addr, align 4, !dbg !820
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !821
  %common_field3 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_field_common*, !dbg !822
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field3, i32 0, i32 9, !dbg !823
  store i32 %4, i32* %bit_length, align 8, !dbg !824
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !825
  %7 = load i8, i8* %field_flags.addr, align 1, !dbg !826
  %call = call i32 @acpi_ex_decode_field_access(%union.acpi_operand_object* %6, i8 zeroext %7, i32* %byte_alignment) #3, !dbg !827
  store i32 %call, i32* %access_bit_width, align 4, !dbg !828
  %8 = load i32, i32* %access_bit_width, align 4, !dbg !829
  %tobool = icmp ne i32 %8, 0, !dbg !829
  br i1 %tobool, label %if.end, label %if.then, !dbg !831

if.then:                                          ; preds = %entry
  store i32 12292, i32* %retval, align 4, !dbg !832
  br label %return, !dbg !832

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %access_bit_width, align 4, !dbg !834
  %shr = lshr i32 %9, 3, !dbg !834
  %conv = trunc i32 %shr to i8, !dbg !835
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !836
  %common_field4 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_field_common*, !dbg !837
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field4, i32 0, i32 7, !dbg !838
  store i8 %conv, i8* %access_byte_width, align 1, !dbg !839
  %11 = load i32, i32* %field_bit_position.addr, align 4, !dbg !840
  %shr5 = lshr i32 %11, 3, !dbg !840
  store i32 %shr5, i32* %nearest_byte_address, align 4, !dbg !841
  %12 = load i32, i32* %nearest_byte_address, align 4, !dbg !842
  %conv6 = zext i32 %12 to i64, !dbg !842
  %13 = load i32, i32* %byte_alignment, align 4, !dbg !842
  %conv7 = zext i32 %13 to i64, !dbg !842
  %sub = sub i64 %conv7, 1, !dbg !842
  %neg = xor i64 %sub, -1, !dbg !842
  %and = and i64 %conv6, %neg, !dbg !842
  %conv8 = trunc i64 %and to i32, !dbg !843
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !844
  %common_field9 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_field_common*, !dbg !845
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field9, i32 0, i32 10, !dbg !846
  store i32 %conv8, i32* %base_byte_offset, align 4, !dbg !847
  %15 = load i32, i32* %field_bit_position.addr, align 4, !dbg !848
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !849
  %common_field10 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_field_common*, !dbg !849
  %base_byte_offset11 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field10, i32 0, i32 10, !dbg !849
  %17 = load i32, i32* %base_byte_offset11, align 4, !dbg !849
  %shl = shl i32 %17, 3, !dbg !849
  %sub12 = sub i32 %15, %shl, !dbg !850
  %conv13 = trunc i32 %sub12 to i8, !dbg !851
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !852
  %common_field14 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_field_common*, !dbg !853
  %start_field_bit_offset = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field14, i32 0, i32 12, !dbg !854
  store i8 %conv13, i8* %start_field_bit_offset, align 4, !dbg !855
  store i32 0, i32* %retval, align 4, !dbg !856
  br label %return, !dbg !856

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !857
  ret i32 %19, !dbg !857
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ex_decode_field_access(%union.acpi_operand_object* %obj_desc, i8 zeroext %field_flags, i32* %return_byte_alignment) #0 !dbg !858 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %field_flags.addr = alloca i8, align 1
  %return_byte_alignment.addr = alloca i32*, align 8
  %access = alloca i32, align 4
  %byte_alignment = alloca i32, align 4
  %bit_length = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !862, metadata !DIExpression()), !dbg !863
  store i8 %field_flags, i8* %field_flags.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %field_flags.addr, metadata !864, metadata !DIExpression()), !dbg !865
  store i32* %return_byte_alignment, i32** %return_byte_alignment.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %return_byte_alignment.addr, metadata !866, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata i32* %access, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata i32* %byte_alignment, metadata !870, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.declare(metadata i32* %bit_length, metadata !872, metadata !DIExpression()), !dbg !873
  %0 = load i8, i8* %field_flags.addr, align 1, !dbg !874
  %conv = zext i8 %0 to i32, !dbg !874
  %and = and i32 %conv, 15, !dbg !875
  store i32 %and, i32* %access, align 4, !dbg !876
  %1 = load i32, i32* %access, align 4, !dbg !877
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 5, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !878

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %byte_alignment, align 4, !dbg !879
  store i32 8, i32* %bit_length, align 4, !dbg !881
  br label %sw.epilog, !dbg !882

sw.bb1:                                           ; preds = %entry, %entry
  store i32 1, i32* %byte_alignment, align 4, !dbg !883
  store i32 8, i32* %bit_length, align 4, !dbg !884
  br label %sw.epilog, !dbg !885

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %byte_alignment, align 4, !dbg !886
  store i32 16, i32* %bit_length, align 4, !dbg !887
  br label %sw.epilog, !dbg !888

sw.bb3:                                           ; preds = %entry
  store i32 4, i32* %byte_alignment, align 4, !dbg !889
  store i32 32, i32* %bit_length, align 4, !dbg !890
  br label %sw.epilog, !dbg !891

sw.bb4:                                           ; preds = %entry
  store i32 8, i32* %byte_alignment, align 4, !dbg !892
  store i32 64, i32* %bit_length, align 4, !dbg !893
  br label %sw.epilog, !dbg !894

sw.default:                                       ; preds = %entry
  %2 = load i32, i32* %access, align 4, !dbg !895
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 253, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %2) #3, !dbg !895
  store i32 0, i32* %retval, align 4, !dbg !896
  br label %return, !dbg !896

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !897
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !899
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !900
  %4 = load i8, i8* %type, align 1, !dbg !900
  %conv5 = zext i8 %4 to i32, !dbg !897
  %cmp = icmp eq i32 %conv5, 14, !dbg !901
  br i1 %cmp, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %sw.epilog
  store i32 1, i32* %byte_alignment, align 4, !dbg !903
  br label %if.end, !dbg !905

if.end:                                           ; preds = %if.then, %sw.epilog
  %5 = load i32, i32* %byte_alignment, align 4, !dbg !906
  %6 = load i32*, i32** %return_byte_alignment.addr, align 8, !dbg !907
  store i32 %5, i32* %6, align 4, !dbg !908
  %7 = load i32, i32* %bit_length, align 4, !dbg !909
  store i32 %7, i32* %retval, align 4, !dbg !909
  br label %return, !dbg !909

return:                                           ; preds = %if.end, %sw.default
  %8 = load i32, i32* %retval, align 4, !dbg !910
  ret i32 %8, !dbg !910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_prep_field_value(%struct.acpi_create_field_info* %info) #0 !dbg !911 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.acpi_create_field_info*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %second_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %access_byte_width = alloca i32, align 4
  %type = alloca i32, align 4
  store %struct.acpi_create_field_info* %info, %struct.acpi_create_field_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_create_field_info** %info.addr, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !934, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %second_desc, metadata !936, metadata !DIExpression()), !dbg !937
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %second_desc, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata i32* %status, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata i32* %access_byte_width, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %type, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !944
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %0, i32 0, i32 13, !dbg !946
  %1 = load i8, i8* %field_type, align 2, !dbg !946
  %conv = zext i8 %1 to i32, !dbg !944
  %cmp = icmp ne i32 %conv, 19, !dbg !947
  br i1 %cmp, label %if.then, label %if.end9, !dbg !948

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !949
  %region_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %2, i32 0, i32 0, !dbg !952
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node, align 8, !dbg !952
  %tobool = icmp ne %struct.acpi_namespace_node* %3, null, !dbg !949
  br i1 %tobool, label %if.end, label %if.then2, !dbg !953

if.then2:                                         ; preds = %if.then
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !954
  store i32 12290, i32* %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end:                                           ; preds = %if.then
  %4 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !957
  %region_node3 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %4, i32 0, i32 0, !dbg !958
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node3, align 8, !dbg !958
  %call = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %5) #3, !dbg !959
  store i32 %call, i32* %type, align 4, !dbg !960
  %6 = load i32, i32* %type, align 4, !dbg !961
  %cmp4 = icmp ne i32 %6, 10, !dbg !963
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !964

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %type, align 4, !dbg !965
  %8 = load i32, i32* %type, align 4, !dbg !965
  %call7 = call i8* @acpi_ut_get_type_name(i32 %8) #3, !dbg !965
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %7, i8* %call7) #3, !dbg !965
  store i32 12291, i32* %retval, align 4, !dbg !967
  br label %return, !dbg !967

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !968

if.end9:                                          ; preds = %if.end8, %entry
  %9 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !969
  %field_type10 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %9, i32 0, i32 13, !dbg !969
  %10 = load i8, i8* %field_type10, align 2, !dbg !969
  %conv11 = zext i8 %10 to i32, !dbg !969
  %call12 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 408, i32 128, i32 %conv11) #3, !dbg !969
  store %union.acpi_operand_object* %call12, %union.acpi_operand_object** %obj_desc, align 8, !dbg !970
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !971
  %tobool13 = icmp ne %union.acpi_operand_object* %11, null, !dbg !971
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !973

if.then14:                                        ; preds = %if.end9
  store i32 4, i32* %retval, align 4, !dbg !974
  br label %return, !dbg !974

if.end15:                                         ; preds = %if.end9
  %12 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !976
  %field_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %12, i32 0, i32 1, !dbg !977
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %field_node, align 8, !dbg !977
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !978
  %common_field = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_field_common*, !dbg !979
  %node = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field, i32 0, i32 8, !dbg !980
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %node, align 8, !dbg !981
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !982
  %16 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !983
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %16, i32 0, i32 11, !dbg !984
  %17 = load i8, i8* %field_flags, align 8, !dbg !984
  %18 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !985
  %attribute = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %18, i32 0, i32 12, !dbg !986
  %19 = load i8, i8* %attribute, align 1, !dbg !986
  %20 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !987
  %field_bit_position = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %20, i32 0, i32 7, !dbg !988
  %21 = load i32, i32* %field_bit_position, align 4, !dbg !988
  %22 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !989
  %field_bit_length = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %22, i32 0, i32 8, !dbg !990
  %23 = load i32, i32* %field_bit_length, align 8, !dbg !990
  %call16 = call i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object* %15, i8 zeroext %17, i8 zeroext %19, i32 %21, i32 %23) #3, !dbg !991
  store i32 %call16, i32* %status, align 4, !dbg !992
  %24 = load i32, i32* %status, align 4, !dbg !993
  %tobool17 = icmp ne i32 %24, 0, !dbg !993
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !995

if.then18:                                        ; preds = %if.end15
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !996
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %25) #3, !dbg !998
  %26 = load i32, i32* %status, align 4, !dbg !999
  store i32 %26, i32* %retval, align 4, !dbg !999
  br label %return, !dbg !999

if.end19:                                         ; preds = %if.end15
  %27 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1000
  %field_type20 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %27, i32 0, i32 13, !dbg !1001
  %28 = load i8, i8* %field_type20, align 2, !dbg !1001
  %conv21 = zext i8 %28 to i32, !dbg !1000
  switch i32 %conv21, label %sw.default [
    i32 17, label %sw.bb
    i32 18, label %sw.bb73
    i32 19, label %sw.bb89
  ], !dbg !1002

sw.bb:                                            ; preds = %if.end19
  %29 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1003
  %region_node22 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %29, i32 0, i32 0, !dbg !1005
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node22, align 8, !dbg !1005
  %call23 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %30) #3, !dbg !1006
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1007
  %field = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_region_field*, !dbg !1008
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field, i32 0, i32 15, !dbg !1009
  store %union.acpi_operand_object* %call23, %union.acpi_operand_object** %region_obj, align 8, !dbg !1010
  %32 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1011
  %access_length = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %32, i32 0, i32 14, !dbg !1012
  %33 = load i8, i8* %access_length, align 1, !dbg !1012
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1013
  %field24 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_region_field*, !dbg !1014
  %access_length25 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field24, i32 0, i32 13, !dbg !1015
  store i8 %33, i8* %access_length25, align 1, !dbg !1016
  %35 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1017
  %connection_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %35, i32 0, i32 4, !dbg !1019
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %connection_node, align 8, !dbg !1019
  %tobool26 = icmp ne %struct.acpi_namespace_node* %36, null, !dbg !1017
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !1020

if.then27:                                        ; preds = %sw.bb
  %37 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1021
  %connection_node28 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %37, i32 0, i32 4, !dbg !1023
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %connection_node28, align 8, !dbg !1023
  %object = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 0, !dbg !1024
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object, align 8, !dbg !1024
  store %union.acpi_operand_object* %39, %union.acpi_operand_object** %second_desc, align 8, !dbg !1025
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1026
  %common = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_common*, !dbg !1028
  %flags = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 4, !dbg !1029
  %41 = load i8, i8* %flags, align 4, !dbg !1029
  %conv29 = zext i8 %41 to i32, !dbg !1026
  %and = and i32 %conv29, 4, !dbg !1030
  %tobool30 = icmp ne i32 %and, 0, !dbg !1030
  br i1 %tobool30, label %if.end36, label %if.then31, !dbg !1031

if.then31:                                        ; preds = %if.then27
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1032
  %call32 = call i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %42) #3, !dbg !1034
  store i32 %call32, i32* %status, align 4, !dbg !1035
  %43 = load i32, i32* %status, align 4, !dbg !1036
  %tobool33 = icmp ne i32 %43, 0, !dbg !1036
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !1038

if.then34:                                        ; preds = %if.then31
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1039
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %44) #3, !dbg !1041
  %45 = load i32, i32* %status, align 4, !dbg !1042
  store i32 %45, i32* %retval, align 4, !dbg !1042
  br label %return, !dbg !1042

if.end35:                                         ; preds = %if.then31
  br label %if.end36, !dbg !1043

if.end36:                                         ; preds = %if.end35, %if.then27
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1044
  %buffer = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_buffer*, !dbg !1045
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 5, !dbg !1046
  %47 = load i8*, i8** %pointer, align 8, !dbg !1046
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1047
  %field37 = bitcast %union.acpi_operand_object* %48 to %struct.acpi_object_region_field*, !dbg !1048
  %resource_buffer = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field37, i32 0, i32 16, !dbg !1049
  store i8* %47, i8** %resource_buffer, align 8, !dbg !1050
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1051
  %buffer38 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_buffer*, !dbg !1052
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer38, i32 0, i32 6, !dbg !1053
  %50 = load i32, i32* %length, align 8, !dbg !1053
  %conv39 = trunc i32 %50 to i16, !dbg !1054
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1055
  %field40 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_region_field*, !dbg !1056
  %resource_length = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field40, i32 0, i32 14, !dbg !1057
  store i16 %conv39, i16* %resource_length, align 2, !dbg !1058
  br label %if.end51, !dbg !1059

if.else:                                          ; preds = %sw.bb
  %52 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1060
  %resource_buffer41 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %52, i32 0, i32 5, !dbg !1062
  %53 = load i8*, i8** %resource_buffer41, align 8, !dbg !1062
  %tobool42 = icmp ne i8* %53, null, !dbg !1060
  br i1 %tobool42, label %if.then43, label %if.end50, !dbg !1063

if.then43:                                        ; preds = %if.else
  %54 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1064
  %resource_buffer44 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %54, i32 0, i32 5, !dbg !1066
  %55 = load i8*, i8** %resource_buffer44, align 8, !dbg !1066
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1067
  %field45 = bitcast %union.acpi_operand_object* %56 to %struct.acpi_object_region_field*, !dbg !1068
  %resource_buffer46 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field45, i32 0, i32 16, !dbg !1069
  store i8* %55, i8** %resource_buffer46, align 8, !dbg !1070
  %57 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1071
  %resource_length47 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %57, i32 0, i32 9, !dbg !1072
  %58 = load i16, i16* %resource_length47, align 4, !dbg !1072
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1073
  %field48 = bitcast %union.acpi_operand_object* %59 to %struct.acpi_object_region_field*, !dbg !1074
  %resource_length49 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field48, i32 0, i32 14, !dbg !1075
  store i16 %58, i16* %resource_length49, align 2, !dbg !1076
  br label %if.end50, !dbg !1077

if.end50:                                         ; preds = %if.then43, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end36
  %60 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1078
  %pin_number_index = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %60, i32 0, i32 10, !dbg !1079
  %61 = load i16, i16* %pin_number_index, align 2, !dbg !1079
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1080
  %field52 = bitcast %union.acpi_operand_object* %62 to %struct.acpi_object_region_field*, !dbg !1081
  %pin_number_index53 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field52, i32 0, i32 17, !dbg !1082
  store i16 %61, i16* %pin_number_index53, align 8, !dbg !1083
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1084
  %field54 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_object_region_field*, !dbg !1086
  %region_obj55 = getelementptr inbounds %struct.acpi_object_region_field, %struct.acpi_object_region_field* %field54, i32 0, i32 15, !dbg !1087
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj55, align 8, !dbg !1087
  %region = bitcast %union.acpi_operand_object* %64 to %struct.acpi_object_region*, !dbg !1088
  %space_id = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1089
  %65 = load i8, i8* %space_id, align 1, !dbg !1089
  %conv56 = zext i8 %65 to i32, !dbg !1084
  %cmp57 = icmp eq i32 %conv56, 3, !dbg !1090
  br i1 %cmp57, label %land.lhs.true, label %if.end72, !dbg !1091

land.lhs.true:                                    ; preds = %if.end51
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1092
  %common_field59 = bitcast %union.acpi_operand_object* %66 to %struct.acpi_object_field_common*, !dbg !1093
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field59, i32 0, i32 9, !dbg !1094
  %67 = load i32, i32* %bit_length, align 8, !dbg !1094
  %cmp60 = icmp ugt i32 %67, 8, !dbg !1095
  br i1 %cmp60, label %if.then62, label %if.end72, !dbg !1096

if.then62:                                        ; preds = %land.lhs.true
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1097
  %common_field63 = bitcast %union.acpi_operand_object* %68 to %struct.acpi_object_field_common*, !dbg !1097
  %bit_length64 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field63, i32 0, i32 9, !dbg !1097
  %69 = load i32, i32* %bit_length64, align 8, !dbg !1097
  %add = add i32 %69, 7, !dbg !1097
  %shr = lshr i32 %add, 3, !dbg !1097
  store i32 %shr, i32* %access_byte_width, align 4, !dbg !1099
  %70 = load i32, i32* %access_byte_width, align 4, !dbg !1100
  %cmp65 = icmp ult i32 %70, 256, !dbg !1102
  br i1 %cmp65, label %if.then67, label %if.end71, !dbg !1103

if.then67:                                        ; preds = %if.then62
  %71 = load i32, i32* %access_byte_width, align 4, !dbg !1104
  %conv68 = trunc i32 %71 to i8, !dbg !1106
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1107
  %common_field69 = bitcast %union.acpi_operand_object* %72 to %struct.acpi_object_field_common*, !dbg !1108
  %access_byte_width70 = getelementptr inbounds %struct.acpi_object_field_common, %struct.acpi_object_field_common* %common_field69, i32 0, i32 7, !dbg !1109
  store i8 %conv68, i8* %access_byte_width70, align 1, !dbg !1110
  br label %if.end71, !dbg !1111

if.end71:                                         ; preds = %if.then67, %if.then62
  br label %if.end72, !dbg !1112

if.end72:                                         ; preds = %if.end71, %land.lhs.true, %if.end51
  br label %sw.epilog, !dbg !1113

sw.bb73:                                          ; preds = %if.end19
  %73 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1114
  %bank_value = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %73, i32 0, i32 6, !dbg !1115
  %74 = load i32, i32* %bank_value, align 8, !dbg !1115
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1116
  %bank_field = bitcast %union.acpi_operand_object* %75 to %struct.acpi_object_bank_field*, !dbg !1117
  %value = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field, i32 0, i32 11, !dbg !1118
  store i32 %74, i32* %value, align 8, !dbg !1119
  %76 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1120
  %region_node74 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %76, i32 0, i32 0, !dbg !1121
  %77 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node74, align 8, !dbg !1121
  %call75 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %77) #3, !dbg !1122
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1123
  %bank_field76 = bitcast %union.acpi_operand_object* %78 to %struct.acpi_object_bank_field*, !dbg !1124
  %region_obj77 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field76, i32 0, i32 14, !dbg !1125
  store %union.acpi_operand_object* %call75, %union.acpi_operand_object** %region_obj77, align 8, !dbg !1126
  %79 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1127
  %register_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %79, i32 0, i32 2, !dbg !1128
  %80 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %register_node, align 8, !dbg !1128
  %call78 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %80) #3, !dbg !1129
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1130
  %bank_field79 = bitcast %union.acpi_operand_object* %81 to %struct.acpi_object_bank_field*, !dbg !1131
  %bank_obj = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field79, i32 0, i32 15, !dbg !1132
  store %union.acpi_operand_object* %call78, %union.acpi_operand_object** %bank_obj, align 8, !dbg !1133
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1134
  %bank_field80 = bitcast %union.acpi_operand_object* %82 to %struct.acpi_object_bank_field*, !dbg !1135
  %region_obj81 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field80, i32 0, i32 14, !dbg !1136
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj81, align 8, !dbg !1136
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %83) #3, !dbg !1137
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1138
  %bank_field82 = bitcast %union.acpi_operand_object* %84 to %struct.acpi_object_bank_field*, !dbg !1139
  %bank_obj83 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field82, i32 0, i32 15, !dbg !1140
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %bank_obj83, align 8, !dbg !1140
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %85) #3, !dbg !1141
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1142
  %common84 = bitcast %union.acpi_operand_object* %86 to %struct.acpi_object_common*, !dbg !1143
  %next_object = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common84, i32 0, i32 0, !dbg !1144
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_object, align 8, !dbg !1144
  store %union.acpi_operand_object* %87, %union.acpi_operand_object** %second_desc, align 8, !dbg !1145
  %88 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1146
  %data_register_node = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %88, i32 0, i32 3, !dbg !1146
  %89 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %data_register_node, align 8, !dbg !1146
  %90 = bitcast %struct.acpi_namespace_node* %89 to i8*, !dbg !1146
  %91 = bitcast i8* %90 to %union.acpi_parse_object*, !dbg !1146
  %named = bitcast %union.acpi_parse_object* %91 to %struct.acpi_parse_obj_named*, !dbg !1147
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1148
  %92 = load i8*, i8** %data, align 8, !dbg !1148
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1149
  %extra = bitcast %union.acpi_operand_object* %93 to %struct.acpi_object_extra*, !dbg !1150
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra, i32 0, i32 8, !dbg !1151
  store i8* %92, i8** %aml_start, align 8, !dbg !1152
  %94 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1153
  %data_register_node85 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %94, i32 0, i32 3, !dbg !1153
  %95 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %data_register_node85, align 8, !dbg !1153
  %96 = bitcast %struct.acpi_namespace_node* %95 to i8*, !dbg !1153
  %97 = bitcast i8* %96 to %union.acpi_parse_object*, !dbg !1153
  %named86 = bitcast %union.acpi_parse_object* %97 to %struct.acpi_parse_obj_named*, !dbg !1154
  %length87 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named86, i32 0, i32 11, !dbg !1155
  %98 = load i32, i32* %length87, align 8, !dbg !1155
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %second_desc, align 8, !dbg !1156
  %extra88 = bitcast %union.acpi_operand_object* %99 to %struct.acpi_object_extra*, !dbg !1157
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, %struct.acpi_object_extra* %extra88, i32 0, i32 9, !dbg !1158
  store i32 %98, i32* %aml_length, align 8, !dbg !1159
  br label %sw.epilog, !dbg !1160

sw.bb89:                                          ; preds = %if.end19
  %100 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1161
  %register_node90 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %100, i32 0, i32 2, !dbg !1162
  %101 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %register_node90, align 8, !dbg !1162
  %call91 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %101) #3, !dbg !1163
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1164
  %index_field = bitcast %union.acpi_operand_object* %102 to %struct.acpi_object_index_field*, !dbg !1165
  %index_obj = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field, i32 0, i32 14, !dbg !1166
  store %union.acpi_operand_object* %call91, %union.acpi_operand_object** %index_obj, align 8, !dbg !1167
  %103 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1168
  %data_register_node92 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %103, i32 0, i32 3, !dbg !1169
  %104 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %data_register_node92, align 8, !dbg !1169
  %call93 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %104) #3, !dbg !1170
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1171
  %index_field94 = bitcast %union.acpi_operand_object* %105 to %struct.acpi_object_index_field*, !dbg !1172
  %data_obj = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field94, i32 0, i32 15, !dbg !1173
  store %union.acpi_operand_object* %call93, %union.acpi_operand_object** %data_obj, align 8, !dbg !1174
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1175
  %index_field95 = bitcast %union.acpi_operand_object* %106 to %struct.acpi_object_index_field*, !dbg !1177
  %data_obj96 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field95, i32 0, i32 15, !dbg !1178
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_obj96, align 8, !dbg !1178
  %tobool97 = icmp ne %union.acpi_operand_object* %107, null, !dbg !1175
  br i1 %tobool97, label %lor.lhs.false, label %if.then101, !dbg !1179

lor.lhs.false:                                    ; preds = %sw.bb89
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1180
  %index_field98 = bitcast %union.acpi_operand_object* %108 to %struct.acpi_object_index_field*, !dbg !1181
  %index_obj99 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field98, i32 0, i32 14, !dbg !1182
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_obj99, align 8, !dbg !1182
  %tobool100 = icmp ne %union.acpi_operand_object* %109, null, !dbg !1180
  br i1 %tobool100, label %if.end102, label %if.then101, !dbg !1183

if.then101:                                       ; preds = %lor.lhs.false, %sw.bb89
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 531, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !1184
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1186
  call void @acpi_ut_delete_object_desc(%union.acpi_operand_object* %110) #3, !dbg !1187
  store i32 12303, i32* %retval, align 4, !dbg !1188
  br label %return, !dbg !1188

if.end102:                                        ; preds = %lor.lhs.false
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1189
  %index_field103 = bitcast %union.acpi_operand_object* %111 to %struct.acpi_object_index_field*, !dbg !1190
  %data_obj104 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field103, i32 0, i32 15, !dbg !1191
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %data_obj104, align 8, !dbg !1191
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %112) #3, !dbg !1192
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1193
  %index_field105 = bitcast %union.acpi_operand_object* %113 to %struct.acpi_object_index_field*, !dbg !1194
  %index_obj106 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field105, i32 0, i32 14, !dbg !1195
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %index_obj106, align 8, !dbg !1195
  call void @acpi_ut_add_reference(%union.acpi_operand_object* %114) #3, !dbg !1196
  %115 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1197
  %field_bit_position107 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %115, i32 0, i32 7, !dbg !1197
  %116 = load i32, i32* %field_bit_position107, align 4, !dbg !1197
  %shr108 = lshr i32 %116, 3, !dbg !1197
  %conv109 = zext i32 %shr108 to i64, !dbg !1197
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1197
  %index_field110 = bitcast %union.acpi_operand_object* %117 to %struct.acpi_object_index_field*, !dbg !1197
  %access_byte_width111 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field110, i32 0, i32 7, !dbg !1197
  %118 = load i8, i8* %access_byte_width111, align 1, !dbg !1197
  %conv112 = zext i8 %118 to i64, !dbg !1197
  %sub = sub i64 %conv112, 1, !dbg !1197
  %neg = xor i64 %sub, -1, !dbg !1197
  %and113 = and i64 %conv109, %neg, !dbg !1197
  %conv114 = trunc i64 %and113 to i32, !dbg !1198
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1199
  %index_field115 = bitcast %union.acpi_operand_object* %119 to %struct.acpi_object_index_field*, !dbg !1200
  %value116 = getelementptr inbounds %struct.acpi_object_index_field, %struct.acpi_object_index_field* %index_field115, i32 0, i32 11, !dbg !1201
  store i32 %conv114, i32* %value116, align 8, !dbg !1202
  br label %sw.epilog, !dbg !1203

sw.default:                                       ; preds = %if.end19
  br label %sw.epilog, !dbg !1204

sw.epilog:                                        ; preds = %sw.default, %if.end102, %sw.bb73, %if.end72
  %120 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1205
  %field_node117 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %120, i32 0, i32 1, !dbg !1206
  %121 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %field_node117, align 8, !dbg !1206
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1207
  %123 = load %struct.acpi_create_field_info*, %struct.acpi_create_field_info** %info.addr, align 8, !dbg !1208
  %field_node118 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %123, i32 0, i32 1, !dbg !1209
  %124 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %field_node118, align 8, !dbg !1209
  %call119 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %124) #3, !dbg !1210
  %call120 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %121, %union.acpi_operand_object* %122, i32 %call119) #3, !dbg !1211
  store i32 %call120, i32* %status, align 4, !dbg !1212
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1213
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %125) #3, !dbg !1214
  %126 = load i32, i32* %status, align 4, !dbg !1215
  store i32 %126, i32* %retval, align 4, !dbg !1215
  br label %return, !dbg !1215

return:                                           ; preds = %sw.epilog, %if.then101, %if.then34, %if.then18, %if.then14, %if.then6, %if.then2
  %127 = load i32, i32* %retval, align 4, !dbg !1216
  ret i32 %127, !dbg !1216
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_add_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!786, !787, !788, !789}
!llvm.ident = !{!790}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !784, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !783, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exprep.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !8, !16, !20, !23, !24, !116}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !19)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 805, baseType: !13)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !26, line: 875, size: 1600, elements: !27)
!26 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !726, !742}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !26, line: 876, baseType: !29, size: 448)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !26, line: 828, size: 448, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !37, !38, !716, !725}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !29, file: !26, line: 829, baseType: !24, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !29, file: !26, line: 829, baseType: !13, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !26, line: 829, baseType: !13, size: 8, offset: 72)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !29, file: !26, line: 829, baseType: !20, size: 16, offset: 80)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !29, file: !26, line: 829, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !29, file: !26, line: 829, baseType: !24, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !29, file: !26, line: 829, baseType: !39, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !26, line: 133, size: 384, elements: !41)
!41 = !{!42, !700, !701, !702, !703, !712, !713, !714, !715}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !40, file: !26, line: 134, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !45, line: 367, size: 576, elements: !46)
!45 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !55, !68, !80, !93, !107, !117, !351, !368, !383, !396, !474, !486, !500, !510, !528, !550, !569, !588, !607, !620, !646, !663, !676, !690, !699}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !44, file: !45, line: 368, baseType: !48, size: 128)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !45, line: 73, size: 128, elements: !49)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !48, file: !45, line: 74, baseType: !43, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !45, line: 74, baseType: !13, size: 8, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !45, line: 74, baseType: !13, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !48, file: !45, line: 74, baseType: !20, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !45, line: 74, baseType: !13, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !44, file: !45, line: 369, baseType: !56, size: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !45, line: 76, size: 192, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !67}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !45, line: 77, baseType: !43, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !45, line: 77, baseType: !13, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !45, line: 77, baseType: !13, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !45, line: 77, baseType: !20, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !45, line: 77, baseType: !13, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !56, file: !45, line: 77, baseType: !64, size: 24, offset: 104)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !45, line: 78, baseType: !17, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !44, file: !45, line: 370, baseType: !69, size: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !45, line: 93, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !79}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !45, line: 94, baseType: !43, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !45, line: 94, baseType: !13, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !45, line: 94, baseType: !13, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !45, line: 94, baseType: !20, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !45, line: 94, baseType: !13, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !45, line: 94, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !45, line: 94, baseType: !8, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !44, file: !45, line: 371, baseType: !81, size: 384)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !45, line: 97, size: 384, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !45, line: 98, baseType: !43, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !45, line: 98, baseType: !13, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !45, line: 98, baseType: !13, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !45, line: 98, baseType: !20, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !45, line: 98, baseType: !13, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !81, file: !45, line: 98, baseType: !36, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !81, file: !45, line: 98, baseType: !8, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !81, file: !45, line: 99, baseType: !8, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !81, file: !45, line: 100, baseType: !36, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !45, line: 101, baseType: !39, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !44, file: !45, line: 372, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !45, line: 104, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !104, !105, !106}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !45, line: 105, baseType: !43, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !45, line: 105, baseType: !13, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !45, line: 105, baseType: !13, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !45, line: 105, baseType: !20, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !45, line: 105, baseType: !13, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !45, line: 105, baseType: !39, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !94, file: !45, line: 106, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !94, file: !45, line: 107, baseType: !36, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !94, file: !45, line: 108, baseType: !8, size: 32, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !94, file: !45, line: 109, baseType: !8, size: 32, offset: 352)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !44, file: !45, line: 373, baseType: !108, size: 192)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !45, line: 118, size: 192, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !45, line: 119, baseType: !43, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !45, line: 119, baseType: !13, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !45, line: 119, baseType: !13, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !45, line: 119, baseType: !20, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !45, line: 119, baseType: !13, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !108, file: !45, line: 119, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !44, file: !45, line: 374, baseType: !118, size: 448)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !45, line: 143, size: 448, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !348, !349, !350}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !45, line: 144, baseType: !43, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !45, line: 144, baseType: !13, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !45, line: 144, baseType: !13, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !45, line: 144, baseType: !20, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !45, line: 144, baseType: !13, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !118, file: !45, line: 144, baseType: !13, size: 8, offset: 104)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !118, file: !45, line: 145, baseType: !13, size: 8, offset: 112)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !118, file: !45, line: 146, baseType: !13, size: 8, offset: 120)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !118, file: !45, line: 147, baseType: !43, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !45, line: 148, baseType: !43, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !118, file: !45, line: 149, baseType: !36, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !118, file: !45, line: 153, baseType: !132, size: 64, offset: 320)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !45, line: 150, size: 64, elements: !133)
!133 = !{!134, !347}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !132, file: !45, line: 151, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !26, line: 248, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!6, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !141, line: 37, size: 9024, elements: !142)
!141 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !293, !294, !295, !296, !297, !301, !303, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !330, !331, !332, !333, !334, !335, !336, !337, !339, !345}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !141, line: 38, baseType: !139, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !141, line: 39, baseType: !13, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !140, file: !141, line: 40, baseType: !13, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !140, file: !141, line: 41, baseType: !20, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !140, file: !141, line: 42, baseType: !13, size: 8, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !140, file: !141, line: 43, baseType: !13, size: 8, offset: 104)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !140, file: !141, line: 44, baseType: !13, size: 8, offset: 112)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !140, file: !141, line: 45, baseType: !151, size: 16, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !20)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !140, file: !141, line: 46, baseType: !13, size: 8, offset: 144)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !140, file: !141, line: 47, baseType: !13, size: 8, offset: 152)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !140, file: !141, line: 48, baseType: !13, size: 8, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !140, file: !141, line: 49, baseType: !13, size: 8, offset: 168)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !140, file: !141, line: 50, baseType: !13, size: 8, offset: 176)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !140, file: !141, line: 51, baseType: !13, size: 8, offset: 184)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !140, file: !141, line: 52, baseType: !13, size: 8, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !140, file: !141, line: 53, baseType: !13, size: 8, offset: 200)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !140, file: !141, line: 54, baseType: !36, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !140, file: !141, line: 55, baseType: !8, size: 32, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !140, file: !141, line: 56, baseType: !8, size: 32, offset: 352)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !140, file: !141, line: 57, baseType: !8, size: 32, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !140, file: !141, line: 58, baseType: !8, size: 32, offset: 416)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !140, file: !141, line: 60, baseType: !166, size: 640, offset: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !26, line: 893, size: 640, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !291, !292}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !166, file: !26, line: 894, baseType: !36, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !166, file: !26, line: 895, baseType: !36, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !166, file: !26, line: 896, baseType: !36, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !166, file: !26, line: 897, baseType: !36, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !166, file: !26, line: 898, baseType: !36, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !166, file: !26, line: 899, baseType: !24, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !166, file: !26, line: 900, baseType: !39, size: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !166, file: !26, line: 901, baseType: !176, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !26, line: 663, size: 640, elements: !178)
!178 = !{!179, !187, !200, !209, !218, !231, !245, !257, !269}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !177, file: !26, line: 664, baseType: !180, size: 128)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !26, line: 567, size: 128, elements: !181)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !26, line: 568, baseType: !116, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !180, file: !26, line: 568, baseType: !13, size: 8, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !26, line: 568, baseType: !13, size: 8, offset: 72)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !180, file: !26, line: 568, baseType: !20, size: 16, offset: 80)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !180, file: !26, line: 568, baseType: !20, size: 16, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !177, file: !26, line: 665, baseType: !188, size: 384)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !26, line: 593, size: 384, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !26, line: 594, baseType: !116, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !26, line: 594, baseType: !13, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !26, line: 594, baseType: !13, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !26, line: 594, baseType: !20, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !188, file: !26, line: 594, baseType: !20, size: 16, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !188, file: !26, line: 594, baseType: !20, size: 16, offset: 112)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !188, file: !26, line: 595, baseType: !24, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !188, file: !26, line: 596, baseType: !36, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !188, file: !26, line: 597, baseType: !36, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !188, file: !26, line: 598, baseType: !17, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !177, file: !26, line: 666, baseType: !201, size: 192)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !26, line: 573, size: 192, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !26, line: 574, baseType: !116, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !201, file: !26, line: 574, baseType: !13, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !26, line: 574, baseType: !13, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !26, line: 574, baseType: !20, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !201, file: !26, line: 574, baseType: !20, size: 16, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !201, file: !26, line: 574, baseType: !43, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !177, file: !26, line: 667, baseType: !210, size: 192)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !26, line: 604, size: 192, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !26, line: 605, baseType: !116, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !26, line: 605, baseType: !13, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !26, line: 605, baseType: !13, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !26, line: 605, baseType: !20, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !210, file: !26, line: 605, baseType: !20, size: 16, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !210, file: !26, line: 605, baseType: !39, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !177, file: !26, line: 668, baseType: !219, size: 448)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !26, line: 608, size: 448, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !26, line: 609, baseType: !116, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !26, line: 609, baseType: !13, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !26, line: 609, baseType: !13, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !26, line: 609, baseType: !20, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !219, file: !26, line: 609, baseType: !20, size: 16, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !219, file: !26, line: 609, baseType: !8, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !219, file: !26, line: 610, baseType: !24, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !219, file: !26, line: 611, baseType: !36, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !219, file: !26, line: 612, baseType: !36, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !219, file: !26, line: 613, baseType: !8, size: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !177, file: !26, line: 669, baseType: !232, size: 512)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !26, line: 580, size: 512, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !26, line: 581, baseType: !116, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !232, file: !26, line: 581, baseType: !13, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !26, line: 581, baseType: !13, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !232, file: !26, line: 581, baseType: !20, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !232, file: !26, line: 581, baseType: !20, size: 16, offset: 96)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !232, file: !26, line: 581, baseType: !8, size: 32, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !232, file: !26, line: 582, baseType: !43, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !232, file: !26, line: 583, baseType: !43, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !232, file: !26, line: 584, baseType: !139, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !232, file: !26, line: 585, baseType: !116, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !232, file: !26, line: 586, baseType: !8, size: 32, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !177, file: !26, line: 670, baseType: !246, size: 320)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !26, line: 620, size: 320, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !26, line: 621, baseType: !116, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !246, file: !26, line: 621, baseType: !13, size: 8, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !26, line: 621, baseType: !13, size: 8, offset: 72)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !246, file: !26, line: 621, baseType: !20, size: 16, offset: 80)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !246, file: !26, line: 621, baseType: !20, size: 16, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !246, file: !26, line: 621, baseType: !13, size: 8, offset: 112)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !246, file: !26, line: 622, baseType: !139, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !246, file: !26, line: 623, baseType: !43, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !246, file: !26, line: 624, baseType: !17, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !177, file: !26, line: 671, baseType: !258, size: 640)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !26, line: 631, size: 640, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !26, line: 632, baseType: !116, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !258, file: !26, line: 632, baseType: !13, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !26, line: 632, baseType: !13, size: 8, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !258, file: !26, line: 632, baseType: !20, size: 16, offset: 80)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !258, file: !26, line: 632, baseType: !20, size: 16, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !258, file: !26, line: 633, baseType: !266, size: 512, offset: 128)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !177, file: !26, line: 672, baseType: !270, size: 320)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !26, line: 654, size: 320, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !26, line: 655, baseType: !116, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !26, line: 655, baseType: !13, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !26, line: 655, baseType: !13, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !26, line: 655, baseType: !20, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !26, line: 655, baseType: !20, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !270, file: !26, line: 655, baseType: !13, size: 8, offset: 112)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !270, file: !26, line: 656, baseType: !39, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !270, file: !26, line: 657, baseType: !43, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !270, file: !26, line: 658, baseType: !281, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !26, line: 645, size: 128, elements: !283)
!283 = !{!284, !290}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !282, file: !26, line: 646, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !8, !116}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !116)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !282, file: !26, line: 647, baseType: !116, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !166, file: !26, line: 902, baseType: !24, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !166, file: !26, line: 903, baseType: !8, size: 32, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !140, file: !141, line: 61, baseType: !8, size: 32, offset: 1088)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !140, file: !141, line: 62, baseType: !8, size: 32, offset: 1120)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !140, file: !141, line: 63, baseType: !20, size: 16, offset: 1152)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !140, file: !141, line: 64, baseType: !13, size: 8, offset: 1168)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !140, file: !141, line: 66, baseType: !298, size: 2688, offset: 1216)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2688, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 7)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !140, file: !141, line: 67, baseType: !302, size: 3072, offset: 3904)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !267)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !140, file: !141, line: 68, baseType: !304, size: 576, offset: 6976)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 9)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !140, file: !141, line: 69, baseType: !103, size: 64, offset: 7552)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !140, file: !141, line: 71, baseType: !36, size: 64, offset: 7616)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !140, file: !141, line: 72, baseType: !103, size: 64, offset: 7680)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !140, file: !141, line: 73, baseType: !176, size: 64, offset: 7744)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !140, file: !141, line: 74, baseType: !39, size: 64, offset: 7808)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !140, file: !141, line: 75, baseType: !43, size: 64, offset: 7872)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !140, file: !141, line: 76, baseType: !39, size: 64, offset: 7936)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !140, file: !141, line: 77, baseType: !24, size: 64, offset: 8000)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !140, file: !141, line: 78, baseType: !43, size: 64, offset: 8064)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !140, file: !141, line: 79, baseType: !39, size: 64, offset: 8128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !140, file: !141, line: 80, baseType: !77, size: 64, offset: 8192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !140, file: !141, line: 81, baseType: !24, size: 64, offset: 8256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !140, file: !141, line: 82, baseType: !320, size: 64, offset: 8320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !26, line: 702, size: 128, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !322, file: !26, line: 706, baseType: !8, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !322, file: !26, line: 707, baseType: !8, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !26, line: 708, baseType: !20, size: 16, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !322, file: !26, line: 709, baseType: !13, size: 8, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !322, file: !26, line: 710, baseType: !13, size: 8, offset: 88)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !322, file: !26, line: 711, baseType: !13, size: 8, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !140, file: !141, line: 83, baseType: !24, size: 64, offset: 8384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !140, file: !141, line: 84, baseType: !43, size: 64, offset: 8448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !140, file: !141, line: 85, baseType: !176, size: 64, offset: 8512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !140, file: !141, line: 86, baseType: !43, size: 64, offset: 8576)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !140, file: !141, line: 87, baseType: !176, size: 64, offset: 8640)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !140, file: !141, line: 88, baseType: !24, size: 64, offset: 8704)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !140, file: !141, line: 89, baseType: !24, size: 64, offset: 8768)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !140, file: !141, line: 90, baseType: !338, size: 64, offset: 8832)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !140, file: !141, line: 91, baseType: !340, size: 64, offset: 8896)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !26, line: 637, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!6, !139, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !140, file: !141, line: 92, baseType: !346, size: 64, offset: 8960)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !26, line: 641, baseType: !136)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !132, file: !45, line: 152, baseType: !43, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !118, file: !45, line: 155, baseType: !8, size: 32, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !118, file: !45, line: 156, baseType: !151, size: 16, offset: 416)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !118, file: !45, line: 157, baseType: !13, size: 8, offset: 432)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !44, file: !45, line: 375, baseType: !352, size: 576)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !45, line: 122, size: 576, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !352, file: !45, line: 123, baseType: !43, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !45, line: 123, baseType: !13, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !45, line: 123, baseType: !13, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !352, file: !45, line: 123, baseType: !20, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !45, line: 123, baseType: !13, size: 8, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !352, file: !45, line: 123, baseType: !13, size: 8, offset: 104)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !352, file: !45, line: 124, baseType: !20, size: 16, offset: 112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !352, file: !45, line: 125, baseType: !116, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !352, file: !45, line: 126, baseType: !17, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !352, file: !45, line: 127, baseType: !338, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !352, file: !45, line: 128, baseType: !43, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !45, line: 129, baseType: !43, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !45, line: 130, baseType: !39, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !352, file: !45, line: 131, baseType: !13, size: 8, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !44, file: !45, line: 376, baseType: !369, size: 448)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !45, line: 134, size: 448, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !382}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !369, file: !45, line: 135, baseType: !43, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !45, line: 135, baseType: !13, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !45, line: 135, baseType: !13, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !369, file: !45, line: 135, baseType: !20, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !45, line: 135, baseType: !13, size: 8, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !369, file: !45, line: 135, baseType: !13, size: 8, offset: 104)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !369, file: !45, line: 136, baseType: !39, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !369, file: !45, line: 137, baseType: !43, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !45, line: 138, baseType: !43, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !369, file: !45, line: 139, baseType: !381, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !17)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !369, file: !45, line: 140, baseType: !8, size: 32, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !44, file: !45, line: 377, baseType: !384, size: 320)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !45, line: 184, size: 320, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !384, file: !45, line: 185, baseType: !43, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !384, file: !45, line: 185, baseType: !13, size: 8, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !384, file: !45, line: 185, baseType: !13, size: 8, offset: 72)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !384, file: !45, line: 185, baseType: !20, size: 16, offset: 80)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !45, line: 185, baseType: !13, size: 8, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !384, file: !45, line: 185, baseType: !392, size: 128, offset: 128)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 2)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !384, file: !45, line: 185, baseType: !43, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !44, file: !45, line: 378, baseType: !397, size: 384)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !45, line: 187, size: 384, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !397, file: !45, line: 188, baseType: !43, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !45, line: 188, baseType: !13, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !397, file: !45, line: 188, baseType: !13, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !397, file: !45, line: 188, baseType: !20, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !45, line: 188, baseType: !13, size: 8, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !397, file: !45, line: 189, baseType: !392, size: 128, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !397, file: !45, line: 189, baseType: !43, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !397, file: !45, line: 189, baseType: !407, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !26, line: 480, size: 576, elements: !409)
!409 = !{!410, !411, !412, !413, !421, !436, !468, !469, !470, !471, !472, !473}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !408, file: !26, line: 481, baseType: !39, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !408, file: !26, line: 482, baseType: !407, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !26, line: 483, baseType: !407, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !408, file: !26, line: 484, baseType: !414, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !26, line: 497, size: 256, elements: !416)
!416 = !{!417, !418, !419, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !415, file: !26, line: 498, baseType: !414, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !26, line: 499, baseType: !414, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !415, file: !26, line: 500, baseType: !407, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !415, file: !26, line: 501, baseType: !8, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !408, file: !26, line: 485, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !26, line: 466, size: 320, elements: !424)
!424 = !{!425, !430, !431, !432, !433, !434, !435}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !423, file: !26, line: 467, baseType: !426, size: 128)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !26, line: 459, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !426, file: !26, line: 460, baseType: !13, size: 8)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !426, file: !26, line: 461, baseType: !17, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !423, file: !26, line: 468, baseType: !426, size: 128, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !423, file: !26, line: 469, baseType: !20, size: 16, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !423, file: !26, line: 470, baseType: !13, size: 8, offset: 272)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !423, file: !26, line: 471, baseType: !13, size: 8, offset: 280)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !423, file: !26, line: 472, baseType: !13, size: 8, offset: 288)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !423, file: !26, line: 473, baseType: !13, size: 8, offset: 296)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !408, file: !26, line: 486, baseType: !437, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !26, line: 448, size: 192, elements: !439)
!439 = !{!440, !463, !464, !465, !466, !467}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !438, file: !26, line: 449, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !26, line: 438, size: 64, elements: !442)
!442 = !{!443, !444, !457}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !441, file: !26, line: 439, baseType: !39, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !441, file: !26, line: 440, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !26, line: 419, size: 256, elements: !447)
!447 = !{!448, !453, !454, !455, !456}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !446, file: !26, line: 420, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!8, !289, !8, !116}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !446, file: !26, line: 421, baseType: !116, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !446, file: !26, line: 422, baseType: !39, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !446, file: !26, line: 423, baseType: !13, size: 8, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !446, file: !26, line: 424, baseType: !13, size: 8, offset: 200)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !441, file: !26, line: 441, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !26, line: 429, size: 128, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !459, file: !26, line: 430, baseType: !39, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !26, line: 431, baseType: !458, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !438, file: !26, line: 450, baseType: !422, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !26, line: 451, baseType: !13, size: 8, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !438, file: !26, line: 452, baseType: !13, size: 8, offset: 136)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !438, file: !26, line: 453, baseType: !13, size: 8, offset: 144)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !438, file: !26, line: 454, baseType: !13, size: 8, offset: 152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !408, file: !26, line: 487, baseType: !17, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !408, file: !26, line: 488, baseType: !8, size: 32, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !408, file: !26, line: 489, baseType: !20, size: 16, offset: 480)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !408, file: !26, line: 490, baseType: !20, size: 16, offset: 496)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !408, file: !26, line: 491, baseType: !13, size: 8, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !408, file: !26, line: 492, baseType: !13, size: 8, offset: 520)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !44, file: !45, line: 379, baseType: !475, size: 384)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !45, line: 192, size: 384, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !475, file: !45, line: 193, baseType: !43, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !475, file: !45, line: 193, baseType: !13, size: 8, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !475, file: !45, line: 193, baseType: !13, size: 8, offset: 72)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !475, file: !45, line: 193, baseType: !20, size: 16, offset: 80)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !45, line: 193, baseType: !13, size: 8, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !475, file: !45, line: 193, baseType: !392, size: 128, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !475, file: !45, line: 193, baseType: !43, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !475, file: !45, line: 193, baseType: !8, size: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !475, file: !45, line: 194, baseType: !8, size: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !44, file: !45, line: 380, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !45, line: 197, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !45, line: 198, baseType: !43, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !45, line: 198, baseType: !13, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !45, line: 198, baseType: !13, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !45, line: 198, baseType: !20, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !45, line: 198, baseType: !13, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !487, file: !45, line: 200, baseType: !13, size: 8, offset: 104)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !487, file: !45, line: 201, baseType: !13, size: 8, offset: 112)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !45, line: 202, baseType: !392, size: 128, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !45, line: 202, baseType: !43, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !487, file: !45, line: 202, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !17)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !44, file: !45, line: 381, baseType: !501, size: 320)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !45, line: 205, size: 320, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !501, file: !45, line: 206, baseType: !43, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !501, file: !45, line: 206, baseType: !13, size: 8, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !501, file: !45, line: 206, baseType: !13, size: 8, offset: 72)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !501, file: !45, line: 206, baseType: !20, size: 16, offset: 80)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !501, file: !45, line: 206, baseType: !13, size: 8, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !501, file: !45, line: 206, baseType: !392, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !501, file: !45, line: 206, baseType: !43, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !44, file: !45, line: 382, baseType: !511, size: 384)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !45, line: 233, size: 384, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !45, line: 234, baseType: !43, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !45, line: 234, baseType: !20, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 104)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 112)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 120)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !511, file: !45, line: 234, baseType: !39, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !511, file: !45, line: 234, baseType: !8, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !511, file: !45, line: 234, baseType: !8, size: 32, offset: 224)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !511, file: !45, line: 234, baseType: !8, size: 32, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !511, file: !45, line: 234, baseType: !13, size: 8, offset: 296)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !511, file: !45, line: 234, baseType: !43, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !44, file: !45, line: 383, baseType: !529, size: 576)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !45, line: 237, size: 576, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !529, file: !45, line: 238, baseType: !43, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 72)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !529, file: !45, line: 238, baseType: !20, size: 16, offset: 80)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 104)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 112)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 120)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !529, file: !45, line: 238, baseType: !39, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !529, file: !45, line: 238, baseType: !8, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !529, file: !45, line: 238, baseType: !8, size: 32, offset: 224)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !529, file: !45, line: 238, baseType: !8, size: 32, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !529, file: !45, line: 238, baseType: !13, size: 8, offset: 296)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !529, file: !45, line: 238, baseType: !20, size: 16, offset: 304)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !529, file: !45, line: 239, baseType: !43, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !529, file: !45, line: 240, baseType: !36, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !529, file: !45, line: 241, baseType: !20, size: 16, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !529, file: !45, line: 242, baseType: !36, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !44, file: !45, line: 384, baseType: !551, size: 384)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !45, line: 262, size: 384, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !551, file: !45, line: 263, baseType: !43, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 72)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !551, file: !45, line: 263, baseType: !20, size: 16, offset: 80)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 104)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 112)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 120)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !551, file: !45, line: 263, baseType: !39, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !551, file: !45, line: 263, baseType: !8, size: 32, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !551, file: !45, line: 263, baseType: !8, size: 32, offset: 224)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !551, file: !45, line: 263, baseType: !8, size: 32, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 288)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 296)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !551, file: !45, line: 263, baseType: !13, size: 8, offset: 304)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !551, file: !45, line: 264, baseType: !43, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !44, file: !45, line: 385, baseType: !570, size: 448)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !45, line: 245, size: 448, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !45, line: 246, baseType: !43, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !45, line: 246, baseType: !20, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 104)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 112)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 120)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !570, file: !45, line: 246, baseType: !39, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !570, file: !45, line: 246, baseType: !8, size: 32, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !570, file: !45, line: 246, baseType: !8, size: 32, offset: 224)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !570, file: !45, line: 246, baseType: !8, size: 32, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 288)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !570, file: !45, line: 246, baseType: !13, size: 8, offset: 296)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !570, file: !45, line: 246, baseType: !43, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !570, file: !45, line: 247, baseType: !43, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !44, file: !45, line: 386, baseType: !589, size: 448)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !45, line: 250, size: 448, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !45, line: 251, baseType: !43, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !45, line: 251, baseType: !20, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 104)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 120)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !589, file: !45, line: 251, baseType: !39, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !589, file: !45, line: 251, baseType: !8, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !589, file: !45, line: 251, baseType: !8, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !589, file: !45, line: 251, baseType: !8, size: 32, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 288)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !589, file: !45, line: 251, baseType: !13, size: 8, offset: 296)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !589, file: !45, line: 256, baseType: !43, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !589, file: !45, line: 257, baseType: !43, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !44, file: !45, line: 387, baseType: !608, size: 512)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !45, line: 273, size: 512, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !45, line: 274, baseType: !43, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !45, line: 274, baseType: !13, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !45, line: 274, baseType: !13, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !45, line: 274, baseType: !20, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !45, line: 274, baseType: !13, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !45, line: 274, baseType: !39, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !608, file: !45, line: 275, baseType: !8, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !608, file: !45, line: 276, baseType: !285, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !608, file: !45, line: 277, baseType: !116, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !45, line: 278, baseType: !392, size: 128, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !44, file: !45, line: 388, baseType: !621, size: 512)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !45, line: 281, size: 512, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !636, !637, !638, !644, !645}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !45, line: 282, baseType: !43, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !45, line: 282, baseType: !13, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !45, line: 282, baseType: !13, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !45, line: 282, baseType: !20, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !45, line: 282, baseType: !13, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !621, file: !45, line: 282, baseType: !13, size: 8, offset: 104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !621, file: !45, line: 283, baseType: !13, size: 8, offset: 112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !621, file: !45, line: 284, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!6, !8, !381, !8, !635, !116, !116}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !45, line: 285, baseType: !39, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !621, file: !45, line: 286, baseType: !116, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !621, file: !45, line: 287, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!6, !289, !8, !116, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !621, file: !45, line: 288, baseType: !43, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !45, line: 289, baseType: !43, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !44, file: !45, line: 389, baseType: !647, size: 512)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !45, line: 307, size: 512, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !647, file: !45, line: 308, baseType: !43, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !45, line: 308, baseType: !13, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !45, line: 308, baseType: !13, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !647, file: !45, line: 308, baseType: !20, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !45, line: 308, baseType: !13, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !647, file: !45, line: 308, baseType: !13, size: 8, offset: 104)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !647, file: !45, line: 309, baseType: !13, size: 8, offset: 112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !647, file: !45, line: 310, baseType: !13, size: 8, offset: 120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !647, file: !45, line: 311, baseType: !116, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !45, line: 312, baseType: !39, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !647, file: !45, line: 313, baseType: !103, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !647, file: !45, line: 314, baseType: !36, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !647, file: !45, line: 315, baseType: !36, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !647, file: !45, line: 316, baseType: !8, size: 32, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !44, file: !45, line: 390, baseType: !664, size: 448)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !45, line: 340, size: 448, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !45, line: 341, baseType: !43, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !45, line: 341, baseType: !13, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !45, line: 341, baseType: !13, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !45, line: 341, baseType: !20, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !45, line: 341, baseType: !13, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !664, file: !45, line: 341, baseType: !39, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !664, file: !45, line: 342, baseType: !39, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !664, file: !45, line: 343, baseType: !116, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !664, file: !45, line: 344, baseType: !36, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !664, file: !45, line: 345, baseType: !8, size: 32, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !44, file: !45, line: 391, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !45, line: 350, size: 256, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !689}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !45, line: 351, baseType: !43, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !45, line: 351, baseType: !13, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !45, line: 351, baseType: !13, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !45, line: 351, baseType: !20, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !45, line: 351, baseType: !13, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !677, file: !45, line: 351, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !289, !116}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !677, file: !45, line: 352, baseType: !116, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !44, file: !45, line: 392, baseType: !691, size: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !45, line: 357, size: 192, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !45, line: 358, baseType: !43, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !45, line: 358, baseType: !13, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !45, line: 358, baseType: !13, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !45, line: 358, baseType: !20, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !45, line: 358, baseType: !13, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !45, line: 358, baseType: !43, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !45, line: 399, baseType: !40, size: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !26, line: 135, baseType: !13, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !26, line: 136, baseType: !13, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !26, line: 137, baseType: !20, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !40, file: !26, line: 138, baseType: !704, size: 32, offset: 96)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !705, line: 327, size: 32, elements: !706)
!705 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !704, file: !705, line: 328, baseType: !8, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !704, file: !705, line: 329, baseType: !709, size: 32)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 4)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !40, file: !26, line: 139, baseType: !39, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !40, file: !26, line: 140, baseType: !39, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !40, file: !26, line: 141, baseType: !39, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !40, file: !26, line: 142, baseType: !151, size: 16, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !29, file: !26, line: 829, baseType: !717, size: 64, offset: 320)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !26, line: 716, size: 64, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !717, file: !26, line: 717, baseType: !17, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !717, file: !26, line: 718, baseType: !8, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !717, file: !26, line: 719, baseType: !77, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !717, file: !26, line: 720, baseType: !36, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !26, line: 721, baseType: !77, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !717, file: !26, line: 722, baseType: !24, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !29, file: !26, line: 829, baseType: !13, size: 8, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !25, file: !26, line: 877, baseType: !727, size: 640)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !26, line: 835, size: 640, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !727, file: !26, line: 836, baseType: !24, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !26, line: 836, baseType: !13, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !26, line: 836, baseType: !13, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !727, file: !26, line: 836, baseType: !20, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !727, file: !26, line: 836, baseType: !36, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !26, line: 836, baseType: !24, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !26, line: 836, baseType: !39, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !26, line: 836, baseType: !717, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !727, file: !26, line: 836, baseType: !13, size: 8, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !727, file: !26, line: 836, baseType: !77, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !727, file: !26, line: 837, baseType: !36, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !727, file: !26, line: 838, baseType: !8, size: 32, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !727, file: !26, line: 839, baseType: !8, size: 32, offset: 608)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !25, file: !26, line: 878, baseType: !743, size: 1600)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !26, line: 846, size: 1600, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !743, file: !26, line: 847, baseType: !24, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !743, file: !26, line: 847, baseType: !13, size: 8, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !26, line: 847, baseType: !13, size: 8, offset: 72)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !743, file: !26, line: 847, baseType: !20, size: 16, offset: 80)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !743, file: !26, line: 847, baseType: !36, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !26, line: 847, baseType: !24, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !743, file: !26, line: 847, baseType: !39, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !743, file: !26, line: 847, baseType: !717, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !743, file: !26, line: 847, baseType: !13, size: 8, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !743, file: !26, line: 847, baseType: !24, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !743, file: !26, line: 848, baseType: !24, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !743, file: !26, line: 849, baseType: !77, size: 64, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !743, file: !26, line: 850, baseType: !13, size: 8, offset: 640)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !743, file: !26, line: 851, baseType: !77, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !743, file: !26, line: 852, baseType: !77, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !743, file: !26, line: 853, baseType: !77, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !743, file: !26, line: 854, baseType: !709, size: 32, offset: 896)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !743, file: !26, line: 855, baseType: !8, size: 32, offset: 928)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !743, file: !26, line: 856, baseType: !8, size: 32, offset: 960)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !743, file: !26, line: 857, baseType: !8, size: 32, offset: 992)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !743, file: !26, line: 858, baseType: !8, size: 32, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !743, file: !26, line: 859, baseType: !8, size: 32, offset: 1056)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !743, file: !26, line: 860, baseType: !8, size: 32, offset: 1088)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !743, file: !26, line: 861, baseType: !8, size: 32, offset: 1120)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !743, file: !26, line: 862, baseType: !8, size: 32, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !743, file: !26, line: 863, baseType: !8, size: 32, offset: 1184)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !743, file: !26, line: 864, baseType: !8, size: 32, offset: 1216)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !743, file: !26, line: 865, baseType: !8, size: 32, offset: 1248)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !743, file: !26, line: 866, baseType: !8, size: 32, offset: 1280)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !743, file: !26, line: 867, baseType: !8, size: 32, offset: 1312)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !743, file: !26, line: 868, baseType: !20, size: 16, offset: 1344)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !743, file: !26, line: 869, baseType: !13, size: 8, offset: 1360)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !743, file: !26, line: 870, baseType: !13, size: 8, offset: 1368)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !743, file: !26, line: 871, baseType: !13, size: 8, offset: 1376)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !743, file: !26, line: 872, baseType: !780, size: 160, offset: 1384)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 160, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 20)
!783 = !{!0}
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 56, elements: !299)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!786 = !{i32 7, !"Dwarf Version", i32 4}
!787 = !{i32 2, !"Debug Info Version", i32 3}
!788 = !{i32 1, !"wchar_size", i32 2}
!789 = !{i32 1, !"Code Model", i32 2}
!790 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!791 = distinct !DISubprogram(name: "acpi_ex_prep_common_field_object", scope: !3, file: !3, line: 293, type: !792, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!792 = !DISubroutineType(types: !793)
!793 = !{!6, !43, !13, !13, !8, !8}
!794 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !791, file: !3, line: 293, type: !43)
!795 = !DILocation(line: 293, column: 61, scope: !791)
!796 = !DILocalVariable(name: "field_flags", arg: 2, scope: !791, file: !3, line: 294, type: !13)
!797 = !DILocation(line: 294, column: 9, scope: !791)
!798 = !DILocalVariable(name: "field_attribute", arg: 3, scope: !791, file: !3, line: 295, type: !13)
!799 = !DILocation(line: 295, column: 9, scope: !791)
!800 = !DILocalVariable(name: "field_bit_position", arg: 4, scope: !791, file: !3, line: 296, type: !8)
!801 = !DILocation(line: 296, column: 10, scope: !791)
!802 = !DILocalVariable(name: "field_bit_length", arg: 5, scope: !791, file: !3, line: 296, type: !8)
!803 = !DILocation(line: 296, column: 34, scope: !791)
!804 = !DILocalVariable(name: "access_bit_width", scope: !791, file: !3, line: 298, type: !8)
!805 = !DILocation(line: 298, column: 6, scope: !791)
!806 = !DILocalVariable(name: "byte_alignment", scope: !791, file: !3, line: 299, type: !8)
!807 = !DILocation(line: 299, column: 6, scope: !791)
!808 = !DILocalVariable(name: "nearest_byte_address", scope: !791, file: !3, line: 300, type: !8)
!809 = !DILocation(line: 300, column: 6, scope: !791)
!810 = !DILocation(line: 309, column: 39, scope: !791)
!811 = !DILocation(line: 309, column: 2, scope: !791)
!812 = !DILocation(line: 309, column: 12, scope: !791)
!813 = !DILocation(line: 309, column: 25, scope: !791)
!814 = !DILocation(line: 309, column: 37, scope: !791)
!815 = !DILocation(line: 310, column: 37, scope: !791)
!816 = !DILocation(line: 310, column: 2, scope: !791)
!817 = !DILocation(line: 310, column: 12, scope: !791)
!818 = !DILocation(line: 310, column: 25, scope: !791)
!819 = !DILocation(line: 310, column: 35, scope: !791)
!820 = !DILocation(line: 311, column: 38, scope: !791)
!821 = !DILocation(line: 311, column: 2, scope: !791)
!822 = !DILocation(line: 311, column: 12, scope: !791)
!823 = !DILocation(line: 311, column: 25, scope: !791)
!824 = !DILocation(line: 311, column: 36, scope: !791)
!825 = !DILocation(line: 329, column: 34, scope: !791)
!826 = !DILocation(line: 329, column: 44, scope: !791)
!827 = !DILocation(line: 329, column: 6, scope: !791)
!828 = !DILocation(line: 328, column: 19, scope: !791)
!829 = !DILocation(line: 330, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !791, file: !3, line: 330, column: 6)
!831 = !DILocation(line: 330, column: 6, scope: !791)
!832 = !DILocation(line: 331, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 330, column: 25)
!834 = !DILocation(line: 337, column: 6, scope: !791)
!835 = !DILocation(line: 336, column: 45, scope: !791)
!836 = !DILocation(line: 336, column: 2, scope: !791)
!837 = !DILocation(line: 336, column: 12, scope: !791)
!838 = !DILocation(line: 336, column: 25, scope: !791)
!839 = !DILocation(line: 336, column: 43, scope: !791)
!840 = !DILocation(line: 350, column: 6, scope: !791)
!841 = !DILocation(line: 349, column: 23, scope: !791)
!842 = !DILocation(line: 352, column: 6, scope: !791)
!843 = !DILocation(line: 351, column: 44, scope: !791)
!844 = !DILocation(line: 351, column: 2, scope: !791)
!845 = !DILocation(line: 351, column: 12, scope: !791)
!846 = !DILocation(line: 351, column: 25, scope: !791)
!847 = !DILocation(line: 351, column: 42, scope: !791)
!848 = !DILocation(line: 359, column: 7, scope: !791)
!849 = !DILocation(line: 360, column: 7, scope: !791)
!850 = !DILocation(line: 359, column: 26, scope: !791)
!851 = !DILocation(line: 358, column: 50, scope: !791)
!852 = !DILocation(line: 358, column: 2, scope: !791)
!853 = !DILocation(line: 358, column: 12, scope: !791)
!854 = !DILocation(line: 358, column: 25, scope: !791)
!855 = !DILocation(line: 358, column: 48, scope: !791)
!856 = !DILocation(line: 362, column: 2, scope: !791)
!857 = !DILocation(line: 363, column: 1, scope: !791)
!858 = distinct !DISubprogram(name: "acpi_ex_decode_field_access", scope: !3, file: !3, line: 195, type: !859, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!859 = !DISubroutineType(types: !860)
!860 = !{!8, !43, !13, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!862 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !858, file: !3, line: 195, type: !43)
!863 = !DILocation(line: 195, column: 56, scope: !858)
!864 = !DILocalVariable(name: "field_flags", arg: 2, scope: !858, file: !3, line: 196, type: !13)
!865 = !DILocation(line: 196, column: 11, scope: !858)
!866 = !DILocalVariable(name: "return_byte_alignment", arg: 3, scope: !858, file: !3, line: 196, type: !861)
!867 = !DILocation(line: 196, column: 30, scope: !858)
!868 = !DILocalVariable(name: "access", scope: !858, file: !3, line: 198, type: !8)
!869 = !DILocation(line: 198, column: 6, scope: !858)
!870 = !DILocalVariable(name: "byte_alignment", scope: !858, file: !3, line: 199, type: !8)
!871 = !DILocation(line: 199, column: 6, scope: !858)
!872 = !DILocalVariable(name: "bit_length", scope: !858, file: !3, line: 200, type: !8)
!873 = !DILocation(line: 200, column: 6, scope: !858)
!874 = !DILocation(line: 204, column: 12, scope: !858)
!875 = !DILocation(line: 204, column: 24, scope: !858)
!876 = !DILocation(line: 204, column: 9, scope: !858)
!877 = !DILocation(line: 206, column: 10, scope: !858)
!878 = !DILocation(line: 206, column: 2, scope: !858)
!879 = !DILocation(line: 220, column: 18, scope: !880)
!880 = distinct !DILexicalBlock(scope: !858, file: !3, line: 206, column: 18)
!881 = !DILocation(line: 221, column: 14, scope: !880)
!882 = !DILocation(line: 222, column: 3, scope: !880)
!883 = !DILocation(line: 227, column: 18, scope: !880)
!884 = !DILocation(line: 228, column: 14, scope: !880)
!885 = !DILocation(line: 229, column: 3, scope: !880)
!886 = !DILocation(line: 233, column: 18, scope: !880)
!887 = !DILocation(line: 234, column: 14, scope: !880)
!888 = !DILocation(line: 235, column: 3, scope: !880)
!889 = !DILocation(line: 239, column: 18, scope: !880)
!890 = !DILocation(line: 240, column: 14, scope: !880)
!891 = !DILocation(line: 241, column: 3, scope: !880)
!892 = !DILocation(line: 245, column: 18, scope: !880)
!893 = !DILocation(line: 246, column: 14, scope: !880)
!894 = !DILocation(line: 247, column: 3, scope: !880)
!895 = !DILocation(line: 253, column: 3, scope: !880)
!896 = !DILocation(line: 255, column: 3, scope: !880)
!897 = !DILocation(line: 258, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !858, file: !3, line: 258, column: 6)
!899 = !DILocation(line: 258, column: 16, scope: !898)
!900 = !DILocation(line: 258, column: 23, scope: !898)
!901 = !DILocation(line: 258, column: 28, scope: !898)
!902 = !DILocation(line: 258, column: 6, scope: !858)
!903 = !DILocation(line: 264, column: 18, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !3, line: 258, column: 55)
!905 = !DILocation(line: 265, column: 2, scope: !904)
!906 = !DILocation(line: 267, column: 27, scope: !858)
!907 = !DILocation(line: 267, column: 3, scope: !858)
!908 = !DILocation(line: 267, column: 25, scope: !858)
!909 = !DILocation(line: 268, column: 2, scope: !858)
!910 = !DILocation(line: 269, column: 1, scope: !858)
!911 = distinct !DISubprogram(name: "acpi_ex_prep_field_value", scope: !3, file: !3, line: 378, type: !912, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!912 = !DISubroutineType(types: !913)
!913 = !{!6, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_create_field_info", file: !26, line: 229, size: 576, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "region_node", scope: !915, file: !26, line: 230, baseType: !39, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "field_node", scope: !915, file: !26, line: 231, baseType: !39, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "register_node", scope: !915, file: !26, line: 232, baseType: !39, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "data_register_node", scope: !915, file: !26, line: 233, baseType: !39, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "connection_node", scope: !915, file: !26, line: 234, baseType: !39, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !915, file: !26, line: 235, baseType: !36, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bank_value", scope: !915, file: !26, line: 236, baseType: !8, size: 32, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_position", scope: !915, file: !26, line: 237, baseType: !8, size: 32, offset: 416)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_length", scope: !915, file: !26, line: 238, baseType: !8, size: 32, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !915, file: !26, line: 239, baseType: !20, size: 16, offset: 480)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !915, file: !26, line: 240, baseType: !20, size: 16, offset: 496)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !915, file: !26, line: 241, baseType: !13, size: 8, offset: 512)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !915, file: !26, line: 242, baseType: !13, size: 8, offset: 520)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !915, file: !26, line: 243, baseType: !13, size: 8, offset: 528)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !915, file: !26, line: 244, baseType: !13, size: 8, offset: 536)
!932 = !DILocalVariable(name: "info", arg: 1, scope: !911, file: !3, line: 378, type: !914)
!933 = !DILocation(line: 378, column: 69, scope: !911)
!934 = !DILocalVariable(name: "obj_desc", scope: !911, file: !3, line: 380, type: !43)
!935 = !DILocation(line: 380, column: 29, scope: !911)
!936 = !DILocalVariable(name: "second_desc", scope: !911, file: !3, line: 381, type: !43)
!937 = !DILocation(line: 381, column: 29, scope: !911)
!938 = !DILocalVariable(name: "status", scope: !911, file: !3, line: 382, type: !6)
!939 = !DILocation(line: 382, column: 14, scope: !911)
!940 = !DILocalVariable(name: "access_byte_width", scope: !911, file: !3, line: 383, type: !8)
!941 = !DILocation(line: 383, column: 6, scope: !911)
!942 = !DILocalVariable(name: "type", scope: !911, file: !3, line: 384, type: !8)
!943 = !DILocation(line: 384, column: 6, scope: !911)
!944 = !DILocation(line: 390, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !911, file: !3, line: 390, column: 6)
!946 = !DILocation(line: 390, column: 12, scope: !945)
!947 = !DILocation(line: 390, column: 23, scope: !945)
!948 = !DILocation(line: 390, column: 6, scope: !911)
!949 = !DILocation(line: 391, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 391, column: 7)
!951 = distinct !DILexicalBlock(scope: !945, file: !3, line: 390, column: 55)
!952 = !DILocation(line: 391, column: 14, scope: !950)
!953 = !DILocation(line: 391, column: 7, scope: !951)
!954 = !DILocation(line: 392, column: 4, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !3, line: 391, column: 27)
!956 = !DILocation(line: 393, column: 4, scope: !955)
!957 = !DILocation(line: 396, column: 27, scope: !951)
!958 = !DILocation(line: 396, column: 33, scope: !951)
!959 = !DILocation(line: 396, column: 10, scope: !951)
!960 = !DILocation(line: 396, column: 8, scope: !951)
!961 = !DILocation(line: 397, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !951, file: !3, line: 397, column: 7)
!963 = !DILocation(line: 397, column: 12, scope: !962)
!964 = !DILocation(line: 397, column: 7, scope: !951)
!965 = !DILocation(line: 398, column: 4, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !3, line: 397, column: 33)
!967 = !DILocation(line: 402, column: 4, scope: !966)
!968 = !DILocation(line: 404, column: 2, scope: !951)
!969 = !DILocation(line: 408, column: 13, scope: !911)
!970 = !DILocation(line: 408, column: 11, scope: !911)
!971 = !DILocation(line: 409, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !911, file: !3, line: 409, column: 6)
!973 = !DILocation(line: 409, column: 6, scope: !911)
!974 = !DILocation(line: 410, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 409, column: 17)
!976 = !DILocation(line: 415, column: 32, scope: !911)
!977 = !DILocation(line: 415, column: 38, scope: !911)
!978 = !DILocation(line: 415, column: 2, scope: !911)
!979 = !DILocation(line: 415, column: 12, scope: !911)
!980 = !DILocation(line: 415, column: 25, scope: !911)
!981 = !DILocation(line: 415, column: 30, scope: !911)
!982 = !DILocation(line: 416, column: 44, scope: !911)
!983 = !DILocation(line: 417, column: 9, scope: !911)
!984 = !DILocation(line: 417, column: 15, scope: !911)
!985 = !DILocation(line: 418, column: 9, scope: !911)
!986 = !DILocation(line: 418, column: 15, scope: !911)
!987 = !DILocation(line: 419, column: 9, scope: !911)
!988 = !DILocation(line: 419, column: 15, scope: !911)
!989 = !DILocation(line: 420, column: 9, scope: !911)
!990 = !DILocation(line: 420, column: 15, scope: !911)
!991 = !DILocation(line: 416, column: 11, scope: !911)
!992 = !DILocation(line: 416, column: 9, scope: !911)
!993 = !DILocation(line: 421, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !911, file: !3, line: 421, column: 6)
!995 = !DILocation(line: 421, column: 6, scope: !911)
!996 = !DILocation(line: 422, column: 30, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 421, column: 28)
!998 = !DILocation(line: 422, column: 3, scope: !997)
!999 = !DILocation(line: 423, column: 3, scope: !997)
!1000 = !DILocation(line: 428, column: 10, scope: !911)
!1001 = !DILocation(line: 428, column: 16, scope: !911)
!1002 = !DILocation(line: 428, column: 2, scope: !911)
!1003 = !DILocation(line: 432, column: 35, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !911, file: !3, line: 428, column: 28)
!1005 = !DILocation(line: 432, column: 41, scope: !1004)
!1006 = !DILocation(line: 432, column: 7, scope: !1004)
!1007 = !DILocation(line: 431, column: 3, scope: !1004)
!1008 = !DILocation(line: 431, column: 13, scope: !1004)
!1009 = !DILocation(line: 431, column: 19, scope: !1004)
!1010 = !DILocation(line: 431, column: 30, scope: !1004)
!1011 = !DILocation(line: 436, column: 35, scope: !1004)
!1012 = !DILocation(line: 436, column: 41, scope: !1004)
!1013 = !DILocation(line: 436, column: 3, scope: !1004)
!1014 = !DILocation(line: 436, column: 13, scope: !1004)
!1015 = !DILocation(line: 436, column: 19, scope: !1004)
!1016 = !DILocation(line: 436, column: 33, scope: !1004)
!1017 = !DILocation(line: 438, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 438, column: 7)
!1019 = !DILocation(line: 438, column: 13, scope: !1018)
!1020 = !DILocation(line: 438, column: 7, scope: !1004)
!1021 = !DILocation(line: 439, column: 18, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 438, column: 30)
!1023 = !DILocation(line: 439, column: 24, scope: !1022)
!1024 = !DILocation(line: 439, column: 41, scope: !1022)
!1025 = !DILocation(line: 439, column: 16, scope: !1022)
!1026 = !DILocation(line: 440, column: 10, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 440, column: 8)
!1028 = !DILocation(line: 440, column: 23, scope: !1027)
!1029 = !DILocation(line: 440, column: 30, scope: !1027)
!1030 = !DILocation(line: 440, column: 36, scope: !1027)
!1031 = !DILocation(line: 440, column: 8, scope: !1022)
!1032 = !DILocation(line: 442, column: 38, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 440, column: 58)
!1034 = !DILocation(line: 442, column: 9, scope: !1033)
!1035 = !DILocation(line: 441, column: 12, scope: !1033)
!1036 = !DILocation(line: 443, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 443, column: 9)
!1038 = !DILocation(line: 443, column: 9, scope: !1033)
!1039 = !DILocation(line: 444, column: 33, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 443, column: 31)
!1041 = !DILocation(line: 444, column: 6, scope: !1040)
!1042 = !DILocation(line: 445, column: 6, scope: !1040)
!1043 = !DILocation(line: 447, column: 4, scope: !1033)
!1044 = !DILocation(line: 450, column: 8, scope: !1022)
!1045 = !DILocation(line: 450, column: 21, scope: !1022)
!1046 = !DILocation(line: 450, column: 28, scope: !1022)
!1047 = !DILocation(line: 449, column: 4, scope: !1022)
!1048 = !DILocation(line: 449, column: 14, scope: !1022)
!1049 = !DILocation(line: 449, column: 20, scope: !1022)
!1050 = !DILocation(line: 449, column: 36, scope: !1022)
!1051 = !DILocation(line: 452, column: 13, scope: !1022)
!1052 = !DILocation(line: 452, column: 26, scope: !1022)
!1053 = !DILocation(line: 452, column: 33, scope: !1022)
!1054 = !DILocation(line: 452, column: 8, scope: !1022)
!1055 = !DILocation(line: 451, column: 4, scope: !1022)
!1056 = !DILocation(line: 451, column: 14, scope: !1022)
!1057 = !DILocation(line: 451, column: 20, scope: !1022)
!1058 = !DILocation(line: 451, column: 36, scope: !1022)
!1059 = !DILocation(line: 453, column: 3, scope: !1022)
!1060 = !DILocation(line: 453, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 453, column: 14)
!1062 = !DILocation(line: 453, column: 20, scope: !1061)
!1063 = !DILocation(line: 453, column: 14, scope: !1018)
!1064 = !DILocation(line: 454, column: 38, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 453, column: 37)
!1066 = !DILocation(line: 454, column: 44, scope: !1065)
!1067 = !DILocation(line: 454, column: 4, scope: !1065)
!1068 = !DILocation(line: 454, column: 14, scope: !1065)
!1069 = !DILocation(line: 454, column: 20, scope: !1065)
!1070 = !DILocation(line: 454, column: 36, scope: !1065)
!1071 = !DILocation(line: 455, column: 38, scope: !1065)
!1072 = !DILocation(line: 455, column: 44, scope: !1065)
!1073 = !DILocation(line: 455, column: 4, scope: !1065)
!1074 = !DILocation(line: 455, column: 14, scope: !1065)
!1075 = !DILocation(line: 455, column: 20, scope: !1065)
!1076 = !DILocation(line: 455, column: 36, scope: !1065)
!1077 = !DILocation(line: 456, column: 3, scope: !1065)
!1078 = !DILocation(line: 458, column: 38, scope: !1004)
!1079 = !DILocation(line: 458, column: 44, scope: !1004)
!1080 = !DILocation(line: 458, column: 3, scope: !1004)
!1081 = !DILocation(line: 458, column: 13, scope: !1004)
!1082 = !DILocation(line: 458, column: 19, scope: !1004)
!1083 = !DILocation(line: 458, column: 36, scope: !1004)
!1084 = !DILocation(line: 462, column: 8, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 462, column: 7)
!1086 = !DILocation(line: 462, column: 18, scope: !1085)
!1087 = !DILocation(line: 462, column: 24, scope: !1085)
!1088 = !DILocation(line: 462, column: 36, scope: !1085)
!1089 = !DILocation(line: 462, column: 43, scope: !1085)
!1090 = !DILocation(line: 462, column: 52, scope: !1085)
!1091 = !DILocation(line: 464, column: 7, scope: !1085)
!1092 = !DILocation(line: 464, column: 11, scope: !1085)
!1093 = !DILocation(line: 464, column: 21, scope: !1085)
!1094 = !DILocation(line: 464, column: 34, scope: !1085)
!1095 = !DILocation(line: 464, column: 45, scope: !1085)
!1096 = !DILocation(line: 462, column: 7, scope: !1004)
!1097 = !DILocation(line: 466, column: 8, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 464, column: 51)
!1099 = !DILocation(line: 465, column: 22, scope: !1098)
!1100 = !DILocation(line: 471, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 471, column: 8)
!1102 = !DILocation(line: 471, column: 26, scope: !1101)
!1103 = !DILocation(line: 471, column: 8, scope: !1098)
!1104 = !DILocation(line: 473, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 471, column: 33)
!1106 = !DILocation(line: 473, column: 9, scope: !1105)
!1107 = !DILocation(line: 472, column: 5, scope: !1105)
!1108 = !DILocation(line: 472, column: 15, scope: !1105)
!1109 = !DILocation(line: 472, column: 28, scope: !1105)
!1110 = !DILocation(line: 472, column: 46, scope: !1105)
!1111 = !DILocation(line: 474, column: 4, scope: !1105)
!1112 = !DILocation(line: 475, column: 3, scope: !1098)
!1113 = !DILocation(line: 482, column: 3, scope: !1004)
!1114 = !DILocation(line: 486, column: 32, scope: !1004)
!1115 = !DILocation(line: 486, column: 38, scope: !1004)
!1116 = !DILocation(line: 486, column: 3, scope: !1004)
!1117 = !DILocation(line: 486, column: 13, scope: !1004)
!1118 = !DILocation(line: 486, column: 24, scope: !1004)
!1119 = !DILocation(line: 486, column: 30, scope: !1004)
!1120 = !DILocation(line: 488, column: 35, scope: !1004)
!1121 = !DILocation(line: 488, column: 41, scope: !1004)
!1122 = !DILocation(line: 488, column: 7, scope: !1004)
!1123 = !DILocation(line: 487, column: 3, scope: !1004)
!1124 = !DILocation(line: 487, column: 13, scope: !1004)
!1125 = !DILocation(line: 487, column: 24, scope: !1004)
!1126 = !DILocation(line: 487, column: 35, scope: !1004)
!1127 = !DILocation(line: 490, column: 35, scope: !1004)
!1128 = !DILocation(line: 490, column: 41, scope: !1004)
!1129 = !DILocation(line: 490, column: 7, scope: !1004)
!1130 = !DILocation(line: 489, column: 3, scope: !1004)
!1131 = !DILocation(line: 489, column: 13, scope: !1004)
!1132 = !DILocation(line: 489, column: 24, scope: !1004)
!1133 = !DILocation(line: 489, column: 33, scope: !1004)
!1134 = !DILocation(line: 494, column: 25, scope: !1004)
!1135 = !DILocation(line: 494, column: 35, scope: !1004)
!1136 = !DILocation(line: 494, column: 46, scope: !1004)
!1137 = !DILocation(line: 494, column: 3, scope: !1004)
!1138 = !DILocation(line: 495, column: 25, scope: !1004)
!1139 = !DILocation(line: 495, column: 35, scope: !1004)
!1140 = !DILocation(line: 495, column: 46, scope: !1004)
!1141 = !DILocation(line: 495, column: 3, scope: !1004)
!1142 = !DILocation(line: 510, column: 17, scope: !1004)
!1143 = !DILocation(line: 510, column: 27, scope: !1004)
!1144 = !DILocation(line: 510, column: 34, scope: !1004)
!1145 = !DILocation(line: 510, column: 15, scope: !1004)
!1146 = !DILocation(line: 512, column: 7, scope: !1004)
!1147 = !DILocation(line: 513, column: 34, scope: !1004)
!1148 = !DILocation(line: 513, column: 40, scope: !1004)
!1149 = !DILocation(line: 511, column: 3, scope: !1004)
!1150 = !DILocation(line: 511, column: 16, scope: !1004)
!1151 = !DILocation(line: 511, column: 22, scope: !1004)
!1152 = !DILocation(line: 511, column: 32, scope: !1004)
!1153 = !DILocation(line: 515, column: 7, scope: !1004)
!1154 = !DILocation(line: 516, column: 34, scope: !1004)
!1155 = !DILocation(line: 516, column: 40, scope: !1004)
!1156 = !DILocation(line: 514, column: 3, scope: !1004)
!1157 = !DILocation(line: 514, column: 16, scope: !1004)
!1158 = !DILocation(line: 514, column: 22, scope: !1004)
!1159 = !DILocation(line: 514, column: 33, scope: !1004)
!1160 = !DILocation(line: 518, column: 3, scope: !1004)
!1161 = !DILocation(line: 525, column: 35, scope: !1004)
!1162 = !DILocation(line: 525, column: 41, scope: !1004)
!1163 = !DILocation(line: 525, column: 7, scope: !1004)
!1164 = !DILocation(line: 524, column: 3, scope: !1004)
!1165 = !DILocation(line: 524, column: 13, scope: !1004)
!1166 = !DILocation(line: 524, column: 25, scope: !1004)
!1167 = !DILocation(line: 524, column: 35, scope: !1004)
!1168 = !DILocation(line: 527, column: 35, scope: !1004)
!1169 = !DILocation(line: 527, column: 41, scope: !1004)
!1170 = !DILocation(line: 527, column: 7, scope: !1004)
!1171 = !DILocation(line: 526, column: 3, scope: !1004)
!1172 = !DILocation(line: 526, column: 13, scope: !1004)
!1173 = !DILocation(line: 526, column: 25, scope: !1004)
!1174 = !DILocation(line: 526, column: 34, scope: !1004)
!1175 = !DILocation(line: 529, column: 8, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 529, column: 7)
!1177 = !DILocation(line: 529, column: 18, scope: !1176)
!1178 = !DILocation(line: 529, column: 30, scope: !1176)
!1179 = !DILocation(line: 530, column: 7, scope: !1176)
!1180 = !DILocation(line: 530, column: 11, scope: !1176)
!1181 = !DILocation(line: 530, column: 21, scope: !1176)
!1182 = !DILocation(line: 530, column: 33, scope: !1176)
!1183 = !DILocation(line: 529, column: 7, scope: !1004)
!1184 = !DILocation(line: 531, column: 4, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 530, column: 44)
!1186 = !DILocation(line: 533, column: 31, scope: !1185)
!1187 = !DILocation(line: 533, column: 4, scope: !1185)
!1188 = !DILocation(line: 534, column: 4, scope: !1185)
!1189 = !DILocation(line: 539, column: 25, scope: !1004)
!1190 = !DILocation(line: 539, column: 35, scope: !1004)
!1191 = !DILocation(line: 539, column: 47, scope: !1004)
!1192 = !DILocation(line: 539, column: 3, scope: !1004)
!1193 = !DILocation(line: 540, column: 25, scope: !1004)
!1194 = !DILocation(line: 540, column: 35, scope: !1004)
!1195 = !DILocation(line: 540, column: 47, scope: !1004)
!1196 = !DILocation(line: 540, column: 3, scope: !1004)
!1197 = !DILocation(line: 560, column: 13, scope: !1004)
!1198 = !DILocation(line: 560, column: 7, scope: !1004)
!1199 = !DILocation(line: 559, column: 3, scope: !1004)
!1200 = !DILocation(line: 559, column: 13, scope: !1004)
!1201 = !DILocation(line: 559, column: 25, scope: !1004)
!1202 = !DILocation(line: 559, column: 31, scope: !1004)
!1203 = !DILocation(line: 573, column: 3, scope: !1004)
!1204 = !DILocation(line: 579, column: 3, scope: !1004)
!1205 = !DILocation(line: 587, column: 28, scope: !911)
!1206 = !DILocation(line: 587, column: 34, scope: !911)
!1207 = !DILocation(line: 587, column: 46, scope: !911)
!1208 = !DILocation(line: 588, column: 24, scope: !911)
!1209 = !DILocation(line: 588, column: 30, scope: !911)
!1210 = !DILocation(line: 588, column: 7, scope: !911)
!1211 = !DILocation(line: 587, column: 6, scope: !911)
!1212 = !DILocation(line: 586, column: 9, scope: !911)
!1213 = !DILocation(line: 597, column: 27, scope: !911)
!1214 = !DILocation(line: 597, column: 2, scope: !911)
!1215 = !DILocation(line: 598, column: 2, scope: !911)
!1216 = !DILocation(line: 599, column: 1, scope: !911)
