; ModuleID = '../bcout/drivers/acpi/acpica/psargs.llvm.bc'
source_filename = "drivers/acpi/acpica/psargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32 (%struct.acpi_walk_state*)* }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_name_union = type { i32 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_object_method = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object*, i8*, %union.anon, i32, i16, i8 }
%union.anon = type { i32 (%struct.acpi_walk_state*)* }
%struct.acpi_parse_obj_named = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, i8*, i8*, i32, i32 }

@_acpi_module_name = internal constant [7 x i8] c"psargs\00", align 1, !dbg !0
@.str = private unnamed_addr constant [41 x i8] c"Control Method %p has no attached object\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid ArgType 0x%X\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid ArgType: 0x%X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %parser_state) #0 !dbg !46 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %start = alloca i8*, align 8
  %package_length = alloca i32, align 4
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !802, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.declare(metadata i8** %start, metadata !804, metadata !DIExpression()), !dbg !805
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !806
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !807
  %1 = load i8*, i8** %aml, align 8, !dbg !807
  store i8* %1, i8** %start, align 8, !dbg !805
  call void @llvm.dbg.declare(metadata i32* %package_length, metadata !808, metadata !DIExpression()), !dbg !809
  %2 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !810
  %call = call i32 @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %2) #3, !dbg !811
  store i32 %call, i32* %package_length, align 4, !dbg !812
  %3 = load i8*, i8** %start, align 8, !dbg !813
  %4 = load i32, i32* %package_length, align 4, !dbg !813
  %idx.ext = zext i32 %4 to i64, !dbg !813
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !813
  ret i8* %add.ptr, !dbg !813
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %parser_state) #0 !dbg !814 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %aml = alloca i8*, align 8
  %package_length = alloca i32, align 4
  %byte_count = alloca i32, align 4
  %byte_zero_mask = alloca i8, align 1
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i8** %aml, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !821
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !822
  %1 = load i8*, i8** %aml1, align 8, !dbg !822
  store i8* %1, i8** %aml, align 8, !dbg !820
  call void @llvm.dbg.declare(metadata i32* %package_length, metadata !823, metadata !DIExpression()), !dbg !824
  store i32 0, i32* %package_length, align 4, !dbg !824
  call void @llvm.dbg.declare(metadata i32* %byte_count, metadata !825, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.declare(metadata i8* %byte_zero_mask, metadata !827, metadata !DIExpression()), !dbg !828
  store i8 63, i8* %byte_zero_mask, align 1, !dbg !828
  %2 = load i8*, i8** %aml, align 8, !dbg !829
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !829
  %3 = load i8, i8* %arrayidx, align 1, !dbg !829
  %conv = zext i8 %3 to i32, !dbg !829
  %shr = ashr i32 %conv, 6, !dbg !830
  store i32 %shr, i32* %byte_count, align 4, !dbg !831
  %4 = load i32, i32* %byte_count, align 4, !dbg !832
  %conv2 = zext i32 %4 to i64, !dbg !833
  %add = add i64 %conv2, 1, !dbg !834
  %5 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !835
  %aml3 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %5, i32 0, i32 1, !dbg !836
  %6 = load i8*, i8** %aml3, align 8, !dbg !837
  %add.ptr = getelementptr i8, i8* %6, i64 %add, !dbg !837
  store i8* %add.ptr, i8** %aml3, align 8, !dbg !837
  br label %while.cond, !dbg !838

while.cond:                                       ; preds = %while.body, %entry
  %7 = load i32, i32* %byte_count, align 4, !dbg !839
  %tobool = icmp ne i32 %7, 0, !dbg !838
  br i1 %tobool, label %while.body, label %while.end, !dbg !838

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %aml, align 8, !dbg !840
  %9 = load i32, i32* %byte_count, align 4, !dbg !842
  %idxprom = zext i32 %9 to i64, !dbg !840
  %arrayidx4 = getelementptr i8, i8* %8, i64 %idxprom, !dbg !840
  %10 = load i8, i8* %arrayidx4, align 1, !dbg !840
  %conv5 = zext i8 %10 to i32, !dbg !840
  %11 = load i32, i32* %byte_count, align 4, !dbg !843
  %shl = shl i32 %11, 3, !dbg !844
  %sub = sub i32 %shl, 4, !dbg !845
  %shl6 = shl i32 %conv5, %sub, !dbg !846
  %12 = load i32, i32* %package_length, align 4, !dbg !847
  %or = or i32 %12, %shl6, !dbg !847
  store i32 %or, i32* %package_length, align 4, !dbg !847
  store i8 15, i8* %byte_zero_mask, align 1, !dbg !848
  %13 = load i32, i32* %byte_count, align 4, !dbg !849
  %dec = add i32 %13, -1, !dbg !849
  store i32 %dec, i32* %byte_count, align 4, !dbg !849
  br label %while.cond, !dbg !838, !llvm.loop !850

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %aml, align 8, !dbg !852
  %arrayidx7 = getelementptr i8, i8* %14, i64 0, !dbg !852
  %15 = load i8, i8* %arrayidx7, align 1, !dbg !852
  %conv8 = zext i8 %15 to i32, !dbg !852
  %16 = load i8, i8* %byte_zero_mask, align 1, !dbg !853
  %conv9 = zext i8 %16 to i32, !dbg !853
  %and = and i32 %conv8, %conv9, !dbg !854
  %17 = load i32, i32* %package_length, align 4, !dbg !855
  %or10 = or i32 %17, %and, !dbg !855
  store i32 %or10, i32* %package_length, align 4, !dbg !855
  %18 = load i32, i32* %package_length, align 4, !dbg !856
  ret i32 %18, !dbg !856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %parser_state) #0 !dbg !857 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata i8** %start, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !864
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !865
  %1 = load i8*, i8** %aml, align 8, !dbg !865
  store i8* %1, i8** %start, align 8, !dbg !863
  call void @llvm.dbg.declare(metadata i8** %end, metadata !866, metadata !DIExpression()), !dbg !867
  %2 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !868
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %2, i32 0, i32 1, !dbg !869
  %3 = load i8*, i8** %aml1, align 8, !dbg !869
  store i8* %3, i8** %end, align 8, !dbg !867
  br label %while.cond, !dbg !870

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i8*, i8** %end, align 8, !dbg !871
  %5 = load i8, i8* %4, align 1, !dbg !871
  %conv = zext i8 %5 to i32, !dbg !871
  %cmp = icmp eq i32 %conv, 92, !dbg !871
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !872

lor.rhs:                                          ; preds = %while.cond
  %6 = load i8*, i8** %end, align 8, !dbg !873
  %7 = load i8, i8* %6, align 1, !dbg !873
  %conv3 = zext i8 %7 to i32, !dbg !873
  %cmp4 = icmp eq i32 %conv3, 94, !dbg !873
  br label %lor.end, !dbg !872

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %8 = phi i1 [ true, %while.cond ], [ %cmp4, %lor.rhs ]
  br i1 %8, label %while.body, label %while.end, !dbg !870

while.body:                                       ; preds = %lor.end
  %9 = load i8*, i8** %end, align 8, !dbg !874
  %incdec.ptr = getelementptr i8, i8* %9, i32 1, !dbg !874
  store i8* %incdec.ptr, i8** %end, align 8, !dbg !874
  br label %while.cond, !dbg !870, !llvm.loop !876

while.end:                                        ; preds = %lor.end
  %10 = load i8*, i8** %end, align 8, !dbg !878
  %11 = load i8, i8* %10, align 1, !dbg !879
  %conv6 = zext i8 %11 to i32, !dbg !879
  switch i32 %conv6, label %sw.default [
    i32 0, label %sw.bb
    i32 46, label %sw.bb10
    i32 47, label %sw.bb11
  ], !dbg !880

sw.bb:                                            ; preds = %while.end
  %12 = load i8*, i8** %end, align 8, !dbg !881
  %13 = load i8*, i8** %start, align 8, !dbg !884
  %cmp7 = icmp eq i8* %12, %13, !dbg !885
  br i1 %cmp7, label %if.then, label %if.end, !dbg !886

if.then:                                          ; preds = %sw.bb
  store i8* null, i8** %start, align 8, !dbg !887
  br label %if.end, !dbg !889

if.end:                                           ; preds = %if.then, %sw.bb
  %14 = load i8*, i8** %end, align 8, !dbg !890
  %incdec.ptr9 = getelementptr i8, i8* %14, i32 1, !dbg !890
  store i8* %incdec.ptr9, i8** %end, align 8, !dbg !890
  br label %sw.epilog, !dbg !891

sw.bb10:                                          ; preds = %while.end
  %15 = load i8*, i8** %end, align 8, !dbg !892
  %add.ptr = getelementptr i8, i8* %15, i64 9, !dbg !892
  store i8* %add.ptr, i8** %end, align 8, !dbg !892
  br label %sw.epilog, !dbg !893

sw.bb11:                                          ; preds = %while.end
  %16 = load i8*, i8** %end, align 8, !dbg !894
  %add.ptr12 = getelementptr i8, i8* %16, i64 1, !dbg !895
  %17 = load i8, i8* %add.ptr12, align 1, !dbg !896
  %conv13 = zext i8 %17 to i32, !dbg !896
  %mul = mul i32 %conv13, 4, !dbg !897
  %add = add i32 2, %mul, !dbg !898
  %18 = load i8*, i8** %end, align 8, !dbg !899
  %idx.ext = sext i32 %add to i64, !dbg !899
  %add.ptr14 = getelementptr i8, i8* %18, i64 %idx.ext, !dbg !899
  store i8* %add.ptr14, i8** %end, align 8, !dbg !899
  br label %sw.epilog, !dbg !900

sw.default:                                       ; preds = %while.end
  %19 = load i8*, i8** %end, align 8, !dbg !901
  %add.ptr15 = getelementptr i8, i8* %19, i64 4, !dbg !901
  store i8* %add.ptr15, i8** %end, align 8, !dbg !901
  br label %sw.epilog, !dbg !902

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb10, %if.end
  %20 = load i8*, i8** %end, align 8, !dbg !903
  %21 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !904
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %21, i32 0, i32 1, !dbg !905
  store i8* %20, i8** %aml16, align 8, !dbg !906
  %22 = load i8*, i8** %start, align 8, !dbg !907
  ret i8* %22, !dbg !907
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %walk_state, %struct.acpi_parse_state* %parser_state, %union.acpi_parse_object* %arg, i8 zeroext %possible_method_call) #0 !dbg !908 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %arg.addr = alloca %union.acpi_parse_object*, align 8
  %possible_method_call.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %path = alloca i8*, align 8
  %name_op = alloca %union.acpi_parse_object*, align 8
  %method_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %start = alloca i8*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !911, metadata !DIExpression()), !dbg !912
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !913, metadata !DIExpression()), !dbg !914
  store %union.acpi_parse_object* %arg, %union.acpi_parse_object** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg.addr, metadata !915, metadata !DIExpression()), !dbg !916
  store i8 %possible_method_call, i8* %possible_method_call.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %possible_method_call.addr, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata i32* %status, metadata !919, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata i8** %path, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %name_op, metadata !923, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %method_desc, metadata !925, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !927, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata i8** %start, metadata !929, metadata !DIExpression()), !dbg !930
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !931
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !932
  %1 = load i8*, i8** %aml, align 8, !dbg !932
  store i8* %1, i8** %start, align 8, !dbg !930
  %2 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !933
  %call = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %2) #3, !dbg !934
  store i8* %call, i8** %path, align 8, !dbg !935
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !936
  call void @acpi_ps_init_op(%union.acpi_parse_object* %3, i16 zeroext 45) #3, !dbg !937
  %4 = load i8*, i8** %path, align 8, !dbg !938
  %tobool = icmp ne i8* %4, null, !dbg !938
  br i1 %tobool, label %if.end, label %if.then, !dbg !940

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %path, align 8, !dbg !941
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !943
  %common = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !944
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !945
  %name = bitcast %union.acpi_parse_value* %value to i8**, !dbg !946
  store i8* %5, i8** %name, align 8, !dbg !947
  store i32 0, i32* %retval, align 4, !dbg !948
  br label %return, !dbg !948

if.end:                                           ; preds = %entry
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !949
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 46, !dbg !950
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !950
  %9 = load i8*, i8** %path, align 8, !dbg !951
  %call1 = call i32 @acpi_ns_lookup(%union.acpi_generic_state* %8, i8* %9, i32 0, i32 3, i32 3, %struct.acpi_walk_state* null, %struct.acpi_namespace_node** %node) #3, !dbg !952
  store i32 %call1, i32* %status, align 4, !dbg !953
  %10 = load i32, i32* %status, align 4, !dbg !954
  %tobool2 = icmp ne i32 %10, 0, !dbg !954
  br i1 %tobool2, label %if.end33, label %land.lhs.true, !dbg !956

land.lhs.true:                                    ; preds = %if.end
  %11 = load i8, i8* %possible_method_call.addr, align 1, !dbg !957
  %conv = zext i8 %11 to i32, !dbg !957
  %tobool3 = icmp ne i32 %conv, 0, !dbg !957
  br i1 %tobool3, label %land.lhs.true4, label %if.end33, !dbg !958

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !959
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 2, !dbg !960
  %13 = load i8, i8* %type, align 1, !dbg !960
  %conv5 = zext i8 %13 to i32, !dbg !959
  %cmp = icmp eq i32 %conv5, 8, !dbg !961
  br i1 %cmp, label %if.then7, label %if.end33, !dbg !962

if.then7:                                         ; preds = %land.lhs.true4
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !963
  %arg_types = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 17, !dbg !963
  %15 = load i32, i32* %arg_types, align 8, !dbg !963
  %and = and i32 %15, 31, !dbg !963
  %cmp8 = icmp eq i32 %and, 12, !dbg !966
  br i1 %cmp8, label %if.then14, label %lor.lhs.false, !dbg !967

lor.lhs.false:                                    ; preds = %if.then7
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !968
  %arg_types10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 17, !dbg !968
  %17 = load i32, i32* %arg_types10, align 8, !dbg !968
  %and11 = and i32 %17, 31, !dbg !968
  %cmp12 = icmp eq i32 %and11, 13, !dbg !969
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !970

if.then14:                                        ; preds = %lor.lhs.false, %if.then7
  %18 = load i8*, i8** %start, align 8, !dbg !971
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !973
  %parser_state15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 21, !dbg !974
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %parser_state15, i32 0, i32 1, !dbg !975
  store i8* %18, i8** %aml16, align 8, !dbg !976
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !977
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 23, !dbg !978
  store i32 1, i32* %arg_count, align 4, !dbg !979
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !980
  call void @acpi_ps_init_op(%union.acpi_parse_object* %21, i16 zeroext 53) #3, !dbg !981
  br label %if.end17, !dbg !982

if.end17:                                         ; preds = %if.then14, %lor.lhs.false
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !983
  %call18 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %22) #3, !dbg !984
  store %union.acpi_operand_object* %call18, %union.acpi_operand_object** %method_desc, align 8, !dbg !985
  %23 = load i8*, i8** %start, align 8, !dbg !986
  %call19 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 45, i8* %23) #3, !dbg !987
  store %union.acpi_parse_object* %call19, %union.acpi_parse_object** %name_op, align 8, !dbg !988
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %name_op, align 8, !dbg !989
  %tobool20 = icmp ne %union.acpi_parse_object* %24, null, !dbg !989
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !991

if.then21:                                        ; preds = %if.end17
  store i32 4, i32* %retval, align 4, !dbg !992
  br label %return, !dbg !992

if.end22:                                         ; preds = %if.end17
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !994
  call void @acpi_ps_init_op(%union.acpi_parse_object* %25, i16 zeroext 53) #3, !dbg !995
  %26 = load i8*, i8** %path, align 8, !dbg !996
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %name_op, align 8, !dbg !997
  %common23 = bitcast %union.acpi_parse_object* %27 to %struct.acpi_parse_obj_common*, !dbg !998
  %value24 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common23, i32 0, i32 7, !dbg !999
  %name25 = bitcast %union.acpi_parse_value* %value24 to i8**, !dbg !1000
  store i8* %26, i8** %name25, align 8, !dbg !1001
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1002
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %name_op, align 8, !dbg !1003
  %common26 = bitcast %union.acpi_parse_object* %29 to %struct.acpi_parse_obj_common*, !dbg !1004
  %node27 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 6, !dbg !1005
  store %struct.acpi_namespace_node* %28, %struct.acpi_namespace_node** %node27, align 8, !dbg !1006
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1007
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %name_op, align 8, !dbg !1008
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %30, %union.acpi_parse_object* %31) #3, !dbg !1009
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc, align 8, !dbg !1010
  %tobool28 = icmp ne %union.acpi_operand_object* %32, null, !dbg !1010
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1012

if.then29:                                        ; preds = %if.end22
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1013
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 277, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.acpi_namespace_node* %33) #3, !dbg !1013
  store i32 12303, i32* %retval, align 4, !dbg !1015
  br label %return, !dbg !1015

if.end30:                                         ; preds = %if.end22
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %method_desc, align 8, !dbg !1016
  %method = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_method*, !dbg !1017
  %param_count = getelementptr inbounds %struct.acpi_object_method, %struct.acpi_object_method* %method, i32 0, i32 6, !dbg !1018
  %35 = load i8, i8* %param_count, align 2, !dbg !1018
  %conv31 = zext i8 %35 to i32, !dbg !1016
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1019
  %arg_count32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 23, !dbg !1020
  store i32 %conv31, i32* %arg_count32, align 4, !dbg !1021
  store i32 0, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end33:                                         ; preds = %land.lhs.true4, %land.lhs.true, %if.end
  %37 = load i32, i32* %status, align 4, !dbg !1023
  %cmp34 = icmp eq i32 %37, 5, !dbg !1025
  br i1 %cmp34, label %if.then36, label %if.end69, !dbg !1026

if.then36:                                        ; preds = %if.end33
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1027
  %parse_flags = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 20, !dbg !1030
  %39 = load i32, i32* %parse_flags, align 4, !dbg !1030
  %and37 = and i32 %39, 48, !dbg !1031
  %cmp38 = icmp ne i32 %and37, 48, !dbg !1032
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !1033

if.then40:                                        ; preds = %if.then36
  store i32 0, i32* %status, align 4, !dbg !1034
  br label %if.end68, !dbg !1036

if.else:                                          ; preds = %if.then36
  %40 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1037
  %op = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %40, i32 0, i32 40, !dbg !1039
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op, align 8, !dbg !1039
  %common41 = bitcast %union.acpi_parse_object* %41 to %struct.acpi_parse_obj_common*, !dbg !1040
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common41, i32 0, i32 3, !dbg !1041
  %42 = load i16, i16* %aml_opcode, align 2, !dbg !1041
  %conv42 = zext i16 %42 to i32, !dbg !1037
  %cmp43 = icmp eq i32 %conv42, 23314, !dbg !1042
  br i1 %cmp43, label %if.then45, label %if.else46, !dbg !1043

if.then45:                                        ; preds = %if.else
  store i32 0, i32* %status, align 4, !dbg !1044
  br label %if.end67, !dbg !1046

if.else46:                                        ; preds = %if.else
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1047
  %common47 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !1049
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common47, i32 0, i32 0, !dbg !1050
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1050
  %tobool48 = icmp ne %union.acpi_parse_object* %44, null, !dbg !1051
  br i1 %tobool48, label %land.lhs.true49, label %if.end66, !dbg !1052

land.lhs.true49:                                  ; preds = %if.else46
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1053
  %common50 = bitcast %union.acpi_parse_object* %45 to %struct.acpi_parse_obj_common*, !dbg !1054
  %parent51 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common50, i32 0, i32 0, !dbg !1055
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent51, align 8, !dbg !1055
  %common52 = bitcast %union.acpi_parse_object* %46 to %struct.acpi_parse_obj_common*, !dbg !1056
  %aml_opcode53 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common52, i32 0, i32 3, !dbg !1057
  %47 = load i16, i16* %aml_opcode53, align 2, !dbg !1057
  %conv54 = zext i16 %47 to i32, !dbg !1053
  %cmp55 = icmp eq i32 %conv54, 18, !dbg !1058
  br i1 %cmp55, label %if.then65, label %lor.lhs.false57, !dbg !1059

lor.lhs.false57:                                  ; preds = %land.lhs.true49
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1060
  %common58 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !1061
  %parent59 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common58, i32 0, i32 0, !dbg !1062
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent59, align 8, !dbg !1062
  %common60 = bitcast %union.acpi_parse_object* %49 to %struct.acpi_parse_obj_common*, !dbg !1063
  %aml_opcode61 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common60, i32 0, i32 3, !dbg !1064
  %50 = load i16, i16* %aml_opcode61, align 2, !dbg !1064
  %conv62 = zext i16 %50 to i32, !dbg !1060
  %cmp63 = icmp eq i32 %conv62, 19, !dbg !1065
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !1066

if.then65:                                        ; preds = %lor.lhs.false57, %land.lhs.true49
  store i32 0, i32* %status, align 4, !dbg !1067
  br label %if.end66, !dbg !1069

if.end66:                                         ; preds = %if.then65, %lor.lhs.false57, %if.else46
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then45
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then40
  br label %if.end69, !dbg !1070

if.end69:                                         ; preds = %if.end68, %if.end33
  %51 = load i32, i32* %status, align 4, !dbg !1071
  %tobool70 = icmp ne i32 %51, 0, !dbg !1071
  br i1 %tobool70, label %if.then71, label %if.end80, !dbg !1073

if.then71:                                        ; preds = %if.end69
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1074
  %scope_info72 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 46, !dbg !1074
  %53 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info72, align 8, !dbg !1074
  %54 = load i8*, i8** %path, align 8, !dbg !1074
  %55 = load i32, i32* %status, align 4, !dbg !1074
  call void @acpi_ut_prefixed_namespace_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 330, %union.acpi_generic_state* %53, i8* %54, i32 %55) #3, !dbg !1074
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1076
  %parse_flags73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 20, !dbg !1078
  %57 = load i32, i32* %parse_flags73, align 4, !dbg !1078
  %and74 = and i32 %57, 48, !dbg !1079
  %cmp75 = icmp eq i32 %and74, 48, !dbg !1080
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !1081

if.then77:                                        ; preds = %if.then71
  %58 = load i32, i32* %status, align 4, !dbg !1082
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1084
  %call78 = call i32 @acpi_ds_method_error(i32 %58, %struct.acpi_walk_state* %59) #3, !dbg !1085
  store i32 %call78, i32* %status, align 4, !dbg !1086
  br label %if.end79, !dbg !1087

if.end79:                                         ; preds = %if.then77, %if.then71
  br label %if.end80, !dbg !1088

if.end80:                                         ; preds = %if.end79, %if.end69
  %60 = load i8*, i8** %path, align 8, !dbg !1089
  %61 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1090
  %common81 = bitcast %union.acpi_parse_object* %61 to %struct.acpi_parse_obj_common*, !dbg !1091
  %value82 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common81, i32 0, i32 7, !dbg !1092
  %name83 = bitcast %union.acpi_parse_value* %value82 to i8**, !dbg !1093
  store i8* %60, i8** %name83, align 8, !dbg !1094
  %62 = load i32, i32* %status, align 4, !dbg !1095
  store i32 %62, i32* %retval, align 4, !dbg !1095
  br label %return, !dbg !1095

return:                                           ; preds = %if.end80, %if.end30, %if.then29, %if.then21, %if.then
  %63 = load i32, i32* %retval, align 4, !dbg !1096
  ret i32 %63, !dbg !1096
}

; Function Attrs: noredzone
declare dso_local void @acpi_ps_init_op(%union.acpi_parse_object*, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_lookup(%union.acpi_generic_state*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_prefixed_namespace_error(i8*, i32, %union.acpi_generic_state*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_method_error(i32, %struct.acpi_walk_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ps_get_next_simple_arg(%struct.acpi_parse_state* %parser_state, i32 %arg_type, %union.acpi_parse_object* %arg) #0 !dbg !1097 {
entry:
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %arg_type.addr = alloca i32, align 4
  %arg.addr = alloca %union.acpi_parse_object*, align 8
  %length = alloca i32, align 4
  %opcode = alloca i16, align 2
  %aml = alloca i8*, align 8
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !1100, metadata !DIExpression()), !dbg !1101
  store i32 %arg_type, i32* %arg_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg_type.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  store %union.acpi_parse_object* %arg, %union.acpi_parse_object** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata i16* %opcode, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i8** %aml, metadata !1110, metadata !DIExpression()), !dbg !1111
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1112
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !1113
  %1 = load i8*, i8** %aml1, align 8, !dbg !1113
  store i8* %1, i8** %aml, align 8, !dbg !1111
  %2 = load i32, i32* %arg_type.addr, align 4, !dbg !1114
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb2
    i32 6, label %sw.bb7
    i32 17, label %sw.bb12
    i32 3, label %sw.bb16
    i32 8, label %sw.bb20
    i32 9, label %sw.bb20
  ], !dbg !1115

sw.bb:                                            ; preds = %entry
  store i16 10, i16* %opcode, align 2, !dbg !1116
  %3 = load i8*, i8** %aml, align 8, !dbg !1118
  %4 = load i8, i8* %3, align 1, !dbg !1119
  %conv = zext i8 %4 to i64, !dbg !1120
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1121
  %common = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1122
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1123
  %integer = bitcast %union.acpi_parse_value* %value to i64*, !dbg !1124
  store i64 %conv, i64* %integer, align 8, !dbg !1125
  store i32 1, i32* %length, align 4, !dbg !1126
  br label %sw.epilog, !dbg !1127

sw.bb2:                                           ; preds = %entry
  store i16 11, i16* %opcode, align 2, !dbg !1128
  %6 = load i8*, i8** %aml, align 8, !dbg !1129
  %7 = bitcast i8* %6 to i16*, !dbg !1129
  %8 = load i16, i16* %7, align 2, !dbg !1129
  %conv3 = zext i16 %8 to i64, !dbg !1129
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1129
  %common4 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !1129
  %value5 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common4, i32 0, i32 7, !dbg !1129
  %integer6 = bitcast %union.acpi_parse_value* %value5 to i64*, !dbg !1129
  %10 = bitcast i64* %integer6 to i8*, !dbg !1129
  %11 = bitcast i8* %10 to i64*, !dbg !1129
  store i64 %conv3, i64* %11, align 8, !dbg !1129
  store i32 2, i32* %length, align 4, !dbg !1130
  br label %sw.epilog, !dbg !1131

sw.bb7:                                           ; preds = %entry
  store i16 12, i16* %opcode, align 2, !dbg !1132
  %12 = load i8*, i8** %aml, align 8, !dbg !1133
  %13 = bitcast i8* %12 to i32*, !dbg !1133
  %14 = load i32, i32* %13, align 4, !dbg !1133
  %conv8 = zext i32 %14 to i64, !dbg !1133
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1133
  %common9 = bitcast %union.acpi_parse_object* %15 to %struct.acpi_parse_obj_common*, !dbg !1133
  %value10 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common9, i32 0, i32 7, !dbg !1133
  %integer11 = bitcast %union.acpi_parse_value* %value10 to i64*, !dbg !1133
  %16 = bitcast i64* %integer11 to i8*, !dbg !1133
  %17 = bitcast i8* %16 to i64*, !dbg !1133
  store i64 %conv8, i64* %17, align 8, !dbg !1133
  store i32 4, i32* %length, align 4, !dbg !1134
  br label %sw.epilog, !dbg !1135

sw.bb12:                                          ; preds = %entry
  store i16 14, i16* %opcode, align 2, !dbg !1136
  %18 = load i8*, i8** %aml, align 8, !dbg !1137
  %19 = bitcast i8* %18 to i64*, !dbg !1137
  %20 = load i64, i64* %19, align 8, !dbg !1137
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1137
  %common13 = bitcast %union.acpi_parse_object* %21 to %struct.acpi_parse_obj_common*, !dbg !1137
  %value14 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common13, i32 0, i32 7, !dbg !1137
  %integer15 = bitcast %union.acpi_parse_value* %value14 to i64*, !dbg !1137
  %22 = bitcast i64* %integer15 to i8*, !dbg !1137
  %23 = bitcast i8* %22 to i64*, !dbg !1137
  store i64 %20, i64* %23, align 8, !dbg !1137
  store i32 8, i32* %length, align 4, !dbg !1138
  br label %sw.epilog, !dbg !1139

sw.bb16:                                          ; preds = %entry
  store i16 13, i16* %opcode, align 2, !dbg !1140
  %24 = load i8*, i8** %aml, align 8, !dbg !1141
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1142
  %common17 = bitcast %union.acpi_parse_object* %25 to %struct.acpi_parse_obj_common*, !dbg !1143
  %value18 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common17, i32 0, i32 7, !dbg !1144
  %string = bitcast %union.acpi_parse_value* %value18 to i8**, !dbg !1145
  store i8* %24, i8** %string, align 8, !dbg !1146
  store i32 0, i32* %length, align 4, !dbg !1147
  br label %while.cond, !dbg !1148

while.cond:                                       ; preds = %while.body, %sw.bb16
  %26 = load i8*, i8** %aml, align 8, !dbg !1149
  %27 = load i32, i32* %length, align 4, !dbg !1150
  %idxprom = zext i32 %27 to i64, !dbg !1149
  %arrayidx = getelementptr i8, i8* %26, i64 %idxprom, !dbg !1149
  %28 = load i8, i8* %arrayidx, align 1, !dbg !1149
  %tobool = icmp ne i8 %28, 0, !dbg !1148
  br i1 %tobool, label %while.body, label %while.end, !dbg !1148

while.body:                                       ; preds = %while.cond
  %29 = load i32, i32* %length, align 4, !dbg !1151
  %inc = add i32 %29, 1, !dbg !1151
  store i32 %inc, i32* %length, align 4, !dbg !1151
  br label %while.cond, !dbg !1148, !llvm.loop !1153

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %length, align 4, !dbg !1155
  %inc19 = add i32 %30, 1, !dbg !1155
  store i32 %inc19, i32* %length, align 4, !dbg !1155
  br label %sw.epilog, !dbg !1156

sw.bb20:                                          ; preds = %entry, %entry
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1157
  call void @acpi_ps_init_op(%union.acpi_parse_object* %31, i16 zeroext 45) #3, !dbg !1158
  %32 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1159
  %call = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %32) #3, !dbg !1160
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1161
  %common21 = bitcast %union.acpi_parse_object* %33 to %struct.acpi_parse_obj_common*, !dbg !1162
  %value22 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common21, i32 0, i32 7, !dbg !1163
  %name = bitcast %union.acpi_parse_value* %value22 to i8**, !dbg !1164
  store i8* %call, i8** %name, align 8, !dbg !1165
  br label %return, !dbg !1166

sw.default:                                       ; preds = %entry
  %34 = load i32, i32* %arg_type.addr, align 4, !dbg !1167
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 434, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34) #3, !dbg !1167
  br label %return, !dbg !1168

sw.epilog:                                        ; preds = %while.end, %sw.bb12, %sw.bb7, %sw.bb2, %sw.bb
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg.addr, align 8, !dbg !1169
  %36 = load i16, i16* %opcode, align 2, !dbg !1170
  call void @acpi_ps_init_op(%union.acpi_parse_object* %35, i16 zeroext %36) #3, !dbg !1171
  %37 = load i32, i32* %length, align 4, !dbg !1172
  %38 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1173
  %aml23 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %38, i32 0, i32 1, !dbg !1174
  %39 = load i8*, i8** %aml23, align 8, !dbg !1175
  %idx.ext = zext i32 %37 to i64, !dbg !1175
  %add.ptr = getelementptr i8, i8* %39, i64 %idx.ext, !dbg !1175
  store i8* %add.ptr, i8** %aml23, align 8, !dbg !1175
  br label %return, !dbg !1176

return:                                           ; preds = %sw.epilog, %sw.default, %sw.bb20
  ret void, !dbg !1177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %walk_state, %struct.acpi_parse_state* %parser_state, i32 %arg_type, %union.acpi_parse_object** %return_arg) #0 !dbg !1178 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %arg_type.addr = alloca i32, align 4
  %return_arg.addr = alloca %union.acpi_parse_object**, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  %prev = alloca %union.acpi_parse_object*, align 8
  %field = alloca %union.acpi_parse_object*, align 8
  %subop = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1181, metadata !DIExpression()), !dbg !1182
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i32 %arg_type, i32* %arg_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg_type.addr, metadata !1185, metadata !DIExpression()), !dbg !1186
  store %union.acpi_parse_object** %return_arg, %union.acpi_parse_object*** %return_arg.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object*** %return_arg.addr, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1189, metadata !DIExpression()), !dbg !1190
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !1190
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %prev, metadata !1191, metadata !DIExpression()), !dbg !1192
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %prev, align 8, !dbg !1192
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %field, metadata !1193, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.declare(metadata i32* %subop, metadata !1195, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1197, metadata !DIExpression()), !dbg !1198
  store i32 0, i32* %status, align 4, !dbg !1198
  %0 = load i32, i32* %arg_type.addr, align 4, !dbg !1199
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb
    i32 6, label %sw.bb
    i32 3, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb1
    i32 7, label %sw.bb3
    i32 2, label %sw.bb20
    i32 18, label %sw.bb37
    i32 19, label %sw.bb37
    i32 13, label %sw.bb60
    i32 12, label %sw.bb60
    i32 4, label %sw.bb95
    i32 14, label %sw.bb95
    i32 5, label %sw.bb97
    i32 15, label %sw.bb97
    i32 10, label %sw.bb97
  ], !dbg !1200

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1201
  %aml = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %1, i32 0, i32 1, !dbg !1203
  %2 = load i8*, i8** %aml, align 8, !dbg !1203
  %call = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 10, i8* %2) #3, !dbg !1204
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %arg, align 8, !dbg !1205
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1206
  %tobool = icmp ne %union.acpi_parse_object* %3, null, !dbg !1206
  br i1 %tobool, label %if.end, label %if.then, !dbg !1208

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %retval, align 4, !dbg !1209
  br label %return, !dbg !1209

if.end:                                           ; preds = %sw.bb
  %4 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1211
  %5 = load i32, i32* %arg_type.addr, align 4, !dbg !1212
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1213
  call void @acpi_ps_get_next_simple_arg(%struct.acpi_parse_state* %4, i32 %5, %union.acpi_parse_object* %6) #3, !dbg !1214
  br label %sw.epilog, !dbg !1215

sw.bb1:                                           ; preds = %entry
  %7 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1216
  %call2 = call i8* @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %7) #3, !dbg !1217
  %8 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1218
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %8, i32 0, i32 4, !dbg !1219
  store i8* %call2, i8** %pkg_end, align 8, !dbg !1220
  br label %sw.epilog, !dbg !1221

sw.bb3:                                           ; preds = %entry
  %9 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1222
  %aml4 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %9, i32 0, i32 1, !dbg !1224
  %10 = load i8*, i8** %aml4, align 8, !dbg !1224
  %11 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1225
  %pkg_end5 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %11, i32 0, i32 4, !dbg !1226
  %12 = load i8*, i8** %pkg_end5, align 8, !dbg !1226
  %cmp = icmp ult i8* %10, %12, !dbg !1227
  br i1 %cmp, label %if.then6, label %if.end19, !dbg !1228

if.then6:                                         ; preds = %sw.bb3
  br label %while.cond, !dbg !1229

while.cond:                                       ; preds = %if.end16, %if.then6
  %13 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1231
  %aml7 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %13, i32 0, i32 1, !dbg !1232
  %14 = load i8*, i8** %aml7, align 8, !dbg !1232
  %15 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1233
  %pkg_end8 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %15, i32 0, i32 4, !dbg !1234
  %16 = load i8*, i8** %pkg_end8, align 8, !dbg !1234
  %cmp9 = icmp ult i8* %14, %16, !dbg !1235
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1229

while.body:                                       ; preds = %while.cond
  %17 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1236
  %call10 = call %union.acpi_parse_object* @acpi_ps_get_next_field(%struct.acpi_parse_state* %17) #3, !dbg !1238
  store %union.acpi_parse_object* %call10, %union.acpi_parse_object** %field, align 8, !dbg !1239
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1240
  %tobool11 = icmp ne %union.acpi_parse_object* %18, null, !dbg !1240
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1242

if.then12:                                        ; preds = %while.body
  store i32 4, i32* %retval, align 4, !dbg !1243
  br label %return, !dbg !1243

if.end13:                                         ; preds = %while.body
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1245
  %tobool14 = icmp ne %union.acpi_parse_object* %19, null, !dbg !1245
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !1247

if.then15:                                        ; preds = %if.end13
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1248
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %prev, align 8, !dbg !1250
  %common = bitcast %union.acpi_parse_object* %21 to %struct.acpi_parse_obj_common*, !dbg !1251
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 5, !dbg !1252
  store %union.acpi_parse_object* %20, %union.acpi_parse_object** %next, align 8, !dbg !1253
  br label %if.end16, !dbg !1254

if.else:                                          ; preds = %if.end13
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1255
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %arg, align 8, !dbg !1257
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1258
  store %union.acpi_parse_object* %23, %union.acpi_parse_object** %prev, align 8, !dbg !1259
  br label %while.cond, !dbg !1229, !llvm.loop !1260

while.end:                                        ; preds = %while.cond
  %24 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1262
  %pkg_end17 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %24, i32 0, i32 4, !dbg !1263
  %25 = load i8*, i8** %pkg_end17, align 8, !dbg !1263
  %26 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1264
  %aml18 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %26, i32 0, i32 1, !dbg !1265
  store i8* %25, i8** %aml18, align 8, !dbg !1266
  br label %if.end19, !dbg !1267

if.end19:                                         ; preds = %while.end, %sw.bb3
  br label %sw.epilog, !dbg !1268

sw.bb20:                                          ; preds = %entry
  %27 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1269
  %aml21 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %27, i32 0, i32 1, !dbg !1271
  %28 = load i8*, i8** %aml21, align 8, !dbg !1271
  %29 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1272
  %pkg_end22 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %29, i32 0, i32 4, !dbg !1273
  %30 = load i8*, i8** %pkg_end22, align 8, !dbg !1273
  %cmp23 = icmp ult i8* %28, %30, !dbg !1274
  br i1 %cmp23, label %if.then24, label %if.end36, !dbg !1275

if.then24:                                        ; preds = %sw.bb20
  %31 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1276
  %aml25 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %31, i32 0, i32 1, !dbg !1278
  %32 = load i8*, i8** %aml25, align 8, !dbg !1278
  %call26 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 51, i8* %32) #3, !dbg !1279
  store %union.acpi_parse_object* %call26, %union.acpi_parse_object** %arg, align 8, !dbg !1280
  %33 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1281
  %tobool27 = icmp ne %union.acpi_parse_object* %33, null, !dbg !1281
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1283

if.then28:                                        ; preds = %if.then24
  store i32 4, i32* %retval, align 4, !dbg !1284
  br label %return, !dbg !1284

if.end29:                                         ; preds = %if.then24
  %34 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1286
  %pkg_end30 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %34, i32 0, i32 4, !dbg !1286
  %35 = load i8*, i8** %pkg_end30, align 8, !dbg !1286
  %36 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1286
  %aml31 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %36, i32 0, i32 1, !dbg !1286
  %37 = load i8*, i8** %aml31, align 8, !dbg !1286
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64, !dbg !1286
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64, !dbg !1286
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1286
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !1287
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1288
  %common32 = bitcast %union.acpi_parse_object* %38 to %struct.acpi_parse_obj_common*, !dbg !1289
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common32, i32 0, i32 7, !dbg !1290
  %size = bitcast %union.acpi_parse_value* %value to i32*, !dbg !1291
  store i32 %conv, i32* %size, align 8, !dbg !1292
  %39 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1293
  %aml33 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %39, i32 0, i32 1, !dbg !1294
  %40 = load i8*, i8** %aml33, align 8, !dbg !1294
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1295
  %named = bitcast %union.acpi_parse_object* %41 to %struct.acpi_parse_obj_named*, !dbg !1296
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 10, !dbg !1297
  store i8* %40, i8** %data, align 8, !dbg !1298
  %42 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1299
  %pkg_end34 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %42, i32 0, i32 4, !dbg !1300
  %43 = load i8*, i8** %pkg_end34, align 8, !dbg !1300
  %44 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1301
  %aml35 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %44, i32 0, i32 1, !dbg !1302
  store i8* %43, i8** %aml35, align 8, !dbg !1303
  br label %if.end36, !dbg !1304

if.end36:                                         ; preds = %if.end29, %sw.bb20
  br label %sw.epilog, !dbg !1305

sw.bb37:                                          ; preds = %entry, %entry
  %45 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1306
  %call38 = call zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state* %45) #3, !dbg !1307
  %conv39 = zext i16 %call38 to i32, !dbg !1307
  store i32 %conv39, i32* %subop, align 4, !dbg !1308
  %46 = load i32, i32* %subop, align 4, !dbg !1309
  %cmp40 = icmp eq i32 %46, 0, !dbg !1311
  br i1 %cmp40, label %if.then51, label %lor.lhs.false, !dbg !1312

lor.lhs.false:                                    ; preds = %sw.bb37
  %47 = load i32, i32* %subop, align 4, !dbg !1313
  %call42 = call zeroext i8 @acpi_ps_is_leading_char(i32 %47) #3, !dbg !1314
  %conv43 = zext i8 %call42 to i32, !dbg !1314
  %tobool44 = icmp ne i32 %conv43, 0, !dbg !1314
  br i1 %tobool44, label %if.then51, label %lor.lhs.false45, !dbg !1315

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %48 = load i32, i32* %subop, align 4, !dbg !1316
  %cmp46 = icmp eq i32 %48, 92, !dbg !1316
  br i1 %cmp46, label %if.then51, label %lor.lhs.false48, !dbg !1317

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %49 = load i32, i32* %subop, align 4, !dbg !1318
  %cmp49 = icmp eq i32 %49, 94, !dbg !1318
  br i1 %cmp49, label %if.then51, label %if.else58, !dbg !1319

if.then51:                                        ; preds = %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false, %sw.bb37
  %50 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1320
  %aml52 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %50, i32 0, i32 1, !dbg !1322
  %51 = load i8*, i8** %aml52, align 8, !dbg !1322
  %call53 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 45, i8* %51) #3, !dbg !1323
  store %union.acpi_parse_object* %call53, %union.acpi_parse_object** %arg, align 8, !dbg !1324
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1325
  %tobool54 = icmp ne %union.acpi_parse_object* %52, null, !dbg !1325
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !1327

if.then55:                                        ; preds = %if.then51
  store i32 4, i32* %retval, align 4, !dbg !1328
  br label %return, !dbg !1328

if.end56:                                         ; preds = %if.then51
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1330
  %54 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1331
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1332
  %call57 = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %53, %struct.acpi_parse_state* %54, %union.acpi_parse_object* %55, i8 zeroext 0) #3, !dbg !1333
  store i32 %call57, i32* %status, align 4, !dbg !1334
  br label %if.end59, !dbg !1335

if.else58:                                        ; preds = %lor.lhs.false48
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1336
  %arg_count = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 23, !dbg !1338
  store i32 1, i32* %arg_count, align 4, !dbg !1339
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.end56
  br label %sw.epilog, !dbg !1340

sw.bb60:                                          ; preds = %entry, %entry
  %57 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1341
  %call61 = call zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state* %57) #3, !dbg !1342
  %conv62 = zext i16 %call61 to i32, !dbg !1342
  store i32 %conv62, i32* %subop, align 4, !dbg !1343
  %58 = load i32, i32* %subop, align 4, !dbg !1344
  %cmp63 = icmp eq i32 %58, 0, !dbg !1346
  br i1 %cmp63, label %if.then75, label %lor.lhs.false65, !dbg !1347

lor.lhs.false65:                                  ; preds = %sw.bb60
  %59 = load i32, i32* %subop, align 4, !dbg !1348
  %call66 = call zeroext i8 @acpi_ps_is_leading_char(i32 %59) #3, !dbg !1349
  %conv67 = zext i8 %call66 to i32, !dbg !1349
  %tobool68 = icmp ne i32 %conv67, 0, !dbg !1349
  br i1 %tobool68, label %if.then75, label %lor.lhs.false69, !dbg !1350

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %60 = load i32, i32* %subop, align 4, !dbg !1351
  %cmp70 = icmp eq i32 %60, 92, !dbg !1351
  br i1 %cmp70, label %if.then75, label %lor.lhs.false72, !dbg !1352

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %61 = load i32, i32* %subop, align 4, !dbg !1353
  %cmp73 = icmp eq i32 %61, 94, !dbg !1353
  br i1 %cmp73, label %if.then75, label %if.else92, !dbg !1354

if.then75:                                        ; preds = %lor.lhs.false72, %lor.lhs.false69, %lor.lhs.false65, %sw.bb60
  %62 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1355
  %aml76 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %62, i32 0, i32 1, !dbg !1357
  %63 = load i8*, i8** %aml76, align 8, !dbg !1357
  %call77 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 45, i8* %63) #3, !dbg !1358
  store %union.acpi_parse_object* %call77, %union.acpi_parse_object** %arg, align 8, !dbg !1359
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1360
  %tobool78 = icmp ne %union.acpi_parse_object* %64, null, !dbg !1360
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !1362

if.then79:                                        ; preds = %if.then75
  store i32 4, i32* %retval, align 4, !dbg !1363
  br label %return, !dbg !1363

if.end80:                                         ; preds = %if.then75
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1365
  %66 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1366
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1367
  %call81 = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %65, %struct.acpi_parse_state* %66, %union.acpi_parse_object* %67, i8 zeroext 1) #3, !dbg !1368
  store i32 %call81, i32* %status, align 4, !dbg !1369
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1370
  %common82 = bitcast %union.acpi_parse_object* %68 to %struct.acpi_parse_obj_common*, !dbg !1372
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common82, i32 0, i32 3, !dbg !1373
  %69 = load i16, i16* %aml_opcode, align 2, !dbg !1373
  %conv83 = zext i16 %69 to i32, !dbg !1370
  %cmp84 = icmp eq i32 %conv83, 53, !dbg !1374
  br i1 %cmp84, label %if.then86, label %if.end91, !dbg !1375

if.then86:                                        ; preds = %if.end80
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1376
  %common87 = bitcast %union.acpi_parse_object* %70 to %struct.acpi_parse_obj_common*, !dbg !1378
  %value88 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common87, i32 0, i32 7, !dbg !1379
  %arg89 = bitcast %union.acpi_parse_value* %value88 to %union.acpi_parse_object**, !dbg !1380
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg89, align 8, !dbg !1380
  call void @acpi_ps_free_op(%union.acpi_parse_object* %71) #3, !dbg !1381
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1382
  call void @acpi_ps_free_op(%union.acpi_parse_object* %72) #3, !dbg !1383
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !1384
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1385
  %arg_count90 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 23, !dbg !1386
  store i32 1, i32* %arg_count90, align 4, !dbg !1387
  br label %if.end91, !dbg !1388

if.end91:                                         ; preds = %if.then86, %if.end80
  br label %if.end94, !dbg !1389

if.else92:                                        ; preds = %lor.lhs.false72
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1390
  %arg_count93 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 23, !dbg !1392
  store i32 1, i32* %arg_count93, align 4, !dbg !1393
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.end91
  br label %sw.epilog, !dbg !1394

sw.bb95:                                          ; preds = %entry, %entry
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1395
  %arg_count96 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %75, i32 0, i32 23, !dbg !1396
  store i32 1, i32* %arg_count96, align 4, !dbg !1397
  br label %sw.epilog, !dbg !1398

sw.bb97:                                          ; preds = %entry, %entry, %entry
  %76 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1399
  %aml98 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %76, i32 0, i32 1, !dbg !1401
  %77 = load i8*, i8** %aml98, align 8, !dbg !1401
  %78 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1402
  %pkg_end99 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %78, i32 0, i32 4, !dbg !1403
  %79 = load i8*, i8** %pkg_end99, align 8, !dbg !1403
  %cmp100 = icmp ult i8* %77, %79, !dbg !1404
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !1405

if.then102:                                       ; preds = %sw.bb97
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1406
  %arg_count103 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %80, i32 0, i32 23, !dbg !1408
  store i32 -1, i32* %arg_count103, align 4, !dbg !1409
  br label %if.end104, !dbg !1410

if.end104:                                        ; preds = %if.then102, %sw.bb97
  br label %sw.epilog, !dbg !1411

sw.default:                                       ; preds = %entry
  %81 = load i32, i32* %arg_type.addr, align 4, !dbg !1412
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @_acpi_module_name, i64 0, i64 0), i32 901, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %81) #3, !dbg !1412
  store i32 12291, i32* %status, align 4, !dbg !1413
  br label %sw.epilog, !dbg !1414

sw.epilog:                                        ; preds = %sw.default, %if.end104, %sw.bb95, %if.end94, %if.end59, %if.end36, %if.end19, %sw.bb1, %if.end
  %82 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1415
  %83 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %return_arg.addr, align 8, !dbg !1416
  store %union.acpi_parse_object* %82, %union.acpi_parse_object** %83, align 8, !dbg !1417
  %84 = load i32, i32* %status, align 4, !dbg !1418
  store i32 %84, i32* %retval, align 4, !dbg !1418
  br label %return, !dbg !1418

return:                                           ; preds = %sw.epilog, %if.then79, %if.then55, %if.then28, %if.then12, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !1419
  ret i32 %85, !dbg !1419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %union.acpi_parse_object* @acpi_ps_get_next_field(%struct.acpi_parse_state* %parser_state) #0 !dbg !1420 {
entry:
  %retval = alloca %union.acpi_parse_object*, align 8
  %parser_state.addr = alloca %struct.acpi_parse_state*, align 8
  %aml = alloca i8*, align 8
  %field = alloca %union.acpi_parse_object*, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  %opcode = alloca i16, align 2
  %name = alloca i32, align 4
  %access_type = alloca i8, align 1
  %access_attribute = alloca i8, align 1
  %access_length = alloca i8, align 1
  %pkg_length = alloca i32, align 4
  %pkg_end = alloca i8*, align 8
  %buffer_length = alloca i32, align 4
  store %struct.acpi_parse_state* %parser_state, %struct.acpi_parse_state** %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_parse_state** %parser_state.addr, metadata !1423, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.declare(metadata i8** %aml, metadata !1425, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %field, metadata !1427, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1429, metadata !DIExpression()), !dbg !1430
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %arg, align 8, !dbg !1430
  call void @llvm.dbg.declare(metadata i16* %opcode, metadata !1431, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata i32* %name, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.declare(metadata i8* %access_type, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.declare(metadata i8* %access_attribute, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.declare(metadata i8* %access_length, metadata !1439, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.declare(metadata i32* %pkg_length, metadata !1441, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.declare(metadata i8** %pkg_end, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata i32* %buffer_length, metadata !1445, metadata !DIExpression()), !dbg !1446
  %0 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1447
  %aml1 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %0, i32 0, i32 1, !dbg !1448
  %1 = load i8*, i8** %aml1, align 8, !dbg !1448
  store i8* %1, i8** %aml, align 8, !dbg !1449
  %2 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1450
  %aml2 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %2, i32 0, i32 1, !dbg !1450
  %3 = load i8*, i8** %aml2, align 8, !dbg !1450
  %4 = load i8, i8* %3, align 1, !dbg !1450
  %conv = zext i8 %4 to i32, !dbg !1450
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
  ], !dbg !1451

sw.bb:                                            ; preds = %entry
  store i16 49, i16* %opcode, align 2, !dbg !1452
  %5 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1454
  %aml3 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %5, i32 0, i32 1, !dbg !1455
  %6 = load i8*, i8** %aml3, align 8, !dbg !1456
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !1456
  store i8* %incdec.ptr, i8** %aml3, align 8, !dbg !1456
  br label %sw.epilog, !dbg !1457

sw.bb4:                                           ; preds = %entry
  store i16 50, i16* %opcode, align 2, !dbg !1458
  %7 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1459
  %aml5 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %7, i32 0, i32 1, !dbg !1460
  %8 = load i8*, i8** %aml5, align 8, !dbg !1461
  %incdec.ptr6 = getelementptr i8, i8* %8, i32 1, !dbg !1461
  store i8* %incdec.ptr6, i8** %aml5, align 8, !dbg !1461
  br label %sw.epilog, !dbg !1462

sw.bb7:                                           ; preds = %entry
  store i16 56, i16* %opcode, align 2, !dbg !1463
  %9 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1464
  %aml8 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %9, i32 0, i32 1, !dbg !1465
  %10 = load i8*, i8** %aml8, align 8, !dbg !1466
  %incdec.ptr9 = getelementptr i8, i8* %10, i32 1, !dbg !1466
  store i8* %incdec.ptr9, i8** %aml8, align 8, !dbg !1466
  br label %sw.epilog, !dbg !1467

sw.bb10:                                          ; preds = %entry
  store i16 57, i16* %opcode, align 2, !dbg !1468
  %11 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1469
  %aml11 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %11, i32 0, i32 1, !dbg !1470
  %12 = load i8*, i8** %aml11, align 8, !dbg !1471
  %incdec.ptr12 = getelementptr i8, i8* %12, i32 1, !dbg !1471
  store i8* %incdec.ptr12, i8** %aml11, align 8, !dbg !1471
  br label %sw.epilog, !dbg !1472

sw.default:                                       ; preds = %entry
  store i16 48, i16* %opcode, align 2, !dbg !1473
  br label %sw.epilog, !dbg !1474

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %13 = load i16, i16* %opcode, align 2, !dbg !1475
  %14 = load i8*, i8** %aml, align 8, !dbg !1476
  %call = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext %13, i8* %14) #3, !dbg !1477
  store %union.acpi_parse_object* %call, %union.acpi_parse_object** %field, align 8, !dbg !1478
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1479
  %tobool = icmp ne %union.acpi_parse_object* %15, null, !dbg !1479
  br i1 %tobool, label %if.end, label %if.then, !dbg !1481

if.then:                                          ; preds = %sw.epilog
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !1482
  br label %return, !dbg !1482

if.end:                                           ; preds = %sw.epilog
  %16 = load i16, i16* %opcode, align 2, !dbg !1484
  %conv13 = zext i16 %16 to i32, !dbg !1484
  switch i32 %conv13, label %sw.default109 [
    i32 48, label %sw.bb14
    i32 49, label %sw.bb18
    i32 50, label %sw.bb23
    i32 57, label %sw.bb23
    i32 56, label %sw.bb53
  ], !dbg !1485

sw.bb14:                                          ; preds = %if.end
  %17 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1486
  %aml15 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %17, i32 0, i32 1, !dbg !1486
  %18 = load i8*, i8** %aml15, align 8, !dbg !1486
  %19 = bitcast i8* %18 to i32*, !dbg !1486
  %20 = load i32, i32* %19, align 4, !dbg !1486
  %21 = bitcast i32* %name to i8*, !dbg !1486
  %22 = bitcast i8* %21 to i32*, !dbg !1486
  store i32 %20, i32* %22, align 4, !dbg !1486
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1488
  %24 = load i32, i32* %name, align 4, !dbg !1489
  call void @acpi_ps_set_name(%union.acpi_parse_object* %23, i32 %24) #3, !dbg !1490
  %25 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1491
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %25, i32 0, i32 1, !dbg !1492
  %26 = load i8*, i8** %aml16, align 8, !dbg !1493
  %add.ptr = getelementptr i8, i8* %26, i64 4, !dbg !1493
  store i8* %add.ptr, i8** %aml16, align 8, !dbg !1493
  %27 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1494
  %call17 = call i32 @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %27) #3, !dbg !1495
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1496
  %common = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !1497
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1498
  %size = bitcast %union.acpi_parse_value* %value to i32*, !dbg !1499
  store i32 %call17, i32* %size, align 8, !dbg !1500
  br label %sw.epilog110, !dbg !1501

sw.bb18:                                          ; preds = %if.end
  %29 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1502
  %call19 = call i32 @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %29) #3, !dbg !1503
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1504
  %common20 = bitcast %union.acpi_parse_object* %30 to %struct.acpi_parse_obj_common*, !dbg !1505
  %value21 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common20, i32 0, i32 7, !dbg !1506
  %size22 = bitcast %union.acpi_parse_value* %value21 to i32*, !dbg !1507
  store i32 %call19, i32* %size22, align 8, !dbg !1508
  br label %sw.epilog110, !dbg !1509

sw.bb23:                                          ; preds = %if.end, %if.end
  %31 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1510
  %aml24 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %31, i32 0, i32 1, !dbg !1510
  %32 = load i8*, i8** %aml24, align 8, !dbg !1510
  %33 = load i8, i8* %32, align 1, !dbg !1510
  store i8 %33, i8* %access_type, align 1, !dbg !1511
  %34 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1512
  %aml25 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %34, i32 0, i32 1, !dbg !1513
  %35 = load i8*, i8** %aml25, align 8, !dbg !1514
  %incdec.ptr26 = getelementptr i8, i8* %35, i32 1, !dbg !1514
  store i8* %incdec.ptr26, i8** %aml25, align 8, !dbg !1514
  %36 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1515
  %aml27 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %36, i32 0, i32 1, !dbg !1515
  %37 = load i8*, i8** %aml27, align 8, !dbg !1515
  %38 = load i8, i8* %37, align 1, !dbg !1515
  store i8 %38, i8* %access_attribute, align 1, !dbg !1516
  %39 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1517
  %aml28 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %39, i32 0, i32 1, !dbg !1518
  %40 = load i8*, i8** %aml28, align 8, !dbg !1519
  %incdec.ptr29 = getelementptr i8, i8* %40, i32 1, !dbg !1519
  store i8* %incdec.ptr29, i8** %aml28, align 8, !dbg !1519
  %41 = load i8, i8* %access_type, align 1, !dbg !1520
  %conv30 = zext i8 %41 to i64, !dbg !1521
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1522
  %common31 = bitcast %union.acpi_parse_object* %42 to %struct.acpi_parse_obj_common*, !dbg !1523
  %value32 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common31, i32 0, i32 7, !dbg !1524
  %integer = bitcast %union.acpi_parse_value* %value32 to i64*, !dbg !1525
  store i64 %conv30, i64* %integer, align 8, !dbg !1526
  %43 = load i8, i8* %access_attribute, align 1, !dbg !1527
  %conv33 = zext i8 %43 to i32, !dbg !1527
  %shl = shl i32 %conv33, 8, !dbg !1528
  %conv34 = trunc i32 %shl to i16, !dbg !1529
  %conv35 = zext i16 %conv34 to i64, !dbg !1529
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1530
  %common36 = bitcast %union.acpi_parse_object* %44 to %struct.acpi_parse_obj_common*, !dbg !1531
  %value37 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common36, i32 0, i32 7, !dbg !1532
  %integer38 = bitcast %union.acpi_parse_value* %value37 to i64*, !dbg !1533
  %45 = load i64, i64* %integer38, align 8, !dbg !1534
  %or = or i64 %45, %conv35, !dbg !1534
  store i64 %or, i64* %integer38, align 8, !dbg !1534
  %46 = load i16, i16* %opcode, align 2, !dbg !1535
  %conv39 = zext i16 %46 to i32, !dbg !1535
  %cmp = icmp eq i32 %conv39, 57, !dbg !1537
  br i1 %cmp, label %if.then41, label %if.end52, !dbg !1538

if.then41:                                        ; preds = %sw.bb23
  %47 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1539
  %aml42 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %47, i32 0, i32 1, !dbg !1539
  %48 = load i8*, i8** %aml42, align 8, !dbg !1539
  %49 = load i8, i8* %48, align 1, !dbg !1539
  store i8 %49, i8* %access_length, align 1, !dbg !1541
  %50 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1542
  %aml43 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %50, i32 0, i32 1, !dbg !1543
  %51 = load i8*, i8** %aml43, align 8, !dbg !1544
  %incdec.ptr44 = getelementptr i8, i8* %51, i32 1, !dbg !1544
  store i8* %incdec.ptr44, i8** %aml43, align 8, !dbg !1544
  %52 = load i8, i8* %access_length, align 1, !dbg !1545
  %conv45 = zext i8 %52 to i32, !dbg !1545
  %shl46 = shl i32 %conv45, 16, !dbg !1546
  %conv47 = zext i32 %shl46 to i64, !dbg !1547
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1548
  %common48 = bitcast %union.acpi_parse_object* %53 to %struct.acpi_parse_obj_common*, !dbg !1549
  %value49 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common48, i32 0, i32 7, !dbg !1550
  %integer50 = bitcast %union.acpi_parse_value* %value49 to i64*, !dbg !1551
  %54 = load i64, i64* %integer50, align 8, !dbg !1552
  %or51 = or i64 %54, %conv47, !dbg !1552
  store i64 %or51, i64* %integer50, align 8, !dbg !1552
  br label %if.end52, !dbg !1553

if.end52:                                         ; preds = %if.then41, %sw.bb23
  br label %sw.epilog110, !dbg !1554

sw.bb53:                                          ; preds = %if.end
  %55 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1555
  %aml54 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %55, i32 0, i32 1, !dbg !1556
  %56 = load i8*, i8** %aml54, align 8, !dbg !1556
  store i8* %56, i8** %aml, align 8, !dbg !1557
  %57 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1558
  %aml55 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %57, i32 0, i32 1, !dbg !1558
  %58 = load i8*, i8** %aml55, align 8, !dbg !1558
  %59 = load i8, i8* %58, align 1, !dbg !1558
  %conv56 = zext i8 %59 to i32, !dbg !1558
  %cmp57 = icmp eq i32 %conv56, 17, !dbg !1560
  br i1 %cmp57, label %if.then59, label %if.else, !dbg !1561

if.then59:                                        ; preds = %sw.bb53
  %60 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1562
  %aml60 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %60, i32 0, i32 1, !dbg !1564
  %61 = load i8*, i8** %aml60, align 8, !dbg !1565
  %incdec.ptr61 = getelementptr i8, i8* %61, i32 1, !dbg !1565
  store i8* %incdec.ptr61, i8** %aml60, align 8, !dbg !1565
  %62 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1566
  %aml62 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %62, i32 0, i32 1, !dbg !1567
  %63 = load i8*, i8** %aml62, align 8, !dbg !1567
  store i8* %63, i8** %pkg_end, align 8, !dbg !1568
  %64 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1569
  %call63 = call i32 @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %64) #3, !dbg !1570
  store i32 %call63, i32* %pkg_length, align 4, !dbg !1571
  %65 = load i32, i32* %pkg_length, align 4, !dbg !1572
  %66 = load i8*, i8** %pkg_end, align 8, !dbg !1573
  %idx.ext = zext i32 %65 to i64, !dbg !1573
  %add.ptr64 = getelementptr i8, i8* %66, i64 %idx.ext, !dbg !1573
  store i8* %add.ptr64, i8** %pkg_end, align 8, !dbg !1573
  %67 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1574
  %aml65 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %67, i32 0, i32 1, !dbg !1576
  %68 = load i8*, i8** %aml65, align 8, !dbg !1576
  %69 = load i8*, i8** %pkg_end, align 8, !dbg !1577
  %cmp66 = icmp ult i8* %68, %69, !dbg !1578
  br i1 %cmp66, label %if.then68, label %if.end98, !dbg !1579

if.then68:                                        ; preds = %if.then59
  %70 = load i8*, i8** %aml, align 8, !dbg !1580
  %call69 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 51, i8* %70) #3, !dbg !1582
  store %union.acpi_parse_object* %call69, %union.acpi_parse_object** %arg, align 8, !dbg !1583
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1584
  %tobool70 = icmp ne %union.acpi_parse_object* %71, null, !dbg !1584
  br i1 %tobool70, label %if.end72, label %if.then71, !dbg !1586

if.then71:                                        ; preds = %if.then68
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1587
  call void @acpi_ps_free_op(%union.acpi_parse_object* %72) #3, !dbg !1589
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !1590
  br label %return, !dbg !1590

if.end72:                                         ; preds = %if.then68
  %73 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1591
  %aml73 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %73, i32 0, i32 1, !dbg !1591
  %74 = load i8*, i8** %aml73, align 8, !dbg !1591
  %75 = load i8, i8* %74, align 1, !dbg !1591
  %conv74 = zext i8 %75 to i16, !dbg !1591
  store i16 %conv74, i16* %opcode, align 2, !dbg !1592
  %76 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1593
  %aml75 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %76, i32 0, i32 1, !dbg !1594
  %77 = load i8*, i8** %aml75, align 8, !dbg !1595
  %incdec.ptr76 = getelementptr i8, i8* %77, i32 1, !dbg !1595
  store i8* %incdec.ptr76, i8** %aml75, align 8, !dbg !1595
  %78 = load i16, i16* %opcode, align 2, !dbg !1596
  %conv77 = zext i16 %78 to i32, !dbg !1596
  switch i32 %conv77, label %sw.default92 [
    i32 10, label %sw.bb78
    i32 11, label %sw.bb83
    i32 12, label %sw.bb88
  ], !dbg !1597

sw.bb78:                                          ; preds = %if.end72
  %79 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1598
  %aml79 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %79, i32 0, i32 1, !dbg !1598
  %80 = load i8*, i8** %aml79, align 8, !dbg !1598
  %81 = load i8, i8* %80, align 1, !dbg !1598
  %conv80 = zext i8 %81 to i32, !dbg !1598
  store i32 %conv80, i32* %buffer_length, align 4, !dbg !1600
  %82 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1601
  %aml81 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %82, i32 0, i32 1, !dbg !1602
  %83 = load i8*, i8** %aml81, align 8, !dbg !1603
  %add.ptr82 = getelementptr i8, i8* %83, i64 1, !dbg !1603
  store i8* %add.ptr82, i8** %aml81, align 8, !dbg !1603
  br label %sw.epilog93, !dbg !1604

sw.bb83:                                          ; preds = %if.end72
  %84 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1605
  %aml84 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %84, i32 0, i32 1, !dbg !1605
  %85 = load i8*, i8** %aml84, align 8, !dbg !1605
  %86 = bitcast i8* %85 to i16*, !dbg !1605
  %87 = load i16, i16* %86, align 2, !dbg !1605
  %conv85 = zext i16 %87 to i32, !dbg !1605
  store i32 %conv85, i32* %buffer_length, align 4, !dbg !1606
  %88 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1607
  %aml86 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %88, i32 0, i32 1, !dbg !1608
  %89 = load i8*, i8** %aml86, align 8, !dbg !1609
  %add.ptr87 = getelementptr i8, i8* %89, i64 2, !dbg !1609
  store i8* %add.ptr87, i8** %aml86, align 8, !dbg !1609
  br label %sw.epilog93, !dbg !1610

sw.bb88:                                          ; preds = %if.end72
  %90 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1611
  %aml89 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %90, i32 0, i32 1, !dbg !1611
  %91 = load i8*, i8** %aml89, align 8, !dbg !1611
  %92 = bitcast i8* %91 to i32*, !dbg !1611
  %93 = load i32, i32* %92, align 4, !dbg !1611
  store i32 %93, i32* %buffer_length, align 4, !dbg !1612
  %94 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1613
  %aml90 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %94, i32 0, i32 1, !dbg !1614
  %95 = load i8*, i8** %aml90, align 8, !dbg !1615
  %add.ptr91 = getelementptr i8, i8* %95, i64 4, !dbg !1615
  store i8* %add.ptr91, i8** %aml90, align 8, !dbg !1615
  br label %sw.epilog93, !dbg !1616

sw.default92:                                     ; preds = %if.end72
  store i32 0, i32* %buffer_length, align 4, !dbg !1617
  br label %sw.epilog93, !dbg !1618

sw.epilog93:                                      ; preds = %sw.default92, %sw.bb88, %sw.bb83, %sw.bb78
  %96 = load i32, i32* %buffer_length, align 4, !dbg !1619
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1620
  %named = bitcast %union.acpi_parse_object* %97 to %struct.acpi_parse_obj_named*, !dbg !1621
  %value94 = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named, i32 0, i32 7, !dbg !1622
  %size95 = bitcast %union.acpi_parse_value* %value94 to i32*, !dbg !1623
  store i32 %96, i32* %size95, align 8, !dbg !1624
  %98 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1625
  %aml96 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %98, i32 0, i32 1, !dbg !1626
  %99 = load i8*, i8** %aml96, align 8, !dbg !1626
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1627
  %named97 = bitcast %union.acpi_parse_object* %100 to %struct.acpi_parse_obj_named*, !dbg !1628
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, %struct.acpi_parse_obj_named* %named97, i32 0, i32 10, !dbg !1629
  store i8* %99, i8** %data, align 8, !dbg !1630
  br label %if.end98, !dbg !1631

if.end98:                                         ; preds = %sw.epilog93, %if.then59
  %101 = load i8*, i8** %pkg_end, align 8, !dbg !1632
  %102 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1633
  %aml99 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %102, i32 0, i32 1, !dbg !1634
  store i8* %101, i8** %aml99, align 8, !dbg !1635
  br label %if.end108, !dbg !1636

if.else:                                          ; preds = %sw.bb53
  %103 = load i8*, i8** %aml, align 8, !dbg !1637
  %call100 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i16 zeroext 45, i8* %103) #3, !dbg !1639
  store %union.acpi_parse_object* %call100, %union.acpi_parse_object** %arg, align 8, !dbg !1640
  %104 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1641
  %tobool101 = icmp ne %union.acpi_parse_object* %104, null, !dbg !1641
  br i1 %tobool101, label %if.end103, label %if.then102, !dbg !1643

if.then102:                                       ; preds = %if.else
  %105 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1644
  call void @acpi_ps_free_op(%union.acpi_parse_object* %105) #3, !dbg !1646
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %retval, align 8, !dbg !1647
  br label %return, !dbg !1647

if.end103:                                        ; preds = %if.else
  %106 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %parser_state.addr, align 8, !dbg !1648
  %call104 = call i8* @acpi_ps_get_next_namestring(%struct.acpi_parse_state* %106) #3, !dbg !1649
  %107 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1650
  %common105 = bitcast %union.acpi_parse_object* %107 to %struct.acpi_parse_obj_common*, !dbg !1651
  %value106 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common105, i32 0, i32 7, !dbg !1652
  %name107 = bitcast %union.acpi_parse_value* %value106 to i8**, !dbg !1653
  store i8* %call104, i8** %name107, align 8, !dbg !1654
  br label %if.end108

if.end108:                                        ; preds = %if.end103, %if.end98
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1655
  %109 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1656
  call void @acpi_ps_append_arg(%union.acpi_parse_object* %108, %union.acpi_parse_object* %109) #3, !dbg !1657
  br label %sw.epilog110, !dbg !1658

sw.default109:                                    ; preds = %if.end
  br label %sw.epilog110, !dbg !1659

sw.epilog110:                                     ; preds = %sw.default109, %if.end108, %if.end52, %sw.bb18, %sw.bb14
  %110 = load %union.acpi_parse_object*, %union.acpi_parse_object** %field, align 8, !dbg !1660
  store %union.acpi_parse_object* %110, %union.acpi_parse_object** %retval, align 8, !dbg !1660
  br label %return, !dbg !1660

return:                                           ; preds = %sw.epilog110, %if.then102, %if.then71, %if.then
  %111 = load %union.acpi_parse_object*, %union.acpi_parse_object** %retval, align 8, !dbg !1661
  ret %union.acpi_parse_object* %111, !dbg !1661
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @acpi_ps_peek_opcode(%struct.acpi_parse_state*) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ps_is_leading_char(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_free_op(%union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ps_set_name(%union.acpi_parse_object*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/psargs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3, isUnsigned: true)
!12 = !{!13, !18, !20, !23, !25, !27, !30, !31, !32, !33, !34, !35}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !29)
!29 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !24, line: 127, baseType: !27)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!36 = !{!0}
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 56, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!39 = !{!40}
!40 = !DISubrange(count: 7)
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"Code Model", i32 2}
!45 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!46 = distinct !DISubprogram(name: "acpi_ps_get_next_package_end", scope: !3, file: !3, line: 94, type: !47, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !801)
!47 = !DISubroutineType(types: !48)
!48 = !{!35, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 893, size: 640, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !797, !798, !799, !800}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !50, file: !6, line: 894, baseType: !35, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !50, file: !6, line: 895, baseType: !35, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !50, file: !6, line: 896, baseType: !35, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !50, file: !6, line: 897, baseType: !35, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !50, file: !6, line: 898, baseType: !35, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !50, file: !6, line: 899, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 875, size: 1600, elements: !60)
!60 = !{!61, !740, !756}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !59, file: !6, line: 876, baseType: !62, size: 448)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 828, size: 448, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !730, !739}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !62, file: !6, line: 829, baseType: !58, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !6, line: 829, baseType: !13, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !6, line: 829, baseType: !13, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !62, file: !6, line: 829, baseType: !20, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !62, file: !6, line: 829, baseType: !35, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !6, line: 829, baseType: !58, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !62, file: !6, line: 829, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !73)
!73 = !{!74, !714, !715, !716, !717, !726, !727, !728, !729}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !72, file: !6, line: 134, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !77, line: 367, size: 576, elements: !78)
!77 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !87, !100, !110, !123, !137, !146, !366, !383, !398, !411, !489, !501, !515, !525, !543, !565, !584, !603, !622, !635, !660, !677, !690, !704, !713}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !76, file: !77, line: 368, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !77, line: 73, size: 128, elements: !81)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !77, line: 74, baseType: !75, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !77, line: 74, baseType: !13, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !77, line: 74, baseType: !13, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !77, line: 74, baseType: !20, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !77, line: 74, baseType: !13, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !76, file: !77, line: 369, baseType: !88, size: 192)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !77, line: 76, size: 192, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !77, line: 77, baseType: !75, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !77, line: 77, baseType: !13, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !77, line: 77, baseType: !13, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !77, line: 77, baseType: !20, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !77, line: 77, baseType: !13, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !88, file: !77, line: 77, baseType: !96, size: 24, offset: 104)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 3)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !88, file: !77, line: 78, baseType: !27, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !76, file: !77, line: 370, baseType: !101, size: 256)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !77, line: 93, size: 256, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !77, line: 94, baseType: !75, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !77, line: 94, baseType: !13, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !77, line: 94, baseType: !13, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !77, line: 94, baseType: !20, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !77, line: 94, baseType: !13, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !101, file: !77, line: 94, baseType: !18, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !101, file: !77, line: 94, baseType: !25, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !76, file: !77, line: 371, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !77, line: 97, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !77, line: 98, baseType: !75, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !77, line: 98, baseType: !13, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !77, line: 98, baseType: !13, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !77, line: 98, baseType: !20, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !77, line: 98, baseType: !13, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !111, file: !77, line: 98, baseType: !35, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !77, line: 98, baseType: !25, size: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !77, line: 99, baseType: !25, size: 32, offset: 224)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !77, line: 100, baseType: !35, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !77, line: 101, baseType: !71, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !76, file: !77, line: 372, baseType: !124, size: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !77, line: 104, size: 384, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !134, !135, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !77, line: 105, baseType: !75, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !77, line: 105, baseType: !13, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !77, line: 105, baseType: !13, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !77, line: 105, baseType: !20, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !77, line: 105, baseType: !13, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !77, line: 105, baseType: !71, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !77, line: 106, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !77, line: 107, baseType: !35, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !77, line: 108, baseType: !25, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !77, line: 109, baseType: !25, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !76, file: !77, line: 373, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !77, line: 118, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !77, line: 119, baseType: !75, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !77, line: 119, baseType: !13, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !77, line: 119, baseType: !13, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !77, line: 119, baseType: !20, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !77, line: 119, baseType: !13, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !138, file: !77, line: 119, baseType: !31, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !76, file: !77, line: 374, baseType: !147, size: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !77, line: 143, size: 448, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !363, !364, !365}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !77, line: 144, baseType: !75, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !77, line: 144, baseType: !13, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !77, line: 144, baseType: !13, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !77, line: 144, baseType: !20, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !77, line: 144, baseType: !13, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !147, file: !77, line: 144, baseType: !13, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !147, file: !77, line: 145, baseType: !13, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !147, file: !77, line: 146, baseType: !13, size: 8, offset: 120)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !77, line: 147, baseType: !75, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !77, line: 148, baseType: !75, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !77, line: 149, baseType: !35, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !147, file: !77, line: 153, baseType: !161, size: 64, offset: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !77, line: 150, size: 64, elements: !162)
!162 = !{!163, !362}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !161, file: !77, line: 151, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!23, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !201, !205, !209, !210, !211, !212, !326, !327, !328, !329, !330, !331, !332, !333, !334, !345, !346, !347, !348, !349, !350, !351, !352, !354, !360}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !13, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !13, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !20, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !13, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !13, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !13, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !180, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !20)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !13, size: 8, offset: 144)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !13, size: 8, offset: 152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !13, size: 8, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !13, size: 8, offset: 168)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !13, size: 8, offset: 176)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !13, size: 8, offset: 184)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !13, size: 8, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !13, size: 8, offset: 200)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !35, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !25, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !25, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !25, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !25, size: 32, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !50, size: 640, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !25, size: 32, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !25, size: 32, offset: 1120)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !20, size: 16, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !13, size: 8, offset: 1168)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !200, size: 2688, offset: 1216)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2688, elements: !39)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !202, size: 3072, offset: 3904)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 3072, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 8)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !206, size: 576, offset: 6976)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 576, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 9)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !133, size: 64, offset: 7552)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !35, size: 64, offset: 7616)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !133, size: 64, offset: 7680)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !213, size: 64, offset: 7744)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 663, size: 640, elements: !215)
!215 = !{!216, !224, !237, !246, !255, !268, !282, !294, !304}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !214, file: !6, line: 664, baseType: !217, size: 128)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 567, size: 128, elements: !218)
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !6, line: 568, baseType: !31, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !6, line: 568, baseType: !13, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !6, line: 568, baseType: !13, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !217, file: !6, line: 568, baseType: !20, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !217, file: !6, line: 568, baseType: !20, size: 16, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !214, file: !6, line: 665, baseType: !225, size: 384)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 593, size: 384, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !6, line: 594, baseType: !31, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !6, line: 594, baseType: !13, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !6, line: 594, baseType: !13, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !6, line: 594, baseType: !20, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !225, file: !6, line: 594, baseType: !20, size: 16, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !225, file: !6, line: 594, baseType: !20, size: 16, offset: 112)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !225, file: !6, line: 595, baseType: !58, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !225, file: !6, line: 596, baseType: !35, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !225, file: !6, line: 597, baseType: !35, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !225, file: !6, line: 598, baseType: !27, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !214, file: !6, line: 666, baseType: !238, size: 192)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 573, size: 192, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !6, line: 574, baseType: !31, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !6, line: 574, baseType: !13, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !6, line: 574, baseType: !13, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !6, line: 574, baseType: !20, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !238, file: !6, line: 574, baseType: !20, size: 16, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !238, file: !6, line: 574, baseType: !75, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !214, file: !6, line: 667, baseType: !247, size: 192)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 604, size: 192, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !6, line: 605, baseType: !31, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !6, line: 605, baseType: !13, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !6, line: 605, baseType: !13, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !6, line: 605, baseType: !20, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !247, file: !6, line: 605, baseType: !20, size: 16, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !247, file: !6, line: 605, baseType: !71, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !214, file: !6, line: 668, baseType: !256, size: 448)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 608, size: 448, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !6, line: 609, baseType: !31, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !256, file: !6, line: 609, baseType: !13, size: 8, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !6, line: 609, baseType: !13, size: 8, offset: 72)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !256, file: !6, line: 609, baseType: !20, size: 16, offset: 80)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !256, file: !6, line: 609, baseType: !20, size: 16, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !256, file: !6, line: 609, baseType: !25, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !256, file: !6, line: 610, baseType: !58, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !256, file: !6, line: 611, baseType: !35, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !256, file: !6, line: 612, baseType: !35, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !256, file: !6, line: 613, baseType: !25, size: 32, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !214, file: !6, line: 669, baseType: !269, size: 512)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 580, size: 512, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !6, line: 581, baseType: !31, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !6, line: 581, baseType: !13, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !6, line: 581, baseType: !13, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !6, line: 581, baseType: !20, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !6, line: 581, baseType: !20, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !269, file: !6, line: 581, baseType: !25, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !269, file: !6, line: 582, baseType: !75, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !269, file: !6, line: 583, baseType: !75, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !269, file: !6, line: 584, baseType: !168, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !269, file: !6, line: 585, baseType: !31, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !269, file: !6, line: 586, baseType: !25, size: 32, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !214, file: !6, line: 670, baseType: !283, size: 320)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 620, size: 320, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !6, line: 621, baseType: !31, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !6, line: 621, baseType: !13, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !6, line: 621, baseType: !13, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !6, line: 621, baseType: !20, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !6, line: 621, baseType: !20, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !283, file: !6, line: 621, baseType: !13, size: 8, offset: 112)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !283, file: !6, line: 622, baseType: !168, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !283, file: !6, line: 623, baseType: !75, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !283, file: !6, line: 624, baseType: !27, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !214, file: !6, line: 671, baseType: !295, size: 640)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 631, size: 640, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !6, line: 632, baseType: !31, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !6, line: 632, baseType: !13, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !6, line: 632, baseType: !13, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !6, line: 632, baseType: !20, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !6, line: 632, baseType: !20, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !295, file: !6, line: 633, baseType: !303, size: 512, offset: 128)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 512, elements: !203)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !214, file: !6, line: 672, baseType: !305, size: 320)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 654, size: 320, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 655, baseType: !31, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 655, baseType: !13, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 655, baseType: !13, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 655, baseType: !20, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 655, baseType: !20, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !305, file: !6, line: 655, baseType: !13, size: 8, offset: 112)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !305, file: !6, line: 656, baseType: !71, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !305, file: !6, line: 657, baseType: !75, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !305, file: !6, line: 658, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 645, size: 128, elements: !318)
!318 = !{!319, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !317, file: !6, line: 646, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1052, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324, !25, !31}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !31)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !317, file: !6, line: 647, baseType: !31, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !71, size: 64, offset: 7808)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !75, size: 64, offset: 7872)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !71, size: 64, offset: 7936)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !58, size: 64, offset: 8000)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !75, size: 64, offset: 8064)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !71, size: 64, offset: 8128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !18, size: 64, offset: 8192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !58, size: 64, offset: 8256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !335, size: 64, offset: 8320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 702, size: 128, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !337, file: !6, line: 706, baseType: !25, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !337, file: !6, line: 707, baseType: !25, size: 32, offset: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !6, line: 708, baseType: !20, size: 16, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !337, file: !6, line: 709, baseType: !13, size: 8, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !337, file: !6, line: 710, baseType: !13, size: 8, offset: 88)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !337, file: !6, line: 711, baseType: !13, size: 8, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !58, size: 64, offset: 8384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !75, size: 64, offset: 8448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !213, size: 64, offset: 8512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !75, size: 64, offset: 8576)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !213, size: 64, offset: 8640)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !58, size: 64, offset: 8704)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !58, size: 64, offset: 8768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !353, size: 64, offset: 8832)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !355, size: 64, offset: 8896)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 637, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!23, !168, !359}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !361, size: 64, offset: 8960)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 641, baseType: !165)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !161, file: !77, line: 152, baseType: !75, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !77, line: 155, baseType: !25, size: 32, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !77, line: 156, baseType: !180, size: 16, offset: 416)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !147, file: !77, line: 157, baseType: !13, size: 8, offset: 432)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !76, file: !77, line: 375, baseType: !367, size: 576)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !77, line: 122, size: 576, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !367, file: !77, line: 123, baseType: !75, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !77, line: 123, baseType: !13, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !77, line: 123, baseType: !13, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !367, file: !77, line: 123, baseType: !20, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !77, line: 123, baseType: !13, size: 8, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !367, file: !77, line: 123, baseType: !13, size: 8, offset: 104)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !367, file: !77, line: 124, baseType: !20, size: 16, offset: 112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !367, file: !77, line: 125, baseType: !31, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !367, file: !77, line: 126, baseType: !27, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !367, file: !77, line: 127, baseType: !353, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !367, file: !77, line: 128, baseType: !75, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !77, line: 129, baseType: !75, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !367, file: !77, line: 130, baseType: !71, size: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !367, file: !77, line: 131, baseType: !13, size: 8, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !76, file: !77, line: 376, baseType: !384, size: 448)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !77, line: 134, size: 448, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !397}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !384, file: !77, line: 135, baseType: !75, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !384, file: !77, line: 135, baseType: !13, size: 8, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !384, file: !77, line: 135, baseType: !13, size: 8, offset: 72)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !384, file: !77, line: 135, baseType: !20, size: 16, offset: 80)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !77, line: 135, baseType: !13, size: 8, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !384, file: !77, line: 135, baseType: !13, size: 8, offset: 104)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !384, file: !77, line: 136, baseType: !71, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !384, file: !77, line: 137, baseType: !75, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !77, line: 138, baseType: !75, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !384, file: !77, line: 139, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !27)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !384, file: !77, line: 140, baseType: !25, size: 32, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !76, file: !77, line: 377, baseType: !399, size: 320)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !77, line: 184, size: 320, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !410}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !399, file: !77, line: 185, baseType: !75, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !399, file: !77, line: 185, baseType: !13, size: 8, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !399, file: !77, line: 185, baseType: !13, size: 8, offset: 72)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !399, file: !77, line: 185, baseType: !20, size: 16, offset: 80)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !399, file: !77, line: 185, baseType: !13, size: 8, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !399, file: !77, line: 185, baseType: !407, size: 128, offset: 128)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 2)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !399, file: !77, line: 185, baseType: !75, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !76, file: !77, line: 378, baseType: !412, size: 384)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !77, line: 187, size: 384, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !412, file: !77, line: 188, baseType: !75, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !412, file: !77, line: 188, baseType: !13, size: 8, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !77, line: 188, baseType: !13, size: 8, offset: 72)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !412, file: !77, line: 188, baseType: !20, size: 16, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !77, line: 188, baseType: !13, size: 8, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !412, file: !77, line: 189, baseType: !407, size: 128, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !412, file: !77, line: 189, baseType: !75, size: 64, offset: 256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !412, file: !77, line: 189, baseType: !422, size: 64, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !424)
!424 = !{!425, !426, !427, !428, !436, !451, !483, !484, !485, !486, !487, !488}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !423, file: !6, line: 481, baseType: !71, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !423, file: !6, line: 482, baseType: !422, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !6, line: 483, baseType: !422, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !423, file: !6, line: 484, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !431)
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !430, file: !6, line: 498, baseType: !429, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !6, line: 499, baseType: !429, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !430, file: !6, line: 500, baseType: !422, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !430, file: !6, line: 501, baseType: !25, size: 32, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !423, file: !6, line: 485, baseType: !437, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !439)
!439 = !{!440, !445, !446, !447, !448, !449, !450}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !438, file: !6, line: 467, baseType: !441, size: 128)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !441, file: !6, line: 460, baseType: !13, size: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !441, file: !6, line: 461, baseType: !27, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !438, file: !6, line: 468, baseType: !441, size: 128, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !438, file: !6, line: 469, baseType: !20, size: 16, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !438, file: !6, line: 470, baseType: !13, size: 8, offset: 272)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !438, file: !6, line: 471, baseType: !13, size: 8, offset: 280)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !438, file: !6, line: 472, baseType: !13, size: 8, offset: 288)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !438, file: !6, line: 473, baseType: !13, size: 8, offset: 296)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !423, file: !6, line: 486, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !454)
!454 = !{!455, !478, !479, !480, !481, !482}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !453, file: !6, line: 449, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !457)
!457 = !{!458, !459, !472}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !456, file: !6, line: 439, baseType: !71, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !6, line: 440, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !462)
!462 = !{!463, !468, !469, !470, !471}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !461, file: !6, line: 420, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1049, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!25, !324, !25, !31}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !461, file: !6, line: 421, baseType: !31, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !461, file: !6, line: 422, baseType: !71, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !461, file: !6, line: 423, baseType: !13, size: 8, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !461, file: !6, line: 424, baseType: !13, size: 8, offset: 200)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !456, file: !6, line: 441, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !474, file: !6, line: 430, baseType: !71, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !6, line: 431, baseType: !473, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !453, file: !6, line: 450, baseType: !437, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !6, line: 451, baseType: !13, size: 8, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !453, file: !6, line: 452, baseType: !13, size: 8, offset: 136)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !453, file: !6, line: 453, baseType: !13, size: 8, offset: 144)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !453, file: !6, line: 454, baseType: !13, size: 8, offset: 152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !423, file: !6, line: 487, baseType: !27, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !423, file: !6, line: 488, baseType: !25, size: 32, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !423, file: !6, line: 489, baseType: !20, size: 16, offset: 480)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !423, file: !6, line: 490, baseType: !20, size: 16, offset: 496)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !423, file: !6, line: 491, baseType: !13, size: 8, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !423, file: !6, line: 492, baseType: !13, size: 8, offset: 520)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !76, file: !77, line: 379, baseType: !490, size: 384)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !77, line: 192, size: 384, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !77, line: 193, baseType: !75, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !77, line: 193, baseType: !13, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !77, line: 193, baseType: !13, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !77, line: 193, baseType: !20, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !77, line: 193, baseType: !13, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !490, file: !77, line: 193, baseType: !407, size: 128, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !77, line: 193, baseType: !75, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !490, file: !77, line: 193, baseType: !25, size: 32, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !490, file: !77, line: 194, baseType: !25, size: 32, offset: 352)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !76, file: !77, line: 380, baseType: !502, size: 384)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !77, line: 197, size: 384, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !77, line: 198, baseType: !75, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !77, line: 198, baseType: !13, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !77, line: 198, baseType: !13, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !77, line: 198, baseType: !20, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !77, line: 198, baseType: !13, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !502, file: !77, line: 200, baseType: !13, size: 8, offset: 104)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !502, file: !77, line: 201, baseType: !13, size: 8, offset: 112)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !502, file: !77, line: 202, baseType: !407, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !502, file: !77, line: 202, baseType: !75, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !77, line: 202, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !27)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !76, file: !77, line: 381, baseType: !516, size: 320)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !77, line: 205, size: 320, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !516, file: !77, line: 206, baseType: !75, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !516, file: !77, line: 206, baseType: !13, size: 8, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !77, line: 206, baseType: !13, size: 8, offset: 72)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !516, file: !77, line: 206, baseType: !20, size: 16, offset: 80)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !77, line: 206, baseType: !13, size: 8, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !516, file: !77, line: 206, baseType: !407, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !516, file: !77, line: 206, baseType: !75, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !76, file: !77, line: 382, baseType: !526, size: 384)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !77, line: 233, size: 384, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !526, file: !77, line: 234, baseType: !75, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 72)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !526, file: !77, line: 234, baseType: !20, size: 16, offset: 80)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 104)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 112)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 120)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !77, line: 234, baseType: !71, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !526, file: !77, line: 234, baseType: !25, size: 32, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !526, file: !77, line: 234, baseType: !25, size: 32, offset: 224)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !526, file: !77, line: 234, baseType: !25, size: 32, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 288)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !526, file: !77, line: 234, baseType: !13, size: 8, offset: 296)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !526, file: !77, line: 234, baseType: !75, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !76, file: !77, line: 383, baseType: !544, size: 576)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !77, line: 237, size: 576, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !544, file: !77, line: 238, baseType: !75, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 72)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !544, file: !77, line: 238, baseType: !20, size: 16, offset: 80)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 104)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 112)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 120)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !544, file: !77, line: 238, baseType: !71, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !544, file: !77, line: 238, baseType: !25, size: 32, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !544, file: !77, line: 238, baseType: !25, size: 32, offset: 224)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !544, file: !77, line: 238, baseType: !25, size: 32, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 288)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !544, file: !77, line: 238, baseType: !13, size: 8, offset: 296)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !544, file: !77, line: 238, baseType: !20, size: 16, offset: 304)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !544, file: !77, line: 239, baseType: !75, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !544, file: !77, line: 240, baseType: !35, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !544, file: !77, line: 241, baseType: !20, size: 16, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !544, file: !77, line: 242, baseType: !35, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !76, file: !77, line: 384, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !77, line: 262, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !77, line: 263, baseType: !75, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !77, line: 263, baseType: !20, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 104)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 120)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !566, file: !77, line: 263, baseType: !71, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !566, file: !77, line: 263, baseType: !25, size: 32, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !566, file: !77, line: 263, baseType: !25, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !566, file: !77, line: 263, baseType: !25, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 296)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !566, file: !77, line: 263, baseType: !13, size: 8, offset: 304)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !566, file: !77, line: 264, baseType: !75, size: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !76, file: !77, line: 385, baseType: !585, size: 448)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !77, line: 245, size: 448, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !77, line: 246, baseType: !75, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !77, line: 246, baseType: !20, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 104)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 120)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !585, file: !77, line: 246, baseType: !71, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !585, file: !77, line: 246, baseType: !25, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !585, file: !77, line: 246, baseType: !25, size: 32, offset: 224)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !585, file: !77, line: 246, baseType: !25, size: 32, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 288)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !585, file: !77, line: 246, baseType: !13, size: 8, offset: 296)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !585, file: !77, line: 246, baseType: !75, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !585, file: !77, line: 247, baseType: !75, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !76, file: !77, line: 386, baseType: !604, size: 448)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !77, line: 250, size: 448, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !77, line: 251, baseType: !75, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !77, line: 251, baseType: !20, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 104)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 120)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !77, line: 251, baseType: !71, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !604, file: !77, line: 251, baseType: !25, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !604, file: !77, line: 251, baseType: !25, size: 32, offset: 224)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !77, line: 251, baseType: !25, size: 32, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !604, file: !77, line: 251, baseType: !13, size: 8, offset: 296)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !604, file: !77, line: 256, baseType: !75, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !604, file: !77, line: 257, baseType: !75, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !76, file: !77, line: 387, baseType: !623, size: 512)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !77, line: 273, size: 512, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !77, line: 274, baseType: !75, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !77, line: 274, baseType: !13, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !77, line: 274, baseType: !13, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !77, line: 274, baseType: !20, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !77, line: 274, baseType: !13, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !77, line: 274, baseType: !71, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !623, file: !77, line: 275, baseType: !25, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !623, file: !77, line: 276, baseType: !320, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !623, file: !77, line: 277, baseType: !31, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !77, line: 278, baseType: !407, size: 128, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !76, file: !77, line: 388, baseType: !636, size: 512)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !77, line: 281, size: 512, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !650, !651, !652, !658, !659}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !636, file: !77, line: 282, baseType: !75, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !636, file: !77, line: 282, baseType: !13, size: 8, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !636, file: !77, line: 282, baseType: !13, size: 8, offset: 72)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !636, file: !77, line: 282, baseType: !20, size: 16, offset: 80)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !77, line: 282, baseType: !13, size: 8, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !636, file: !77, line: 282, baseType: !13, size: 8, offset: 104)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !636, file: !77, line: 283, baseType: !13, size: 8, offset: 112)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !636, file: !77, line: 284, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1084, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!23, !25, !396, !25, !32, !31, !31}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !636, file: !77, line: 285, baseType: !71, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !636, file: !77, line: 286, baseType: !31, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !636, file: !77, line: 287, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1102, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!23, !324, !25, !31, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !636, file: !77, line: 288, baseType: !75, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !77, line: 289, baseType: !75, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !76, file: !77, line: 389, baseType: !661, size: 512)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !77, line: 307, size: 512, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !77, line: 308, baseType: !75, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !77, line: 308, baseType: !13, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !77, line: 308, baseType: !13, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !77, line: 308, baseType: !20, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !77, line: 308, baseType: !13, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !661, file: !77, line: 308, baseType: !13, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !661, file: !77, line: 309, baseType: !13, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !661, file: !77, line: 310, baseType: !13, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !661, file: !77, line: 311, baseType: !31, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !77, line: 312, baseType: !71, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !661, file: !77, line: 313, baseType: !133, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !661, file: !77, line: 314, baseType: !35, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !661, file: !77, line: 315, baseType: !35, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !77, line: 316, baseType: !25, size: 32, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !76, file: !77, line: 390, baseType: !678, size: 448)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !77, line: 340, size: 448, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !678, file: !77, line: 341, baseType: !75, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !77, line: 341, baseType: !13, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !77, line: 341, baseType: !13, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !678, file: !77, line: 341, baseType: !20, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !77, line: 341, baseType: !13, size: 8, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !678, file: !77, line: 341, baseType: !71, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !678, file: !77, line: 342, baseType: !71, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !678, file: !77, line: 343, baseType: !31, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !678, file: !77, line: 344, baseType: !35, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !678, file: !77, line: 345, baseType: !25, size: 32, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !76, file: !77, line: 391, baseType: !691, size: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !77, line: 350, size: 256, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !703}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !77, line: 351, baseType: !75, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !77, line: 351, baseType: !13, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !77, line: 351, baseType: !13, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !77, line: 351, baseType: !20, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !77, line: 351, baseType: !13, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !691, file: !77, line: 351, baseType: !699, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1055, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !324, !31}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !691, file: !77, line: 352, baseType: !31, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !76, file: !77, line: 392, baseType: !705, size: 192)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !77, line: 357, size: 192, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !77, line: 358, baseType: !75, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !77, line: 358, baseType: !13, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !77, line: 358, baseType: !13, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !77, line: 358, baseType: !20, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !77, line: 358, baseType: !13, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !77, line: 358, baseType: !75, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !76, file: !77, line: 399, baseType: !72, size: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !72, file: !6, line: 135, baseType: !13, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !6, line: 136, baseType: !13, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !6, line: 137, baseType: !20, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !6, line: 138, baseType: !718, size: 32, offset: 96)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !719, line: 327, size: 32, elements: !720)
!719 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !718, file: !719, line: 328, baseType: !25, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !718, file: !719, line: 329, baseType: !723, size: 32)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 4)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !6, line: 139, baseType: !71, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !72, file: !6, line: 140, baseType: !71, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !72, file: !6, line: 141, baseType: !71, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !72, file: !6, line: 142, baseType: !180, size: 16, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !62, file: !6, line: 829, baseType: !731, size: 64, offset: 320)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 716, size: 64, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !731, file: !6, line: 717, baseType: !27, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !731, file: !6, line: 718, baseType: !25, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !731, file: !6, line: 719, baseType: !18, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !731, file: !6, line: 720, baseType: !35, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !731, file: !6, line: 721, baseType: !18, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !731, file: !6, line: 722, baseType: !58, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !62, file: !6, line: 829, baseType: !13, size: 8, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !59, file: !6, line: 877, baseType: !741, size: 640)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 835, size: 640, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !741, file: !6, line: 836, baseType: !58, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !6, line: 836, baseType: !13, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !6, line: 836, baseType: !13, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !741, file: !6, line: 836, baseType: !20, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !741, file: !6, line: 836, baseType: !35, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !6, line: 836, baseType: !58, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !6, line: 836, baseType: !71, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !741, file: !6, line: 836, baseType: !731, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !741, file: !6, line: 836, baseType: !13, size: 8, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !741, file: !6, line: 836, baseType: !18, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !741, file: !6, line: 837, baseType: !35, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !741, file: !6, line: 838, baseType: !25, size: 32, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !741, file: !6, line: 839, baseType: !25, size: 32, offset: 608)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !59, file: !6, line: 878, baseType: !757, size: 1600)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 846, size: 1600, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !757, file: !6, line: 847, baseType: !58, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !6, line: 847, baseType: !13, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !6, line: 847, baseType: !13, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !757, file: !6, line: 847, baseType: !20, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !757, file: !6, line: 847, baseType: !35, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !757, file: !6, line: 847, baseType: !58, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !6, line: 847, baseType: !71, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !757, file: !6, line: 847, baseType: !731, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !757, file: !6, line: 847, baseType: !13, size: 8, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !757, file: !6, line: 847, baseType: !58, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !757, file: !6, line: 848, baseType: !58, size: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !757, file: !6, line: 849, baseType: !18, size: 64, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !757, file: !6, line: 850, baseType: !13, size: 8, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !757, file: !6, line: 851, baseType: !18, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !757, file: !6, line: 852, baseType: !18, size: 64, offset: 768)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !757, file: !6, line: 853, baseType: !18, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !757, file: !6, line: 854, baseType: !723, size: 32, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !757, file: !6, line: 855, baseType: !25, size: 32, offset: 928)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !757, file: !6, line: 856, baseType: !25, size: 32, offset: 960)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !757, file: !6, line: 857, baseType: !25, size: 32, offset: 992)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !757, file: !6, line: 858, baseType: !25, size: 32, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !757, file: !6, line: 859, baseType: !25, size: 32, offset: 1056)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !757, file: !6, line: 860, baseType: !25, size: 32, offset: 1088)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !757, file: !6, line: 861, baseType: !25, size: 32, offset: 1120)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !757, file: !6, line: 862, baseType: !25, size: 32, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !757, file: !6, line: 863, baseType: !25, size: 32, offset: 1184)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !757, file: !6, line: 864, baseType: !25, size: 32, offset: 1216)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !757, file: !6, line: 865, baseType: !25, size: 32, offset: 1248)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !757, file: !6, line: 866, baseType: !25, size: 32, offset: 1280)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !757, file: !6, line: 867, baseType: !25, size: 32, offset: 1312)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !757, file: !6, line: 868, baseType: !20, size: 16, offset: 1344)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !757, file: !6, line: 869, baseType: !13, size: 8, offset: 1360)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !757, file: !6, line: 870, baseType: !13, size: 8, offset: 1368)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !757, file: !6, line: 871, baseType: !13, size: 8, offset: 1376)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !757, file: !6, line: 872, baseType: !794, size: 160, offset: 1384)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 20)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !50, file: !6, line: 900, baseType: !71, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !50, file: !6, line: 901, baseType: !213, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !50, file: !6, line: 902, baseType: !58, size: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !50, file: !6, line: 903, baseType: !25, size: 32, offset: 576)
!801 = !{}
!802 = !DILocalVariable(name: "parser_state", arg: 1, scope: !46, file: !3, line: 94, type: !49)
!803 = !DILocation(line: 94, column: 59, scope: !46)
!804 = !DILocalVariable(name: "start", scope: !46, file: !3, line: 96, type: !35)
!805 = !DILocation(line: 96, column: 6, scope: !46)
!806 = !DILocation(line: 96, column: 14, scope: !46)
!807 = !DILocation(line: 96, column: 28, scope: !46)
!808 = !DILocalVariable(name: "package_length", scope: !46, file: !3, line: 97, type: !25)
!809 = !DILocation(line: 97, column: 6, scope: !46)
!810 = !DILocation(line: 103, column: 51, scope: !46)
!811 = !DILocation(line: 103, column: 19, scope: !46)
!812 = !DILocation(line: 103, column: 17, scope: !46)
!813 = !DILocation(line: 105, column: 2, scope: !46)
!814 = distinct !DISubprogram(name: "acpi_ps_get_next_package_length", scope: !3, file: !3, line: 43, type: !815, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !801)
!815 = !DISubroutineType(types: !816)
!816 = !{!25, !49}
!817 = !DILocalVariable(name: "parser_state", arg: 1, scope: !814, file: !3, line: 43, type: !49)
!818 = !DILocation(line: 43, column: 58, scope: !814)
!819 = !DILocalVariable(name: "aml", scope: !814, file: !3, line: 45, type: !35)
!820 = !DILocation(line: 45, column: 6, scope: !814)
!821 = !DILocation(line: 45, column: 12, scope: !814)
!822 = !DILocation(line: 45, column: 26, scope: !814)
!823 = !DILocalVariable(name: "package_length", scope: !814, file: !3, line: 46, type: !25)
!824 = !DILocation(line: 46, column: 6, scope: !814)
!825 = !DILocalVariable(name: "byte_count", scope: !814, file: !3, line: 47, type: !25)
!826 = !DILocation(line: 47, column: 6, scope: !814)
!827 = !DILocalVariable(name: "byte_zero_mask", scope: !814, file: !3, line: 48, type: !13)
!828 = !DILocation(line: 48, column: 5, scope: !814)
!829 = !DILocation(line: 56, column: 16, scope: !814)
!830 = !DILocation(line: 56, column: 23, scope: !814)
!831 = !DILocation(line: 56, column: 13, scope: !814)
!832 = !DILocation(line: 57, column: 35, scope: !814)
!833 = !DILocation(line: 57, column: 24, scope: !814)
!834 = !DILocation(line: 57, column: 46, scope: !814)
!835 = !DILocation(line: 57, column: 2, scope: !814)
!836 = !DILocation(line: 57, column: 16, scope: !814)
!837 = !DILocation(line: 57, column: 20, scope: !814)
!838 = !DILocation(line: 61, column: 2, scope: !814)
!839 = !DILocation(line: 61, column: 9, scope: !814)
!840 = !DILocation(line: 69, column: 22, scope: !841)
!841 = distinct !DILexicalBlock(scope: !814, file: !3, line: 61, column: 21)
!842 = !DILocation(line: 69, column: 26, scope: !841)
!843 = !DILocation(line: 69, column: 43, scope: !841)
!844 = !DILocation(line: 69, column: 54, scope: !841)
!845 = !DILocation(line: 69, column: 60, scope: !841)
!846 = !DILocation(line: 69, column: 38, scope: !841)
!847 = !DILocation(line: 69, column: 18, scope: !841)
!848 = !DILocation(line: 71, column: 18, scope: !841)
!849 = !DILocation(line: 72, column: 13, scope: !841)
!850 = distinct !{!850, !838, !851}
!851 = !DILocation(line: 73, column: 2, scope: !814)
!852 = !DILocation(line: 77, column: 21, scope: !814)
!853 = !DILocation(line: 77, column: 30, scope: !814)
!854 = !DILocation(line: 77, column: 28, scope: !814)
!855 = !DILocation(line: 77, column: 17, scope: !814)
!856 = !DILocation(line: 78, column: 2, scope: !814)
!857 = distinct !DISubprogram(name: "acpi_ps_get_next_namestring", scope: !3, file: !3, line: 123, type: !858, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !801)
!858 = !DISubroutineType(types: !859)
!859 = !{!18, !49}
!860 = !DILocalVariable(name: "parser_state", arg: 1, scope: !857, file: !3, line: 123, type: !49)
!861 = !DILocation(line: 123, column: 60, scope: !857)
!862 = !DILocalVariable(name: "start", scope: !857, file: !3, line: 125, type: !35)
!863 = !DILocation(line: 125, column: 6, scope: !857)
!864 = !DILocation(line: 125, column: 14, scope: !857)
!865 = !DILocation(line: 125, column: 28, scope: !857)
!866 = !DILocalVariable(name: "end", scope: !857, file: !3, line: 126, type: !35)
!867 = !DILocation(line: 126, column: 6, scope: !857)
!868 = !DILocation(line: 126, column: 12, scope: !857)
!869 = !DILocation(line: 126, column: 26, scope: !857)
!870 = !DILocation(line: 132, column: 2, scope: !857)
!871 = !DILocation(line: 132, column: 9, scope: !857)
!872 = !DILocation(line: 132, column: 35, scope: !857)
!873 = !DILocation(line: 132, column: 38, scope: !857)
!874 = !DILocation(line: 133, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !857, file: !3, line: 132, column: 67)
!876 = distinct !{!876, !870, !877}
!877 = !DILocation(line: 134, column: 2, scope: !857)
!878 = !DILocation(line: 138, column: 11, scope: !857)
!879 = !DILocation(line: 138, column: 10, scope: !857)
!880 = !DILocation(line: 138, column: 2, scope: !857)
!881 = !DILocation(line: 143, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 143, column: 7)
!883 = distinct !DILexicalBlock(scope: !857, file: !3, line: 138, column: 16)
!884 = !DILocation(line: 143, column: 14, scope: !882)
!885 = !DILocation(line: 143, column: 11, scope: !882)
!886 = !DILocation(line: 143, column: 7, scope: !883)
!887 = !DILocation(line: 144, column: 10, scope: !888)
!888 = distinct !DILexicalBlock(scope: !882, file: !3, line: 143, column: 21)
!889 = !DILocation(line: 145, column: 3, scope: !888)
!890 = !DILocation(line: 146, column: 6, scope: !883)
!891 = !DILocation(line: 147, column: 3, scope: !883)
!892 = !DILocation(line: 153, column: 7, scope: !883)
!893 = !DILocation(line: 154, column: 3, scope: !883)
!894 = !DILocation(line: 160, column: 17, scope: !883)
!895 = !DILocation(line: 160, column: 21, scope: !883)
!896 = !DILocation(line: 160, column: 15, scope: !883)
!897 = !DILocation(line: 160, column: 26, scope: !883)
!898 = !DILocation(line: 160, column: 12, scope: !883)
!899 = !DILocation(line: 160, column: 7, scope: !883)
!900 = !DILocation(line: 161, column: 3, scope: !883)
!901 = !DILocation(line: 167, column: 7, scope: !883)
!902 = !DILocation(line: 168, column: 3, scope: !883)
!903 = !DILocation(line: 171, column: 22, scope: !857)
!904 = !DILocation(line: 171, column: 2, scope: !857)
!905 = !DILocation(line: 171, column: 16, scope: !857)
!906 = !DILocation(line: 171, column: 20, scope: !857)
!907 = !DILocation(line: 172, column: 2, scope: !857)
!908 = distinct !DISubprogram(name: "acpi_ps_get_next_namepath", scope: !3, file: !3, line: 197, type: !909, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !801)
!909 = !DISubroutineType(types: !910)
!910 = !{!23, !168, !49, !58, !13}
!911 = !DILocalVariable(name: "walk_state", arg: 1, scope: !908, file: !3, line: 197, type: !168)
!912 = !DILocation(line: 197, column: 51, scope: !908)
!913 = !DILocalVariable(name: "parser_state", arg: 2, scope: !908, file: !3, line: 198, type: !49)
!914 = !DILocation(line: 198, column: 31, scope: !908)
!915 = !DILocalVariable(name: "arg", arg: 3, scope: !908, file: !3, line: 199, type: !58)
!916 = !DILocation(line: 199, column: 31, scope: !908)
!917 = !DILocalVariable(name: "possible_method_call", arg: 4, scope: !908, file: !3, line: 199, type: !13)
!918 = !DILocation(line: 199, column: 39, scope: !908)
!919 = !DILocalVariable(name: "status", scope: !908, file: !3, line: 201, type: !23)
!920 = !DILocation(line: 201, column: 14, scope: !908)
!921 = !DILocalVariable(name: "path", scope: !908, file: !3, line: 202, type: !18)
!922 = !DILocation(line: 202, column: 8, scope: !908)
!923 = !DILocalVariable(name: "name_op", scope: !908, file: !3, line: 203, type: !58)
!924 = !DILocation(line: 203, column: 27, scope: !908)
!925 = !DILocalVariable(name: "method_desc", scope: !908, file: !3, line: 204, type: !75)
!926 = !DILocation(line: 204, column: 29, scope: !908)
!927 = !DILocalVariable(name: "node", scope: !908, file: !3, line: 205, type: !71)
!928 = !DILocation(line: 205, column: 30, scope: !908)
!929 = !DILocalVariable(name: "start", scope: !908, file: !3, line: 206, type: !35)
!930 = !DILocation(line: 206, column: 6, scope: !908)
!931 = !DILocation(line: 206, column: 14, scope: !908)
!932 = !DILocation(line: 206, column: 28, scope: !908)
!933 = !DILocation(line: 210, column: 37, scope: !908)
!934 = !DILocation(line: 210, column: 9, scope: !908)
!935 = !DILocation(line: 210, column: 7, scope: !908)
!936 = !DILocation(line: 211, column: 18, scope: !908)
!937 = !DILocation(line: 211, column: 2, scope: !908)
!938 = !DILocation(line: 215, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !908, file: !3, line: 215, column: 6)
!940 = !DILocation(line: 215, column: 6, scope: !908)
!941 = !DILocation(line: 216, column: 28, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !3, line: 215, column: 13)
!943 = !DILocation(line: 216, column: 3, scope: !942)
!944 = !DILocation(line: 216, column: 8, scope: !942)
!945 = !DILocation(line: 216, column: 15, scope: !942)
!946 = !DILocation(line: 216, column: 21, scope: !942)
!947 = !DILocation(line: 216, column: 26, scope: !942)
!948 = !DILocation(line: 217, column: 3, scope: !942)
!949 = !DILocation(line: 228, column: 26, scope: !908)
!950 = !DILocation(line: 228, column: 38, scope: !908)
!951 = !DILocation(line: 228, column: 50, scope: !908)
!952 = !DILocation(line: 228, column: 11, scope: !908)
!953 = !DILocation(line: 228, column: 9, scope: !908)
!954 = !DILocation(line: 237, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !908, file: !3, line: 237, column: 6)
!956 = !DILocation(line: 237, column: 27, scope: !955)
!957 = !DILocation(line: 238, column: 6, scope: !955)
!958 = !DILocation(line: 238, column: 27, scope: !955)
!959 = !DILocation(line: 238, column: 31, scope: !955)
!960 = !DILocation(line: 238, column: 37, scope: !955)
!961 = !DILocation(line: 238, column: 42, scope: !955)
!962 = !DILocation(line: 237, column: 6, scope: !908)
!963 = !DILocation(line: 239, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !3, line: 239, column: 7)
!965 = distinct !DILexicalBlock(scope: !955, file: !3, line: 238, column: 64)
!966 = !DILocation(line: 239, column: 52, scope: !964)
!967 = !DILocation(line: 241, column: 7, scope: !964)
!968 = !DILocation(line: 241, column: 11, scope: !964)
!969 = !DILocation(line: 241, column: 55, scope: !964)
!970 = !DILocation(line: 239, column: 7, scope: !965)
!971 = !DILocation(line: 249, column: 35, scope: !972)
!972 = distinct !DILexicalBlock(scope: !964, file: !3, line: 242, column: 18)
!973 = !DILocation(line: 249, column: 4, scope: !972)
!974 = !DILocation(line: 249, column: 16, scope: !972)
!975 = !DILocation(line: 249, column: 29, scope: !972)
!976 = !DILocation(line: 249, column: 33, scope: !972)
!977 = !DILocation(line: 250, column: 4, scope: !972)
!978 = !DILocation(line: 250, column: 16, scope: !972)
!979 = !DILocation(line: 250, column: 26, scope: !972)
!980 = !DILocation(line: 251, column: 20, scope: !972)
!981 = !DILocation(line: 251, column: 4, scope: !972)
!982 = !DILocation(line: 252, column: 3, scope: !972)
!983 = !DILocation(line: 256, column: 45, scope: !965)
!984 = !DILocation(line: 256, column: 17, scope: !965)
!985 = !DILocation(line: 256, column: 15, scope: !965)
!986 = !DILocation(line: 261, column: 51, scope: !965)
!987 = !DILocation(line: 261, column: 13, scope: !965)
!988 = !DILocation(line: 261, column: 11, scope: !965)
!989 = !DILocation(line: 262, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !965, file: !3, line: 262, column: 7)
!991 = !DILocation(line: 262, column: 7, scope: !965)
!992 = !DILocation(line: 263, column: 4, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 262, column: 17)
!994 = !DILocation(line: 268, column: 19, scope: !965)
!995 = !DILocation(line: 268, column: 3, scope: !965)
!996 = !DILocation(line: 269, column: 32, scope: !965)
!997 = !DILocation(line: 269, column: 3, scope: !965)
!998 = !DILocation(line: 269, column: 12, scope: !965)
!999 = !DILocation(line: 269, column: 19, scope: !965)
!1000 = !DILocation(line: 269, column: 25, scope: !965)
!1001 = !DILocation(line: 269, column: 30, scope: !965)
!1002 = !DILocation(line: 273, column: 26, scope: !965)
!1003 = !DILocation(line: 273, column: 3, scope: !965)
!1004 = !DILocation(line: 273, column: 12, scope: !965)
!1005 = !DILocation(line: 273, column: 19, scope: !965)
!1006 = !DILocation(line: 273, column: 24, scope: !965)
!1007 = !DILocation(line: 274, column: 22, scope: !965)
!1008 = !DILocation(line: 274, column: 27, scope: !965)
!1009 = !DILocation(line: 274, column: 3, scope: !965)
!1010 = !DILocation(line: 276, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !965, file: !3, line: 276, column: 7)
!1012 = !DILocation(line: 276, column: 7, scope: !965)
!1013 = !DILocation(line: 277, column: 4, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 276, column: 21)
!1015 = !DILocation(line: 280, column: 4, scope: !1014)
!1016 = !DILocation(line: 289, column: 27, scope: !965)
!1017 = !DILocation(line: 289, column: 40, scope: !965)
!1018 = !DILocation(line: 289, column: 47, scope: !965)
!1019 = !DILocation(line: 289, column: 3, scope: !965)
!1020 = !DILocation(line: 289, column: 15, scope: !965)
!1021 = !DILocation(line: 289, column: 25, scope: !965)
!1022 = !DILocation(line: 290, column: 3, scope: !965)
!1023 = !DILocation(line: 297, column: 6, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !908, file: !3, line: 297, column: 6)
!1025 = !DILocation(line: 297, column: 13, scope: !1024)
!1026 = !DILocation(line: 297, column: 6, scope: !908)
!1027 = !DILocation(line: 301, column: 8, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 301, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 297, column: 30)
!1030 = !DILocation(line: 301, column: 20, scope: !1028)
!1031 = !DILocation(line: 301, column: 32, scope: !1028)
!1032 = !DILocation(line: 301, column: 56, scope: !1028)
!1033 = !DILocation(line: 301, column: 7, scope: !1029)
!1034 = !DILocation(line: 303, column: 11, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 302, column: 27)
!1036 = !DILocation(line: 304, column: 3, scope: !1035)
!1037 = !DILocation(line: 308, column: 12, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 308, column: 12)
!1039 = !DILocation(line: 308, column: 24, scope: !1038)
!1040 = !DILocation(line: 308, column: 28, scope: !1038)
!1041 = !DILocation(line: 308, column: 35, scope: !1038)
!1042 = !DILocation(line: 308, column: 46, scope: !1038)
!1043 = !DILocation(line: 308, column: 12, scope: !1028)
!1044 = !DILocation(line: 310, column: 11, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 309, column: 32)
!1046 = !DILocation(line: 311, column: 3, scope: !1045)
!1047 = !DILocation(line: 318, column: 13, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 318, column: 12)
!1049 = !DILocation(line: 318, column: 18, scope: !1048)
!1050 = !DILocation(line: 318, column: 25, scope: !1048)
!1051 = !DILocation(line: 318, column: 12, scope: !1048)
!1052 = !DILocation(line: 318, column: 33, scope: !1048)
!1053 = !DILocation(line: 319, column: 7, scope: !1048)
!1054 = !DILocation(line: 319, column: 12, scope: !1048)
!1055 = !DILocation(line: 319, column: 19, scope: !1048)
!1056 = !DILocation(line: 319, column: 27, scope: !1048)
!1057 = !DILocation(line: 319, column: 34, scope: !1048)
!1058 = !DILocation(line: 319, column: 45, scope: !1048)
!1059 = !DILocation(line: 321, column: 6, scope: !1048)
!1060 = !DILocation(line: 321, column: 10, scope: !1048)
!1061 = !DILocation(line: 321, column: 15, scope: !1048)
!1062 = !DILocation(line: 321, column: 22, scope: !1048)
!1063 = !DILocation(line: 321, column: 30, scope: !1048)
!1064 = !DILocation(line: 321, column: 37, scope: !1048)
!1065 = !DILocation(line: 321, column: 48, scope: !1048)
!1066 = !DILocation(line: 318, column: 12, scope: !1038)
!1067 = !DILocation(line: 323, column: 11, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 322, column: 37)
!1069 = !DILocation(line: 324, column: 3, scope: !1068)
!1070 = !DILocation(line: 325, column: 2, scope: !1029)
!1071 = !DILocation(line: 329, column: 6, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !908, file: !3, line: 329, column: 6)
!1073 = !DILocation(line: 329, column: 6, scope: !908)
!1074 = !DILocation(line: 330, column: 3, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 329, column: 28)
!1076 = !DILocation(line: 332, column: 8, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 332, column: 7)
!1078 = !DILocation(line: 332, column: 20, scope: !1077)
!1079 = !DILocation(line: 332, column: 32, scope: !1077)
!1080 = !DILocation(line: 332, column: 56, scope: !1077)
!1081 = !DILocation(line: 332, column: 7, scope: !1075)
!1082 = !DILocation(line: 337, column: 34, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 333, column: 27)
!1084 = !DILocation(line: 337, column: 42, scope: !1083)
!1085 = !DILocation(line: 337, column: 13, scope: !1083)
!1086 = !DILocation(line: 337, column: 11, scope: !1083)
!1087 = !DILocation(line: 338, column: 3, scope: !1083)
!1088 = !DILocation(line: 339, column: 2, scope: !1075)
!1089 = !DILocation(line: 343, column: 27, scope: !908)
!1090 = !DILocation(line: 343, column: 2, scope: !908)
!1091 = !DILocation(line: 343, column: 7, scope: !908)
!1092 = !DILocation(line: 343, column: 14, scope: !908)
!1093 = !DILocation(line: 343, column: 20, scope: !908)
!1094 = !DILocation(line: 343, column: 25, scope: !908)
!1095 = !DILocation(line: 344, column: 2, scope: !908)
!1096 = !DILocation(line: 345, column: 1, scope: !908)
!1097 = distinct !DISubprogram(name: "acpi_ps_get_next_simple_arg", scope: !3, file: !3, line: 362, type: !1098, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !801)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !49, !25, !58}
!1100 = !DILocalVariable(name: "parser_state", arg: 1, scope: !1097, file: !3, line: 362, type: !49)
!1101 = !DILocation(line: 362, column: 54, scope: !1097)
!1102 = !DILocalVariable(name: "arg_type", arg: 2, scope: !1097, file: !3, line: 363, type: !25)
!1103 = !DILocation(line: 363, column: 12, scope: !1097)
!1104 = !DILocalVariable(name: "arg", arg: 3, scope: !1097, file: !3, line: 363, type: !58)
!1105 = !DILocation(line: 363, column: 47, scope: !1097)
!1106 = !DILocalVariable(name: "length", scope: !1097, file: !3, line: 365, type: !25)
!1107 = !DILocation(line: 365, column: 6, scope: !1097)
!1108 = !DILocalVariable(name: "opcode", scope: !1097, file: !3, line: 366, type: !20)
!1109 = !DILocation(line: 366, column: 6, scope: !1097)
!1110 = !DILocalVariable(name: "aml", scope: !1097, file: !3, line: 367, type: !35)
!1111 = !DILocation(line: 367, column: 6, scope: !1097)
!1112 = !DILocation(line: 367, column: 12, scope: !1097)
!1113 = !DILocation(line: 367, column: 26, scope: !1097)
!1114 = !DILocation(line: 371, column: 10, scope: !1097)
!1115 = !DILocation(line: 371, column: 2, scope: !1097)
!1116 = !DILocation(line: 376, column: 10, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 371, column: 20)
!1118 = !DILocation(line: 377, column: 38, scope: !1117)
!1119 = !DILocation(line: 377, column: 37, scope: !1117)
!1120 = !DILocation(line: 377, column: 31, scope: !1117)
!1121 = !DILocation(line: 377, column: 3, scope: !1117)
!1122 = !DILocation(line: 377, column: 8, scope: !1117)
!1123 = !DILocation(line: 377, column: 15, scope: !1117)
!1124 = !DILocation(line: 377, column: 21, scope: !1117)
!1125 = !DILocation(line: 377, column: 29, scope: !1117)
!1126 = !DILocation(line: 378, column: 10, scope: !1117)
!1127 = !DILocation(line: 379, column: 3, scope: !1117)
!1128 = !DILocation(line: 385, column: 10, scope: !1117)
!1129 = !DILocation(line: 386, column: 3, scope: !1117)
!1130 = !DILocation(line: 387, column: 10, scope: !1117)
!1131 = !DILocation(line: 388, column: 3, scope: !1117)
!1132 = !DILocation(line: 394, column: 10, scope: !1117)
!1133 = !DILocation(line: 395, column: 3, scope: !1117)
!1134 = !DILocation(line: 396, column: 10, scope: !1117)
!1135 = !DILocation(line: 397, column: 3, scope: !1117)
!1136 = !DILocation(line: 403, column: 10, scope: !1117)
!1137 = !DILocation(line: 404, column: 3, scope: !1117)
!1138 = !DILocation(line: 405, column: 10, scope: !1117)
!1139 = !DILocation(line: 406, column: 3, scope: !1117)
!1140 = !DILocation(line: 412, column: 10, scope: !1117)
!1141 = !DILocation(line: 413, column: 30, scope: !1117)
!1142 = !DILocation(line: 413, column: 3, scope: !1117)
!1143 = !DILocation(line: 413, column: 8, scope: !1117)
!1144 = !DILocation(line: 413, column: 15, scope: !1117)
!1145 = !DILocation(line: 413, column: 21, scope: !1117)
!1146 = !DILocation(line: 413, column: 28, scope: !1117)
!1147 = !DILocation(line: 417, column: 10, scope: !1117)
!1148 = !DILocation(line: 418, column: 3, scope: !1117)
!1149 = !DILocation(line: 418, column: 10, scope: !1117)
!1150 = !DILocation(line: 418, column: 14, scope: !1117)
!1151 = !DILocation(line: 419, column: 10, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 418, column: 23)
!1153 = distinct !{!1153, !1148, !1154}
!1154 = !DILocation(line: 420, column: 3, scope: !1117)
!1155 = !DILocation(line: 421, column: 9, scope: !1117)
!1156 = !DILocation(line: 422, column: 3, scope: !1117)
!1157 = !DILocation(line: 427, column: 19, scope: !1117)
!1158 = !DILocation(line: 427, column: 3, scope: !1117)
!1159 = !DILocation(line: 429, column: 35, scope: !1117)
!1160 = !DILocation(line: 429, column: 7, scope: !1117)
!1161 = !DILocation(line: 428, column: 3, scope: !1117)
!1162 = !DILocation(line: 428, column: 8, scope: !1117)
!1163 = !DILocation(line: 428, column: 15, scope: !1117)
!1164 = !DILocation(line: 428, column: 21, scope: !1117)
!1165 = !DILocation(line: 428, column: 26, scope: !1117)
!1166 = !DILocation(line: 430, column: 3, scope: !1117)
!1167 = !DILocation(line: 434, column: 3, scope: !1117)
!1168 = !DILocation(line: 435, column: 3, scope: !1117)
!1169 = !DILocation(line: 438, column: 18, scope: !1097)
!1170 = !DILocation(line: 438, column: 23, scope: !1097)
!1171 = !DILocation(line: 438, column: 2, scope: !1097)
!1172 = !DILocation(line: 439, column: 23, scope: !1097)
!1173 = !DILocation(line: 439, column: 2, scope: !1097)
!1174 = !DILocation(line: 439, column: 16, scope: !1097)
!1175 = !DILocation(line: 439, column: 20, scope: !1097)
!1176 = !DILocation(line: 440, column: 2, scope: !1097)
!1177 = !DILocation(line: 441, column: 1, scope: !1097)
!1178 = distinct !DISubprogram(name: "acpi_ps_get_next_arg", scope: !3, file: !3, line: 703, type: !1179, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !801)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!23, !168, !49, !25, !359}
!1181 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1178, file: !3, line: 703, type: !168)
!1182 = !DILocation(line: 703, column: 46, scope: !1178)
!1183 = !DILocalVariable(name: "parser_state", arg: 2, scope: !1178, file: !3, line: 704, type: !49)
!1184 = !DILocation(line: 704, column: 33, scope: !1178)
!1185 = !DILocalVariable(name: "arg_type", arg: 3, scope: !1178, file: !3, line: 705, type: !25)
!1186 = !DILocation(line: 705, column: 12, scope: !1178)
!1187 = !DILocalVariable(name: "return_arg", arg: 4, scope: !1178, file: !3, line: 705, type: !359)
!1188 = !DILocation(line: 705, column: 48, scope: !1178)
!1189 = !DILocalVariable(name: "arg", scope: !1178, file: !3, line: 707, type: !58)
!1190 = !DILocation(line: 707, column: 27, scope: !1178)
!1191 = !DILocalVariable(name: "prev", scope: !1178, file: !3, line: 708, type: !58)
!1192 = !DILocation(line: 708, column: 27, scope: !1178)
!1193 = !DILocalVariable(name: "field", scope: !1178, file: !3, line: 709, type: !58)
!1194 = !DILocation(line: 709, column: 27, scope: !1178)
!1195 = !DILocalVariable(name: "subop", scope: !1178, file: !3, line: 710, type: !25)
!1196 = !DILocation(line: 710, column: 6, scope: !1178)
!1197 = !DILocalVariable(name: "status", scope: !1178, file: !3, line: 711, type: !23)
!1198 = !DILocation(line: 711, column: 14, scope: !1178)
!1199 = !DILocation(line: 719, column: 10, scope: !1178)
!1200 = !DILocation(line: 719, column: 2, scope: !1178)
!1201 = !DILocation(line: 729, column: 39, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 719, column: 20)
!1203 = !DILocation(line: 729, column: 53, scope: !1202)
!1204 = !DILocation(line: 729, column: 9, scope: !1202)
!1205 = !DILocation(line: 729, column: 7, scope: !1202)
!1206 = !DILocation(line: 730, column: 8, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 730, column: 7)
!1208 = !DILocation(line: 730, column: 7, scope: !1202)
!1209 = !DILocation(line: 731, column: 4, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 730, column: 13)
!1211 = !DILocation(line: 734, column: 31, scope: !1202)
!1212 = !DILocation(line: 734, column: 45, scope: !1202)
!1213 = !DILocation(line: 734, column: 55, scope: !1202)
!1214 = !DILocation(line: 734, column: 3, scope: !1202)
!1215 = !DILocation(line: 735, column: 3, scope: !1202)
!1216 = !DILocation(line: 742, column: 36, scope: !1202)
!1217 = !DILocation(line: 742, column: 7, scope: !1202)
!1218 = !DILocation(line: 741, column: 3, scope: !1202)
!1219 = !DILocation(line: 741, column: 17, scope: !1202)
!1220 = !DILocation(line: 741, column: 25, scope: !1202)
!1221 = !DILocation(line: 743, column: 3, scope: !1202)
!1222 = !DILocation(line: 747, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 747, column: 7)
!1224 = !DILocation(line: 747, column: 21, scope: !1223)
!1225 = !DILocation(line: 747, column: 27, scope: !1223)
!1226 = !DILocation(line: 747, column: 41, scope: !1223)
!1227 = !DILocation(line: 747, column: 25, scope: !1223)
!1228 = !DILocation(line: 747, column: 7, scope: !1202)
!1229 = !DILocation(line: 751, column: 4, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 747, column: 50)
!1231 = !DILocation(line: 751, column: 11, scope: !1230)
!1232 = !DILocation(line: 751, column: 25, scope: !1230)
!1233 = !DILocation(line: 751, column: 31, scope: !1230)
!1234 = !DILocation(line: 751, column: 45, scope: !1230)
!1235 = !DILocation(line: 751, column: 29, scope: !1230)
!1236 = !DILocation(line: 752, column: 36, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 751, column: 54)
!1238 = !DILocation(line: 752, column: 13, scope: !1237)
!1239 = !DILocation(line: 752, column: 11, scope: !1237)
!1240 = !DILocation(line: 753, column: 10, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 753, column: 9)
!1242 = !DILocation(line: 753, column: 9, scope: !1237)
!1243 = !DILocation(line: 754, column: 6, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 753, column: 17)
!1245 = !DILocation(line: 757, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 757, column: 9)
!1247 = !DILocation(line: 757, column: 9, scope: !1237)
!1248 = !DILocation(line: 758, column: 26, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 757, column: 15)
!1250 = !DILocation(line: 758, column: 6, scope: !1249)
!1251 = !DILocation(line: 758, column: 12, scope: !1249)
!1252 = !DILocation(line: 758, column: 19, scope: !1249)
!1253 = !DILocation(line: 758, column: 24, scope: !1249)
!1254 = !DILocation(line: 759, column: 5, scope: !1249)
!1255 = !DILocation(line: 760, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 759, column: 12)
!1257 = !DILocation(line: 760, column: 10, scope: !1256)
!1258 = !DILocation(line: 762, column: 12, scope: !1237)
!1259 = !DILocation(line: 762, column: 10, scope: !1237)
!1260 = distinct !{!1260, !1229, !1261}
!1261 = !DILocation(line: 763, column: 4, scope: !1230)
!1262 = !DILocation(line: 767, column: 24, scope: !1230)
!1263 = !DILocation(line: 767, column: 38, scope: !1230)
!1264 = !DILocation(line: 767, column: 4, scope: !1230)
!1265 = !DILocation(line: 767, column: 18, scope: !1230)
!1266 = !DILocation(line: 767, column: 22, scope: !1230)
!1267 = !DILocation(line: 768, column: 3, scope: !1230)
!1268 = !DILocation(line: 769, column: 3, scope: !1202)
!1269 = !DILocation(line: 773, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 773, column: 7)
!1271 = !DILocation(line: 773, column: 21, scope: !1270)
!1272 = !DILocation(line: 773, column: 27, scope: !1270)
!1273 = !DILocation(line: 773, column: 41, scope: !1270)
!1274 = !DILocation(line: 773, column: 25, scope: !1270)
!1275 = !DILocation(line: 773, column: 7, scope: !1202)
!1276 = !DILocation(line: 778, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 773, column: 50)
!1278 = !DILocation(line: 778, column: 27, scope: !1277)
!1279 = !DILocation(line: 777, column: 10, scope: !1277)
!1280 = !DILocation(line: 777, column: 8, scope: !1277)
!1281 = !DILocation(line: 779, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 779, column: 8)
!1283 = !DILocation(line: 779, column: 8, scope: !1277)
!1284 = !DILocation(line: 780, column: 5, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 779, column: 14)
!1286 = !DILocation(line: 786, column: 8, scope: !1277)
!1287 = !DILocation(line: 785, column: 29, scope: !1277)
!1288 = !DILocation(line: 785, column: 4, scope: !1277)
!1289 = !DILocation(line: 785, column: 9, scope: !1277)
!1290 = !DILocation(line: 785, column: 16, scope: !1277)
!1291 = !DILocation(line: 785, column: 22, scope: !1277)
!1292 = !DILocation(line: 785, column: 27, scope: !1277)
!1293 = !DILocation(line: 788, column: 22, scope: !1277)
!1294 = !DILocation(line: 788, column: 36, scope: !1277)
!1295 = !DILocation(line: 788, column: 4, scope: !1277)
!1296 = !DILocation(line: 788, column: 9, scope: !1277)
!1297 = !DILocation(line: 788, column: 15, scope: !1277)
!1298 = !DILocation(line: 788, column: 20, scope: !1277)
!1299 = !DILocation(line: 792, column: 24, scope: !1277)
!1300 = !DILocation(line: 792, column: 38, scope: !1277)
!1301 = !DILocation(line: 792, column: 4, scope: !1277)
!1302 = !DILocation(line: 792, column: 18, scope: !1277)
!1303 = !DILocation(line: 792, column: 22, scope: !1277)
!1304 = !DILocation(line: 793, column: 3, scope: !1277)
!1305 = !DILocation(line: 794, column: 3, scope: !1202)
!1306 = !DILocation(line: 804, column: 31, scope: !1202)
!1307 = !DILocation(line: 804, column: 11, scope: !1202)
!1308 = !DILocation(line: 804, column: 9, scope: !1202)
!1309 = !DILocation(line: 805, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 805, column: 7)
!1311 = !DILocation(line: 805, column: 13, scope: !1310)
!1312 = !DILocation(line: 805, column: 18, scope: !1310)
!1313 = !DILocation(line: 806, column: 31, scope: !1310)
!1314 = !DILocation(line: 806, column: 7, scope: !1310)
!1315 = !DILocation(line: 806, column: 38, scope: !1310)
!1316 = !DILocation(line: 807, column: 7, scope: !1310)
!1317 = !DILocation(line: 807, column: 34, scope: !1310)
!1318 = !DILocation(line: 808, column: 7, scope: !1310)
!1319 = !DILocation(line: 805, column: 7, scope: !1202)
!1320 = !DILocation(line: 814, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 808, column: 37)
!1322 = !DILocation(line: 814, column: 25, scope: !1321)
!1323 = !DILocation(line: 813, column: 8, scope: !1321)
!1324 = !DILocation(line: 812, column: 8, scope: !1321)
!1325 = !DILocation(line: 815, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 815, column: 8)
!1327 = !DILocation(line: 815, column: 8, scope: !1321)
!1328 = !DILocation(line: 816, column: 5, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 815, column: 14)
!1330 = !DILocation(line: 820, column: 34, scope: !1321)
!1331 = !DILocation(line: 820, column: 46, scope: !1321)
!1332 = !DILocation(line: 821, column: 13, scope: !1321)
!1333 = !DILocation(line: 820, column: 8, scope: !1321)
!1334 = !DILocation(line: 819, column: 11, scope: !1321)
!1335 = !DILocation(line: 823, column: 3, scope: !1321)
!1336 = !DILocation(line: 826, column: 4, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 823, column: 10)
!1338 = !DILocation(line: 826, column: 16, scope: !1337)
!1339 = !DILocation(line: 826, column: 26, scope: !1337)
!1340 = !DILocation(line: 828, column: 3, scope: !1202)
!1341 = !DILocation(line: 838, column: 31, scope: !1202)
!1342 = !DILocation(line: 838, column: 11, scope: !1202)
!1343 = !DILocation(line: 838, column: 9, scope: !1202)
!1344 = !DILocation(line: 839, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 839, column: 7)
!1346 = !DILocation(line: 839, column: 13, scope: !1345)
!1347 = !DILocation(line: 839, column: 18, scope: !1345)
!1348 = !DILocation(line: 840, column: 31, scope: !1345)
!1349 = !DILocation(line: 840, column: 7, scope: !1345)
!1350 = !DILocation(line: 840, column: 38, scope: !1345)
!1351 = !DILocation(line: 841, column: 7, scope: !1345)
!1352 = !DILocation(line: 841, column: 34, scope: !1345)
!1353 = !DILocation(line: 842, column: 7, scope: !1345)
!1354 = !DILocation(line: 839, column: 7, scope: !1202)
!1355 = !DILocation(line: 848, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 842, column: 37)
!1357 = !DILocation(line: 848, column: 25, scope: !1356)
!1358 = !DILocation(line: 847, column: 8, scope: !1356)
!1359 = !DILocation(line: 846, column: 8, scope: !1356)
!1360 = !DILocation(line: 849, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 849, column: 8)
!1362 = !DILocation(line: 849, column: 8, scope: !1356)
!1363 = !DILocation(line: 850, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 849, column: 14)
!1365 = !DILocation(line: 854, column: 34, scope: !1356)
!1366 = !DILocation(line: 854, column: 46, scope: !1356)
!1367 = !DILocation(line: 855, column: 13, scope: !1356)
!1368 = !DILocation(line: 854, column: 8, scope: !1356)
!1369 = !DILocation(line: 853, column: 11, scope: !1356)
!1370 = !DILocation(line: 858, column: 8, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 858, column: 8)
!1372 = !DILocation(line: 858, column: 13, scope: !1371)
!1373 = !DILocation(line: 858, column: 20, scope: !1371)
!1374 = !DILocation(line: 858, column: 31, scope: !1371)
!1375 = !DILocation(line: 858, column: 8, scope: !1356)
!1376 = !DILocation(line: 862, column: 21, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 858, column: 57)
!1378 = !DILocation(line: 862, column: 26, scope: !1377)
!1379 = !DILocation(line: 862, column: 33, scope: !1377)
!1380 = !DILocation(line: 862, column: 39, scope: !1377)
!1381 = !DILocation(line: 862, column: 5, scope: !1377)
!1382 = !DILocation(line: 863, column: 21, scope: !1377)
!1383 = !DILocation(line: 863, column: 5, scope: !1377)
!1384 = !DILocation(line: 864, column: 9, scope: !1377)
!1385 = !DILocation(line: 865, column: 5, scope: !1377)
!1386 = !DILocation(line: 865, column: 17, scope: !1377)
!1387 = !DILocation(line: 865, column: 27, scope: !1377)
!1388 = !DILocation(line: 866, column: 4, scope: !1377)
!1389 = !DILocation(line: 867, column: 3, scope: !1356)
!1390 = !DILocation(line: 870, column: 4, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 867, column: 10)
!1392 = !DILocation(line: 870, column: 16, scope: !1391)
!1393 = !DILocation(line: 870, column: 26, scope: !1391)
!1394 = !DILocation(line: 872, column: 3, scope: !1202)
!1395 = !DILocation(line: 884, column: 3, scope: !1202)
!1396 = !DILocation(line: 884, column: 15, scope: !1202)
!1397 = !DILocation(line: 884, column: 25, scope: !1202)
!1398 = !DILocation(line: 885, column: 3, scope: !1202)
!1399 = !DILocation(line: 891, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 891, column: 7)
!1401 = !DILocation(line: 891, column: 21, scope: !1400)
!1402 = !DILocation(line: 891, column: 27, scope: !1400)
!1403 = !DILocation(line: 891, column: 41, scope: !1400)
!1404 = !DILocation(line: 891, column: 25, scope: !1400)
!1405 = !DILocation(line: 891, column: 7, scope: !1202)
!1406 = !DILocation(line: 895, column: 4, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 891, column: 50)
!1408 = !DILocation(line: 895, column: 16, scope: !1407)
!1409 = !DILocation(line: 895, column: 26, scope: !1407)
!1410 = !DILocation(line: 896, column: 3, scope: !1407)
!1411 = !DILocation(line: 897, column: 3, scope: !1202)
!1412 = !DILocation(line: 901, column: 3, scope: !1202)
!1413 = !DILocation(line: 902, column: 10, scope: !1202)
!1414 = !DILocation(line: 903, column: 3, scope: !1202)
!1415 = !DILocation(line: 906, column: 16, scope: !1178)
!1416 = !DILocation(line: 906, column: 3, scope: !1178)
!1417 = !DILocation(line: 906, column: 14, scope: !1178)
!1418 = !DILocation(line: 907, column: 2, scope: !1178)
!1419 = !DILocation(line: 908, column: 1, scope: !1178)
!1420 = distinct !DISubprogram(name: "acpi_ps_get_next_field", scope: !3, file: !3, line: 455, type: !1421, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !801)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!58, !49}
!1423 = !DILocalVariable(name: "parser_state", arg: 1, scope: !1420, file: !3, line: 456, type: !49)
!1424 = !DILocation(line: 456, column: 15, scope: !1420)
!1425 = !DILocalVariable(name: "aml", scope: !1420, file: !3, line: 458, type: !35)
!1426 = !DILocation(line: 458, column: 6, scope: !1420)
!1427 = !DILocalVariable(name: "field", scope: !1420, file: !3, line: 459, type: !58)
!1428 = !DILocation(line: 459, column: 27, scope: !1420)
!1429 = !DILocalVariable(name: "arg", scope: !1420, file: !3, line: 460, type: !58)
!1430 = !DILocation(line: 460, column: 27, scope: !1420)
!1431 = !DILocalVariable(name: "opcode", scope: !1420, file: !3, line: 461, type: !20)
!1432 = !DILocation(line: 461, column: 6, scope: !1420)
!1433 = !DILocalVariable(name: "name", scope: !1420, file: !3, line: 462, type: !25)
!1434 = !DILocation(line: 462, column: 6, scope: !1420)
!1435 = !DILocalVariable(name: "access_type", scope: !1420, file: !3, line: 463, type: !13)
!1436 = !DILocation(line: 463, column: 5, scope: !1420)
!1437 = !DILocalVariable(name: "access_attribute", scope: !1420, file: !3, line: 464, type: !13)
!1438 = !DILocation(line: 464, column: 5, scope: !1420)
!1439 = !DILocalVariable(name: "access_length", scope: !1420, file: !3, line: 465, type: !13)
!1440 = !DILocation(line: 465, column: 5, scope: !1420)
!1441 = !DILocalVariable(name: "pkg_length", scope: !1420, file: !3, line: 466, type: !25)
!1442 = !DILocation(line: 466, column: 6, scope: !1420)
!1443 = !DILocalVariable(name: "pkg_end", scope: !1420, file: !3, line: 467, type: !35)
!1444 = !DILocation(line: 467, column: 6, scope: !1420)
!1445 = !DILocalVariable(name: "buffer_length", scope: !1420, file: !3, line: 468, type: !25)
!1446 = !DILocation(line: 468, column: 6, scope: !1420)
!1447 = !DILocation(line: 473, column: 8, scope: !1420)
!1448 = !DILocation(line: 473, column: 22, scope: !1420)
!1449 = !DILocation(line: 473, column: 6, scope: !1420)
!1450 = !DILocation(line: 477, column: 10, scope: !1420)
!1451 = !DILocation(line: 477, column: 2, scope: !1420)
!1452 = !DILocation(line: 480, column: 10, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 477, column: 40)
!1454 = !DILocation(line: 481, column: 3, scope: !1453)
!1455 = !DILocation(line: 481, column: 17, scope: !1453)
!1456 = !DILocation(line: 481, column: 20, scope: !1453)
!1457 = !DILocation(line: 482, column: 3, scope: !1453)
!1458 = !DILocation(line: 486, column: 10, scope: !1453)
!1459 = !DILocation(line: 487, column: 3, scope: !1453)
!1460 = !DILocation(line: 487, column: 17, scope: !1453)
!1461 = !DILocation(line: 487, column: 20, scope: !1453)
!1462 = !DILocation(line: 488, column: 3, scope: !1453)
!1463 = !DILocation(line: 492, column: 10, scope: !1453)
!1464 = !DILocation(line: 493, column: 3, scope: !1453)
!1465 = !DILocation(line: 493, column: 17, scope: !1453)
!1466 = !DILocation(line: 493, column: 20, scope: !1453)
!1467 = !DILocation(line: 494, column: 3, scope: !1453)
!1468 = !DILocation(line: 498, column: 10, scope: !1453)
!1469 = !DILocation(line: 499, column: 3, scope: !1453)
!1470 = !DILocation(line: 499, column: 17, scope: !1453)
!1471 = !DILocation(line: 499, column: 20, scope: !1453)
!1472 = !DILocation(line: 500, column: 3, scope: !1453)
!1473 = !DILocation(line: 504, column: 10, scope: !1453)
!1474 = !DILocation(line: 505, column: 3, scope: !1453)
!1475 = !DILocation(line: 510, column: 27, scope: !1420)
!1476 = !DILocation(line: 510, column: 35, scope: !1420)
!1477 = !DILocation(line: 510, column: 10, scope: !1420)
!1478 = !DILocation(line: 510, column: 8, scope: !1420)
!1479 = !DILocation(line: 511, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 511, column: 6)
!1481 = !DILocation(line: 511, column: 6, scope: !1420)
!1482 = !DILocation(line: 512, column: 3, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 511, column: 14)
!1484 = !DILocation(line: 518, column: 10, scope: !1420)
!1485 = !DILocation(line: 518, column: 2, scope: !1420)
!1486 = !DILocation(line: 523, column: 3, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 518, column: 18)
!1488 = !DILocation(line: 524, column: 20, scope: !1487)
!1489 = !DILocation(line: 524, column: 27, scope: !1487)
!1490 = !DILocation(line: 524, column: 3, scope: !1487)
!1491 = !DILocation(line: 525, column: 3, scope: !1487)
!1492 = !DILocation(line: 525, column: 17, scope: !1487)
!1493 = !DILocation(line: 525, column: 21, scope: !1487)
!1494 = !DILocation(line: 546, column: 39, scope: !1487)
!1495 = !DILocation(line: 546, column: 7, scope: !1487)
!1496 = !DILocation(line: 545, column: 3, scope: !1487)
!1497 = !DILocation(line: 545, column: 10, scope: !1487)
!1498 = !DILocation(line: 545, column: 17, scope: !1487)
!1499 = !DILocation(line: 545, column: 23, scope: !1487)
!1500 = !DILocation(line: 545, column: 28, scope: !1487)
!1501 = !DILocation(line: 547, column: 3, scope: !1487)
!1502 = !DILocation(line: 554, column: 39, scope: !1487)
!1503 = !DILocation(line: 554, column: 7, scope: !1487)
!1504 = !DILocation(line: 553, column: 3, scope: !1487)
!1505 = !DILocation(line: 553, column: 10, scope: !1487)
!1506 = !DILocation(line: 553, column: 17, scope: !1487)
!1507 = !DILocation(line: 553, column: 23, scope: !1487)
!1508 = !DILocation(line: 553, column: 28, scope: !1487)
!1509 = !DILocation(line: 555, column: 3, scope: !1487)
!1510 = !DILocation(line: 568, column: 17, scope: !1487)
!1511 = !DILocation(line: 568, column: 15, scope: !1487)
!1512 = !DILocation(line: 569, column: 3, scope: !1487)
!1513 = !DILocation(line: 569, column: 17, scope: !1487)
!1514 = !DILocation(line: 569, column: 20, scope: !1487)
!1515 = !DILocation(line: 570, column: 22, scope: !1487)
!1516 = !DILocation(line: 570, column: 20, scope: !1487)
!1517 = !DILocation(line: 571, column: 3, scope: !1487)
!1518 = !DILocation(line: 571, column: 17, scope: !1487)
!1519 = !DILocation(line: 571, column: 20, scope: !1487)
!1520 = !DILocation(line: 573, column: 37, scope: !1487)
!1521 = !DILocation(line: 573, column: 33, scope: !1487)
!1522 = !DILocation(line: 573, column: 3, scope: !1487)
!1523 = !DILocation(line: 573, column: 10, scope: !1487)
!1524 = !DILocation(line: 573, column: 17, scope: !1487)
!1525 = !DILocation(line: 573, column: 23, scope: !1487)
!1526 = !DILocation(line: 573, column: 31, scope: !1487)
!1527 = !DILocation(line: 574, column: 40, scope: !1487)
!1528 = !DILocation(line: 574, column: 57, scope: !1487)
!1529 = !DILocation(line: 574, column: 34, scope: !1487)
!1530 = !DILocation(line: 574, column: 3, scope: !1487)
!1531 = !DILocation(line: 574, column: 10, scope: !1487)
!1532 = !DILocation(line: 574, column: 17, scope: !1487)
!1533 = !DILocation(line: 574, column: 23, scope: !1487)
!1534 = !DILocation(line: 574, column: 31, scope: !1487)
!1535 = !DILocation(line: 578, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 578, column: 7)
!1537 = !DILocation(line: 578, column: 14, scope: !1536)
!1538 = !DILocation(line: 578, column: 7, scope: !1487)
!1539 = !DILocation(line: 579, column: 20, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 578, column: 44)
!1541 = !DILocation(line: 579, column: 18, scope: !1540)
!1542 = !DILocation(line: 580, column: 4, scope: !1540)
!1543 = !DILocation(line: 580, column: 18, scope: !1540)
!1544 = !DILocation(line: 580, column: 21, scope: !1540)
!1545 = !DILocation(line: 583, column: 14, scope: !1540)
!1546 = !DILocation(line: 583, column: 28, scope: !1540)
!1547 = !DILocation(line: 583, column: 8, scope: !1540)
!1548 = !DILocation(line: 582, column: 4, scope: !1540)
!1549 = !DILocation(line: 582, column: 11, scope: !1540)
!1550 = !DILocation(line: 582, column: 18, scope: !1540)
!1551 = !DILocation(line: 582, column: 24, scope: !1540)
!1552 = !DILocation(line: 582, column: 32, scope: !1540)
!1553 = !DILocation(line: 584, column: 3, scope: !1540)
!1554 = !DILocation(line: 585, column: 3, scope: !1487)
!1555 = !DILocation(line: 593, column: 9, scope: !1487)
!1556 = !DILocation(line: 593, column: 23, scope: !1487)
!1557 = !DILocation(line: 593, column: 7, scope: !1487)
!1558 = !DILocation(line: 594, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 594, column: 7)
!1560 = !DILocation(line: 594, column: 36, scope: !1559)
!1561 = !DILocation(line: 594, column: 7, scope: !1487)
!1562 = !DILocation(line: 595, column: 4, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 594, column: 54)
!1564 = !DILocation(line: 595, column: 18, scope: !1563)
!1565 = !DILocation(line: 595, column: 21, scope: !1563)
!1566 = !DILocation(line: 598, column: 14, scope: !1563)
!1567 = !DILocation(line: 598, column: 28, scope: !1563)
!1568 = !DILocation(line: 598, column: 12, scope: !1563)
!1569 = !DILocation(line: 600, column: 40, scope: !1563)
!1570 = !DILocation(line: 600, column: 8, scope: !1563)
!1571 = !DILocation(line: 599, column: 15, scope: !1563)
!1572 = !DILocation(line: 601, column: 15, scope: !1563)
!1573 = !DILocation(line: 601, column: 12, scope: !1563)
!1574 = !DILocation(line: 604, column: 8, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 604, column: 8)
!1576 = !DILocation(line: 604, column: 22, scope: !1575)
!1577 = !DILocation(line: 604, column: 28, scope: !1575)
!1578 = !DILocation(line: 604, column: 26, scope: !1575)
!1579 = !DILocation(line: 604, column: 8, scope: !1563)
!1580 = !DILocation(line: 609, column: 47, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 604, column: 37)
!1582 = !DILocation(line: 609, column: 9, scope: !1581)
!1583 = !DILocation(line: 608, column: 9, scope: !1581)
!1584 = !DILocation(line: 610, column: 10, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 610, column: 9)
!1586 = !DILocation(line: 610, column: 9, scope: !1581)
!1587 = !DILocation(line: 611, column: 22, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 610, column: 15)
!1589 = !DILocation(line: 611, column: 6, scope: !1588)
!1590 = !DILocation(line: 612, column: 6, scope: !1588)
!1591 = !DILocation(line: 617, column: 14, scope: !1581)
!1592 = !DILocation(line: 617, column: 12, scope: !1581)
!1593 = !DILocation(line: 618, column: 5, scope: !1581)
!1594 = !DILocation(line: 618, column: 19, scope: !1581)
!1595 = !DILocation(line: 618, column: 22, scope: !1581)
!1596 = !DILocation(line: 621, column: 13, scope: !1581)
!1597 = !DILocation(line: 621, column: 5, scope: !1581)
!1598 = !DILocation(line: 625, column: 10, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 621, column: 21)
!1600 = !DILocation(line: 624, column: 20, scope: !1599)
!1601 = !DILocation(line: 626, column: 6, scope: !1599)
!1602 = !DILocation(line: 626, column: 20, scope: !1599)
!1603 = !DILocation(line: 626, column: 24, scope: !1599)
!1604 = !DILocation(line: 627, column: 6, scope: !1599)
!1605 = !DILocation(line: 632, column: 10, scope: !1599)
!1606 = !DILocation(line: 631, column: 20, scope: !1599)
!1607 = !DILocation(line: 633, column: 6, scope: !1599)
!1608 = !DILocation(line: 633, column: 20, scope: !1599)
!1609 = !DILocation(line: 633, column: 24, scope: !1599)
!1610 = !DILocation(line: 634, column: 6, scope: !1599)
!1611 = !DILocation(line: 639, column: 10, scope: !1599)
!1612 = !DILocation(line: 638, column: 20, scope: !1599)
!1613 = !DILocation(line: 640, column: 6, scope: !1599)
!1614 = !DILocation(line: 640, column: 20, scope: !1599)
!1615 = !DILocation(line: 640, column: 24, scope: !1599)
!1616 = !DILocation(line: 641, column: 6, scope: !1599)
!1617 = !DILocation(line: 645, column: 20, scope: !1599)
!1618 = !DILocation(line: 646, column: 6, scope: !1599)
!1619 = !DILocation(line: 652, column: 29, scope: !1581)
!1620 = !DILocation(line: 652, column: 5, scope: !1581)
!1621 = !DILocation(line: 652, column: 10, scope: !1581)
!1622 = !DILocation(line: 652, column: 16, scope: !1581)
!1623 = !DILocation(line: 652, column: 22, scope: !1581)
!1624 = !DILocation(line: 652, column: 27, scope: !1581)
!1625 = !DILocation(line: 653, column: 23, scope: !1581)
!1626 = !DILocation(line: 653, column: 37, scope: !1581)
!1627 = !DILocation(line: 653, column: 5, scope: !1581)
!1628 = !DILocation(line: 653, column: 10, scope: !1581)
!1629 = !DILocation(line: 653, column: 16, scope: !1581)
!1630 = !DILocation(line: 653, column: 21, scope: !1581)
!1631 = !DILocation(line: 654, column: 4, scope: !1581)
!1632 = !DILocation(line: 658, column: 24, scope: !1563)
!1633 = !DILocation(line: 658, column: 4, scope: !1563)
!1634 = !DILocation(line: 658, column: 18, scope: !1563)
!1635 = !DILocation(line: 658, column: 22, scope: !1563)
!1636 = !DILocation(line: 659, column: 3, scope: !1563)
!1637 = !DILocation(line: 660, column: 48, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 659, column: 10)
!1639 = !DILocation(line: 660, column: 10, scope: !1638)
!1640 = !DILocation(line: 660, column: 8, scope: !1638)
!1641 = !DILocation(line: 661, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 661, column: 8)
!1643 = !DILocation(line: 661, column: 8, scope: !1638)
!1644 = !DILocation(line: 662, column: 21, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 661, column: 14)
!1646 = !DILocation(line: 662, column: 5, scope: !1645)
!1647 = !DILocation(line: 663, column: 5, scope: !1645)
!1648 = !DILocation(line: 669, column: 36, scope: !1638)
!1649 = !DILocation(line: 669, column: 8, scope: !1638)
!1650 = !DILocation(line: 668, column: 4, scope: !1638)
!1651 = !DILocation(line: 668, column: 9, scope: !1638)
!1652 = !DILocation(line: 668, column: 16, scope: !1638)
!1653 = !DILocation(line: 668, column: 22, scope: !1638)
!1654 = !DILocation(line: 668, column: 27, scope: !1638)
!1655 = !DILocation(line: 674, column: 22, scope: !1487)
!1656 = !DILocation(line: 674, column: 29, scope: !1487)
!1657 = !DILocation(line: 674, column: 3, scope: !1487)
!1658 = !DILocation(line: 675, column: 3, scope: !1487)
!1659 = !DILocation(line: 680, column: 3, scope: !1487)
!1660 = !DILocation(line: 683, column: 2, scope: !1420)
!1661 = !DILocation(line: 684, column: 1, scope: !1420)
