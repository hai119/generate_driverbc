; ModuleID = '../bcout/drivers/acpi/acpica/dswscope.llvm.bc'
source_filename = "drivers/acpi/acpica/dswscope.c"
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
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_scope_state = type { i8*, i8, i8, i16, i16, %struct.acpi_namespace_node* }
%struct.acpi_common_state = type { i8*, i8, i8, i16, i16 }

@_acpi_module_name = internal constant [9 x i8] c"dswscope\00", align 1, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"Null scope parameter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid object type: 0x%X\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ds_scope_stack_clear(%struct.acpi_walk_state* %walk_state) #0 !dbg !27 {
entry:
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %scope_info = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope_info, metadata !794, metadata !DIExpression()), !dbg !795
  br label %while.cond, !dbg !796

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !797
  %scope_info1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 46, !dbg !798
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info1, align 8, !dbg !798
  %tobool = icmp ne %union.acpi_generic_state* %1, null, !dbg !796
  br i1 %tobool, label %while.body, label %while.end, !dbg !796

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !799
  %scope_info2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 46, !dbg !801
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info2, align 8, !dbg !801
  store %union.acpi_generic_state* %3, %union.acpi_generic_state** %scope_info, align 8, !dbg !802
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !803
  %scope = bitcast %union.acpi_generic_state* %4 to %struct.acpi_scope_state*, !dbg !804
  %next = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 0, !dbg !805
  %5 = load i8*, i8** %next, align 8, !dbg !805
  %6 = bitcast i8* %5 to %union.acpi_generic_state*, !dbg !803
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !806
  %scope_info3 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 46, !dbg !807
  store %union.acpi_generic_state* %6, %union.acpi_generic_state** %scope_info3, align 8, !dbg !808
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !809
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %8) #3, !dbg !810
  br label %while.cond, !dbg !796, !llvm.loop !811

while.end:                                        ; preds = %while.cond
  ret void, !dbg !813
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %node, i32 %type, %struct.acpi_walk_state* %walk_state) #0 !dbg !814 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %type.addr = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %scope_info = alloca %union.acpi_generic_state*, align 8
  %old_scope_info = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !818, metadata !DIExpression()), !dbg !819
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !820, metadata !DIExpression()), !dbg !821
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope_info, metadata !824, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %old_scope_info, metadata !826, metadata !DIExpression()), !dbg !827
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !828
  %tobool = icmp ne %struct.acpi_namespace_node* %0, null, !dbg !828
  br i1 %tobool, label %if.end, label %if.then, !dbg !830

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #3, !dbg !831
  store i32 4097, i32* %retval, align 4, !dbg !833
  br label %return, !dbg !833

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !834
  %call = call zeroext i8 @acpi_ut_valid_object_type(i32 %1) #3, !dbg !836
  %tobool1 = icmp ne i8 %call, 0, !dbg !836
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !837

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %type.addr, align 4, !dbg !838
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %2) #3, !dbg !838
  br label %if.end3, !dbg !840

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call %union.acpi_generic_state* @acpi_ut_create_generic_state() #3, !dbg !841
  store %union.acpi_generic_state* %call4, %union.acpi_generic_state** %scope_info, align 8, !dbg !842
  %3 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !843
  %tobool5 = icmp ne %union.acpi_generic_state* %3, null, !dbg !843
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !845

if.then6:                                         ; preds = %if.end3
  store i32 4, i32* %retval, align 4, !dbg !846
  br label %return, !dbg !846

if.end7:                                          ; preds = %if.end3
  %4 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !848
  %common = bitcast %union.acpi_generic_state* %4 to %struct.acpi_common_state*, !dbg !849
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common, i32 0, i32 1, !dbg !850
  store i8 8, i8* %descriptor_type, align 8, !dbg !851
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !852
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !853
  %scope = bitcast %union.acpi_generic_state* %6 to %struct.acpi_scope_state*, !dbg !854
  %node8 = getelementptr inbounds %struct.acpi_scope_state, %struct.acpi_scope_state* %scope, i32 0, i32 5, !dbg !855
  store %struct.acpi_namespace_node* %5, %struct.acpi_namespace_node** %node8, align 8, !dbg !856
  %7 = load i32, i32* %type.addr, align 4, !dbg !857
  %conv = trunc i32 %7 to i16, !dbg !858
  %8 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !859
  %common9 = bitcast %union.acpi_generic_state* %8 to %struct.acpi_common_state*, !dbg !860
  %value = getelementptr inbounds %struct.acpi_common_state, %struct.acpi_common_state* %common9, i32 0, i32 3, !dbg !861
  store i16 %conv, i16* %value, align 2, !dbg !862
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !863
  %scope_depth = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 11, !dbg !864
  %10 = load i8, i8* %scope_depth, align 1, !dbg !865
  %inc = add i8 %10, 1, !dbg !865
  store i8 %inc, i8* %scope_depth, align 1, !dbg !865
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !866
  %scope_info10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 46, !dbg !867
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info10, align 8, !dbg !867
  store %union.acpi_generic_state* %12, %union.acpi_generic_state** %old_scope_info, align 8, !dbg !868
  %13 = load %union.acpi_generic_state*, %union.acpi_generic_state** %old_scope_info, align 8, !dbg !869
  %tobool11 = icmp ne %union.acpi_generic_state* %13, null, !dbg !869
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !871

if.then12:                                        ; preds = %if.end7
  br label %if.end13, !dbg !872

if.else:                                          ; preds = %if.end7
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !874
  %scope_info14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 46, !dbg !875
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !876
  call void @acpi_ut_push_generic_state(%union.acpi_generic_state** %scope_info14, %union.acpi_generic_state* %15) #3, !dbg !877
  store i32 0, i32* %retval, align 4, !dbg !878
  br label %return, !dbg !878

return:                                           ; preds = %if.end13, %if.then6, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !879
  ret i32 %16, !dbg !879
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @acpi_ut_valid_object_type(i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state() #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state* %walk_state) #0 !dbg !880 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %scope_info = alloca %union.acpi_generic_state*, align 8
  %new_scope_info = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %scope_info, metadata !883, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.declare(metadata %union.acpi_generic_state** %new_scope_info, metadata !885, metadata !DIExpression()), !dbg !886
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !887
  %scope_info1 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 46, !dbg !888
  %call = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %scope_info1) #3, !dbg !889
  store %union.acpi_generic_state* %call, %union.acpi_generic_state** %scope_info, align 8, !dbg !890
  %1 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !891
  %tobool = icmp ne %union.acpi_generic_state* %1, null, !dbg !891
  br i1 %tobool, label %if.end, label %if.then, !dbg !893

if.then:                                          ; preds = %entry
  store i32 13, i32* %retval, align 4, !dbg !894
  br label %return, !dbg !894

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !896
  %scope_depth = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 11, !dbg !897
  %3 = load i8, i8* %scope_depth, align 1, !dbg !898
  %dec = add i8 %3, -1, !dbg !898
  store i8 %dec, i8* %scope_depth, align 1, !dbg !898
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !899
  %scope_info2 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %4, i32 0, i32 46, !dbg !900
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info2, align 8, !dbg !900
  store %union.acpi_generic_state* %5, %union.acpi_generic_state** %new_scope_info, align 8, !dbg !901
  %6 = load %union.acpi_generic_state*, %union.acpi_generic_state** %new_scope_info, align 8, !dbg !902
  %tobool3 = icmp ne %union.acpi_generic_state* %6, null, !dbg !902
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !904

if.then4:                                         ; preds = %if.end
  br label %if.end5, !dbg !905

if.else:                                          ; preds = %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %7 = load %union.acpi_generic_state*, %union.acpi_generic_state** %scope_info, align 8, !dbg !907
  call void @acpi_ut_delete_generic_state(%union.acpi_generic_state* %7) #3, !dbg !908
  store i32 0, i32* %retval, align 4, !dbg !909
  br label %return, !dbg !909

return:                                           ; preds = %if.end5, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !910
  ret i32 %8, !dbg !910
}

; Function Attrs: noredzone
declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswscope.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13}
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
!16 = !{!0}
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, elements: !20)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!27 = distinct !DISubprogram(name: "acpi_ds_scope_stack_clear", scope: !3, file: !3, line: 29, type: !28, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !32, line: 37, size: 9024, elements: !33)
!32 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !741, !742, !743, !744, !745, !749, !751, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !776, !777, !778, !779, !780, !781, !782, !783, !784, !790}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !32, line: 38, baseType: !30, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !31, file: !32, line: 39, baseType: !36, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !38)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !31, file: !32, line: 40, baseType: !36, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !31, file: !32, line: 41, baseType: !13, size: 16, offset: 80)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !31, file: !32, line: 42, baseType: !36, size: 8, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !31, file: !32, line: 43, baseType: !36, size: 8, offset: 104)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !31, file: !32, line: 44, baseType: !36, size: 8, offset: 112)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !31, file: !32, line: 45, baseType: !45, size: 16, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !13)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !31, file: !32, line: 46, baseType: !36, size: 8, offset: 144)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !31, file: !32, line: 47, baseType: !36, size: 8, offset: 152)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !31, file: !32, line: 48, baseType: !36, size: 8, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !31, file: !32, line: 49, baseType: !36, size: 8, offset: 168)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !31, file: !32, line: 50, baseType: !36, size: 8, offset: 176)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !31, file: !32, line: 51, baseType: !36, size: 8, offset: 184)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !31, file: !32, line: 52, baseType: !36, size: 8, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !31, file: !32, line: 53, baseType: !36, size: 8, offset: 200)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !31, file: !32, line: 54, baseType: !55, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !31, file: !32, line: 55, baseType: !8, size: 32, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !31, file: !32, line: 56, baseType: !8, size: 32, offset: 352)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !31, file: !32, line: 57, baseType: !8, size: 32, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !31, file: !32, line: 58, baseType: !8, size: 32, offset: 416)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !31, file: !32, line: 60, baseType: !61, size: 640, offset: 448)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !62, line: 893, size: 640, elements: !63)
!62 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67, !68, !69, !638, !639, !739, !740}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !61, file: !62, line: 894, baseType: !55, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !61, file: !62, line: 895, baseType: !55, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !61, file: !62, line: 896, baseType: !55, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !61, file: !62, line: 897, baseType: !55, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !61, file: !62, line: 898, baseType: !55, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !61, file: !62, line: 899, baseType: !70, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !62, line: 875, size: 1600, elements: !72)
!72 = !{!73, !581, !597}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !71, file: !62, line: 876, baseType: !74, size: 448)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !62, line: 828, size: 448, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !571, !580}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !62, line: 829, baseType: !70, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !62, line: 829, baseType: !36, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !62, line: 829, baseType: !36, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !74, file: !62, line: 829, baseType: !13, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !74, file: !62, line: 829, baseType: !55, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !74, file: !62, line: 829, baseType: !70, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !74, file: !62, line: 829, baseType: !83, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !62, line: 133, size: 384, elements: !85)
!85 = !{!86, !555, !556, !557, !558, !567, !568, !569, !570}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !84, file: !62, line: 134, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !89, line: 367, size: 576, elements: !90)
!89 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !99, !115, !126, !139, !153, !163, !189, !218, !233, !246, !325, !337, !351, !361, !379, !401, !420, !439, !458, !475, !501, !518, !531, !545, !554}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !88, file: !89, line: 368, baseType: !92, size: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !89, line: 73, size: 128, elements: !93)
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !89, line: 74, baseType: !87, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !89, line: 74, baseType: !36, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !89, line: 74, baseType: !36, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !89, line: 74, baseType: !13, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !89, line: 74, baseType: !36, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !88, file: !89, line: 369, baseType: !100, size: 192)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !89, line: 76, size: 192, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !111}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !100, file: !89, line: 77, baseType: !87, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !100, file: !89, line: 77, baseType: !36, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !89, line: 77, baseType: !36, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !100, file: !89, line: 77, baseType: !13, size: 16, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !89, line: 77, baseType: !36, size: 8, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !100, file: !89, line: 77, baseType: !108, size: 24, offset: 104)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 3)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !89, line: 78, baseType: !112, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !114)
!114 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !88, file: !89, line: 370, baseType: !116, size: 256)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !89, line: 93, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !125}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !89, line: 94, baseType: !87, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !89, line: 94, baseType: !36, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !89, line: 94, baseType: !36, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !89, line: 94, baseType: !13, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !89, line: 94, baseType: !36, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !116, file: !89, line: 94, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !116, file: !89, line: 94, baseType: !8, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !88, file: !89, line: 371, baseType: !127, size: 384)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !89, line: 97, size: 384, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !89, line: 98, baseType: !87, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !89, line: 98, baseType: !36, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !89, line: 98, baseType: !36, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !89, line: 98, baseType: !13, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !89, line: 98, baseType: !36, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !127, file: !89, line: 98, baseType: !55, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !127, file: !89, line: 98, baseType: !8, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !89, line: 99, baseType: !8, size: 32, offset: 224)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !89, line: 100, baseType: !55, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !89, line: 101, baseType: !83, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !88, file: !89, line: 372, baseType: !140, size: 384)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !89, line: 104, size: 384, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !150, !151, !152}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !89, line: 105, baseType: !87, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !89, line: 105, baseType: !36, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !89, line: 105, baseType: !36, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !89, line: 105, baseType: !13, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !89, line: 105, baseType: !36, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !89, line: 105, baseType: !83, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !140, file: !89, line: 106, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !140, file: !89, line: 107, baseType: !55, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !140, file: !89, line: 108, baseType: !8, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !140, file: !89, line: 109, baseType: !8, size: 32, offset: 352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !88, file: !89, line: 373, baseType: !154, size: 192)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !89, line: 118, size: 192, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !154, file: !89, line: 119, baseType: !87, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !154, file: !89, line: 119, baseType: !36, size: 8, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !89, line: 119, baseType: !36, size: 8, offset: 72)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !154, file: !89, line: 119, baseType: !13, size: 16, offset: 80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !154, file: !89, line: 119, baseType: !36, size: 8, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !154, file: !89, line: 119, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !88, file: !89, line: 374, baseType: !164, size: 448)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !89, line: 143, size: 448, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !186, !187, !188}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !164, file: !89, line: 144, baseType: !87, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !89, line: 144, baseType: !36, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !89, line: 144, baseType: !36, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !164, file: !89, line: 144, baseType: !13, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !89, line: 144, baseType: !36, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !164, file: !89, line: 144, baseType: !36, size: 8, offset: 104)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !164, file: !89, line: 145, baseType: !36, size: 8, offset: 112)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !164, file: !89, line: 146, baseType: !36, size: 8, offset: 120)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !164, file: !89, line: 147, baseType: !87, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !89, line: 148, baseType: !87, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !164, file: !89, line: 149, baseType: !55, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !164, file: !89, line: 153, baseType: !178, size: 64, offset: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !89, line: 150, size: 64, elements: !179)
!179 = !{!180, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !178, file: !89, line: 151, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !62, line: 248, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!6, !30}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !178, file: !89, line: 152, baseType: !87, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !164, file: !89, line: 155, baseType: !8, size: 32, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !164, file: !89, line: 156, baseType: !45, size: 16, offset: 416)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !164, file: !89, line: 157, baseType: !36, size: 8, offset: 432)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !88, file: !89, line: 375, baseType: !190, size: 576)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !89, line: 122, size: 576, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !214, !215, !216, !217}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !190, file: !89, line: 123, baseType: !87, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !89, line: 123, baseType: !36, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !89, line: 123, baseType: !36, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !190, file: !89, line: 123, baseType: !13, size: 16, offset: 80)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !89, line: 123, baseType: !36, size: 8, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !190, file: !89, line: 123, baseType: !36, size: 8, offset: 104)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !190, file: !89, line: 124, baseType: !13, size: 16, offset: 112)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !190, file: !89, line: 125, baseType: !162, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !190, file: !89, line: 126, baseType: !112, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !190, file: !89, line: 127, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !62, line: 620, size: 320, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !62, line: 621, baseType: !162, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !62, line: 621, baseType: !36, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !62, line: 621, baseType: !36, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !62, line: 621, baseType: !13, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !203, file: !62, line: 621, baseType: !13, size: 16, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !203, file: !62, line: 621, baseType: !36, size: 8, offset: 112)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !203, file: !62, line: 622, baseType: !30, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !203, file: !62, line: 623, baseType: !87, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !203, file: !62, line: 624, baseType: !112, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !89, line: 128, baseType: !87, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !89, line: 129, baseType: !87, size: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !89, line: 130, baseType: !83, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !190, file: !89, line: 131, baseType: !36, size: 8, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !88, file: !89, line: 376, baseType: !219, size: 448)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !89, line: 134, size: 448, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !232}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !219, file: !89, line: 135, baseType: !87, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !89, line: 135, baseType: !36, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !219, file: !89, line: 135, baseType: !36, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !219, file: !89, line: 135, baseType: !13, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !89, line: 135, baseType: !36, size: 8, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !219, file: !89, line: 135, baseType: !36, size: 8, offset: 104)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !89, line: 136, baseType: !83, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !219, file: !89, line: 137, baseType: !87, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !89, line: 138, baseType: !87, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !219, file: !89, line: 139, baseType: !231, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !219, file: !89, line: 140, baseType: !8, size: 32, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !88, file: !89, line: 377, baseType: !234, size: 320)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !89, line: 184, size: 320, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !245}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !234, file: !89, line: 185, baseType: !87, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !89, line: 185, baseType: !36, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !89, line: 185, baseType: !36, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !234, file: !89, line: 185, baseType: !13, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !89, line: 185, baseType: !36, size: 8, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !234, file: !89, line: 185, baseType: !242, size: 128, offset: 128)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !234, file: !89, line: 185, baseType: !87, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !88, file: !89, line: 378, baseType: !247, size: 384)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !89, line: 187, size: 384, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !247, file: !89, line: 188, baseType: !87, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !89, line: 188, baseType: !36, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !89, line: 188, baseType: !36, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !247, file: !89, line: 188, baseType: !13, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !89, line: 188, baseType: !36, size: 8, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !247, file: !89, line: 189, baseType: !242, size: 128, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !247, file: !89, line: 189, baseType: !87, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !247, file: !89, line: 189, baseType: !257, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !62, line: 480, size: 576, elements: !259)
!259 = !{!260, !261, !262, !263, !271, !286, !319, !320, !321, !322, !323, !324}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !258, file: !62, line: 481, baseType: !83, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !258, file: !62, line: 482, baseType: !257, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !62, line: 483, baseType: !257, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !258, file: !62, line: 484, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !62, line: 497, size: 256, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !265, file: !62, line: 498, baseType: !264, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !62, line: 499, baseType: !264, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !265, file: !62, line: 500, baseType: !257, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !265, file: !62, line: 501, baseType: !8, size: 32, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !258, file: !62, line: 485, baseType: !272, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !62, line: 466, size: 320, elements: !274)
!274 = !{!275, !280, !281, !282, !283, !284, !285}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !273, file: !62, line: 467, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !62, line: 459, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !276, file: !62, line: 460, baseType: !36, size: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !276, file: !62, line: 461, baseType: !112, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !273, file: !62, line: 468, baseType: !276, size: 128, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !273, file: !62, line: 469, baseType: !13, size: 16, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !273, file: !62, line: 470, baseType: !36, size: 8, offset: 272)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !273, file: !62, line: 471, baseType: !36, size: 8, offset: 280)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !273, file: !62, line: 472, baseType: !36, size: 8, offset: 288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !273, file: !62, line: 473, baseType: !36, size: 8, offset: 296)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !258, file: !62, line: 486, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !62, line: 448, size: 192, elements: !289)
!289 = !{!290, !314, !315, !316, !317, !318}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !288, file: !62, line: 449, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !62, line: 438, size: 64, elements: !292)
!292 = !{!293, !294, !308}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !291, file: !62, line: 439, baseType: !83, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !291, file: !62, line: 440, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !62, line: 419, size: 256, elements: !297)
!297 = !{!298, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !296, file: !62, line: 420, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!8, !303, !8, !162}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !162)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !296, file: !62, line: 421, baseType: !162, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !296, file: !62, line: 422, baseType: !83, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !296, file: !62, line: 423, baseType: !36, size: 8, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !296, file: !62, line: 424, baseType: !36, size: 8, offset: 200)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !291, file: !62, line: 441, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !62, line: 429, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !310, file: !62, line: 430, baseType: !83, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !62, line: 431, baseType: !309, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !288, file: !62, line: 450, baseType: !272, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !62, line: 451, baseType: !36, size: 8, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !288, file: !62, line: 452, baseType: !36, size: 8, offset: 136)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !288, file: !62, line: 453, baseType: !36, size: 8, offset: 144)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !288, file: !62, line: 454, baseType: !36, size: 8, offset: 152)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !258, file: !62, line: 487, baseType: !112, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !258, file: !62, line: 488, baseType: !8, size: 32, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !258, file: !62, line: 489, baseType: !13, size: 16, offset: 480)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !258, file: !62, line: 490, baseType: !13, size: 16, offset: 496)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !258, file: !62, line: 491, baseType: !36, size: 8, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !258, file: !62, line: 492, baseType: !36, size: 8, offset: 520)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !88, file: !89, line: 379, baseType: !326, size: 384)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !89, line: 192, size: 384, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !326, file: !89, line: 193, baseType: !87, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !89, line: 193, baseType: !36, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !326, file: !89, line: 193, baseType: !36, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !326, file: !89, line: 193, baseType: !13, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !89, line: 193, baseType: !36, size: 8, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !326, file: !89, line: 193, baseType: !242, size: 128, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !326, file: !89, line: 193, baseType: !87, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !326, file: !89, line: 193, baseType: !8, size: 32, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !326, file: !89, line: 194, baseType: !8, size: 32, offset: 352)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !88, file: !89, line: 380, baseType: !338, size: 384)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !89, line: 197, size: 384, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !338, file: !89, line: 198, baseType: !87, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !89, line: 198, baseType: !36, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !89, line: 198, baseType: !36, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !338, file: !89, line: 198, baseType: !13, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !89, line: 198, baseType: !36, size: 8, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !338, file: !89, line: 200, baseType: !36, size: 8, offset: 104)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !338, file: !89, line: 201, baseType: !36, size: 8, offset: 112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !338, file: !89, line: 202, baseType: !242, size: 128, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !338, file: !89, line: 202, baseType: !87, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !338, file: !89, line: 202, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !88, file: !89, line: 381, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !89, line: 205, size: 320, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !352, file: !89, line: 206, baseType: !87, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !89, line: 206, baseType: !36, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !89, line: 206, baseType: !36, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !352, file: !89, line: 206, baseType: !13, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !89, line: 206, baseType: !36, size: 8, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !352, file: !89, line: 206, baseType: !242, size: 128, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !352, file: !89, line: 206, baseType: !87, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !88, file: !89, line: 382, baseType: !362, size: 384)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !89, line: 233, size: 384, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !362, file: !89, line: 234, baseType: !87, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !362, file: !89, line: 234, baseType: !13, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 104)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 120)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !362, file: !89, line: 234, baseType: !83, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !362, file: !89, line: 234, baseType: !8, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !362, file: !89, line: 234, baseType: !8, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !89, line: 234, baseType: !8, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 288)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !362, file: !89, line: 234, baseType: !36, size: 8, offset: 296)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !362, file: !89, line: 234, baseType: !87, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !88, file: !89, line: 383, baseType: !380, size: 576)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !89, line: 237, size: 576, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !380, file: !89, line: 238, baseType: !87, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !380, file: !89, line: 238, baseType: !13, size: 16, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 104)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 112)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 120)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !380, file: !89, line: 238, baseType: !83, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !380, file: !89, line: 238, baseType: !8, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !380, file: !89, line: 238, baseType: !8, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !380, file: !89, line: 238, baseType: !8, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 288)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !380, file: !89, line: 238, baseType: !36, size: 8, offset: 296)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !380, file: !89, line: 238, baseType: !13, size: 16, offset: 304)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !380, file: !89, line: 239, baseType: !87, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !380, file: !89, line: 240, baseType: !55, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !380, file: !89, line: 241, baseType: !13, size: 16, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !380, file: !89, line: 242, baseType: !55, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !88, file: !89, line: 384, baseType: !402, size: 384)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !89, line: 262, size: 384, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !402, file: !89, line: 263, baseType: !87, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 72)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !402, file: !89, line: 263, baseType: !13, size: 16, offset: 80)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 104)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 112)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 120)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !402, file: !89, line: 263, baseType: !83, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !402, file: !89, line: 263, baseType: !8, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !402, file: !89, line: 263, baseType: !8, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !402, file: !89, line: 263, baseType: !8, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 288)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 296)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !402, file: !89, line: 263, baseType: !36, size: 8, offset: 304)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !402, file: !89, line: 264, baseType: !87, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !88, file: !89, line: 385, baseType: !421, size: 448)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !89, line: 245, size: 448, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !421, file: !89, line: 246, baseType: !87, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 72)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !421, file: !89, line: 246, baseType: !13, size: 16, offset: 80)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 104)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 120)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !421, file: !89, line: 246, baseType: !83, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !421, file: !89, line: 246, baseType: !8, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !421, file: !89, line: 246, baseType: !8, size: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !421, file: !89, line: 246, baseType: !8, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !421, file: !89, line: 246, baseType: !36, size: 8, offset: 296)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !421, file: !89, line: 246, baseType: !87, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !421, file: !89, line: 247, baseType: !87, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !88, file: !89, line: 386, baseType: !440, size: 448)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !89, line: 250, size: 448, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !89, line: 251, baseType: !87, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !89, line: 251, baseType: !13, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 120)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !89, line: 251, baseType: !83, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !440, file: !89, line: 251, baseType: !8, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !440, file: !89, line: 251, baseType: !8, size: 32, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !440, file: !89, line: 251, baseType: !8, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !440, file: !89, line: 251, baseType: !36, size: 8, offset: 296)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !440, file: !89, line: 256, baseType: !87, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !440, file: !89, line: 257, baseType: !87, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !88, file: !89, line: 387, baseType: !459, size: 512)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !89, line: 273, size: 512, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !473, !474}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !459, file: !89, line: 274, baseType: !87, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !459, file: !89, line: 274, baseType: !36, size: 8, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !89, line: 274, baseType: !36, size: 8, offset: 72)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !459, file: !89, line: 274, baseType: !13, size: 16, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !89, line: 274, baseType: !36, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !89, line: 274, baseType: !83, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !459, file: !89, line: 275, baseType: !8, size: 32, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !459, file: !89, line: 276, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !303, !8, !162}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !459, file: !89, line: 277, baseType: !162, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !459, file: !89, line: 278, baseType: !242, size: 128, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !88, file: !89, line: 388, baseType: !476, size: 512)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !89, line: 281, size: 512, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !491, !492, !493, !499, !500}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !89, line: 282, baseType: !87, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !89, line: 282, baseType: !36, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !89, line: 282, baseType: !36, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !89, line: 282, baseType: !13, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !89, line: 282, baseType: !36, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !476, file: !89, line: 282, baseType: !36, size: 8, offset: 104)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !476, file: !89, line: 283, baseType: !36, size: 8, offset: 112)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !89, line: 284, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!6, !8, !231, !8, !490, !162, !162}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !476, file: !89, line: 285, baseType: !83, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !476, file: !89, line: 286, baseType: !162, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !476, file: !89, line: 287, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!6, !303, !8, !162, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !476, file: !89, line: 288, baseType: !87, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !89, line: 289, baseType: !87, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !88, file: !89, line: 389, baseType: !502, size: 512)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !89, line: 307, size: 512, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !502, file: !89, line: 308, baseType: !87, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !502, file: !89, line: 308, baseType: !36, size: 8, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !89, line: 308, baseType: !36, size: 8, offset: 72)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !502, file: !89, line: 308, baseType: !13, size: 16, offset: 80)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !89, line: 308, baseType: !36, size: 8, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !502, file: !89, line: 308, baseType: !36, size: 8, offset: 104)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !502, file: !89, line: 309, baseType: !36, size: 8, offset: 112)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !502, file: !89, line: 310, baseType: !36, size: 8, offset: 120)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !502, file: !89, line: 311, baseType: !162, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !89, line: 312, baseType: !83, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !502, file: !89, line: 313, baseType: !149, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !502, file: !89, line: 314, baseType: !55, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !502, file: !89, line: 315, baseType: !55, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !502, file: !89, line: 316, baseType: !8, size: 32, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !88, file: !89, line: 390, baseType: !519, size: 448)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !89, line: 340, size: 448, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !89, line: 341, baseType: !87, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !89, line: 341, baseType: !36, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !89, line: 341, baseType: !36, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !89, line: 341, baseType: !13, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !89, line: 341, baseType: !36, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !519, file: !89, line: 341, baseType: !83, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !519, file: !89, line: 342, baseType: !83, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !519, file: !89, line: 343, baseType: !162, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !519, file: !89, line: 344, baseType: !55, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !519, file: !89, line: 345, baseType: !8, size: 32, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !89, line: 391, baseType: !532, size: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !89, line: 350, size: 256, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !544}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !532, file: !89, line: 351, baseType: !87, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !532, file: !89, line: 351, baseType: !36, size: 8, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !532, file: !89, line: 351, baseType: !36, size: 8, offset: 72)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !532, file: !89, line: 351, baseType: !13, size: 16, offset: 80)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !89, line: 351, baseType: !36, size: 8, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !532, file: !89, line: 351, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !303, !162}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !532, file: !89, line: 352, baseType: !162, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !88, file: !89, line: 392, baseType: !546, size: 192)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !89, line: 357, size: 192, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !546, file: !89, line: 358, baseType: !87, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !546, file: !89, line: 358, baseType: !36, size: 8, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !89, line: 358, baseType: !36, size: 8, offset: 72)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !546, file: !89, line: 358, baseType: !13, size: 16, offset: 80)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !89, line: 358, baseType: !36, size: 8, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !546, file: !89, line: 358, baseType: !87, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !89, line: 399, baseType: !84, size: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !62, line: 135, baseType: !36, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !62, line: 136, baseType: !36, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !62, line: 137, baseType: !13, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !62, line: 138, baseType: !559, size: 32, offset: 96)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !560, line: 327, size: 32, elements: !561)
!560 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !559, file: !560, line: 328, baseType: !8, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !559, file: !560, line: 329, baseType: !564, size: 32)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 4)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !62, line: 139, baseType: !83, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !84, file: !62, line: 140, baseType: !83, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !84, file: !62, line: 141, baseType: !83, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !84, file: !62, line: 142, baseType: !45, size: 16, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !74, file: !62, line: 829, baseType: !572, size: 64, offset: 320)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !62, line: 716, size: 64, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !572, file: !62, line: 717, baseType: !112, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !62, line: 718, baseType: !8, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !572, file: !62, line: 719, baseType: !124, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !572, file: !62, line: 720, baseType: !55, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !62, line: 721, baseType: !124, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !572, file: !62, line: 722, baseType: !70, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !74, file: !62, line: 829, baseType: !36, size: 8, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !71, file: !62, line: 877, baseType: !582, size: 640)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !62, line: 835, size: 640, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !582, file: !62, line: 836, baseType: !70, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !62, line: 836, baseType: !36, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !62, line: 836, baseType: !36, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !582, file: !62, line: 836, baseType: !13, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !582, file: !62, line: 836, baseType: !55, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !582, file: !62, line: 836, baseType: !70, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !582, file: !62, line: 836, baseType: !83, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !582, file: !62, line: 836, baseType: !572, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !582, file: !62, line: 836, baseType: !36, size: 8, offset: 384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !582, file: !62, line: 836, baseType: !124, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !582, file: !62, line: 837, baseType: !55, size: 64, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !582, file: !62, line: 838, baseType: !8, size: 32, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !582, file: !62, line: 839, baseType: !8, size: 32, offset: 608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !71, file: !62, line: 878, baseType: !598, size: 1600)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !62, line: 846, size: 1600, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !598, file: !62, line: 847, baseType: !70, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !62, line: 847, baseType: !36, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !62, line: 847, baseType: !36, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !598, file: !62, line: 847, baseType: !13, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !598, file: !62, line: 847, baseType: !55, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !62, line: 847, baseType: !70, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !598, file: !62, line: 847, baseType: !83, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !598, file: !62, line: 847, baseType: !572, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !598, file: !62, line: 847, baseType: !36, size: 8, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !598, file: !62, line: 847, baseType: !70, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !598, file: !62, line: 848, baseType: !70, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !598, file: !62, line: 849, baseType: !124, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !598, file: !62, line: 850, baseType: !36, size: 8, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !598, file: !62, line: 851, baseType: !124, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !598, file: !62, line: 852, baseType: !124, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !598, file: !62, line: 853, baseType: !124, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !598, file: !62, line: 854, baseType: !564, size: 32, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !598, file: !62, line: 855, baseType: !8, size: 32, offset: 928)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !598, file: !62, line: 856, baseType: !8, size: 32, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !598, file: !62, line: 857, baseType: !8, size: 32, offset: 992)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !598, file: !62, line: 858, baseType: !8, size: 32, offset: 1024)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !598, file: !62, line: 859, baseType: !8, size: 32, offset: 1056)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !598, file: !62, line: 860, baseType: !8, size: 32, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !598, file: !62, line: 861, baseType: !8, size: 32, offset: 1120)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !598, file: !62, line: 862, baseType: !8, size: 32, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !598, file: !62, line: 863, baseType: !8, size: 32, offset: 1184)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !598, file: !62, line: 864, baseType: !8, size: 32, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !598, file: !62, line: 865, baseType: !8, size: 32, offset: 1248)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !598, file: !62, line: 866, baseType: !8, size: 32, offset: 1280)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !598, file: !62, line: 867, baseType: !8, size: 32, offset: 1312)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !598, file: !62, line: 868, baseType: !13, size: 16, offset: 1344)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !598, file: !62, line: 869, baseType: !36, size: 8, offset: 1360)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !598, file: !62, line: 870, baseType: !36, size: 8, offset: 1368)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !598, file: !62, line: 871, baseType: !36, size: 8, offset: 1376)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !598, file: !62, line: 872, baseType: !635, size: 160, offset: 1384)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 20)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !61, file: !62, line: 900, baseType: !83, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !61, file: !62, line: 901, baseType: !640, size: 64, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !62, line: 663, size: 640, elements: !642)
!642 = !{!643, !651, !664, !673, !682, !695, !709, !710, !722}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !641, file: !62, line: 664, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !62, line: 567, size: 128, elements: !645)
!645 = !{!646, !647, !648, !649, !650}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !62, line: 568, baseType: !162, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !62, line: 568, baseType: !36, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !62, line: 568, baseType: !36, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !644, file: !62, line: 568, baseType: !13, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !644, file: !62, line: 568, baseType: !13, size: 16, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !641, file: !62, line: 665, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !62, line: 593, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !652, file: !62, line: 594, baseType: !162, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !62, line: 594, baseType: !36, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !62, line: 594, baseType: !36, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !62, line: 594, baseType: !13, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !652, file: !62, line: 594, baseType: !13, size: 16, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !652, file: !62, line: 594, baseType: !13, size: 16, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !652, file: !62, line: 595, baseType: !70, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !652, file: !62, line: 596, baseType: !55, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !652, file: !62, line: 597, baseType: !55, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !652, file: !62, line: 598, baseType: !112, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !641, file: !62, line: 666, baseType: !665, size: 192)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !62, line: 573, size: 192, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !665, file: !62, line: 574, baseType: !162, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !665, file: !62, line: 574, baseType: !36, size: 8, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !62, line: 574, baseType: !36, size: 8, offset: 72)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !665, file: !62, line: 574, baseType: !13, size: 16, offset: 80)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !665, file: !62, line: 574, baseType: !13, size: 16, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !665, file: !62, line: 574, baseType: !87, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !641, file: !62, line: 667, baseType: !674, size: 192)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !62, line: 604, size: 192, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !62, line: 605, baseType: !162, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !62, line: 605, baseType: !36, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !62, line: 605, baseType: !36, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !62, line: 605, baseType: !13, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !674, file: !62, line: 605, baseType: !13, size: 16, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !62, line: 605, baseType: !83, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !641, file: !62, line: 668, baseType: !683, size: 448)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !62, line: 608, size: 448, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !62, line: 609, baseType: !162, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !62, line: 609, baseType: !36, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !62, line: 609, baseType: !36, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !683, file: !62, line: 609, baseType: !13, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !683, file: !62, line: 609, baseType: !13, size: 16, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !683, file: !62, line: 609, baseType: !8, size: 32, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !683, file: !62, line: 610, baseType: !70, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !683, file: !62, line: 611, baseType: !55, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !683, file: !62, line: 612, baseType: !55, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !683, file: !62, line: 613, baseType: !8, size: 32, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !641, file: !62, line: 669, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !62, line: 580, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !62, line: 581, baseType: !162, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !62, line: 581, baseType: !36, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !62, line: 581, baseType: !36, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !62, line: 581, baseType: !13, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !696, file: !62, line: 581, baseType: !13, size: 16, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !696, file: !62, line: 581, baseType: !8, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !696, file: !62, line: 582, baseType: !87, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !696, file: !62, line: 583, baseType: !87, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !696, file: !62, line: 584, baseType: !30, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !696, file: !62, line: 585, baseType: !162, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !696, file: !62, line: 586, baseType: !8, size: 32, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !641, file: !62, line: 670, baseType: !203, size: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !641, file: !62, line: 671, baseType: !711, size: 640)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !62, line: 631, size: 640, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !62, line: 632, baseType: !162, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !62, line: 632, baseType: !36, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !62, line: 632, baseType: !36, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !711, file: !62, line: 632, baseType: !13, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !711, file: !62, line: 632, baseType: !13, size: 16, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !711, file: !62, line: 633, baseType: !719, size: 512, offset: 128)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 512, elements: !720)
!720 = !{!721}
!721 = !DISubrange(count: 8)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !641, file: !62, line: 672, baseType: !723, size: 320)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !62, line: 654, size: 320, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !62, line: 655, baseType: !162, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !62, line: 655, baseType: !36, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !62, line: 655, baseType: !36, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !62, line: 655, baseType: !13, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !723, file: !62, line: 655, baseType: !13, size: 16, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !723, file: !62, line: 655, baseType: !36, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !62, line: 656, baseType: !83, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !723, file: !62, line: 657, baseType: !87, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !723, file: !62, line: 658, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !62, line: 645, size: 128, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !735, file: !62, line: 646, baseType: !469, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !735, file: !62, line: 647, baseType: !162, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !61, file: !62, line: 902, baseType: !70, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !61, file: !62, line: 903, baseType: !8, size: 32, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !31, file: !32, line: 61, baseType: !8, size: 32, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !31, file: !32, line: 62, baseType: !8, size: 32, offset: 1120)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !31, file: !32, line: 63, baseType: !13, size: 16, offset: 1152)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !31, file: !32, line: 64, baseType: !36, size: 8, offset: 1168)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !31, file: !32, line: 66, baseType: !746, size: 2688, offset: 1216)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2688, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !31, file: !32, line: 67, baseType: !750, size: 3072, offset: 3904)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3072, elements: !720)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !31, file: !32, line: 68, baseType: !752, size: 576, offset: 6976)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 576, elements: !20)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !31, file: !32, line: 69, baseType: !149, size: 64, offset: 7552)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !31, file: !32, line: 71, baseType: !55, size: 64, offset: 7616)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !31, file: !32, line: 72, baseType: !149, size: 64, offset: 7680)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !31, file: !32, line: 73, baseType: !640, size: 64, offset: 7744)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !31, file: !32, line: 74, baseType: !83, size: 64, offset: 7808)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !31, file: !32, line: 75, baseType: !87, size: 64, offset: 7872)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !31, file: !32, line: 76, baseType: !83, size: 64, offset: 7936)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !31, file: !32, line: 77, baseType: !70, size: 64, offset: 8000)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !31, file: !32, line: 78, baseType: !87, size: 64, offset: 8064)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !31, file: !32, line: 79, baseType: !83, size: 64, offset: 8128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !31, file: !32, line: 80, baseType: !124, size: 64, offset: 8192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !31, file: !32, line: 81, baseType: !70, size: 64, offset: 8256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !31, file: !32, line: 82, baseType: !766, size: 64, offset: 8320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !62, line: 702, size: 128, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !768, file: !62, line: 706, baseType: !8, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !768, file: !62, line: 707, baseType: !8, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !62, line: 708, baseType: !13, size: 16, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !768, file: !62, line: 709, baseType: !36, size: 8, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !768, file: !62, line: 710, baseType: !36, size: 8, offset: 88)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !62, line: 711, baseType: !36, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !31, file: !32, line: 83, baseType: !70, size: 64, offset: 8384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !31, file: !32, line: 84, baseType: !87, size: 64, offset: 8448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !31, file: !32, line: 85, baseType: !640, size: 64, offset: 8512)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !31, file: !32, line: 86, baseType: !87, size: 64, offset: 8576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !31, file: !32, line: 87, baseType: !640, size: 64, offset: 8640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !31, file: !32, line: 88, baseType: !70, size: 64, offset: 8704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !31, file: !32, line: 89, baseType: !70, size: 64, offset: 8768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !31, file: !32, line: 90, baseType: !202, size: 64, offset: 8832)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !31, file: !32, line: 91, baseType: !785, size: 64, offset: 8896)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !62, line: 637, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!6, !30, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !31, file: !32, line: 92, baseType: !791, size: 64, offset: 8960)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !62, line: 641, baseType: !182)
!792 = !DILocalVariable(name: "walk_state", arg: 1, scope: !27, file: !3, line: 29, type: !30)
!793 = !DILocation(line: 29, column: 56, scope: !27)
!794 = !DILocalVariable(name: "scope_info", scope: !27, file: !3, line: 31, type: !640)
!795 = !DILocation(line: 31, column: 28, scope: !27)
!796 = !DILocation(line: 35, column: 2, scope: !27)
!797 = !DILocation(line: 35, column: 9, scope: !27)
!798 = !DILocation(line: 35, column: 21, scope: !27)
!799 = !DILocation(line: 39, column: 16, scope: !800)
!800 = distinct !DILexicalBlock(scope: !27, file: !3, line: 35, column: 33)
!801 = !DILocation(line: 39, column: 28, scope: !800)
!802 = !DILocation(line: 39, column: 14, scope: !800)
!803 = !DILocation(line: 40, column: 28, scope: !800)
!804 = !DILocation(line: 40, column: 40, scope: !800)
!805 = !DILocation(line: 40, column: 46, scope: !800)
!806 = !DILocation(line: 40, column: 3, scope: !800)
!807 = !DILocation(line: 40, column: 15, scope: !800)
!808 = !DILocation(line: 40, column: 26, scope: !800)
!809 = !DILocation(line: 47, column: 32, scope: !800)
!810 = !DILocation(line: 47, column: 3, scope: !800)
!811 = distinct !{!811, !796, !812}
!812 = !DILocation(line: 48, column: 2, scope: !27)
!813 = !DILocation(line: 49, column: 1, scope: !27)
!814 = distinct !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !3, file: !3, line: 67, type: !815, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!815 = !DISubroutineType(types: !816)
!816 = !{!6, !83, !817, !30}
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !7, line: 635, baseType: !8)
!818 = !DILocalVariable(name: "node", arg: 1, scope: !814, file: !3, line: 67, type: !83)
!819 = !DILocation(line: 67, column: 54, scope: !814)
!820 = !DILocalVariable(name: "type", arg: 2, scope: !814, file: !3, line: 68, type: !817)
!821 = !DILocation(line: 68, column: 22, scope: !814)
!822 = !DILocalVariable(name: "walk_state", arg: 3, scope: !814, file: !3, line: 69, type: !30)
!823 = !DILocation(line: 69, column: 29, scope: !814)
!824 = !DILocalVariable(name: "scope_info", scope: !814, file: !3, line: 71, type: !640)
!825 = !DILocation(line: 71, column: 28, scope: !814)
!826 = !DILocalVariable(name: "old_scope_info", scope: !814, file: !3, line: 72, type: !640)
!827 = !DILocation(line: 72, column: 28, scope: !814)
!828 = !DILocation(line: 76, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !814, file: !3, line: 76, column: 6)
!830 = !DILocation(line: 76, column: 6, scope: !814)
!831 = !DILocation(line: 80, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !3, line: 76, column: 13)
!833 = !DILocation(line: 81, column: 3, scope: !832)
!834 = !DILocation(line: 86, column: 33, scope: !835)
!835 = distinct !DILexicalBlock(scope: !814, file: !3, line: 86, column: 6)
!836 = !DILocation(line: 86, column: 7, scope: !835)
!837 = !DILocation(line: 86, column: 6, scope: !814)
!838 = !DILocation(line: 87, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 86, column: 40)
!840 = !DILocation(line: 88, column: 2, scope: !839)
!841 = !DILocation(line: 92, column: 15, scope: !814)
!842 = !DILocation(line: 92, column: 13, scope: !814)
!843 = !DILocation(line: 93, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !814, file: !3, line: 93, column: 6)
!845 = !DILocation(line: 93, column: 6, scope: !814)
!846 = !DILocation(line: 94, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !3, line: 93, column: 19)
!848 = !DILocation(line: 99, column: 2, scope: !814)
!849 = !DILocation(line: 99, column: 14, scope: !814)
!850 = !DILocation(line: 99, column: 21, scope: !814)
!851 = !DILocation(line: 99, column: 37, scope: !814)
!852 = !DILocation(line: 100, column: 27, scope: !814)
!853 = !DILocation(line: 100, column: 2, scope: !814)
!854 = !DILocation(line: 100, column: 14, scope: !814)
!855 = !DILocation(line: 100, column: 20, scope: !814)
!856 = !DILocation(line: 100, column: 25, scope: !814)
!857 = !DILocation(line: 101, column: 35, scope: !814)
!858 = !DILocation(line: 101, column: 29, scope: !814)
!859 = !DILocation(line: 101, column: 2, scope: !814)
!860 = !DILocation(line: 101, column: 14, scope: !814)
!861 = !DILocation(line: 101, column: 21, scope: !814)
!862 = !DILocation(line: 101, column: 27, scope: !814)
!863 = !DILocation(line: 103, column: 2, scope: !814)
!864 = !DILocation(line: 103, column: 14, scope: !814)
!865 = !DILocation(line: 103, column: 25, scope: !814)
!866 = !DILocation(line: 109, column: 19, scope: !814)
!867 = !DILocation(line: 109, column: 31, scope: !814)
!868 = !DILocation(line: 109, column: 17, scope: !814)
!869 = !DILocation(line: 110, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !814, file: !3, line: 110, column: 6)
!871 = !DILocation(line: 110, column: 6, scope: !814)
!872 = !DILocation(line: 117, column: 2, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 110, column: 22)
!874 = !DILocation(line: 128, column: 30, scope: !814)
!875 = !DILocation(line: 128, column: 42, scope: !814)
!876 = !DILocation(line: 128, column: 54, scope: !814)
!877 = !DILocation(line: 128, column: 2, scope: !814)
!878 = !DILocation(line: 129, column: 2, scope: !814)
!879 = !DILocation(line: 130, column: 1, scope: !814)
!880 = distinct !DISubprogram(name: "acpi_ds_scope_stack_pop", scope: !3, file: !3, line: 144, type: !183, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!881 = !DILocalVariable(name: "walk_state", arg: 1, scope: !880, file: !3, line: 144, type: !30)
!882 = !DILocation(line: 144, column: 61, scope: !880)
!883 = !DILocalVariable(name: "scope_info", scope: !880, file: !3, line: 146, type: !640)
!884 = !DILocation(line: 146, column: 28, scope: !880)
!885 = !DILocalVariable(name: "new_scope_info", scope: !880, file: !3, line: 147, type: !640)
!886 = !DILocation(line: 147, column: 28, scope: !880)
!887 = !DILocation(line: 154, column: 42, scope: !880)
!888 = !DILocation(line: 154, column: 54, scope: !880)
!889 = !DILocation(line: 154, column: 15, scope: !880)
!890 = !DILocation(line: 154, column: 13, scope: !880)
!891 = !DILocation(line: 155, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !880, file: !3, line: 155, column: 6)
!893 = !DILocation(line: 155, column: 6, scope: !880)
!894 = !DILocation(line: 156, column: 3, scope: !895)
!895 = distinct !DILexicalBlock(scope: !892, file: !3, line: 155, column: 19)
!896 = !DILocation(line: 159, column: 2, scope: !880)
!897 = !DILocation(line: 159, column: 14, scope: !880)
!898 = !DILocation(line: 159, column: 25, scope: !880)
!899 = !DILocation(line: 167, column: 19, scope: !880)
!900 = !DILocation(line: 167, column: 31, scope: !880)
!901 = !DILocation(line: 167, column: 17, scope: !880)
!902 = !DILocation(line: 168, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !880, file: !3, line: 168, column: 6)
!904 = !DILocation(line: 168, column: 6, scope: !880)
!905 = !DILocation(line: 174, column: 2, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 168, column: 22)
!907 = !DILocation(line: 179, column: 31, scope: !880)
!908 = !DILocation(line: 179, column: 2, scope: !880)
!909 = !DILocation(line: 180, column: 2, scope: !880)
!910 = !DILocation(line: 181, column: 1, scope: !880)
