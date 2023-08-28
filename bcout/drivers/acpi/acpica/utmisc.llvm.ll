; ModuleID = '../bcout/drivers/acpi/acpica/utmisc.llvm.bc'
source_filename = "drivers/acpi/acpica/utmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%union.anon = type { i32 }
%union.anon.0 = type { i32 }
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
%struct.acpi_pkg_state = type { i8*, i8, i8, i16, i16, i32, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*, i8*, i32 }
%struct.acpi_object_package = type { %union.acpi_operand_object*, i8, i8, i16, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i32, i32 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }

@.str = private unnamed_addr constant [8 x i8] c"PNP0A03\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0A08\00", align 1
@acpi_gbl_integer_bit_width = external dso_local global i8, align 1
@acpi_gbl_integer_nybble_width = external dso_local global i8, align 1
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@_acpi_module_name = internal constant [7 x i8] c"utmisc\00", align 1, !dbg !0
@.str.2 = private unnamed_addr constant [39 x i8] c"State list did not terminate correctly\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ut_is_pci_root_bridge(i8* %id) #0 !dbg !800 {
entry:
  %retval = alloca i8, align 1
  %id.addr = alloca i8*, align 8
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !803, metadata !DIExpression()), !dbg !804
  %0 = load i8*, i8** %id.addr, align 8, !dbg !805
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !807
  %tobool = icmp ne i32 %call, 0, !dbg !807
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !808

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %id.addr, align 8, !dbg !809
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !810
  %tobool2 = icmp ne i32 %call1, 0, !dbg !810
  br i1 %tobool2, label %if.end, label %if.then, !dbg !811

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, i8* %retval, align 1, !dbg !812
  br label %return, !dbg !812

if.end:                                           ; preds = %lor.lhs.false
  store i8 0, i8* %retval, align 1, !dbg !814
  br label %return, !dbg !814

return:                                           ; preds = %if.end, %if.then
  %2 = load i8, i8* %retval, align 1, !dbg !815
  ret i8 %2, !dbg !815
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_dword_byte_swap(i32 %value) #0 !dbg !816 {
entry:
  %value.addr = alloca i32, align 4
  %out = alloca %union.anon, align 4
  %in = alloca %union.anon.0, align 4
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata %union.anon* %out, metadata !821, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata %union.anon.0* %in, metadata !828, metadata !DIExpression()), !dbg !833
  %0 = load i32, i32* %value.addr, align 4, !dbg !834
  %value1 = bitcast %union.anon.0* %in to i32*, !dbg !835
  store i32 %0, i32* %value1, align 4, !dbg !836
  %bytes = bitcast %union.anon.0* %in to [4 x i8]*, !dbg !837
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %bytes, i64 0, i64 3, !dbg !838
  %1 = load i8, i8* %arrayidx, align 1, !dbg !838
  %bytes2 = bitcast %union.anon* %out to [4 x i8]*, !dbg !839
  %arrayidx3 = getelementptr [4 x i8], [4 x i8]* %bytes2, i64 0, i64 0, !dbg !840
  store i8 %1, i8* %arrayidx3, align 4, !dbg !841
  %bytes4 = bitcast %union.anon.0* %in to [4 x i8]*, !dbg !842
  %arrayidx5 = getelementptr [4 x i8], [4 x i8]* %bytes4, i64 0, i64 2, !dbg !843
  %2 = load i8, i8* %arrayidx5, align 2, !dbg !843
  %bytes6 = bitcast %union.anon* %out to [4 x i8]*, !dbg !844
  %arrayidx7 = getelementptr [4 x i8], [4 x i8]* %bytes6, i64 0, i64 1, !dbg !845
  store i8 %2, i8* %arrayidx7, align 1, !dbg !846
  %bytes8 = bitcast %union.anon.0* %in to [4 x i8]*, !dbg !847
  %arrayidx9 = getelementptr [4 x i8], [4 x i8]* %bytes8, i64 0, i64 1, !dbg !848
  %3 = load i8, i8* %arrayidx9, align 1, !dbg !848
  %bytes10 = bitcast %union.anon* %out to [4 x i8]*, !dbg !849
  %arrayidx11 = getelementptr [4 x i8], [4 x i8]* %bytes10, i64 0, i64 2, !dbg !850
  store i8 %3, i8* %arrayidx11, align 2, !dbg !851
  %bytes12 = bitcast %union.anon.0* %in to [4 x i8]*, !dbg !852
  %arrayidx13 = getelementptr [4 x i8], [4 x i8]* %bytes12, i64 0, i64 0, !dbg !853
  %4 = load i8, i8* %arrayidx13, align 4, !dbg !853
  %bytes14 = bitcast %union.anon* %out to [4 x i8]*, !dbg !854
  %arrayidx15 = getelementptr [4 x i8], [4 x i8]* %bytes14, i64 0, i64 3, !dbg !855
  store i8 %4, i8* %arrayidx15, align 1, !dbg !856
  %value16 = bitcast %union.anon* %out to i32*, !dbg !857
  %5 = load i32, i32* %value16, align 4, !dbg !857
  ret i32 %5, !dbg !858
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_set_integer_width(i8 zeroext %revision) #0 !dbg !859 {
entry:
  %revision.addr = alloca i8, align 1
  store i8 %revision, i8* %revision.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %revision.addr, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load i8, i8* %revision.addr, align 1, !dbg !864
  %conv = zext i8 %0 to i32, !dbg !864
  %cmp = icmp slt i32 %conv, 2, !dbg !866
  br i1 %cmp, label %if.then, label %if.else, !dbg !867

if.then:                                          ; preds = %entry
  store i8 32, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !868
  store i8 8, i8* @acpi_gbl_integer_nybble_width, align 1, !dbg !870
  store i8 4, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !871
  br label %if.end, !dbg !872

if.else:                                          ; preds = %entry
  store i8 64, i8* @acpi_gbl_integer_bit_width, align 1, !dbg !873
  store i8 16, i8* @acpi_gbl_integer_nybble_width, align 1, !dbg !875
  store i8 8, i8* @acpi_gbl_integer_byte_width, align 1, !dbg !876
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !877
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %object, i16 zeroext %action, %union.acpi_generic_state** %state_list) #0 !dbg !878 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %union.acpi_operand_object*, align 8
  %action.addr = alloca i16, align 2
  %state_list.addr = alloca %union.acpi_generic_state**, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  store %union.acpi_operand_object* %object, %union.acpi_operand_object** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %object.addr, metadata !882, metadata !DIExpression()), !dbg !883
  store i16 %action, i16* %action.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %action.addr, metadata !884, metadata !DIExpression()), !dbg !885
  store %union.acpi_generic_state** %state_list, %union.acpi_generic_state*** %state_list.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state*** %state_list.addr, metadata !886, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !888, metadata !DIExpression()), !dbg !889
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !890
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !890
  br i1 %tobool, label %if.end, label %if.then, !dbg !892

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %object.addr, align 8, !dbg !895
  %2 = load i16, i16* %action.addr, align 2, !dbg !896
  %call = call %union.acpi_generic_state* @acpi_ut_create_update_state(%union.acpi_operand_object* %1, i16 zeroext %2) #3, !dbg !897
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %state, align 8, !dbg !898
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !899
  %tobool1 = icmp ne %union.acpi_generic_state* %3, null, !dbg !899
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !901

if.then2:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !902
  br label %return, !dbg !902

if.end3:                                          ; preds = %if.end
  %4 = load %union.acpi_generic_state**, %union.acpi_generic_state*** %state_list.addr, align 8, !dbg !904
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !905
  call void @acpi_ut_push_generic_state(%union.acpi_generic_state** %4, %union.acpi_generic_state* %5) #3, !dbg !906
  store i32 0, i32* %retval, align 4, !dbg !907
  br label %return, !dbg !907

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !908
  ret i32 %6, !dbg !908
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_update_state(%union.acpi_operand_object*, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %source_object, i8* %target_object, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* %walk_callback, i8* %context) #0 !dbg !909 {
entry:
  %retval = alloca i32, align 4
  %source_object.addr = alloca %union.acpi_operand_object*, align 8
  %target_object.addr = alloca i8*, align 8
  %walk_callback.addr = alloca i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, align 8
  %context.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %state_list = alloca %union.acpi_generic_state*, align 8
  %state = alloca %union.acpi_generic_state*, align 8
  %this_source_obj = alloca %union.acpi_operand_object*, align 8
  %this_index = alloca i32, align 4
  store %union.acpi_operand_object* %source_object, %union.acpi_operand_object** %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_object.addr, metadata !917, metadata !DIExpression()), !dbg !918
  store i8* %target_object, i8** %target_object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %target_object.addr, metadata !919, metadata !DIExpression()), !dbg !920
  store i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* %walk_callback, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %walk_callback.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %walk_callback.addr, metadata !921, metadata !DIExpression()), !dbg !922
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata i32* %status, metadata !925, metadata !DIExpression()), !dbg !926
  store i32 0, i32* %status, align 4, !dbg !926
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state_list, metadata !927, metadata !DIExpression()), !dbg !928
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %state_list, align 8, !dbg !928
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %state, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %this_source_obj, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata i32* %this_index, metadata !933, metadata !DIExpression()), !dbg !934
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object.addr, align 8, !dbg !935
  %1 = bitcast %union.acpi_operand_object* %0 to i8*, !dbg !935
  %2 = load i8*, i8** %target_object.addr, align 8, !dbg !936
  %call = call %union.acpi_generic_state* @acpi_ut_create_pkg_state(i8* %1, i8* %2, i32 0) #3, !dbg !937
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %state, align 8, !dbg !938
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !939
  %tobool = icmp ne %union.acpi_generic_state* %3, null, !dbg !939
  br i1 %tobool, label %if.end, label %if.then, !dbg !941

if.then:                                          ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !942
  br label %return, !dbg !942

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !944

while.cond:                                       ; preds = %if.end56, %if.end
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !945
  %tobool1 = icmp ne %union.acpi_generic_state* %4, null, !dbg !944
  br i1 %tobool1, label %while.body, label %while.end57, !dbg !944

while.body:                                       ; preds = %while.cond
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !946
  %pkg = bitcast %union.acpi_generic_state* %5 to %struct.acpi_pkg_state*, !dbg !948
  %index = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg, i32 0, i32 5, !dbg !949
  %6 = load i32, i32* %index, align 8, !dbg !949
  store i32 %6, i32* %this_index, align 4, !dbg !950
  %7 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !951
  %pkg2 = bitcast %union.acpi_generic_state* %7 to %struct.acpi_pkg_state*, !dbg !952
  %source_object3 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg2, i32 0, i32 6, !dbg !953
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object3, align 8, !dbg !953
  %package = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_package*, !dbg !954
  %elements = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package, i32 0, i32 6, !dbg !955
  %9 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements, align 8, !dbg !955
  %10 = load i32, i32* %this_index, align 4, !dbg !956
  %idxprom = zext i32 %10 to i64, !dbg !951
  %arrayidx = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %9, i64 %idxprom, !dbg !951
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx, align 8, !dbg !951
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !957
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !958
  %pkg4 = bitcast %union.acpi_generic_state* %12 to %struct.acpi_pkg_state*, !dbg !959
  %source_object5 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg4, i32 0, i32 6, !dbg !960
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object5, align 8, !dbg !960
  %package6 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_package*, !dbg !961
  %elements7 = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package6, i32 0, i32 6, !dbg !962
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %elements7, align 8, !dbg !962
  %15 = load i32, i32* %this_index, align 4, !dbg !963
  %idxprom8 = zext i32 %15 to i64, !dbg !958
  %arrayidx9 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %14, i64 %idxprom8, !dbg !958
  %16 = bitcast %union.acpi_operand_object** %arrayidx9 to i8*, !dbg !964
  %17 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !965
  %pkg10 = bitcast %union.acpi_generic_state* %17 to %struct.acpi_pkg_state*, !dbg !966
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg10, i32 0, i32 9, !dbg !967
  store i8* %16, i8** %this_target_obj, align 8, !dbg !968
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !969
  %tobool11 = icmp ne %union.acpi_operand_object* %18, null, !dbg !969
  br i1 %tobool11, label %lor.lhs.false, label %if.then18, !dbg !971

lor.lhs.false:                                    ; preds = %while.body
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !972
  %20 = bitcast %union.acpi_operand_object* %19 to i8*, !dbg !972
  %21 = bitcast i8* %20 to %union.acpi_descriptor*, !dbg !972
  %common = bitcast %union.acpi_descriptor* %21 to %struct.acpi_common_descriptor*, !dbg !972
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common, i32 0, i32 1, !dbg !972
  %22 = load i8, i8* %descriptor_type, align 8, !dbg !972
  %conv = zext i8 %22 to i32, !dbg !972
  %cmp = icmp ne i32 %conv, 14, !dbg !973
  br i1 %cmp, label %if.then18, label %lor.lhs.false13, !dbg !974

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !975
  %common14 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_common*, !dbg !976
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common14, i32 0, i32 2, !dbg !977
  %24 = load i8, i8* %type, align 1, !dbg !977
  %conv15 = zext i8 %24 to i32, !dbg !975
  %cmp16 = icmp ne i32 %conv15, 4, !dbg !978
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !979

if.then18:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %while.body
  %25 = load i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %walk_callback.addr, align 8, !dbg !980
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !982
  %27 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !983
  %28 = load i8*, i8** %context.addr, align 8, !dbg !984
  %call19 = call i32 %25(i8 zeroext 0, %union.acpi_operand_object* %26, %union.acpi_generic_state* %27, i8* %28) #3, !dbg !980
  store i32 %call19, i32* %status, align 4, !dbg !985
  %29 = load i32, i32* %status, align 4, !dbg !986
  %tobool20 = icmp ne i32 %29, 0, !dbg !986
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !988

if.then21:                                        ; preds = %if.then18
  %30 = load i32, i32* %status, align 4, !dbg !989
  store i32 %30, i32* %retval, align 4, !dbg !989
  br label %return, !dbg !989

if.end22:                                         ; preds = %if.then18
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !991
  %pkg23 = bitcast %union.acpi_generic_state* %31 to %struct.acpi_pkg_state*, !dbg !992
  %index24 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg23, i32 0, i32 5, !dbg !993
  %32 = load i32, i32* %index24, align 8, !dbg !994
  %inc = add i32 %32, 1, !dbg !994
  store i32 %inc, i32* %index24, align 8, !dbg !994
  br label %while.cond25, !dbg !995

while.cond25:                                     ; preds = %if.end37, %if.end22
  %33 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !996
  %pkg26 = bitcast %union.acpi_generic_state* %33 to %struct.acpi_pkg_state*, !dbg !997
  %index27 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg26, i32 0, i32 5, !dbg !998
  %34 = load i32, i32* %index27, align 8, !dbg !998
  %35 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !999
  %pkg28 = bitcast %union.acpi_generic_state* %35 to %struct.acpi_pkg_state*, !dbg !1000
  %source_object29 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg28, i32 0, i32 6, !dbg !1001
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_object29, align 8, !dbg !1001
  %package30 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_package*, !dbg !1002
  %count = getelementptr inbounds %struct.acpi_object_package, %struct.acpi_object_package* %package30, i32 0, i32 9, !dbg !1003
  %37 = load i32, i32* %count, align 4, !dbg !1003
  %cmp31 = icmp uge i32 %34, %37, !dbg !1004
  br i1 %cmp31, label %while.body33, label %while.end, !dbg !995

while.body33:                                     ; preds = %while.cond25
  %38 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1005
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %38) #3, !dbg !1007
  %call34 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %state_list) #3, !dbg !1008
  store %union.acpi_generic_state* %call34, %union.acpi_generic_state** %state, align 8, !dbg !1009
  %39 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1010
  %tobool35 = icmp ne %union.acpi_generic_state* %39, null, !dbg !1010
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !1012

if.then36:                                        ; preds = %while.body33
  store i32 0, i32* %retval, align 4, !dbg !1013
  br label %return, !dbg !1013

if.end37:                                         ; preds = %while.body33
  %40 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1015
  %pkg38 = bitcast %union.acpi_generic_state* %40 to %struct.acpi_pkg_state*, !dbg !1016
  %index39 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg38, i32 0, i32 5, !dbg !1017
  %41 = load i32, i32* %index39, align 8, !dbg !1018
  %inc40 = add i32 %41, 1, !dbg !1018
  store i32 %inc40, i32* %index39, align 8, !dbg !1018
  br label %while.cond25, !dbg !995, !llvm.loop !1019

while.end:                                        ; preds = %while.cond25
  br label %if.end56, !dbg !1021

if.else:                                          ; preds = %lor.lhs.false13
  %42 = load i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i32 (i8, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %walk_callback.addr, align 8, !dbg !1022
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !1024
  %44 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1025
  %45 = load i8*, i8** %context.addr, align 8, !dbg !1026
  %call41 = call i32 %42(i8 zeroext 1, %union.acpi_operand_object* %43, %union.acpi_generic_state* %44, i8* %45) #3, !dbg !1022
  store i32 %call41, i32* %status, align 4, !dbg !1027
  %46 = load i32, i32* %status, align 4, !dbg !1028
  %tobool42 = icmp ne i32 %46, 0, !dbg !1028
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1030

if.then43:                                        ; preds = %if.else
  %47 = load i32, i32* %status, align 4, !dbg !1031
  store i32 %47, i32* %retval, align 4, !dbg !1031
  br label %return, !dbg !1031

if.end44:                                         ; preds = %if.else
  %48 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1033
  call void @acpi_ut_push_generic_state(%union.acpi_generic_state** %state_list, %union.acpi_generic_state* %48) #3, !dbg !1034
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %this_source_obj, align 8, !dbg !1035
  %50 = bitcast %union.acpi_operand_object* %49 to i8*, !dbg !1035
  %51 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1036
  %pkg45 = bitcast %union.acpi_generic_state* %51 to %struct.acpi_pkg_state*, !dbg !1037
  %this_target_obj46 = getelementptr inbounds %struct.acpi_pkg_state, %struct.acpi_pkg_state* %pkg45, i32 0, i32 9, !dbg !1038
  %52 = load i8*, i8** %this_target_obj46, align 8, !dbg !1038
  %call47 = call %union.acpi_generic_state* @acpi_ut_create_pkg_state(i8* %50, i8* %52, i32 0) #3, !dbg !1039
  store %union.acpi_generic_state* %call47, %union.acpi_generic_state** %state, align 8, !dbg !1040
  %53 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1041
  %tobool48 = icmp ne %union.acpi_generic_state* %53, null, !dbg !1041
  br i1 %tobool48, label %if.end55, label %if.then49, !dbg !1043

if.then49:                                        ; preds = %if.end44
  br label %while.cond50, !dbg !1044

while.cond50:                                     ; preds = %while.body52, %if.then49
  %54 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state_list, align 8, !dbg !1046
  %tobool51 = icmp ne %union.acpi_generic_state* %54, null, !dbg !1044
  br i1 %tobool51, label %while.body52, label %while.end54, !dbg !1044

while.body52:                                     ; preds = %while.cond50
  %call53 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %state_list) #3, !dbg !1047
  store %union.acpi_generic_state* %call53, %union.acpi_generic_state** %state, align 8, !dbg !1049
  %55 = load %union.acpi_generic_state*, %union.acpi_generic_state** %state, align 8, !dbg !1050
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %55) #3, !dbg !1051
  br label %while.cond50, !dbg !1044, !llvm.loop !1052

while.end54:                                      ; preds = %while.cond50
  store i32 4, i32* %retval, align 4, !dbg !1054
  br label %return, !dbg !1054

if.end55:                                         ; preds = %if.end44
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %while.end
  br label %while.cond, !dbg !944, !llvm.loop !1055

while.end57:                                      ; preds = %while.cond
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 309, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !1057
  store i32 12303, i32* %retval, align 4, !dbg !1058
  br label %return, !dbg !1058

return:                                           ; preds = %while.end57, %while.end54, %if.then43, %if.then36, %if.then21, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !1059
  ret i32 %56, !dbg !1059
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_pkg_state(i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!795, !796, !797, !798}
!llvm.ident = !{!799}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !793, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !792, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utmisc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !21}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !15, line: 432, size: 1600, elements: !16)
!15 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !26, !790, !791}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !14, file: !15, line: 433, baseType: !18, size: 128)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !15, line: 427, size: 128, elements: !19)
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !18, file: !15, line: 428, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !18, file: !15, line: 429, baseType: !23, size: 8, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !14, file: !15, line: 434, baseType: !27, size: 576)
!27 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !15, line: 367, size: 576, elements: !28)
!28 = !{!29, !41, !57, !69, !105, !119, !128, !441, !458, !473, !486, !564, !576, !590, !600, !618, !640, !659, !678, !697, !710, !736, !753, !766, !780, !789}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !27, file: !15, line: 368, baseType: !30, size: 128)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !15, line: 73, size: 128, elements: !31)
!31 = !{!32, !34, !35, !36, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !30, file: !15, line: 74, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !30, file: !15, line: 74, baseType: !23, size: 8, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !15, line: 74, baseType: !23, size: 8, offset: 72)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !30, file: !15, line: 74, baseType: !37, size: 16, offset: 80)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !15, line: 74, baseType: !23, size: 8, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !27, file: !15, line: 369, baseType: !42, size: 192)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !15, line: 76, size: 192, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !53}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !42, file: !15, line: 77, baseType: !33, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !15, line: 77, baseType: !23, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !15, line: 77, baseType: !23, size: 8, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !42, file: !15, line: 77, baseType: !37, size: 16, offset: 80)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !15, line: 77, baseType: !23, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !42, file: !15, line: 77, baseType: !50, size: 24, offset: 104)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 3)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !42, file: !15, line: 78, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !56)
!56 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !27, file: !15, line: 370, baseType: !58, size: 256)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !15, line: 93, size: 256, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !68}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !15, line: 94, baseType: !33, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !15, line: 94, baseType: !23, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !15, line: 94, baseType: !23, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !15, line: 94, baseType: !37, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !15, line: 94, baseType: !23, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !58, file: !15, line: 94, baseType: !66, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !15, line: 94, baseType: !8, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !27, file: !15, line: 371, baseType: !70, size: 384)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !15, line: 97, size: 384, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !79, !80, !81, !82}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !15, line: 98, baseType: !33, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !15, line: 98, baseType: !23, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !15, line: 98, baseType: !23, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !15, line: 98, baseType: !37, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !15, line: 98, baseType: !23, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !15, line: 98, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !15, line: 98, baseType: !8, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !70, file: !15, line: 99, baseType: !8, size: 32, offset: 224)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !70, file: !15, line: 100, baseType: !78, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !70, file: !15, line: 101, baseType: !83, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !85, line: 133, size: 384, elements: !86)
!85 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91, !100, !101, !102, !103}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !84, file: !85, line: 134, baseType: !33, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !85, line: 135, baseType: !23, size: 8, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !85, line: 136, baseType: !23, size: 8, offset: 72)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !85, line: 137, baseType: !37, size: 16, offset: 80)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !85, line: 138, baseType: !92, size: 32, offset: 96)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !93, line: 327, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !92, file: !93, line: 328, baseType: !8, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !92, file: !93, line: 329, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !85, line: 139, baseType: !83, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !84, file: !85, line: 140, baseType: !83, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !84, file: !85, line: 141, baseType: !83, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !84, file: !85, line: 142, baseType: !104, size: 16, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !37)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !27, file: !15, line: 372, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !15, line: 104, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !116, !117, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !15, line: 105, baseType: !33, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !15, line: 105, baseType: !23, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !15, line: 105, baseType: !23, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !15, line: 105, baseType: !37, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !15, line: 105, baseType: !23, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !15, line: 105, baseType: !83, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !106, file: !15, line: 106, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !15, line: 107, baseType: !78, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !15, line: 108, baseType: !8, size: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !106, file: !15, line: 109, baseType: !8, size: 32, offset: 352)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !27, file: !15, line: 373, baseType: !120, size: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !15, line: 118, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !15, line: 119, baseType: !33, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !15, line: 119, baseType: !23, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !15, line: 119, baseType: !23, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !15, line: 119, baseType: !37, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !15, line: 119, baseType: !23, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !120, file: !15, line: 119, baseType: !21, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !27, file: !15, line: 374, baseType: !129, size: 448)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !15, line: 143, size: 448, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !438, !439, !440}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !15, line: 144, baseType: !33, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !15, line: 144, baseType: !37, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !129, file: !15, line: 144, baseType: !23, size: 8, offset: 104)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !129, file: !15, line: 145, baseType: !23, size: 8, offset: 112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !129, file: !15, line: 146, baseType: !23, size: 8, offset: 120)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !129, file: !15, line: 147, baseType: !33, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !15, line: 148, baseType: !33, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !129, file: !15, line: 149, baseType: !78, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !129, file: !15, line: 153, baseType: !143, size: 64, offset: 320)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !15, line: 150, size: 64, elements: !144)
!144 = !{!145, !437}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !143, file: !15, line: 151, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !85, line: 248, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!6, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !152, line: 37, size: 9024, elements: !153)
!152 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !383, !384, !385, !386, !387, !391, !393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !420, !421, !422, !423, !424, !425, !426, !427, !429, !435}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 38, baseType: !150, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !152, line: 39, baseType: !23, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !151, file: !152, line: 40, baseType: !23, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !151, file: !152, line: 41, baseType: !37, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !151, file: !152, line: 42, baseType: !23, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !151, file: !152, line: 43, baseType: !23, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !151, file: !152, line: 44, baseType: !23, size: 8, offset: 112)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !151, file: !152, line: 45, baseType: !104, size: 16, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !151, file: !152, line: 46, baseType: !23, size: 8, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !151, file: !152, line: 47, baseType: !23, size: 8, offset: 152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !151, file: !152, line: 48, baseType: !23, size: 8, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !151, file: !152, line: 49, baseType: !23, size: 8, offset: 168)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !151, file: !152, line: 50, baseType: !23, size: 8, offset: 176)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !151, file: !152, line: 51, baseType: !23, size: 8, offset: 184)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !151, file: !152, line: 52, baseType: !23, size: 8, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !151, file: !152, line: 53, baseType: !23, size: 8, offset: 200)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !152, line: 54, baseType: !78, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !151, file: !152, line: 55, baseType: !8, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !151, file: !152, line: 56, baseType: !8, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !151, file: !152, line: 57, baseType: !8, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !151, file: !152, line: 58, baseType: !8, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !151, file: !152, line: 60, baseType: !176, size: 640, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !85, line: 893, size: 640, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !264, !265, !381, !382}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !85, line: 894, baseType: !78, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !176, file: !85, line: 895, baseType: !78, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !176, file: !85, line: 896, baseType: !78, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !176, file: !85, line: 897, baseType: !78, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !176, file: !85, line: 898, baseType: !78, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !176, file: !85, line: 899, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !85, line: 875, size: 1600, elements: !186)
!186 = !{!187, !207, !223}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !185, file: !85, line: 876, baseType: !188, size: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !85, line: 828, size: 448, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !85, line: 829, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !85, line: 829, baseType: !23, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !85, line: 829, baseType: !23, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !85, line: 829, baseType: !37, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !85, line: 829, baseType: !78, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !85, line: 829, baseType: !184, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !85, line: 829, baseType: !83, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !85, line: 829, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !85, line: 716, size: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !198, file: !85, line: 717, baseType: !54, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !85, line: 718, baseType: !8, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !198, file: !85, line: 719, baseType: !66, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !198, file: !85, line: 720, baseType: !78, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !85, line: 721, baseType: !66, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !198, file: !85, line: 722, baseType: !184, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !85, line: 829, baseType: !23, size: 8, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !185, file: !85, line: 877, baseType: !208, size: 640)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !85, line: 835, size: 640, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !85, line: 836, baseType: !184, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !85, line: 836, baseType: !23, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !85, line: 836, baseType: !23, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !85, line: 836, baseType: !37, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !85, line: 836, baseType: !78, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !85, line: 836, baseType: !184, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !85, line: 836, baseType: !83, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !85, line: 836, baseType: !198, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !85, line: 836, baseType: !23, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !208, file: !85, line: 836, baseType: !66, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !85, line: 837, baseType: !78, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !208, file: !85, line: 838, baseType: !8, size: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !85, line: 839, baseType: !8, size: 32, offset: 608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !185, file: !85, line: 878, baseType: !224, size: 1600)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !85, line: 846, size: 1600, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !85, line: 847, baseType: !184, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !85, line: 847, baseType: !23, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !85, line: 847, baseType: !23, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !224, file: !85, line: 847, baseType: !37, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !224, file: !85, line: 847, baseType: !78, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !85, line: 847, baseType: !184, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !85, line: 847, baseType: !83, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !85, line: 847, baseType: !198, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !224, file: !85, line: 847, baseType: !23, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !224, file: !85, line: 847, baseType: !184, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !224, file: !85, line: 848, baseType: !184, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !224, file: !85, line: 849, baseType: !66, size: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !224, file: !85, line: 850, baseType: !23, size: 8, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !224, file: !85, line: 851, baseType: !66, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !224, file: !85, line: 852, baseType: !66, size: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !224, file: !85, line: 853, baseType: !66, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !224, file: !85, line: 854, baseType: !97, size: 32, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !224, file: !85, line: 855, baseType: !8, size: 32, offset: 928)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !224, file: !85, line: 856, baseType: !8, size: 32, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !224, file: !85, line: 857, baseType: !8, size: 32, offset: 992)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !224, file: !85, line: 858, baseType: !8, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !224, file: !85, line: 859, baseType: !8, size: 32, offset: 1056)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !224, file: !85, line: 860, baseType: !8, size: 32, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !224, file: !85, line: 861, baseType: !8, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !224, file: !85, line: 862, baseType: !8, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !224, file: !85, line: 863, baseType: !8, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !224, file: !85, line: 864, baseType: !8, size: 32, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !224, file: !85, line: 865, baseType: !8, size: 32, offset: 1248)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !224, file: !85, line: 866, baseType: !8, size: 32, offset: 1280)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !224, file: !85, line: 867, baseType: !8, size: 32, offset: 1312)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !224, file: !85, line: 868, baseType: !37, size: 16, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !224, file: !85, line: 869, baseType: !23, size: 8, offset: 1360)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !224, file: !85, line: 870, baseType: !23, size: 8, offset: 1368)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !224, file: !85, line: 871, baseType: !23, size: 8, offset: 1376)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !224, file: !85, line: 872, baseType: !261, size: 160, offset: 1384)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 20)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !176, file: !85, line: 900, baseType: !83, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !176, file: !85, line: 901, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !85, line: 663, size: 640, elements: !268)
!268 = !{!269, !277, !290, !299, !308, !321, !335, !347, !359}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !267, file: !85, line: 664, baseType: !270, size: 128)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !85, line: 567, size: 128, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !85, line: 568, baseType: !21, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !85, line: 568, baseType: !23, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !85, line: 568, baseType: !23, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !85, line: 568, baseType: !37, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !85, line: 568, baseType: !37, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !267, file: !85, line: 665, baseType: !278, size: 384)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !85, line: 593, size: 384, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !85, line: 594, baseType: !21, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !85, line: 594, baseType: !23, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !85, line: 594, baseType: !23, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !85, line: 594, baseType: !37, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !85, line: 594, baseType: !37, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !278, file: !85, line: 594, baseType: !37, size: 16, offset: 112)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !278, file: !85, line: 595, baseType: !184, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !278, file: !85, line: 596, baseType: !78, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !278, file: !85, line: 597, baseType: !78, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !278, file: !85, line: 598, baseType: !54, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !267, file: !85, line: 666, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !85, line: 573, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !85, line: 574, baseType: !21, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !85, line: 574, baseType: !23, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !85, line: 574, baseType: !23, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !85, line: 574, baseType: !37, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !85, line: 574, baseType: !37, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !291, file: !85, line: 574, baseType: !33, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !267, file: !85, line: 667, baseType: !300, size: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !85, line: 604, size: 192, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !85, line: 605, baseType: !21, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !85, line: 605, baseType: !23, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !85, line: 605, baseType: !23, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !85, line: 605, baseType: !37, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !85, line: 605, baseType: !37, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !300, file: !85, line: 605, baseType: !83, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !267, file: !85, line: 668, baseType: !309, size: 448)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !85, line: 608, size: 448, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !85, line: 609, baseType: !21, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !85, line: 609, baseType: !23, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !85, line: 609, baseType: !23, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !85, line: 609, baseType: !37, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !85, line: 609, baseType: !37, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !309, file: !85, line: 609, baseType: !8, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !309, file: !85, line: 610, baseType: !184, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !309, file: !85, line: 611, baseType: !78, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !309, file: !85, line: 612, baseType: !78, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !309, file: !85, line: 613, baseType: !8, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !267, file: !85, line: 669, baseType: !322, size: 512)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !85, line: 580, size: 512, elements: !323)
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !85, line: 581, baseType: !21, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !322, file: !85, line: 581, baseType: !23, size: 8, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !85, line: 581, baseType: !23, size: 8, offset: 72)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !322, file: !85, line: 581, baseType: !37, size: 16, offset: 80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !322, file: !85, line: 581, baseType: !37, size: 16, offset: 96)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !322, file: !85, line: 581, baseType: !8, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !322, file: !85, line: 582, baseType: !33, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !322, file: !85, line: 583, baseType: !33, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !322, file: !85, line: 584, baseType: !150, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !322, file: !85, line: 585, baseType: !21, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !322, file: !85, line: 586, baseType: !8, size: 32, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !267, file: !85, line: 670, baseType: !336, size: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !85, line: 620, size: 320, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !85, line: 621, baseType: !21, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !85, line: 621, baseType: !23, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !85, line: 621, baseType: !23, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !85, line: 621, baseType: !37, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !85, line: 621, baseType: !37, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !336, file: !85, line: 621, baseType: !23, size: 8, offset: 112)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !336, file: !85, line: 622, baseType: !150, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !336, file: !85, line: 623, baseType: !33, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !336, file: !85, line: 624, baseType: !54, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !267, file: !85, line: 671, baseType: !348, size: 640)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !85, line: 631, size: 640, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !85, line: 632, baseType: !21, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !85, line: 632, baseType: !23, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !85, line: 632, baseType: !23, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !85, line: 632, baseType: !37, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !85, line: 632, baseType: !37, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !348, file: !85, line: 633, baseType: !356, size: 512, offset: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !267, file: !85, line: 672, baseType: !360, size: 320)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !85, line: 654, size: 320, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !85, line: 655, baseType: !21, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !85, line: 655, baseType: !23, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !85, line: 655, baseType: !23, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !85, line: 655, baseType: !37, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !85, line: 655, baseType: !37, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !360, file: !85, line: 655, baseType: !23, size: 8, offset: 112)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !360, file: !85, line: 656, baseType: !83, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !360, file: !85, line: 657, baseType: !33, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !360, file: !85, line: 658, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !85, line: 645, size: 128, elements: !373)
!373 = !{!374, !380}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !85, line: 646, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !8, !21}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !21)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !372, file: !85, line: 647, baseType: !21, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !176, file: !85, line: 902, baseType: !184, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !176, file: !85, line: 903, baseType: !8, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !151, file: !152, line: 61, baseType: !8, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !151, file: !152, line: 62, baseType: !8, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !151, file: !152, line: 63, baseType: !37, size: 16, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !151, file: !152, line: 64, baseType: !23, size: 8, offset: 1168)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !151, file: !152, line: 66, baseType: !388, size: 2688, offset: 1216)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2688, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !151, file: !152, line: 67, baseType: !392, size: 3072, offset: 3904)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3072, elements: !357)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !151, file: !152, line: 68, baseType: !394, size: 576, offset: 6976)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 576, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 9)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !151, file: !152, line: 69, baseType: !115, size: 64, offset: 7552)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !151, file: !152, line: 71, baseType: !78, size: 64, offset: 7616)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !151, file: !152, line: 72, baseType: !115, size: 64, offset: 7680)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !151, file: !152, line: 73, baseType: !266, size: 64, offset: 7744)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !151, file: !152, line: 74, baseType: !83, size: 64, offset: 7808)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !151, file: !152, line: 75, baseType: !33, size: 64, offset: 7872)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !151, file: !152, line: 76, baseType: !83, size: 64, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !151, file: !152, line: 77, baseType: !184, size: 64, offset: 8000)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !151, file: !152, line: 78, baseType: !33, size: 64, offset: 8064)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !151, file: !152, line: 79, baseType: !83, size: 64, offset: 8128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !151, file: !152, line: 80, baseType: !66, size: 64, offset: 8192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !151, file: !152, line: 81, baseType: !184, size: 64, offset: 8256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !151, file: !152, line: 82, baseType: !410, size: 64, offset: 8320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !85, line: 702, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !412, file: !85, line: 706, baseType: !8, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !412, file: !85, line: 707, baseType: !8, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !85, line: 708, baseType: !37, size: 16, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !412, file: !85, line: 709, baseType: !23, size: 8, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !412, file: !85, line: 710, baseType: !23, size: 8, offset: 88)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !85, line: 711, baseType: !23, size: 8, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !151, file: !152, line: 83, baseType: !184, size: 64, offset: 8384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !151, file: !152, line: 84, baseType: !33, size: 64, offset: 8448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !151, file: !152, line: 85, baseType: !266, size: 64, offset: 8512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !151, file: !152, line: 86, baseType: !33, size: 64, offset: 8576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !151, file: !152, line: 87, baseType: !266, size: 64, offset: 8640)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !151, file: !152, line: 88, baseType: !184, size: 64, offset: 8704)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !151, file: !152, line: 89, baseType: !184, size: 64, offset: 8768)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !151, file: !152, line: 90, baseType: !428, size: 64, offset: 8832)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !151, file: !152, line: 91, baseType: !430, size: 64, offset: 8896)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !85, line: 637, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!6, !150, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !151, file: !152, line: 92, baseType: !436, size: 64, offset: 8960)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !85, line: 641, baseType: !147)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !143, file: !15, line: 152, baseType: !33, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !129, file: !15, line: 155, baseType: !8, size: 32, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !129, file: !15, line: 156, baseType: !104, size: 16, offset: 416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !129, file: !15, line: 157, baseType: !23, size: 8, offset: 432)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !27, file: !15, line: 375, baseType: !442, size: 576)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !15, line: 122, size: 576, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !15, line: 123, baseType: !33, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !15, line: 123, baseType: !37, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !442, file: !15, line: 123, baseType: !23, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !442, file: !15, line: 124, baseType: !37, size: 16, offset: 112)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !442, file: !15, line: 125, baseType: !21, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !442, file: !15, line: 126, baseType: !54, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !442, file: !15, line: 127, baseType: !428, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !442, file: !15, line: 128, baseType: !33, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !15, line: 129, baseType: !33, size: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !15, line: 130, baseType: !83, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !442, file: !15, line: 131, baseType: !23, size: 8, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !27, file: !15, line: 376, baseType: !459, size: 448)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !15, line: 134, size: 448, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !15, line: 135, baseType: !33, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !15, line: 135, baseType: !37, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !459, file: !15, line: 135, baseType: !23, size: 8, offset: 104)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !15, line: 136, baseType: !83, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !15, line: 137, baseType: !33, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !15, line: 138, baseType: !33, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !459, file: !15, line: 139, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !54)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !459, file: !15, line: 140, baseType: !8, size: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !27, file: !15, line: 377, baseType: !474, size: 320)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !15, line: 184, size: 320, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !15, line: 185, baseType: !33, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !15, line: 185, baseType: !23, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !15, line: 185, baseType: !23, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !15, line: 185, baseType: !37, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !15, line: 185, baseType: !23, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !474, file: !15, line: 185, baseType: !482, size: 128, offset: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !15, line: 185, baseType: !33, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !27, file: !15, line: 378, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !15, line: 187, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !15, line: 188, baseType: !33, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !15, line: 188, baseType: !23, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !15, line: 188, baseType: !23, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !15, line: 188, baseType: !37, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !15, line: 188, baseType: !23, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !15, line: 189, baseType: !482, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !15, line: 189, baseType: !33, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !487, file: !15, line: 189, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !85, line: 480, size: 576, elements: !499)
!499 = !{!500, !501, !502, !503, !511, !526, !558, !559, !560, !561, !562, !563}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !85, line: 481, baseType: !83, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !498, file: !85, line: 482, baseType: !497, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !85, line: 483, baseType: !497, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !498, file: !85, line: 484, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !85, line: 497, size: 256, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !85, line: 498, baseType: !504, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !85, line: 499, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !505, file: !85, line: 500, baseType: !497, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !505, file: !85, line: 501, baseType: !8, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !498, file: !85, line: 485, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !85, line: 466, size: 320, elements: !514)
!514 = !{!515, !520, !521, !522, !523, !524, !525}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !513, file: !85, line: 467, baseType: !516, size: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !85, line: 459, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !516, file: !85, line: 460, baseType: !23, size: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !85, line: 461, baseType: !54, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !513, file: !85, line: 468, baseType: !516, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !513, file: !85, line: 469, baseType: !37, size: 16, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !513, file: !85, line: 470, baseType: !23, size: 8, offset: 272)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !513, file: !85, line: 471, baseType: !23, size: 8, offset: 280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !513, file: !85, line: 472, baseType: !23, size: 8, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !513, file: !85, line: 473, baseType: !23, size: 8, offset: 296)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !498, file: !85, line: 486, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !85, line: 448, size: 192, elements: !529)
!529 = !{!530, !553, !554, !555, !556, !557}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !528, file: !85, line: 449, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !85, line: 438, size: 64, elements: !532)
!532 = !{!533, !534, !547}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !85, line: 439, baseType: !83, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !85, line: 440, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !85, line: 419, size: 256, elements: !537)
!537 = !{!538, !543, !544, !545, !546}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !85, line: 420, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!8, !379, !8, !21}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !85, line: 421, baseType: !21, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !536, file: !85, line: 422, baseType: !83, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !536, file: !85, line: 423, baseType: !23, size: 8, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !536, file: !85, line: 424, baseType: !23, size: 8, offset: 200)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !531, file: !85, line: 441, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !85, line: 429, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !549, file: !85, line: 430, baseType: !83, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !85, line: 431, baseType: !548, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !85, line: 450, baseType: !512, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !85, line: 451, baseType: !23, size: 8, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !528, file: !85, line: 452, baseType: !23, size: 8, offset: 136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !528, file: !85, line: 453, baseType: !23, size: 8, offset: 144)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !528, file: !85, line: 454, baseType: !23, size: 8, offset: 152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !498, file: !85, line: 487, baseType: !54, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !498, file: !85, line: 488, baseType: !8, size: 32, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !498, file: !85, line: 489, baseType: !37, size: 16, offset: 480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !498, file: !85, line: 490, baseType: !37, size: 16, offset: 496)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !498, file: !85, line: 491, baseType: !23, size: 8, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !498, file: !85, line: 492, baseType: !23, size: 8, offset: 520)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !27, file: !15, line: 379, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !15, line: 192, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !15, line: 193, baseType: !33, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !15, line: 193, baseType: !23, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !15, line: 193, baseType: !23, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !15, line: 193, baseType: !37, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !15, line: 193, baseType: !23, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !15, line: 193, baseType: !482, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !15, line: 193, baseType: !33, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !565, file: !15, line: 193, baseType: !8, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !565, file: !15, line: 194, baseType: !8, size: 32, offset: 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !27, file: !15, line: 380, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !15, line: 197, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !15, line: 198, baseType: !33, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !15, line: 198, baseType: !23, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !15, line: 198, baseType: !23, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !15, line: 198, baseType: !37, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !15, line: 198, baseType: !23, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !577, file: !15, line: 200, baseType: !23, size: 8, offset: 104)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !577, file: !15, line: 201, baseType: !23, size: 8, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !15, line: 202, baseType: !482, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !15, line: 202, baseType: !33, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !577, file: !15, line: 202, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !54)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !27, file: !15, line: 381, baseType: !591, size: 320)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !15, line: 205, size: 320, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !15, line: 206, baseType: !33, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !15, line: 206, baseType: !23, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !15, line: 206, baseType: !23, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !15, line: 206, baseType: !37, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !15, line: 206, baseType: !23, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !15, line: 206, baseType: !482, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !15, line: 206, baseType: !33, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !27, file: !15, line: 382, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !15, line: 233, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !15, line: 234, baseType: !33, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !15, line: 234, baseType: !37, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !15, line: 234, baseType: !83, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !15, line: 234, baseType: !8, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !15, line: 234, baseType: !8, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !15, line: 234, baseType: !8, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !15, line: 234, baseType: !23, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !601, file: !15, line: 234, baseType: !33, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !27, file: !15, line: 383, baseType: !619, size: 576)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !15, line: 237, size: 576, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !15, line: 238, baseType: !33, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !15, line: 238, baseType: !37, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !15, line: 238, baseType: !83, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !15, line: 238, baseType: !8, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !15, line: 238, baseType: !8, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !15, line: 238, baseType: !8, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !15, line: 238, baseType: !23, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !619, file: !15, line: 238, baseType: !37, size: 16, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !619, file: !15, line: 239, baseType: !33, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !619, file: !15, line: 240, baseType: !78, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !619, file: !15, line: 241, baseType: !37, size: 16, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !619, file: !15, line: 242, baseType: !78, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !27, file: !15, line: 384, baseType: !641, size: 384)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !15, line: 262, size: 384, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !15, line: 263, baseType: !33, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !15, line: 263, baseType: !37, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !15, line: 263, baseType: !83, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !15, line: 263, baseType: !8, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !15, line: 263, baseType: !8, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !15, line: 263, baseType: !8, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !641, file: !15, line: 263, baseType: !23, size: 8, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !641, file: !15, line: 264, baseType: !33, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !27, file: !15, line: 385, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !15, line: 245, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !15, line: 246, baseType: !33, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !15, line: 246, baseType: !37, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !15, line: 246, baseType: !83, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !15, line: 246, baseType: !8, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !15, line: 246, baseType: !8, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !15, line: 246, baseType: !8, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !15, line: 246, baseType: !23, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !660, file: !15, line: 246, baseType: !33, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !660, file: !15, line: 247, baseType: !33, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !27, file: !15, line: 386, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !15, line: 250, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !15, line: 251, baseType: !33, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !15, line: 251, baseType: !37, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !15, line: 251, baseType: !83, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !15, line: 251, baseType: !8, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !15, line: 251, baseType: !8, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !15, line: 251, baseType: !8, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !15, line: 251, baseType: !23, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !679, file: !15, line: 256, baseType: !33, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !679, file: !15, line: 257, baseType: !33, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !27, file: !15, line: 387, baseType: !698, size: 512)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !15, line: 273, size: 512, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !15, line: 274, baseType: !33, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !15, line: 274, baseType: !23, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !15, line: 274, baseType: !23, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !15, line: 274, baseType: !37, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !15, line: 274, baseType: !23, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !15, line: 274, baseType: !83, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !698, file: !15, line: 275, baseType: !8, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !698, file: !15, line: 276, baseType: !375, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !698, file: !15, line: 277, baseType: !21, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !15, line: 278, baseType: !482, size: 128, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !27, file: !15, line: 388, baseType: !711, size: 512)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !15, line: 281, size: 512, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !726, !727, !728, !734, !735}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !15, line: 282, baseType: !33, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !15, line: 282, baseType: !37, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !711, file: !15, line: 282, baseType: !23, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !711, file: !15, line: 283, baseType: !23, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !15, line: 284, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!6, !8, !471, !8, !725, !21, !21}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !15, line: 285, baseType: !83, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !15, line: 286, baseType: !21, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !711, file: !15, line: 287, baseType: !729, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!6, !379, !8, !21, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !711, file: !15, line: 288, baseType: !33, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !15, line: 289, baseType: !33, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !27, file: !15, line: 389, baseType: !737, size: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !15, line: 307, size: 512, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !15, line: 308, baseType: !33, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !15, line: 308, baseType: !37, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !737, file: !15, line: 308, baseType: !23, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !737, file: !15, line: 309, baseType: !23, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !737, file: !15, line: 310, baseType: !23, size: 8, offset: 120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !737, file: !15, line: 311, baseType: !21, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !15, line: 312, baseType: !83, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !737, file: !15, line: 313, baseType: !115, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !737, file: !15, line: 314, baseType: !78, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !737, file: !15, line: 315, baseType: !78, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !15, line: 316, baseType: !8, size: 32, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !27, file: !15, line: 390, baseType: !754, size: 448)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !15, line: 340, size: 448, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !15, line: 341, baseType: !33, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !15, line: 341, baseType: !23, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !15, line: 341, baseType: !23, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !15, line: 341, baseType: !37, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !15, line: 341, baseType: !23, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !754, file: !15, line: 341, baseType: !83, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !754, file: !15, line: 342, baseType: !83, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !754, file: !15, line: 343, baseType: !21, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !754, file: !15, line: 344, baseType: !78, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !754, file: !15, line: 345, baseType: !8, size: 32, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !27, file: !15, line: 391, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !15, line: 350, size: 256, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !15, line: 351, baseType: !33, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !15, line: 351, baseType: !23, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !15, line: 351, baseType: !23, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !15, line: 351, baseType: !37, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !15, line: 351, baseType: !23, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !767, file: !15, line: 351, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !379, !21}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !767, file: !15, line: 352, baseType: !21, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !27, file: !15, line: 392, baseType: !781, size: 192)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !15, line: 357, size: 192, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !15, line: 358, baseType: !33, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !15, line: 358, baseType: !23, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !15, line: 358, baseType: !23, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !15, line: 358, baseType: !37, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !15, line: 358, baseType: !23, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !15, line: 358, baseType: !33, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !27, file: !15, line: 399, baseType: !84, size: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !14, file: !15, line: 435, baseType: !84, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !14, file: !15, line: 436, baseType: !185, size: 1600)
!792 = !{!0}
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 56, elements: !389)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!795 = !{i32 7, !"Dwarf Version", i32 4}
!796 = !{i32 2, !"Debug Info Version", i32 3}
!797 = !{i32 1, !"wchar_size", i32 2}
!798 = !{i32 1, !"Code Model", i32 2}
!799 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!800 = distinct !DISubprogram(name: "acpi_ut_is_pci_root_bridge", scope: !3, file: !3, line: 26, type: !801, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!801 = !DISubroutineType(types: !802)
!802 = !{!23, !66}
!803 = !DILocalVariable(name: "id", arg: 1, scope: !800, file: !3, line: 26, type: !66)
!804 = !DILocation(line: 26, column: 37, scope: !800)
!805 = !DILocation(line: 33, column: 15, scope: !806)
!806 = distinct !DILexicalBlock(scope: !800, file: !3, line: 33, column: 6)
!807 = !DILocation(line: 33, column: 8, scope: !806)
!808 = !DILocation(line: 34, column: 30, scope: !806)
!809 = !DILocation(line: 35, column: 15, scope: !806)
!810 = !DILocation(line: 35, column: 8, scope: !806)
!811 = !DILocation(line: 33, column: 6, scope: !800)
!812 = !DILocation(line: 36, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !806, file: !3, line: 35, column: 50)
!814 = !DILocation(line: 39, column: 2, scope: !800)
!815 = !DILocation(line: 40, column: 1, scope: !800)
!816 = distinct !DISubprogram(name: "acpi_ut_dword_byte_swap", scope: !3, file: !3, line: 86, type: !817, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!817 = !DISubroutineType(types: !818)
!818 = !{!8, !8}
!819 = !DILocalVariable(name: "value", arg: 1, scope: !816, file: !3, line: 86, type: !8)
!820 = !DILocation(line: 86, column: 33, scope: !816)
!821 = !DILocalVariable(name: "out", scope: !816, file: !3, line: 91, type: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !3, line: 88, size: 32, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !822, file: !3, line: 89, baseType: !8, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !822, file: !3, line: 90, baseType: !826, size: 32)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !98)
!827 = !DILocation(line: 91, column: 4, scope: !816)
!828 = !DILocalVariable(name: "in", scope: !816, file: !3, line: 95, type: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !3, line: 92, size: 32, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !829, file: !3, line: 93, baseType: !8, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !829, file: !3, line: 94, baseType: !826, size: 32)
!833 = !DILocation(line: 95, column: 4, scope: !816)
!834 = !DILocation(line: 99, column: 13, scope: !816)
!835 = !DILocation(line: 99, column: 5, scope: !816)
!836 = !DILocation(line: 99, column: 11, scope: !816)
!837 = !DILocation(line: 101, column: 20, scope: !816)
!838 = !DILocation(line: 101, column: 17, scope: !816)
!839 = !DILocation(line: 101, column: 6, scope: !816)
!840 = !DILocation(line: 101, column: 2, scope: !816)
!841 = !DILocation(line: 101, column: 15, scope: !816)
!842 = !DILocation(line: 102, column: 20, scope: !816)
!843 = !DILocation(line: 102, column: 17, scope: !816)
!844 = !DILocation(line: 102, column: 6, scope: !816)
!845 = !DILocation(line: 102, column: 2, scope: !816)
!846 = !DILocation(line: 102, column: 15, scope: !816)
!847 = !DILocation(line: 103, column: 20, scope: !816)
!848 = !DILocation(line: 103, column: 17, scope: !816)
!849 = !DILocation(line: 103, column: 6, scope: !816)
!850 = !DILocation(line: 103, column: 2, scope: !816)
!851 = !DILocation(line: 103, column: 15, scope: !816)
!852 = !DILocation(line: 104, column: 20, scope: !816)
!853 = !DILocation(line: 104, column: 17, scope: !816)
!854 = !DILocation(line: 104, column: 6, scope: !816)
!855 = !DILocation(line: 104, column: 2, scope: !816)
!856 = !DILocation(line: 104, column: 15, scope: !816)
!857 = !DILocation(line: 106, column: 14, scope: !816)
!858 = !DILocation(line: 106, column: 2, scope: !816)
!859 = distinct !DISubprogram(name: "acpi_ut_set_integer_width", scope: !3, file: !3, line: 124, type: !860, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !23}
!862 = !DILocalVariable(name: "revision", arg: 1, scope: !859, file: !3, line: 124, type: !23)
!863 = !DILocation(line: 124, column: 35, scope: !859)
!864 = !DILocation(line: 127, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !3, line: 127, column: 6)
!866 = !DILocation(line: 127, column: 15, scope: !865)
!867 = !DILocation(line: 127, column: 6, scope: !859)
!868 = !DILocation(line: 131, column: 30, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !3, line: 127, column: 20)
!870 = !DILocation(line: 132, column: 33, scope: !869)
!871 = !DILocation(line: 133, column: 31, scope: !869)
!872 = !DILocation(line: 134, column: 2, scope: !869)
!873 = !DILocation(line: 137, column: 30, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !3, line: 134, column: 9)
!875 = !DILocation(line: 138, column: 33, scope: !874)
!876 = !DILocation(line: 139, column: 31, scope: !874)
!877 = !DILocation(line: 141, column: 1, scope: !859)
!878 = distinct !DISubprogram(name: "acpi_ut_create_update_state_and_push", scope: !3, file: !3, line: 158, type: !879, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!879 = !DISubroutineType(types: !880)
!880 = !{!6, !33, !37, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!882 = !DILocalVariable(name: "object", arg: 1, scope: !878, file: !3, line: 158, type: !33)
!883 = !DILocation(line: 158, column: 65, scope: !878)
!884 = !DILocalVariable(name: "action", arg: 2, scope: !878, file: !3, line: 159, type: !37)
!885 = !DILocation(line: 159, column: 14, scope: !878)
!886 = !DILocalVariable(name: "state_list", arg: 3, scope: !878, file: !3, line: 160, type: !881)
!887 = !DILocation(line: 160, column: 37, scope: !878)
!888 = !DILocalVariable(name: "state", scope: !878, file: !3, line: 162, type: !266)
!889 = !DILocation(line: 162, column: 28, scope: !878)
!890 = !DILocation(line: 168, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !878, file: !3, line: 168, column: 6)
!892 = !DILocation(line: 168, column: 6, scope: !878)
!893 = !DILocation(line: 169, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !3, line: 168, column: 15)
!895 = !DILocation(line: 172, column: 38, scope: !878)
!896 = !DILocation(line: 172, column: 46, scope: !878)
!897 = !DILocation(line: 172, column: 10, scope: !878)
!898 = !DILocation(line: 172, column: 8, scope: !878)
!899 = !DILocation(line: 173, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !878, file: !3, line: 173, column: 6)
!901 = !DILocation(line: 173, column: 6, scope: !878)
!902 = !DILocation(line: 174, column: 3, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 173, column: 14)
!904 = !DILocation(line: 177, column: 29, scope: !878)
!905 = !DILocation(line: 177, column: 41, scope: !878)
!906 = !DILocation(line: 177, column: 2, scope: !878)
!907 = !DILocation(line: 178, column: 2, scope: !878)
!908 = !DILocation(line: 179, column: 1, scope: !878)
!909 = distinct !DISubprogram(name: "acpi_ut_walk_package_tree", scope: !3, file: !3, line: 197, type: !910, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!910 = !DISubroutineType(types: !911)
!911 = !{!6, !33, !21, !912, !21}
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_pkg_callback", file: !913, line: 126, baseType: !914)
!913 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!6, !23, !33, !266, !21}
!917 = !DILocalVariable(name: "source_object", arg: 1, scope: !909, file: !3, line: 197, type: !33)
!918 = !DILocation(line: 197, column: 54, scope: !909)
!919 = !DILocalVariable(name: "target_object", arg: 2, scope: !909, file: !3, line: 198, type: !21)
!920 = !DILocation(line: 198, column: 12, scope: !909)
!921 = !DILocalVariable(name: "walk_callback", arg: 3, scope: !909, file: !3, line: 199, type: !912)
!922 = !DILocation(line: 199, column: 24, scope: !909)
!923 = !DILocalVariable(name: "context", arg: 4, scope: !909, file: !3, line: 199, type: !21)
!924 = !DILocation(line: 199, column: 45, scope: !909)
!925 = !DILocalVariable(name: "status", scope: !909, file: !3, line: 201, type: !6)
!926 = !DILocation(line: 201, column: 14, scope: !909)
!927 = !DILocalVariable(name: "state_list", scope: !909, file: !3, line: 202, type: !266)
!928 = !DILocation(line: 202, column: 28, scope: !909)
!929 = !DILocalVariable(name: "state", scope: !909, file: !3, line: 203, type: !266)
!930 = !DILocation(line: 203, column: 28, scope: !909)
!931 = !DILocalVariable(name: "this_source_obj", scope: !909, file: !3, line: 204, type: !33)
!932 = !DILocation(line: 204, column: 29, scope: !909)
!933 = !DILocalVariable(name: "this_index", scope: !909, file: !3, line: 205, type: !8)
!934 = !DILocation(line: 205, column: 6, scope: !909)
!935 = !DILocation(line: 209, column: 35, scope: !909)
!936 = !DILocation(line: 209, column: 50, scope: !909)
!937 = !DILocation(line: 209, column: 10, scope: !909)
!938 = !DILocation(line: 209, column: 8, scope: !909)
!939 = !DILocation(line: 210, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !909, file: !3, line: 210, column: 6)
!941 = !DILocation(line: 210, column: 6, scope: !909)
!942 = !DILocation(line: 211, column: 3, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !3, line: 210, column: 14)
!944 = !DILocation(line: 214, column: 2, scope: !909)
!945 = !DILocation(line: 214, column: 9, scope: !909)
!946 = !DILocation(line: 218, column: 16, scope: !947)
!947 = distinct !DILexicalBlock(scope: !909, file: !3, line: 214, column: 16)
!948 = !DILocation(line: 218, column: 23, scope: !947)
!949 = !DILocation(line: 218, column: 27, scope: !947)
!950 = !DILocation(line: 218, column: 14, scope: !947)
!951 = !DILocation(line: 220, column: 7, scope: !947)
!952 = !DILocation(line: 220, column: 14, scope: !947)
!953 = !DILocation(line: 220, column: 18, scope: !947)
!954 = !DILocation(line: 220, column: 33, scope: !947)
!955 = !DILocation(line: 220, column: 41, scope: !947)
!956 = !DILocation(line: 220, column: 50, scope: !947)
!957 = !DILocation(line: 219, column: 19, scope: !947)
!958 = !DILocation(line: 222, column: 8, scope: !947)
!959 = !DILocation(line: 222, column: 15, scope: !947)
!960 = !DILocation(line: 222, column: 19, scope: !947)
!961 = !DILocation(line: 222, column: 34, scope: !947)
!962 = !DILocation(line: 222, column: 42, scope: !947)
!963 = !DILocation(line: 222, column: 51, scope: !947)
!964 = !DILocation(line: 222, column: 7, scope: !947)
!965 = !DILocation(line: 221, column: 3, scope: !947)
!966 = !DILocation(line: 221, column: 10, scope: !947)
!967 = !DILocation(line: 221, column: 14, scope: !947)
!968 = !DILocation(line: 221, column: 30, scope: !947)
!969 = !DILocation(line: 232, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !947, file: !3, line: 232, column: 7)
!971 = !DILocation(line: 232, column: 26, scope: !970)
!972 = !DILocation(line: 233, column: 8, scope: !970)
!973 = !DILocation(line: 233, column: 50, scope: !970)
!974 = !DILocation(line: 234, column: 32, scope: !970)
!975 = !DILocation(line: 235, column: 8, scope: !970)
!976 = !DILocation(line: 235, column: 25, scope: !970)
!977 = !DILocation(line: 235, column: 32, scope: !970)
!978 = !DILocation(line: 235, column: 37, scope: !970)
!979 = !DILocation(line: 232, column: 7, scope: !947)
!980 = !DILocation(line: 237, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !970, file: !3, line: 235, column: 60)
!982 = !DILocation(line: 238, column: 8, scope: !981)
!983 = !DILocation(line: 238, column: 25, scope: !981)
!984 = !DILocation(line: 238, column: 32, scope: !981)
!985 = !DILocation(line: 236, column: 11, scope: !981)
!986 = !DILocation(line: 239, column: 8, scope: !987)
!987 = distinct !DILexicalBlock(scope: !981, file: !3, line: 239, column: 8)
!988 = !DILocation(line: 239, column: 8, scope: !981)
!989 = !DILocation(line: 240, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 239, column: 30)
!991 = !DILocation(line: 243, column: 4, scope: !981)
!992 = !DILocation(line: 243, column: 11, scope: !981)
!993 = !DILocation(line: 243, column: 15, scope: !981)
!994 = !DILocation(line: 243, column: 20, scope: !981)
!995 = !DILocation(line: 244, column: 4, scope: !981)
!996 = !DILocation(line: 244, column: 11, scope: !981)
!997 = !DILocation(line: 244, column: 18, scope: !981)
!998 = !DILocation(line: 244, column: 22, scope: !981)
!999 = !DILocation(line: 245, column: 11, scope: !981)
!1000 = !DILocation(line: 245, column: 18, scope: !981)
!1001 = !DILocation(line: 245, column: 22, scope: !981)
!1002 = !DILocation(line: 245, column: 37, scope: !981)
!1003 = !DILocation(line: 245, column: 45, scope: !981)
!1004 = !DILocation(line: 244, column: 28, scope: !981)
!1005 = !DILocation(line: 253, column: 34, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !981, file: !3, line: 245, column: 52)
!1007 = !DILocation(line: 253, column: 5, scope: !1006)
!1008 = !DILocation(line: 254, column: 13, scope: !1006)
!1009 = !DILocation(line: 254, column: 11, scope: !1006)
!1010 = !DILocation(line: 258, column: 10, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 258, column: 9)
!1012 = !DILocation(line: 258, column: 9, scope: !1006)
!1013 = !DILocation(line: 264, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 258, column: 17)
!1015 = !DILocation(line: 271, column: 5, scope: !1006)
!1016 = !DILocation(line: 271, column: 12, scope: !1006)
!1017 = !DILocation(line: 271, column: 16, scope: !1006)
!1018 = !DILocation(line: 271, column: 21, scope: !1006)
!1019 = distinct !{!1019, !995, !1020}
!1020 = !DILocation(line: 272, column: 4, scope: !981)
!1021 = !DILocation(line: 273, column: 3, scope: !981)
!1022 = !DILocation(line: 277, column: 8, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !970, file: !3, line: 273, column: 10)
!1024 = !DILocation(line: 278, column: 8, scope: !1023)
!1025 = !DILocation(line: 278, column: 25, scope: !1023)
!1026 = !DILocation(line: 278, column: 32, scope: !1023)
!1027 = !DILocation(line: 276, column: 11, scope: !1023)
!1028 = !DILocation(line: 279, column: 8, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 279, column: 8)
!1030 = !DILocation(line: 279, column: 8, scope: !1023)
!1031 = !DILocation(line: 280, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 279, column: 30)
!1033 = !DILocation(line: 287, column: 44, scope: !1023)
!1034 = !DILocation(line: 287, column: 4, scope: !1023)
!1035 = !DILocation(line: 289, column: 33, scope: !1023)
!1036 = !DILocation(line: 290, column: 12, scope: !1023)
!1037 = !DILocation(line: 290, column: 19, scope: !1023)
!1038 = !DILocation(line: 290, column: 23, scope: !1023)
!1039 = !DILocation(line: 289, column: 8, scope: !1023)
!1040 = !DILocation(line: 288, column: 10, scope: !1023)
!1041 = !DILocation(line: 292, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 292, column: 8)
!1043 = !DILocation(line: 292, column: 8, scope: !1023)
!1044 = !DILocation(line: 296, column: 5, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 292, column: 16)
!1046 = !DILocation(line: 296, column: 12, scope: !1045)
!1047 = !DILocation(line: 298, column: 10, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 296, column: 24)
!1049 = !DILocation(line: 297, column: 12, scope: !1048)
!1050 = !DILocation(line: 300, column: 35, scope: !1048)
!1051 = !DILocation(line: 300, column: 6, scope: !1048)
!1052 = distinct !{!1052, !1044, !1053}
!1053 = !DILocation(line: 301, column: 5, scope: !1045)
!1054 = !DILocation(line: 302, column: 5, scope: !1045)
!1055 = distinct !{!1055, !944, !1056}
!1056 = !DILocation(line: 305, column: 2, scope: !909)
!1057 = !DILocation(line: 309, column: 2, scope: !909)
!1058 = !DILocation(line: 311, column: 2, scope: !909)
!1059 = !DILocation(line: 312, column: 1, scope: !909)
