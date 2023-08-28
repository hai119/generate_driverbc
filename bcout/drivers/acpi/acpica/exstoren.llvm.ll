; ModuleID = '../bcout/drivers/acpi/acpica/exstoren.llvm.bc'
source_filename = "drivers/acpi/acpica/exstoren.c"
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
%struct.acpi_object_reference = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, i8*, %struct.acpi_namespace_node*, %union.acpi_operand_object**, i8*, i8*, i32 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [9 x i8] c"exstoren\00", align 1, !dbg !0
@.str = private unnamed_addr constant [59 x i8] c"Cannot assign type [%s] to [%s] (must be type Int/Str/Buf)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Store into an unresolved Alias object\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Store into type [%s] not implemented\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_resolve_object(%union.acpi_operand_object** %source_desc_ptr, i32 %target_type, %struct.acpi_walk_state* %walk_state) #0 !dbg !38 {
entry:
  %source_desc_ptr.addr = alloca %union.acpi_operand_object**, align 8
  %target_type.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %source_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object** %source_desc_ptr, %union.acpi_operand_object*** %source_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %source_desc_ptr.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store i32 %target_type, i32* %target_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %target_type.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !808, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc, metadata !810, metadata !DIExpression()), !dbg !811
  %0 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source_desc_ptr.addr, align 8, !dbg !812
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %0, align 8, !dbg !813
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %source_desc, align 8, !dbg !811
  call void @llvm.dbg.declare(metadata i32* %status, metadata !814, metadata !DIExpression()), !dbg !815
  store i32 0, i32* %status, align 4, !dbg !815
  %2 = load i32, i32* %target_type.addr, align 4, !dbg !816
  switch i32 %2, label %sw.default [
    i32 14, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 21, label %sw.bb39
    i32 22, label %sw.bb39
    i32 4, label %sw.bb40
  ], !dbg !817

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !818
  %common = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_common*, !dbg !821
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !822
  %4 = load i8, i8* %type, align 1, !dbg !822
  %conv = zext i8 %4 to i32, !dbg !818
  %cmp = icmp eq i32 %conv, 20, !dbg !823
  br i1 %cmp, label %if.then, label %if.end3, !dbg !824

if.then:                                          ; preds = %sw.bb
  %5 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %source_desc_ptr.addr, align 8, !dbg !825
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !827
  %call = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %5, %struct.acpi_walk_state* %6) #3, !dbg !828
  store i32 %call, i32* %status, align 4, !dbg !829
  %7 = load i32, i32* %status, align 4, !dbg !830
  %tobool = icmp ne i32 %7, 0, !dbg !830
  br i1 %tobool, label %if.then2, label %if.end, !dbg !832

if.then2:                                         ; preds = %if.then
  br label %sw.epilog, !dbg !833

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !835

if.end3:                                          ; preds = %if.end, %sw.bb
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !836
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 3, !dbg !838
  %9 = load i16, i16* %opcode, align 2, !dbg !838
  %conv4 = zext i16 %9 to i32, !dbg !836
  %cmp5 = icmp eq i32 %conv4, 157, !dbg !839
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !840

if.then7:                                         ; preds = %if.end3
  br label %sw.epilog, !dbg !841

if.end8:                                          ; preds = %if.end3
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !843
  %common9 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !845
  %type10 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common9, i32 0, i32 2, !dbg !846
  %11 = load i8, i8* %type10, align 1, !dbg !846
  %conv11 = zext i8 %11 to i32, !dbg !843
  %cmp12 = icmp ne i32 %conv11, 1, !dbg !847
  br i1 %cmp12, label %land.lhs.true, label %if.end38, !dbg !848

land.lhs.true:                                    ; preds = %if.end8
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !849
  %common14 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_common*, !dbg !850
  %type15 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common14, i32 0, i32 2, !dbg !851
  %13 = load i8, i8* %type15, align 1, !dbg !851
  %conv16 = zext i8 %13 to i32, !dbg !849
  %cmp17 = icmp ne i32 %conv16, 3, !dbg !852
  br i1 %cmp17, label %land.lhs.true19, label %if.end38, !dbg !853

land.lhs.true19:                                  ; preds = %land.lhs.true
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !854
  %common20 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_common*, !dbg !855
  %type21 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common20, i32 0, i32 2, !dbg !856
  %15 = load i8, i8* %type21, align 1, !dbg !856
  %conv22 = zext i8 %15 to i32, !dbg !854
  %cmp23 = icmp ne i32 %conv22, 2, !dbg !857
  br i1 %cmp23, label %land.lhs.true25, label %if.end38, !dbg !858

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !859
  %common26 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_common*, !dbg !860
  %type27 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common26, i32 0, i32 2, !dbg !861
  %17 = load i8, i8* %type27, align 1, !dbg !861
  %conv28 = zext i8 %17 to i32, !dbg !859
  %cmp29 = icmp eq i32 %conv28, 20, !dbg !862
  br i1 %cmp29, label %land.lhs.true31, label %if.then35, !dbg !863

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !864
  %reference = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_reference*, !dbg !865
  %class = getelementptr inbounds %struct.acpi_object_reference, %struct.acpi_object_reference* %reference, i32 0, i32 5, !dbg !866
  %19 = load i8, i8* %class, align 1, !dbg !866
  %conv32 = zext i8 %19 to i32, !dbg !864
  %cmp33 = icmp eq i32 %conv32, 4, !dbg !867
  br i1 %cmp33, label %if.end38, label %if.then35, !dbg !868

if.then35:                                        ; preds = %land.lhs.true31, %land.lhs.true25
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc, align 8, !dbg !869
  %call36 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %20) #3, !dbg !869
  %21 = load i32, i32* %target_type.addr, align 4, !dbg !869
  %call37 = call i8* @acpi_ut_get_type_name(i32 %21) #3, !dbg !869
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 90, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %call36, i8* %call37) #3, !dbg !869
  store i32 12291, i32* %status, align 4, !dbg !871
  br label %if.end38, !dbg !872

if.end38:                                         ; preds = %if.then35, %land.lhs.true31, %land.lhs.true19, %land.lhs.true, %if.end8
  br label %sw.epilog, !dbg !873

sw.bb39:                                          ; preds = %entry, %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !874
  store i32 12303, i32* %status, align 4, !dbg !875
  br label %sw.epilog, !dbg !876

sw.bb40:                                          ; preds = %entry
  br label %sw.default, !dbg !876

sw.default:                                       ; preds = %entry, %sw.bb40
  br label %sw.epilog, !dbg !877

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %if.end38, %if.then7, %if.then2
  %22 = load i32, i32* %status, align 4, !dbg !878
  ret i32 %22, !dbg !878
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_type_name(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object* %source_desc, %union.acpi_operand_object* %dest_desc, %union.acpi_operand_object** %new_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !879 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca %union.acpi_operand_object*, align 8
  %dest_desc.addr = alloca %union.acpi_operand_object*, align 8
  %new_desc.addr = alloca %union.acpi_operand_object**, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %actual_src_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %source_desc, %union.acpi_operand_object** %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %source_desc.addr, metadata !882, metadata !DIExpression()), !dbg !883
  store %union.acpi_operand_object* %dest_desc, %union.acpi_operand_object** %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %dest_desc.addr, metadata !884, metadata !DIExpression()), !dbg !885
  store %union.acpi_operand_object** %new_desc, %union.acpi_operand_object*** %new_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %new_desc.addr, metadata !886, metadata !DIExpression()), !dbg !887
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %actual_src_desc, metadata !890, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata i32* %status, metadata !892, metadata !DIExpression()), !dbg !893
  store i32 0, i32* %status, align 4, !dbg !893
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !894
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !895
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !896
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !896
  br i1 %tobool, label %if.end, label %if.then, !dbg !898

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !899
  %3 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %new_desc.addr, align 8, !dbg !901
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !902
  %call = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %2, %union.acpi_operand_object** %3, %struct.acpi_walk_state* %4) #3, !dbg !903
  store i32 %call, i32* %status, align 4, !dbg !904
  %5 = load i32, i32* %status, align 4, !dbg !905
  store i32 %5, i32* %retval, align 4, !dbg !905
  br label %return, !dbg !905

if.end:                                           ; preds = %entry
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !906
  %common = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_common*, !dbg !908
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !909
  %7 = load i8, i8* %type, align 1, !dbg !909
  %conv = zext i8 %7 to i32, !dbg !906
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !910
  %common1 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_common*, !dbg !911
  %type2 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common1, i32 0, i32 2, !dbg !912
  %9 = load i8, i8* %type2, align 1, !dbg !912
  %conv3 = zext i8 %9 to i32, !dbg !910
  %cmp = icmp ne i32 %conv, %conv3, !dbg !913
  br i1 %cmp, label %if.then5, label %if.end17, !dbg !914

if.then5:                                         ; preds = %if.end
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !915
  %common6 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_common*, !dbg !917
  %type7 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common6, i32 0, i32 2, !dbg !918
  %11 = load i8, i8* %type7, align 1, !dbg !918
  %conv8 = zext i8 %11 to i32, !dbg !915
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !919
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !920
  %call9 = call i32 @acpi_ex_convert_to_target_type(i32 %conv8, %union.acpi_operand_object* %12, %union.acpi_operand_object** %actual_src_desc, %struct.acpi_walk_state* %13) #3, !dbg !921
  store i32 %call9, i32* %status, align 4, !dbg !922
  %14 = load i32, i32* %status, align 4, !dbg !923
  %tobool10 = icmp ne i32 %14, 0, !dbg !923
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !925

if.then11:                                        ; preds = %if.then5
  %15 = load i32, i32* %status, align 4, !dbg !926
  store i32 %15, i32* %retval, align 4, !dbg !926
  br label %return, !dbg !926

if.end12:                                         ; preds = %if.then5
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !928
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !930
  %cmp13 = icmp eq %union.acpi_operand_object* %16, %17, !dbg !931
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !932

if.then15:                                        ; preds = %if.end12
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !933
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %new_desc.addr, align 8, !dbg !935
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %19, align 8, !dbg !936
  store i32 0, i32* %retval, align 4, !dbg !937
  br label %return, !dbg !937

if.end16:                                         ; preds = %if.end12
  br label %if.end17, !dbg !938

if.end17:                                         ; preds = %if.end16, %if.end
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !939
  %common18 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_common*, !dbg !940
  %type19 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common18, i32 0, i32 2, !dbg !941
  %21 = load i8, i8* %type19, align 1, !dbg !941
  %conv20 = zext i8 %21 to i32, !dbg !939
  switch i32 %conv20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
    i32 3, label %sw.bb26
    i32 4, label %sw.bb28
  ], !dbg !942

sw.bb:                                            ; preds = %if.end17
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !943
  %integer = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_integer*, !dbg !945
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !946
  %23 = load i64, i64* %value, align 8, !dbg !946
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !947
  %integer21 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_integer*, !dbg !948
  %value22 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer21, i32 0, i32 6, !dbg !949
  store i64 %23, i64* %value22, align 8, !dbg !950
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !951
  %call23 = call zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %25) #3, !dbg !952
  br label %sw.epilog, !dbg !953

sw.bb24:                                          ; preds = %if.end17
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !954
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !955
  %call25 = call i32 @acpi_ex_store_string_to_string(%union.acpi_operand_object* %26, %union.acpi_operand_object* %27) #3, !dbg !956
  store i32 %call25, i32* %status, align 4, !dbg !957
  br label %sw.epilog, !dbg !958

sw.bb26:                                          ; preds = %if.end17
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !959
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !960
  %call27 = call i32 @acpi_ex_store_buffer_to_buffer(%union.acpi_operand_object* %28, %union.acpi_operand_object* %29) #3, !dbg !961
  store i32 %call27, i32* %status, align 4, !dbg !962
  br label %sw.epilog, !dbg !963

sw.bb28:                                          ; preds = %if.end17
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !964
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !965
  %call29 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %30, %union.acpi_operand_object** %dest_desc.addr, %struct.acpi_walk_state* %31) #3, !dbg !966
  store i32 %call29, i32* %status, align 4, !dbg !967
  br label %sw.epilog, !dbg !968

sw.default:                                       ; preds = %if.end17
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !969
  %call30 = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %32) #3, !dbg !969
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 245, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %call30) #3, !dbg !969
  store i32 14, i32* %status, align 4, !dbg !970
  br label %sw.epilog, !dbg !971

sw.epilog:                                        ; preds = %sw.default, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !972
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %source_desc.addr, align 8, !dbg !974
  %cmp31 = icmp ne %union.acpi_operand_object* %33, %34, !dbg !975
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !976

if.then33:                                        ; preds = %sw.epilog
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %actual_src_desc, align 8, !dbg !977
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %35) #3, !dbg !979
  br label %if.end34, !dbg !980

if.end34:                                         ; preds = %if.then33, %sw.epilog
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %dest_desc.addr, align 8, !dbg !981
  %37 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %new_desc.addr, align 8, !dbg !982
  store %union.acpi_operand_object* %36, %union.acpi_operand_object** %37, align 8, !dbg !983
  %38 = load i32, i32* %status, align 4, !dbg !984
  store i32 %38, i32* %retval, align 4, !dbg !984
  br label %return, !dbg !984

return:                                           ; preds = %if.end34, %if.then15, %if.then11, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !985
  ret i32 %39, !dbg !985
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_convert_to_target_type(i32, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store_string_to_string(%union.acpi_operand_object*, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_store_buffer_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exstoren.c", directory: "/home/lizy2001/genbc/linux")
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
!17 = !{!18, !24}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !26)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!0}
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 72, elements: !31)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32}
!32 = !DISubrange(count: 9)
!33 = !{i32 7, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!38 = distinct !DISubprogram(name: "acpi_ex_resolve_object", scope: !3, file: !3, line: 34, type: !39, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !803)
!39 = !DISubroutineType(types: !40)
!40 = !{!18, !41, !802, !164}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 367, size: 576, elements: !44)
!44 = !{!45, !56, !72, !83, !119, !132, !142, !453, !470, !485, !498, !576, !588, !602, !612, !630, !652, !671, !690, !709, !722, !748, !765, !778, !792, !801}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !43, file: !6, line: 368, baseType: !46, size: 128)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !47)
!47 = !{!48, !49, !53, !54, !55}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !46, file: !6, line: 74, baseType: !42, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !6, line: 74, baseType: !50, size: 8, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !6, line: 74, baseType: !50, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !46, file: !6, line: 74, baseType: !24, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !6, line: 74, baseType: !50, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !43, file: !6, line: 369, baseType: !57, size: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !6, line: 77, baseType: !42, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !6, line: 77, baseType: !50, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !6, line: 77, baseType: !50, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !6, line: 77, baseType: !24, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !6, line: 77, baseType: !50, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !57, file: !6, line: 77, baseType: !65, size: 24, offset: 104)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !57, file: !6, line: 78, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !71)
!71 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !43, file: !6, line: 370, baseType: !73, size: 256)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !82}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !73, file: !6, line: 94, baseType: !42, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !6, line: 94, baseType: !50, size: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !6, line: 94, baseType: !50, size: 8, offset: 72)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !73, file: !6, line: 94, baseType: !24, size: 16, offset: 80)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !6, line: 94, baseType: !50, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !73, file: !6, line: 94, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !73, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !43, file: !6, line: 371, baseType: !84, size: 384)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !93, !94, !95, !96}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !6, line: 98, baseType: !42, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !6, line: 98, baseType: !50, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !6, line: 98, baseType: !50, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !6, line: 98, baseType: !24, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !6, line: 98, baseType: !50, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !84, file: !6, line: 98, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !84, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !84, file: !6, line: 100, baseType: !92, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !6, line: 101, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !99, line: 133, size: 384, elements: !100)
!99 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105, !114, !115, !116, !117}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !98, file: !99, line: 134, baseType: !42, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !98, file: !99, line: 135, baseType: !50, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !99, line: 136, baseType: !50, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 137, baseType: !24, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 138, baseType: !106, size: 32, offset: 96)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !107, line: 327, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !106, file: !107, line: 328, baseType: !20, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !106, file: !107, line: 329, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !99, line: 139, baseType: !97, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !98, file: !99, line: 140, baseType: !97, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !98, file: !99, line: 141, baseType: !97, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !98, file: !99, line: 142, baseType: !118, size: 16, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !24)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !43, file: !6, line: 372, baseType: !120, size: 384)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !6, line: 105, baseType: !42, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !6, line: 105, baseType: !50, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !6, line: 105, baseType: !50, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !6, line: 105, baseType: !24, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !6, line: 105, baseType: !50, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !6, line: 105, baseType: !97, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !120, file: !6, line: 106, baseType: !41, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !6, line: 107, baseType: !92, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !43, file: !6, line: 373, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !6, line: 119, baseType: !42, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !6, line: 119, baseType: !50, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !6, line: 119, baseType: !50, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !6, line: 119, baseType: !24, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !6, line: 119, baseType: !50, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !133, file: !6, line: 119, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !43, file: !6, line: 374, baseType: !143, size: 448)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 143, size: 448, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !450, !451, !452}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !6, line: 144, baseType: !42, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !6, line: 144, baseType: !50, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !6, line: 144, baseType: !50, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !6, line: 144, baseType: !24, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !6, line: 144, baseType: !50, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !143, file: !6, line: 144, baseType: !50, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !143, file: !6, line: 145, baseType: !50, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !143, file: !6, line: 146, baseType: !50, size: 8, offset: 120)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !6, line: 147, baseType: !42, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !6, line: 148, baseType: !42, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !6, line: 149, baseType: !92, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !143, file: !6, line: 153, baseType: !157, size: 64, offset: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !6, line: 150, size: 64, elements: !158)
!158 = !{!159, !449}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !157, file: !6, line: 151, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !99, line: 248, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!18, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !166, line: 37, size: 9024, elements: !167)
!166 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !397, !398, !399, !400, !401, !405, !407, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !432, !433, !434, !435, !436, !437, !438, !439, !441, !447}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 38, baseType: !164, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !166, line: 39, baseType: !50, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !165, file: !166, line: 40, baseType: !50, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !165, file: !166, line: 41, baseType: !24, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !165, file: !166, line: 42, baseType: !50, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !165, file: !166, line: 43, baseType: !50, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !165, file: !166, line: 44, baseType: !50, size: 8, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !165, file: !166, line: 45, baseType: !118, size: 16, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !165, file: !166, line: 46, baseType: !50, size: 8, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !165, file: !166, line: 47, baseType: !50, size: 8, offset: 152)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !165, file: !166, line: 48, baseType: !50, size: 8, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !165, file: !166, line: 49, baseType: !50, size: 8, offset: 168)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !165, file: !166, line: 50, baseType: !50, size: 8, offset: 176)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !165, file: !166, line: 51, baseType: !50, size: 8, offset: 184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !165, file: !166, line: 52, baseType: !50, size: 8, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !165, file: !166, line: 53, baseType: !50, size: 8, offset: 200)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !166, line: 54, baseType: !92, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !165, file: !166, line: 55, baseType: !20, size: 32, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !165, file: !166, line: 56, baseType: !20, size: 32, offset: 352)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !165, file: !166, line: 57, baseType: !20, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !165, file: !166, line: 58, baseType: !20, size: 32, offset: 416)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !165, file: !166, line: 60, baseType: !190, size: 640, offset: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !99, line: 893, size: 640, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !278, !279, !395, !396}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !99, line: 894, baseType: !92, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !99, line: 895, baseType: !92, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !190, file: !99, line: 896, baseType: !92, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !190, file: !99, line: 897, baseType: !92, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !190, file: !99, line: 898, baseType: !92, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !190, file: !99, line: 899, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !99, line: 875, size: 1600, elements: !200)
!200 = !{!201, !221, !237}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !199, file: !99, line: 876, baseType: !202, size: 448)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !99, line: 828, size: 448, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !220}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !99, line: 829, baseType: !198, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !99, line: 829, baseType: !50, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !99, line: 829, baseType: !50, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !202, file: !99, line: 829, baseType: !24, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !202, file: !99, line: 829, baseType: !92, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !99, line: 829, baseType: !198, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !99, line: 829, baseType: !97, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !202, file: !99, line: 829, baseType: !212, size: 64, offset: 320)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !99, line: 716, size: 64, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !212, file: !99, line: 717, baseType: !69, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !99, line: 718, baseType: !20, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !212, file: !99, line: 719, baseType: !81, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !212, file: !99, line: 720, baseType: !92, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !99, line: 721, baseType: !81, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !212, file: !99, line: 722, baseType: !198, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !202, file: !99, line: 829, baseType: !50, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !199, file: !99, line: 877, baseType: !222, size: 640)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !99, line: 835, size: 640, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !99, line: 836, baseType: !198, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !99, line: 836, baseType: !50, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !99, line: 836, baseType: !50, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !99, line: 836, baseType: !24, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !99, line: 836, baseType: !92, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !99, line: 836, baseType: !198, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !99, line: 836, baseType: !97, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !99, line: 836, baseType: !212, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !99, line: 836, baseType: !50, size: 8, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !222, file: !99, line: 836, baseType: !81, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !222, file: !99, line: 837, baseType: !92, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !222, file: !99, line: 838, baseType: !20, size: 32, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !99, line: 839, baseType: !20, size: 32, offset: 608)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !199, file: !99, line: 878, baseType: !238, size: 1600)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !99, line: 846, size: 1600, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !99, line: 847, baseType: !198, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !99, line: 847, baseType: !50, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !99, line: 847, baseType: !50, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !238, file: !99, line: 847, baseType: !24, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !238, file: !99, line: 847, baseType: !92, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !99, line: 847, baseType: !198, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !99, line: 847, baseType: !97, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !99, line: 847, baseType: !212, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !238, file: !99, line: 847, baseType: !50, size: 8, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !238, file: !99, line: 847, baseType: !198, size: 64, offset: 448)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !238, file: !99, line: 848, baseType: !198, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !238, file: !99, line: 849, baseType: !81, size: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !238, file: !99, line: 850, baseType: !50, size: 8, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !238, file: !99, line: 851, baseType: !81, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !238, file: !99, line: 852, baseType: !81, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !238, file: !99, line: 853, baseType: !81, size: 64, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !238, file: !99, line: 854, baseType: !111, size: 32, offset: 896)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !238, file: !99, line: 855, baseType: !20, size: 32, offset: 928)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !238, file: !99, line: 856, baseType: !20, size: 32, offset: 960)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !238, file: !99, line: 857, baseType: !20, size: 32, offset: 992)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !238, file: !99, line: 858, baseType: !20, size: 32, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !238, file: !99, line: 859, baseType: !20, size: 32, offset: 1056)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !238, file: !99, line: 860, baseType: !20, size: 32, offset: 1088)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !238, file: !99, line: 861, baseType: !20, size: 32, offset: 1120)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !238, file: !99, line: 862, baseType: !20, size: 32, offset: 1152)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !238, file: !99, line: 863, baseType: !20, size: 32, offset: 1184)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !238, file: !99, line: 864, baseType: !20, size: 32, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !238, file: !99, line: 865, baseType: !20, size: 32, offset: 1248)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !238, file: !99, line: 866, baseType: !20, size: 32, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !238, file: !99, line: 867, baseType: !20, size: 32, offset: 1312)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !238, file: !99, line: 868, baseType: !24, size: 16, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !238, file: !99, line: 869, baseType: !50, size: 8, offset: 1360)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !238, file: !99, line: 870, baseType: !50, size: 8, offset: 1368)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !238, file: !99, line: 871, baseType: !50, size: 8, offset: 1376)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !238, file: !99, line: 872, baseType: !275, size: 160, offset: 1384)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 20)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !190, file: !99, line: 900, baseType: !97, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !190, file: !99, line: 901, baseType: !280, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !99, line: 663, size: 640, elements: !282)
!282 = !{!283, !291, !304, !313, !322, !335, !349, !361, !373}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !281, file: !99, line: 664, baseType: !284, size: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !99, line: 567, size: 128, elements: !285)
!285 = !{!286, !287, !288, !289, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !99, line: 568, baseType: !141, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !99, line: 568, baseType: !50, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !99, line: 568, baseType: !50, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !99, line: 568, baseType: !24, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !99, line: 568, baseType: !24, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !281, file: !99, line: 665, baseType: !292, size: 384)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !99, line: 593, size: 384, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !99, line: 594, baseType: !141, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !99, line: 594, baseType: !50, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !99, line: 594, baseType: !50, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !99, line: 594, baseType: !24, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !99, line: 594, baseType: !24, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !292, file: !99, line: 594, baseType: !24, size: 16, offset: 112)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !292, file: !99, line: 595, baseType: !198, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !292, file: !99, line: 596, baseType: !92, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !292, file: !99, line: 597, baseType: !92, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !292, file: !99, line: 598, baseType: !69, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !281, file: !99, line: 666, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !99, line: 573, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !99, line: 574, baseType: !141, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !99, line: 574, baseType: !50, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !99, line: 574, baseType: !50, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !99, line: 574, baseType: !24, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !99, line: 574, baseType: !24, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !305, file: !99, line: 574, baseType: !42, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !281, file: !99, line: 667, baseType: !314, size: 192)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !99, line: 604, size: 192, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !99, line: 605, baseType: !141, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !99, line: 605, baseType: !50, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !99, line: 605, baseType: !50, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !99, line: 605, baseType: !24, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !99, line: 605, baseType: !24, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !314, file: !99, line: 605, baseType: !97, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !281, file: !99, line: 668, baseType: !323, size: 448)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !99, line: 608, size: 448, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !99, line: 609, baseType: !141, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !323, file: !99, line: 609, baseType: !50, size: 8, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !323, file: !99, line: 609, baseType: !50, size: 8, offset: 72)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !323, file: !99, line: 609, baseType: !24, size: 16, offset: 80)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !323, file: !99, line: 609, baseType: !24, size: 16, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !323, file: !99, line: 609, baseType: !20, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !323, file: !99, line: 610, baseType: !198, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !323, file: !99, line: 611, baseType: !92, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !323, file: !99, line: 612, baseType: !92, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !323, file: !99, line: 613, baseType: !20, size: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !281, file: !99, line: 669, baseType: !336, size: 512)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !99, line: 580, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !99, line: 581, baseType: !141, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !99, line: 581, baseType: !50, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !99, line: 581, baseType: !50, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !99, line: 581, baseType: !24, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !99, line: 581, baseType: !24, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !336, file: !99, line: 581, baseType: !20, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !336, file: !99, line: 582, baseType: !42, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !336, file: !99, line: 583, baseType: !42, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !336, file: !99, line: 584, baseType: !164, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !336, file: !99, line: 585, baseType: !141, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !336, file: !99, line: 586, baseType: !20, size: 32, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !281, file: !99, line: 670, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !99, line: 620, size: 320, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !350, file: !99, line: 621, baseType: !141, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !350, file: !99, line: 621, baseType: !50, size: 8, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !99, line: 621, baseType: !50, size: 8, offset: 72)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !350, file: !99, line: 621, baseType: !24, size: 16, offset: 80)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !350, file: !99, line: 621, baseType: !24, size: 16, offset: 96)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !350, file: !99, line: 621, baseType: !50, size: 8, offset: 112)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !350, file: !99, line: 622, baseType: !164, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !350, file: !99, line: 623, baseType: !42, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !350, file: !99, line: 624, baseType: !69, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !281, file: !99, line: 671, baseType: !362, size: 640)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !99, line: 631, size: 640, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !99, line: 632, baseType: !141, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !99, line: 632, baseType: !50, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !99, line: 632, baseType: !50, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !99, line: 632, baseType: !24, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !99, line: 632, baseType: !24, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !362, file: !99, line: 633, baseType: !370, size: 512, offset: 128)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !281, file: !99, line: 672, baseType: !374, size: 320)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !99, line: 654, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !99, line: 655, baseType: !141, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !99, line: 655, baseType: !50, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !99, line: 655, baseType: !50, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !99, line: 655, baseType: !24, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !99, line: 655, baseType: !24, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !374, file: !99, line: 655, baseType: !50, size: 8, offset: 112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !374, file: !99, line: 656, baseType: !97, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !374, file: !99, line: 657, baseType: !42, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !374, file: !99, line: 658, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !99, line: 645, size: 128, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !386, file: !99, line: 646, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1052, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393, !20, !141}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !141)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !99, line: 647, baseType: !141, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !190, file: !99, line: 902, baseType: !198, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !190, file: !99, line: 903, baseType: !20, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !165, file: !166, line: 61, baseType: !20, size: 32, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !165, file: !166, line: 62, baseType: !20, size: 32, offset: 1120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !165, file: !166, line: 63, baseType: !24, size: 16, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !165, file: !166, line: 64, baseType: !50, size: 8, offset: 1168)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !165, file: !166, line: 66, baseType: !402, size: 2688, offset: 1216)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 2688, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 7)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !165, file: !166, line: 67, baseType: !406, size: 3072, offset: 3904)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 3072, elements: !371)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !165, file: !166, line: 68, baseType: !408, size: 576, offset: 6976)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 576, elements: !31)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !165, file: !166, line: 69, baseType: !41, size: 64, offset: 7552)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !165, file: !166, line: 71, baseType: !92, size: 64, offset: 7616)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !165, file: !166, line: 72, baseType: !41, size: 64, offset: 7680)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !165, file: !166, line: 73, baseType: !280, size: 64, offset: 7744)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !165, file: !166, line: 74, baseType: !97, size: 64, offset: 7808)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !165, file: !166, line: 75, baseType: !42, size: 64, offset: 7872)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !165, file: !166, line: 76, baseType: !97, size: 64, offset: 7936)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !165, file: !166, line: 77, baseType: !198, size: 64, offset: 8000)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !165, file: !166, line: 78, baseType: !42, size: 64, offset: 8064)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !165, file: !166, line: 79, baseType: !97, size: 64, offset: 8128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !165, file: !166, line: 80, baseType: !81, size: 64, offset: 8192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !165, file: !166, line: 81, baseType: !198, size: 64, offset: 8256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !165, file: !166, line: 82, baseType: !422, size: 64, offset: 8320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !99, line: 702, size: 128, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !424, file: !99, line: 706, baseType: !20, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !424, file: !99, line: 707, baseType: !20, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !99, line: 708, baseType: !24, size: 16, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !424, file: !99, line: 709, baseType: !50, size: 8, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !424, file: !99, line: 710, baseType: !50, size: 8, offset: 88)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !99, line: 711, baseType: !50, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !165, file: !166, line: 83, baseType: !198, size: 64, offset: 8384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !165, file: !166, line: 84, baseType: !42, size: 64, offset: 8448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !165, file: !166, line: 85, baseType: !280, size: 64, offset: 8512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !165, file: !166, line: 86, baseType: !42, size: 64, offset: 8576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !165, file: !166, line: 87, baseType: !280, size: 64, offset: 8640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !165, file: !166, line: 88, baseType: !198, size: 64, offset: 8704)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !165, file: !166, line: 89, baseType: !198, size: 64, offset: 8768)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !165, file: !166, line: 90, baseType: !440, size: 64, offset: 8832)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !165, file: !166, line: 91, baseType: !442, size: 64, offset: 8896)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !99, line: 637, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!18, !164, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !165, file: !166, line: 92, baseType: !448, size: 64, offset: 8960)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !99, line: 641, baseType: !161)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !157, file: !6, line: 152, baseType: !42, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !6, line: 155, baseType: !20, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !6, line: 156, baseType: !118, size: 16, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !143, file: !6, line: 157, baseType: !50, size: 8, offset: 432)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !43, file: !6, line: 375, baseType: !454, size: 576)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !6, line: 123, baseType: !42, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !6, line: 123, baseType: !50, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !6, line: 123, baseType: !50, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !6, line: 123, baseType: !24, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !6, line: 123, baseType: !50, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !454, file: !6, line: 123, baseType: !50, size: 8, offset: 104)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !454, file: !6, line: 124, baseType: !24, size: 16, offset: 112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !454, file: !6, line: 125, baseType: !141, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !454, file: !6, line: 126, baseType: !69, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !454, file: !6, line: 127, baseType: !440, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !454, file: !6, line: 128, baseType: !42, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !6, line: 129, baseType: !42, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !6, line: 130, baseType: !97, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !454, file: !6, line: 131, baseType: !50, size: 8, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !43, file: !6, line: 376, baseType: !471, size: 448)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 448, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !484}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !6, line: 135, baseType: !42, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !6, line: 135, baseType: !50, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !6, line: 135, baseType: !50, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !6, line: 135, baseType: !24, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !6, line: 135, baseType: !50, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !471, file: !6, line: 135, baseType: !50, size: 8, offset: 104)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !471, file: !6, line: 136, baseType: !97, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !471, file: !6, line: 137, baseType: !42, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !6, line: 138, baseType: !42, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !471, file: !6, line: 139, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !69)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !471, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !43, file: !6, line: 377, baseType: !486, size: 320)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 184, size: 320, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !497}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !6, line: 185, baseType: !42, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !6, line: 185, baseType: !50, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !6, line: 185, baseType: !50, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !6, line: 185, baseType: !24, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !6, line: 185, baseType: !50, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !486, file: !6, line: 185, baseType: !494, size: 128, offset: 128)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 2)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !6, line: 185, baseType: !42, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !43, file: !6, line: 378, baseType: !499, size: 384)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 187, size: 384, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !6, line: 188, baseType: !42, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !6, line: 188, baseType: !50, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !6, line: 188, baseType: !50, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !6, line: 188, baseType: !24, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !6, line: 188, baseType: !50, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !499, file: !6, line: 189, baseType: !494, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !6, line: 189, baseType: !42, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !499, file: !6, line: 189, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !99, line: 480, size: 576, elements: !511)
!511 = !{!512, !513, !514, !515, !523, !538, !570, !571, !572, !573, !574, !575}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !99, line: 481, baseType: !97, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !510, file: !99, line: 482, baseType: !509, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !99, line: 483, baseType: !509, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !510, file: !99, line: 484, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !99, line: 497, size: 256, elements: !518)
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !517, file: !99, line: 498, baseType: !516, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !99, line: 499, baseType: !516, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !517, file: !99, line: 500, baseType: !509, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !517, file: !99, line: 501, baseType: !20, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !510, file: !99, line: 485, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !99, line: 466, size: 320, elements: !526)
!526 = !{!527, !532, !533, !534, !535, !536, !537}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !525, file: !99, line: 467, baseType: !528, size: 128)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !99, line: 459, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !528, file: !99, line: 460, baseType: !50, size: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !99, line: 461, baseType: !69, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !525, file: !99, line: 468, baseType: !528, size: 128, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !525, file: !99, line: 469, baseType: !24, size: 16, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !525, file: !99, line: 470, baseType: !50, size: 8, offset: 272)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !525, file: !99, line: 471, baseType: !50, size: 8, offset: 280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !525, file: !99, line: 472, baseType: !50, size: 8, offset: 288)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !525, file: !99, line: 473, baseType: !50, size: 8, offset: 296)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !510, file: !99, line: 486, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !99, line: 448, size: 192, elements: !541)
!541 = !{!542, !565, !566, !567, !568, !569}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !540, file: !99, line: 449, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !99, line: 438, size: 64, elements: !544)
!544 = !{!545, !546, !559}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !99, line: 439, baseType: !97, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !99, line: 440, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !99, line: 419, size: 256, elements: !549)
!549 = !{!550, !555, !556, !557, !558}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !548, file: !99, line: 420, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1049, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!20, !393, !20, !141}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !548, file: !99, line: 421, baseType: !141, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !548, file: !99, line: 422, baseType: !97, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !548, file: !99, line: 423, baseType: !50, size: 8, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !548, file: !99, line: 424, baseType: !50, size: 8, offset: 200)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !99, line: 441, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !99, line: 429, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !561, file: !99, line: 430, baseType: !97, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !99, line: 431, baseType: !560, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !540, file: !99, line: 450, baseType: !524, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !99, line: 451, baseType: !50, size: 8, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !540, file: !99, line: 452, baseType: !50, size: 8, offset: 136)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !540, file: !99, line: 453, baseType: !50, size: 8, offset: 144)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !540, file: !99, line: 454, baseType: !50, size: 8, offset: 152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !99, line: 487, baseType: !69, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !510, file: !99, line: 488, baseType: !20, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !510, file: !99, line: 489, baseType: !24, size: 16, offset: 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !510, file: !99, line: 490, baseType: !24, size: 16, offset: 496)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !99, line: 491, baseType: !50, size: 8, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !510, file: !99, line: 492, baseType: !50, size: 8, offset: 520)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !43, file: !6, line: 379, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 192, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !6, line: 193, baseType: !42, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !6, line: 193, baseType: !50, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !6, line: 193, baseType: !50, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !6, line: 193, baseType: !24, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !6, line: 193, baseType: !50, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !6, line: 193, baseType: !494, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !6, line: 193, baseType: !42, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !577, file: !6, line: 193, baseType: !20, size: 32, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !577, file: !6, line: 194, baseType: !20, size: 32, offset: 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !43, file: !6, line: 380, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 197, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !6, line: 198, baseType: !42, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !6, line: 198, baseType: !50, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !6, line: 198, baseType: !50, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !6, line: 198, baseType: !24, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !6, line: 198, baseType: !50, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !589, file: !6, line: 200, baseType: !50, size: 8, offset: 104)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !589, file: !6, line: 201, baseType: !50, size: 8, offset: 112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !6, line: 202, baseType: !494, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !6, line: 202, baseType: !42, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !589, file: !6, line: 202, baseType: !601, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !69)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !43, file: !6, line: 381, baseType: !603, size: 320)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 205, size: 320, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !6, line: 206, baseType: !42, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !6, line: 206, baseType: !50, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !6, line: 206, baseType: !50, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !6, line: 206, baseType: !24, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !6, line: 206, baseType: !50, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !603, file: !6, line: 206, baseType: !494, size: 128, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !603, file: !6, line: 206, baseType: !42, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !43, file: !6, line: 382, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 233, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !6, line: 234, baseType: !42, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !6, line: 234, baseType: !24, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !6, line: 234, baseType: !97, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !6, line: 234, baseType: !20, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !6, line: 234, baseType: !20, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !6, line: 234, baseType: !20, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !6, line: 234, baseType: !50, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !613, file: !6, line: 234, baseType: !42, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !43, file: !6, line: 383, baseType: !631, size: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 237, size: 576, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !6, line: 238, baseType: !42, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !6, line: 238, baseType: !24, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 120)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !6, line: 238, baseType: !97, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !631, file: !6, line: 238, baseType: !20, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !631, file: !6, line: 238, baseType: !20, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !6, line: 238, baseType: !20, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !631, file: !6, line: 238, baseType: !50, size: 8, offset: 296)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !631, file: !6, line: 238, baseType: !24, size: 16, offset: 304)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !631, file: !6, line: 239, baseType: !42, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !631, file: !6, line: 240, baseType: !92, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !631, file: !6, line: 241, baseType: !24, size: 16, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !631, file: !6, line: 242, baseType: !92, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !43, file: !6, line: 384, baseType: !653, size: 384)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 262, size: 384, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !653, file: !6, line: 263, baseType: !42, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 72)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !653, file: !6, line: 263, baseType: !24, size: 16, offset: 80)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 104)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 112)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 120)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !6, line: 263, baseType: !97, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !653, file: !6, line: 263, baseType: !20, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !653, file: !6, line: 263, baseType: !20, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !653, file: !6, line: 263, baseType: !20, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 288)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 296)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !653, file: !6, line: 263, baseType: !50, size: 8, offset: 304)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !653, file: !6, line: 264, baseType: !42, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !43, file: !6, line: 385, baseType: !672, size: 448)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 245, size: 448, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !6, line: 246, baseType: !42, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !6, line: 246, baseType: !24, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !6, line: 246, baseType: !97, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !6, line: 246, baseType: !20, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !6, line: 246, baseType: !20, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !6, line: 246, baseType: !20, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !6, line: 246, baseType: !50, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !672, file: !6, line: 246, baseType: !42, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !672, file: !6, line: 247, baseType: !42, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !43, file: !6, line: 386, baseType: !691, size: 448)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 250, size: 448, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !6, line: 251, baseType: !42, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !6, line: 251, baseType: !24, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 104)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 112)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 120)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !691, file: !6, line: 251, baseType: !97, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !691, file: !6, line: 251, baseType: !20, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !691, file: !6, line: 251, baseType: !20, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !691, file: !6, line: 251, baseType: !20, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 288)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !691, file: !6, line: 251, baseType: !50, size: 8, offset: 296)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !691, file: !6, line: 256, baseType: !42, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !691, file: !6, line: 257, baseType: !42, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !43, file: !6, line: 387, baseType: !710, size: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 273, size: 512, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !6, line: 274, baseType: !42, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !6, line: 274, baseType: !50, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !6, line: 274, baseType: !50, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !6, line: 274, baseType: !24, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !6, line: 274, baseType: !50, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !6, line: 274, baseType: !97, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !710, file: !6, line: 275, baseType: !20, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !710, file: !6, line: 276, baseType: !389, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !710, file: !6, line: 277, baseType: !141, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !6, line: 278, baseType: !494, size: 128, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !43, file: !6, line: 388, baseType: !723, size: 512)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 281, size: 512, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !738, !739, !740, !746, !747}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !6, line: 282, baseType: !42, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !6, line: 282, baseType: !50, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !6, line: 282, baseType: !50, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !6, line: 282, baseType: !24, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !6, line: 282, baseType: !50, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !723, file: !6, line: 282, baseType: !50, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !723, file: !6, line: 283, baseType: !50, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !723, file: !6, line: 284, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1084, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!18, !20, !483, !20, !737, !141, !141}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !6, line: 285, baseType: !97, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !723, file: !6, line: 286, baseType: !141, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !723, file: !6, line: 287, baseType: !741, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1102, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!18, !393, !20, !141, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !723, file: !6, line: 288, baseType: !42, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !6, line: 289, baseType: !42, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !43, file: !6, line: 389, baseType: !749, size: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 307, size: 512, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !6, line: 308, baseType: !42, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !6, line: 308, baseType: !50, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !6, line: 308, baseType: !50, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !6, line: 308, baseType: !24, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !6, line: 308, baseType: !50, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !749, file: !6, line: 308, baseType: !50, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !749, file: !6, line: 309, baseType: !50, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !749, file: !6, line: 310, baseType: !50, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !749, file: !6, line: 311, baseType: !141, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 312, baseType: !97, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !749, file: !6, line: 313, baseType: !41, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !749, file: !6, line: 314, baseType: !92, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !749, file: !6, line: 315, baseType: !92, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !6, line: 316, baseType: !20, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !43, file: !6, line: 390, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 340, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !6, line: 341, baseType: !42, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !6, line: 341, baseType: !50, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !6, line: 341, baseType: !50, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !6, line: 341, baseType: !24, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !6, line: 341, baseType: !50, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !766, file: !6, line: 341, baseType: !97, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !766, file: !6, line: 342, baseType: !97, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !766, file: !6, line: 343, baseType: !141, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !766, file: !6, line: 344, baseType: !92, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !766, file: !6, line: 345, baseType: !20, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !6, line: 391, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 350, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 351, baseType: !42, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 351, baseType: !50, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 351, baseType: !50, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 351, baseType: !24, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 351, baseType: !50, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !779, file: !6, line: 351, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1055, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !393, !141}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !779, file: !6, line: 352, baseType: !141, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !43, file: !6, line: 392, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 357, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !6, line: 358, baseType: !42, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !6, line: 358, baseType: !50, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !6, line: 358, baseType: !50, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !6, line: 358, baseType: !24, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !6, line: 358, baseType: !50, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !6, line: 358, baseType: !42, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !43, file: !6, line: 399, baseType: !98, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 635, baseType: !20)
!803 = !{}
!804 = !DILocalVariable(name: "source_desc_ptr", arg: 1, scope: !38, file: !3, line: 34, type: !41)
!805 = !DILocation(line: 34, column: 52, scope: !38)
!806 = !DILocalVariable(name: "target_type", arg: 2, scope: !38, file: !3, line: 35, type: !802)
!807 = !DILocation(line: 35, column: 27, scope: !38)
!808 = !DILocalVariable(name: "walk_state", arg: 3, scope: !38, file: !3, line: 36, type: !164)
!809 = !DILocation(line: 36, column: 34, scope: !38)
!810 = !DILocalVariable(name: "source_desc", scope: !38, file: !3, line: 38, type: !42)
!811 = !DILocation(line: 38, column: 29, scope: !38)
!812 = !DILocation(line: 38, column: 44, scope: !38)
!813 = !DILocation(line: 38, column: 43, scope: !38)
!814 = !DILocalVariable(name: "status", scope: !38, file: !3, line: 39, type: !18)
!815 = !DILocation(line: 39, column: 14, scope: !38)
!816 = !DILocation(line: 45, column: 10, scope: !38)
!817 = !DILocation(line: 45, column: 2, scope: !38)
!818 = !DILocation(line: 62, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 62, column: 7)
!820 = distinct !DILexicalBlock(scope: !38, file: !3, line: 45, column: 23)
!821 = !DILocation(line: 62, column: 20, scope: !819)
!822 = !DILocation(line: 62, column: 27, scope: !819)
!823 = !DILocation(line: 62, column: 32, scope: !819)
!824 = !DILocation(line: 62, column: 7, scope: !820)
!825 = !DILocation(line: 67, column: 33, scope: !826)
!826 = distinct !DILexicalBlock(scope: !819, file: !3, line: 62, column: 62)
!827 = !DILocation(line: 68, column: 12, scope: !826)
!828 = !DILocation(line: 67, column: 8, scope: !826)
!829 = !DILocation(line: 66, column: 11, scope: !826)
!830 = !DILocation(line: 69, column: 8, scope: !831)
!831 = distinct !DILexicalBlock(scope: !826, file: !3, line: 69, column: 8)
!832 = !DILocation(line: 69, column: 8, scope: !826)
!833 = !DILocation(line: 70, column: 5, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !3, line: 69, column: 30)
!835 = !DILocation(line: 72, column: 3, scope: !826)
!836 = !DILocation(line: 76, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !820, file: !3, line: 76, column: 7)
!838 = !DILocation(line: 76, column: 19, scope: !837)
!839 = !DILocation(line: 76, column: 26, scope: !837)
!840 = !DILocation(line: 76, column: 7, scope: !820)
!841 = !DILocation(line: 77, column: 4, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 76, column: 49)
!843 = !DILocation(line: 82, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !820, file: !3, line: 82, column: 7)
!845 = !DILocation(line: 82, column: 21, scope: !844)
!846 = !DILocation(line: 82, column: 28, scope: !844)
!847 = !DILocation(line: 82, column: 33, scope: !844)
!848 = !DILocation(line: 82, column: 55, scope: !844)
!849 = !DILocation(line: 83, column: 8, scope: !844)
!850 = !DILocation(line: 83, column: 21, scope: !844)
!851 = !DILocation(line: 83, column: 28, scope: !844)
!852 = !DILocation(line: 83, column: 33, scope: !844)
!853 = !DILocation(line: 83, column: 54, scope: !844)
!854 = !DILocation(line: 84, column: 8, scope: !844)
!855 = !DILocation(line: 84, column: 21, scope: !844)
!856 = !DILocation(line: 84, column: 28, scope: !844)
!857 = !DILocation(line: 84, column: 33, scope: !844)
!858 = !DILocation(line: 84, column: 54, scope: !844)
!859 = !DILocation(line: 85, column: 10, scope: !844)
!860 = !DILocation(line: 85, column: 23, scope: !844)
!861 = !DILocation(line: 85, column: 30, scope: !844)
!862 = !DILocation(line: 85, column: 35, scope: !844)
!863 = !DILocation(line: 85, column: 65, scope: !844)
!864 = !DILocation(line: 86, column: 10, scope: !844)
!865 = !DILocation(line: 86, column: 23, scope: !844)
!866 = !DILocation(line: 86, column: 33, scope: !844)
!867 = !DILocation(line: 86, column: 39, scope: !844)
!868 = !DILocation(line: 82, column: 7, scope: !820)
!869 = !DILocation(line: 90, column: 4, scope: !870)
!870 = distinct !DILexicalBlock(scope: !844, file: !3, line: 86, column: 65)
!871 = !DILocation(line: 95, column: 11, scope: !870)
!872 = !DILocation(line: 96, column: 3, scope: !870)
!873 = !DILocation(line: 97, column: 3, scope: !820)
!874 = !DILocation(line: 105, column: 3, scope: !820)
!875 = !DILocation(line: 106, column: 10, scope: !820)
!876 = !DILocation(line: 107, column: 3, scope: !820)
!877 = !DILocation(line: 115, column: 3, scope: !820)
!878 = !DILocation(line: 118, column: 2, scope: !38)
!879 = distinct !DISubprogram(name: "acpi_ex_store_object_to_object", scope: !3, file: !3, line: 157, type: !880, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !803)
!880 = !DISubroutineType(types: !881)
!881 = !{!18, !42, !42, !41, !164}
!882 = !DILocalVariable(name: "source_desc", arg: 1, scope: !879, file: !3, line: 157, type: !42)
!883 = !DILocation(line: 157, column: 59, scope: !879)
!884 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !879, file: !3, line: 158, type: !42)
!885 = !DILocation(line: 158, column: 38, scope: !879)
!886 = !DILocalVariable(name: "new_desc", arg: 3, scope: !879, file: !3, line: 159, type: !41)
!887 = !DILocation(line: 159, column: 39, scope: !879)
!888 = !DILocalVariable(name: "walk_state", arg: 4, scope: !879, file: !3, line: 160, type: !164)
!889 = !DILocation(line: 160, column: 35, scope: !879)
!890 = !DILocalVariable(name: "actual_src_desc", scope: !879, file: !3, line: 162, type: !42)
!891 = !DILocation(line: 162, column: 29, scope: !879)
!892 = !DILocalVariable(name: "status", scope: !879, file: !3, line: 163, type: !18)
!893 = !DILocation(line: 163, column: 14, scope: !879)
!894 = !DILocation(line: 167, column: 20, scope: !879)
!895 = !DILocation(line: 167, column: 18, scope: !879)
!896 = !DILocation(line: 168, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !879, file: !3, line: 168, column: 6)
!898 = !DILocation(line: 168, column: 6, scope: !879)
!899 = !DILocation(line: 175, column: 39, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !3, line: 168, column: 18)
!901 = !DILocation(line: 175, column: 56, scope: !900)
!902 = !DILocation(line: 176, column: 11, scope: !900)
!903 = !DILocation(line: 175, column: 7, scope: !900)
!904 = !DILocation(line: 174, column: 10, scope: !900)
!905 = !DILocation(line: 177, column: 3, scope: !900)
!906 = !DILocation(line: 180, column: 6, scope: !907)
!907 = distinct !DILexicalBlock(scope: !879, file: !3, line: 180, column: 6)
!908 = !DILocation(line: 180, column: 19, scope: !907)
!909 = !DILocation(line: 180, column: 26, scope: !907)
!910 = !DILocation(line: 180, column: 34, scope: !907)
!911 = !DILocation(line: 180, column: 45, scope: !907)
!912 = !DILocation(line: 180, column: 52, scope: !907)
!913 = !DILocation(line: 180, column: 31, scope: !907)
!914 = !DILocation(line: 180, column: 6, scope: !879)
!915 = !DILocation(line: 190, column: 43, scope: !916)
!916 = distinct !DILexicalBlock(scope: !907, file: !3, line: 180, column: 58)
!917 = !DILocation(line: 190, column: 54, scope: !916)
!918 = !DILocation(line: 190, column: 61, scope: !916)
!919 = !DILocation(line: 191, column: 8, scope: !916)
!920 = !DILocation(line: 193, column: 8, scope: !916)
!921 = !DILocation(line: 190, column: 12, scope: !916)
!922 = !DILocation(line: 190, column: 10, scope: !916)
!923 = !DILocation(line: 194, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !3, line: 194, column: 7)
!925 = !DILocation(line: 194, column: 7, scope: !916)
!926 = !DILocation(line: 195, column: 4, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 194, column: 29)
!928 = !DILocation(line: 198, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !916, file: !3, line: 198, column: 7)
!930 = !DILocation(line: 198, column: 22, scope: !929)
!931 = !DILocation(line: 198, column: 19, scope: !929)
!932 = !DILocation(line: 198, column: 7, scope: !916)
!933 = !DILocation(line: 203, column: 16, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !3, line: 198, column: 39)
!935 = !DILocation(line: 203, column: 5, scope: !934)
!936 = !DILocation(line: 203, column: 14, scope: !934)
!937 = !DILocation(line: 204, column: 4, scope: !934)
!938 = !DILocation(line: 206, column: 2, scope: !916)
!939 = !DILocation(line: 212, column: 10, scope: !879)
!940 = !DILocation(line: 212, column: 21, scope: !879)
!941 = !DILocation(line: 212, column: 28, scope: !879)
!942 = !DILocation(line: 212, column: 2, scope: !879)
!943 = !DILocation(line: 215, column: 30, scope: !944)
!944 = distinct !DILexicalBlock(scope: !879, file: !3, line: 212, column: 34)
!945 = !DILocation(line: 215, column: 47, scope: !944)
!946 = !DILocation(line: 215, column: 55, scope: !944)
!947 = !DILocation(line: 215, column: 3, scope: !944)
!948 = !DILocation(line: 215, column: 14, scope: !944)
!949 = !DILocation(line: 215, column: 22, scope: !944)
!950 = !DILocation(line: 215, column: 28, scope: !944)
!951 = !DILocation(line: 219, column: 41, scope: !944)
!952 = !DILocation(line: 219, column: 9, scope: !944)
!953 = !DILocation(line: 220, column: 3, scope: !944)
!954 = !DILocation(line: 225, column: 38, scope: !944)
!955 = !DILocation(line: 225, column: 55, scope: !944)
!956 = !DILocation(line: 225, column: 7, scope: !944)
!957 = !DILocation(line: 224, column: 10, scope: !944)
!958 = !DILocation(line: 226, column: 3, scope: !944)
!959 = !DILocation(line: 231, column: 38, scope: !944)
!960 = !DILocation(line: 231, column: 55, scope: !944)
!961 = !DILocation(line: 231, column: 7, scope: !944)
!962 = !DILocation(line: 230, column: 10, scope: !944)
!963 = !DILocation(line: 232, column: 3, scope: !944)
!964 = !DILocation(line: 237, column: 39, scope: !944)
!965 = !DILocation(line: 238, column: 11, scope: !944)
!966 = !DILocation(line: 237, column: 7, scope: !944)
!967 = !DILocation(line: 236, column: 10, scope: !944)
!968 = !DILocation(line: 239, column: 3, scope: !944)
!969 = !DILocation(line: 245, column: 3, scope: !944)
!970 = !DILocation(line: 248, column: 10, scope: !944)
!971 = !DILocation(line: 249, column: 3, scope: !944)
!972 = !DILocation(line: 252, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !879, file: !3, line: 252, column: 6)
!974 = !DILocation(line: 252, column: 25, scope: !973)
!975 = !DILocation(line: 252, column: 22, scope: !973)
!976 = !DILocation(line: 252, column: 6, scope: !879)
!977 = !DILocation(line: 256, column: 28, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !3, line: 252, column: 38)
!979 = !DILocation(line: 256, column: 3, scope: !978)
!980 = !DILocation(line: 257, column: 2, scope: !978)
!981 = !DILocation(line: 259, column: 14, scope: !879)
!982 = !DILocation(line: 259, column: 3, scope: !879)
!983 = !DILocation(line: 259, column: 12, scope: !879)
!984 = !DILocation(line: 260, column: 2, scope: !879)
!985 = !DILocation(line: 261, column: 1, scope: !879)
