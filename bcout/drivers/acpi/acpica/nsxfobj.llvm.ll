; ModuleID = '../bcout/drivers/acpi/acpica/nsxfobj.llvm.bc'
source_filename = "drivers/acpi/acpica/nsxfobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_type(i8* %handle, i32* %ret_type) #0 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %ret_type.addr = alloca i32*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %ret_type, i32** %ret_type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ret_type.addr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !32, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata i32* %status, metadata !797, metadata !DIExpression()), !dbg !798
  %0 = load i32*, i32** %ret_type.addr, align 8, !dbg !799
  %tobool = icmp ne i32* %0, null, !dbg !799
  br i1 %tobool, label %if.end, label %if.then, !dbg !801

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !802
  br label %return, !dbg !802

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !804
  %cmp = icmp eq i8* %1, inttoptr (i64 -1 to i8*), !dbg !806
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !807

if.then1:                                         ; preds = %if.end
  %2 = load i32*, i32** %ret_type.addr, align 8, !dbg !808
  store i32 0, i32* %2, align 4, !dbg !810
  store i32 0, i32* %retval, align 4, !dbg !811
  br label %return, !dbg !811

if.end2:                                          ; preds = %if.end
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !812
  store i32 %call, i32* %status, align 4, !dbg !813
  %3 = load i32, i32* %status, align 4, !dbg !814
  %tobool3 = icmp ne i32 %3, 0, !dbg !814
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !816

if.then4:                                         ; preds = %if.end2
  %4 = load i32, i32* %status, align 4, !dbg !817
  store i32 %4, i32* %retval, align 4, !dbg !819
  br label %return, !dbg !819

if.end5:                                          ; preds = %if.end2
  %5 = load i8*, i8** %handle.addr, align 8, !dbg !820
  %call6 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %5) #3, !dbg !821
  store %struct.acpi_namespace_node* %call6, %struct.acpi_namespace_node** %node, align 8, !dbg !822
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !823
  %tobool7 = icmp ne %struct.acpi_namespace_node* %6, null, !dbg !823
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !825

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !826
  store i32 4097, i32* %retval, align 4, !dbg !828
  br label %return, !dbg !828

if.end10:                                         ; preds = %if.end5
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !829
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 2, !dbg !830
  %8 = load i8, i8* %type, align 1, !dbg !830
  %conv = zext i8 %8 to i32, !dbg !829
  %9 = load i32*, i32** %ret_type.addr, align 8, !dbg !831
  store i32 %conv, i32* %9, align 4, !dbg !832
  %call11 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !833
  store i32 %call11, i32* %status, align 4, !dbg !834
  %10 = load i32, i32* %status, align 4, !dbg !835
  store i32 %10, i32* %retval, align 4, !dbg !836
  br label %return, !dbg !836

return:                                           ; preds = %if.end10, %if.then8, %if.then4, %if.then1, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !837
  ret i32 %11, !dbg !837
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_parent(i8* %handle, i8** %ret_handle) #0 !dbg !838 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %ret_handle.addr = alloca i8**, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !841, metadata !DIExpression()), !dbg !842
  store i8** %ret_handle, i8*** %ret_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %ret_handle.addr, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !845, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata i32* %status, metadata !849, metadata !DIExpression()), !dbg !850
  %0 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !851
  %tobool = icmp ne i8** %0, null, !dbg !851
  br i1 %tobool, label %if.end, label %if.then, !dbg !853

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !854
  br label %return, !dbg !854

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !856
  %cmp = icmp eq i8* %1, inttoptr (i64 -1 to i8*), !dbg !858
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !859

if.then1:                                         ; preds = %if.end
  store i32 10, i32* %retval, align 4, !dbg !860
  br label %return, !dbg !860

if.end2:                                          ; preds = %if.end
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !862
  store i32 %call, i32* %status, align 4, !dbg !863
  %2 = load i32, i32* %status, align 4, !dbg !864
  %tobool3 = icmp ne i32 %2, 0, !dbg !864
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !866

if.then4:                                         ; preds = %if.end2
  %3 = load i32, i32* %status, align 4, !dbg !867
  store i32 %3, i32* %retval, align 4, !dbg !869
  br label %return, !dbg !869

if.end5:                                          ; preds = %if.end2
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !870
  %call6 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %4) #3, !dbg !871
  store %struct.acpi_namespace_node* %call6, %struct.acpi_namespace_node** %node, align 8, !dbg !872
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !873
  %tobool7 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !873
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !875

if.then8:                                         ; preds = %if.end5
  store i32 4097, i32* %status, align 4, !dbg !876
  br label %unlock_and_exit, !dbg !878

if.end9:                                          ; preds = %if.end5
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !879
  %parent = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 5, !dbg !880
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent, align 8, !dbg !880
  store %struct.acpi_namespace_node* %7, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !881
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !882
  %9 = bitcast %struct.acpi_namespace_node* %8 to i8*, !dbg !882
  %10 = bitcast i8* %9 to i8**, !dbg !882
  %11 = bitcast i8** %10 to i8*, !dbg !882
  %12 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !883
  store i8* %11, i8** %12, align 8, !dbg !884
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !885
  %tobool10 = icmp ne %struct.acpi_namespace_node* %13, null, !dbg !885
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !887

if.then11:                                        ; preds = %if.end9
  store i32 10, i32* %status, align 4, !dbg !888
  br label %if.end12, !dbg !890

if.end12:                                         ; preds = %if.then11, %if.end9
  br label %unlock_and_exit, !dbg !885

unlock_and_exit:                                  ; preds = %if.end12, %if.then8
  call void @llvm.dbg.label(metadata !891), !dbg !892
  %call13 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !893
  %14 = load i32, i32* %status, align 4, !dbg !894
  store i32 %14, i32* %retval, align 4, !dbg !895
  br label %return, !dbg !895

return:                                           ; preds = %unlock_and_exit, %if.then4, %if.then1, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !896
  ret i32 %15, !dbg !896
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_get_next_object(i32 %type, i8* %parent, i8* %child, i8** %ret_handle) #0 !dbg !897 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %parent.addr = alloca i8*, align 8
  %child.addr = alloca i8*, align 8
  %ret_handle.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %node = alloca %struct.acpi_namespace_node*, align 8
  %parent_node = alloca %struct.acpi_namespace_node*, align 8
  %child_node = alloca %struct.acpi_namespace_node*, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !900, metadata !DIExpression()), !dbg !901
  store i8* %parent, i8** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent.addr, metadata !902, metadata !DIExpression()), !dbg !903
  store i8* %child, i8** %child.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %child.addr, metadata !904, metadata !DIExpression()), !dbg !905
  store i8** %ret_handle, i8*** %ret_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %ret_handle.addr, metadata !906, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %status, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %parent_node, metadata !912, metadata !DIExpression()), !dbg !913
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !913
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %child_node, metadata !914, metadata !DIExpression()), !dbg !915
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %child_node, align 8, !dbg !915
  %0 = load i32, i32* %type.addr, align 4, !dbg !916
  %cmp = icmp ugt i32 %0, 16, !dbg !918
  br i1 %cmp, label %if.then, label %if.end, !dbg !919

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !920
  br label %return, !dbg !920

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !922
  store i32 %call, i32* %status, align 4, !dbg !923
  %1 = load i32, i32* %status, align 4, !dbg !924
  %tobool = icmp ne i32 %1, 0, !dbg !924
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !926

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !927
  store i32 %2, i32* %retval, align 4, !dbg !929
  br label %return, !dbg !929

if.end2:                                          ; preds = %if.end
  %3 = load i8*, i8** %child.addr, align 8, !dbg !930
  %tobool3 = icmp ne i8* %3, null, !dbg !930
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !932

if.then4:                                         ; preds = %if.end2
  %4 = load i8*, i8** %parent.addr, align 8, !dbg !933
  %call5 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %4) #3, !dbg !935
  store %struct.acpi_namespace_node* %call5, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !936
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !937
  %tobool6 = icmp ne %struct.acpi_namespace_node* %5, null, !dbg !937
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !939

if.then7:                                         ; preds = %if.then4
  store i32 4097, i32* %status, align 4, !dbg !940
  br label %unlock_and_exit, !dbg !942

if.end8:                                          ; preds = %if.then4
  br label %if.end13, !dbg !943

if.else:                                          ; preds = %if.end2
  %6 = load i8*, i8** %child.addr, align 8, !dbg !944
  %call9 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %6) #3, !dbg !946
  store %struct.acpi_namespace_node* %call9, %struct.acpi_namespace_node** %child_node, align 8, !dbg !947
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !948
  %tobool10 = icmp ne %struct.acpi_namespace_node* %7, null, !dbg !948
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !950

if.then11:                                        ; preds = %if.else
  store i32 4097, i32* %status, align 4, !dbg !951
  br label %unlock_and_exit, !dbg !953

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end8
  %8 = load i32, i32* %type.addr, align 4, !dbg !954
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %parent_node, align 8, !dbg !955
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %child_node, align 8, !dbg !956
  %call14 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node_typed(i32 %8, %struct.acpi_namespace_node* %9, %struct.acpi_namespace_node* %10) #3, !dbg !957
  store %struct.acpi_namespace_node* %call14, %struct.acpi_namespace_node** %node, align 8, !dbg !958
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !959
  %tobool15 = icmp ne %struct.acpi_namespace_node* %11, null, !dbg !959
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !961

if.then16:                                        ; preds = %if.end13
  store i32 5, i32* %status, align 4, !dbg !962
  br label %unlock_and_exit, !dbg !964

if.end17:                                         ; preds = %if.end13
  %12 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !965
  %tobool18 = icmp ne i8** %12, null, !dbg !965
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !967

if.then19:                                        ; preds = %if.end17
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !968
  %14 = bitcast %struct.acpi_namespace_node* %13 to i8*, !dbg !968
  %15 = bitcast i8* %14 to i8**, !dbg !968
  %16 = bitcast i8** %15 to i8*, !dbg !968
  %17 = load i8**, i8*** %ret_handle.addr, align 8, !dbg !970
  store i8* %16, i8** %17, align 8, !dbg !971
  br label %if.end20, !dbg !972

if.end20:                                         ; preds = %if.then19, %if.end17
  br label %unlock_and_exit, !dbg !965

unlock_and_exit:                                  ; preds = %if.end20, %if.then16, %if.then11, %if.then7
  call void @llvm.dbg.label(metadata !973), !dbg !974
  %call21 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !975
  %18 = load i32, i32* %status, align 4, !dbg !976
  store i32 %18, i32* %retval, align 4, !dbg !977
  br label %return, !dbg !977

return:                                           ; preds = %unlock_and_exit, %if.then1, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !978
  ret i32 %19, !dbg !978
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node_typed(i32, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/nsxfobj.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !11, !12, !13, !14, !17}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5, line: 424, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !5, line: 127, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !16)
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!23 = distinct !DISubprogram(name: "acpi_get_type", scope: !1, file: !1, line: 31, type: !24, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{!4, !11, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !5, line: 635, baseType: !6)
!28 = !DILocalVariable(name: "handle", arg: 1, scope: !23, file: !1, line: 31, type: !11)
!29 = !DILocation(line: 31, column: 39, scope: !23)
!30 = !DILocalVariable(name: "ret_type", arg: 2, scope: !23, file: !1, line: 31, type: !26)
!31 = !DILocation(line: 31, column: 65, scope: !23)
!32 = !DILocalVariable(name: "node", scope: !23, file: !1, line: 33, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !35, line: 133, size: 384, elements: !36)
!35 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !783, !784, !785, !786, !792, !793, !794, !795}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !34, file: !35, line: 134, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !40, line: 367, size: 576, elements: !41)
!40 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !56, !69, !81, !95, !109, !118, !434, !451, !466, !479, !557, !569, !583, !593, !611, !633, !652, !671, !690, !703, !729, !746, !759, !773, !782}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !39, file: !40, line: 368, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !40, line: 73, size: 128, elements: !44)
!44 = !{!45, !46, !50, !51, !55}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !43, file: !40, line: 74, baseType: !38, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !40, line: 74, baseType: !47, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !40, line: 74, baseType: !47, size: 8, offset: 72)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !43, file: !40, line: 74, baseType: !52, size: 16, offset: 80)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !54)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !40, line: 74, baseType: !47, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !39, file: !40, line: 369, baseType: !57, size: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !40, line: 76, size: 192, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !40, line: 77, baseType: !38, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !40, line: 77, baseType: !47, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !40, line: 77, baseType: !47, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !40, line: 77, baseType: !52, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !40, line: 77, baseType: !47, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !57, file: !40, line: 77, baseType: !65, size: 24, offset: 104)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !57, file: !40, line: 78, baseType: !14, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !39, file: !40, line: 370, baseType: !70, size: 256)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !40, line: 93, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !80}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !70, file: !40, line: 94, baseType: !38, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !70, file: !40, line: 94, baseType: !47, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !40, line: 94, baseType: !47, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !70, file: !40, line: 94, baseType: !52, size: 16, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !40, line: 94, baseType: !47, size: 8, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !70, file: !40, line: 94, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !70, file: !40, line: 94, baseType: !6, size: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !39, file: !40, line: 371, baseType: !82, size: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !40, line: 97, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !91, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !40, line: 98, baseType: !38, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !40, line: 98, baseType: !47, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !40, line: 98, baseType: !47, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !40, line: 98, baseType: !52, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !40, line: 98, baseType: !47, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !40, line: 98, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !40, line: 98, baseType: !6, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !82, file: !40, line: 99, baseType: !6, size: 32, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !82, file: !40, line: 100, baseType: !90, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !40, line: 101, baseType: !33, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !39, file: !40, line: 372, baseType: !96, size: 384)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !40, line: 104, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !40, line: 105, baseType: !38, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !40, line: 105, baseType: !47, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !40, line: 105, baseType: !47, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !40, line: 105, baseType: !52, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !40, line: 105, baseType: !47, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !40, line: 105, baseType: !33, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !96, file: !40, line: 106, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !96, file: !40, line: 107, baseType: !90, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !96, file: !40, line: 108, baseType: !6, size: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !96, file: !40, line: 109, baseType: !6, size: 32, offset: 352)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !39, file: !40, line: 373, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !40, line: 118, size: 192, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !40, line: 119, baseType: !38, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !40, line: 119, baseType: !47, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !40, line: 119, baseType: !47, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !40, line: 119, baseType: !52, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !40, line: 119, baseType: !47, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !110, file: !40, line: 119, baseType: !12, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !39, file: !40, line: 374, baseType: !119, size: 448)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !40, line: 143, size: 448, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !431, !432, !433}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !119, file: !40, line: 144, baseType: !38, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !119, file: !40, line: 144, baseType: !47, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !40, line: 144, baseType: !47, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !119, file: !40, line: 144, baseType: !52, size: 16, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !40, line: 144, baseType: !47, size: 8, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !119, file: !40, line: 144, baseType: !47, size: 8, offset: 104)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !119, file: !40, line: 145, baseType: !47, size: 8, offset: 112)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !119, file: !40, line: 146, baseType: !47, size: 8, offset: 120)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !119, file: !40, line: 147, baseType: !38, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !40, line: 148, baseType: !38, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !119, file: !40, line: 149, baseType: !90, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !119, file: !40, line: 153, baseType: !133, size: 64, offset: 320)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !40, line: 150, size: 64, elements: !134)
!134 = !{!135, !430}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !133, file: !40, line: 151, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !35, line: 248, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!4, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !142, line: 37, size: 9024, elements: !143)
!142 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !376, !377, !378, !379, !380, !384, !386, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !413, !414, !415, !416, !417, !418, !419, !420, !422, !428}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !142, line: 38, baseType: !140, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !141, file: !142, line: 39, baseType: !47, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !141, file: !142, line: 40, baseType: !47, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !141, file: !142, line: 41, baseType: !52, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !141, file: !142, line: 42, baseType: !47, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !141, file: !142, line: 43, baseType: !47, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !141, file: !142, line: 44, baseType: !47, size: 8, offset: 112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !141, file: !142, line: 45, baseType: !152, size: 16, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !5, line: 445, baseType: !52)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !141, file: !142, line: 46, baseType: !47, size: 8, offset: 144)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !141, file: !142, line: 47, baseType: !47, size: 8, offset: 152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !141, file: !142, line: 48, baseType: !47, size: 8, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !141, file: !142, line: 49, baseType: !47, size: 8, offset: 168)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !141, file: !142, line: 50, baseType: !47, size: 8, offset: 176)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !141, file: !142, line: 51, baseType: !47, size: 8, offset: 184)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !141, file: !142, line: 52, baseType: !47, size: 8, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !141, file: !142, line: 53, baseType: !47, size: 8, offset: 200)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !141, file: !142, line: 54, baseType: !90, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !141, file: !142, line: 55, baseType: !6, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !141, file: !142, line: 56, baseType: !6, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !141, file: !142, line: 57, baseType: !6, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !141, file: !142, line: 58, baseType: !6, size: 32, offset: 416)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !141, file: !142, line: 60, baseType: !167, size: 640, offset: 448)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !35, line: 893, size: 640, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !258, !259, !374, !375}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !167, file: !35, line: 894, baseType: !90, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !167, file: !35, line: 895, baseType: !90, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !167, file: !35, line: 896, baseType: !90, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !167, file: !35, line: 897, baseType: !90, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !167, file: !35, line: 898, baseType: !90, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !167, file: !35, line: 899, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !35, line: 875, size: 1600, elements: !177)
!177 = !{!178, !198, !214}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !176, file: !35, line: 876, baseType: !179, size: 448)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !35, line: 828, size: 448, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !197}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !35, line: 829, baseType: !175, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !179, file: !35, line: 829, baseType: !47, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !35, line: 829, baseType: !47, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !179, file: !35, line: 829, baseType: !52, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !179, file: !35, line: 829, baseType: !90, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !35, line: 829, baseType: !175, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !35, line: 829, baseType: !33, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !179, file: !35, line: 829, baseType: !189, size: 64, offset: 320)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !35, line: 716, size: 64, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !189, file: !35, line: 717, baseType: !14, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !35, line: 718, baseType: !6, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !189, file: !35, line: 719, baseType: !78, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !189, file: !35, line: 720, baseType: !90, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !35, line: 721, baseType: !78, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !189, file: !35, line: 722, baseType: !175, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !179, file: !35, line: 829, baseType: !47, size: 8, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !176, file: !35, line: 877, baseType: !199, size: 640)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !35, line: 835, size: 640, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !35, line: 836, baseType: !175, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !35, line: 836, baseType: !47, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !35, line: 836, baseType: !47, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !35, line: 836, baseType: !52, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !35, line: 836, baseType: !90, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !35, line: 836, baseType: !175, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !35, line: 836, baseType: !33, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !35, line: 836, baseType: !189, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !35, line: 836, baseType: !47, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !199, file: !35, line: 836, baseType: !78, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !35, line: 837, baseType: !90, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !199, file: !35, line: 838, baseType: !6, size: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !35, line: 839, baseType: !6, size: 32, offset: 608)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !176, file: !35, line: 878, baseType: !215, size: 1600)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !35, line: 846, size: 1600, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !35, line: 847, baseType: !175, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !35, line: 847, baseType: !47, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !35, line: 847, baseType: !47, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !35, line: 847, baseType: !52, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !35, line: 847, baseType: !90, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !35, line: 847, baseType: !175, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !35, line: 847, baseType: !33, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !35, line: 847, baseType: !189, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !35, line: 847, baseType: !47, size: 8, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !215, file: !35, line: 847, baseType: !175, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !215, file: !35, line: 848, baseType: !175, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !215, file: !35, line: 849, baseType: !78, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !215, file: !35, line: 850, baseType: !47, size: 8, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !215, file: !35, line: 851, baseType: !78, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !215, file: !35, line: 852, baseType: !78, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !215, file: !35, line: 853, baseType: !78, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !215, file: !35, line: 854, baseType: !234, size: 32, offset: 896)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 32, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 4)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !215, file: !35, line: 855, baseType: !6, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !215, file: !35, line: 856, baseType: !6, size: 32, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !215, file: !35, line: 857, baseType: !6, size: 32, offset: 992)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !215, file: !35, line: 858, baseType: !6, size: 32, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !215, file: !35, line: 859, baseType: !6, size: 32, offset: 1056)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !215, file: !35, line: 860, baseType: !6, size: 32, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !215, file: !35, line: 861, baseType: !6, size: 32, offset: 1120)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !215, file: !35, line: 862, baseType: !6, size: 32, offset: 1152)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !35, line: 863, baseType: !6, size: 32, offset: 1184)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !215, file: !35, line: 864, baseType: !6, size: 32, offset: 1216)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !215, file: !35, line: 865, baseType: !6, size: 32, offset: 1248)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !215, file: !35, line: 866, baseType: !6, size: 32, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !215, file: !35, line: 867, baseType: !6, size: 32, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !215, file: !35, line: 868, baseType: !52, size: 16, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !215, file: !35, line: 869, baseType: !47, size: 8, offset: 1360)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !215, file: !35, line: 870, baseType: !47, size: 8, offset: 1368)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !215, file: !35, line: 871, baseType: !47, size: 8, offset: 1376)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !215, file: !35, line: 872, baseType: !255, size: 160, offset: 1384)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 160, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 20)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !167, file: !35, line: 900, baseType: !33, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !167, file: !35, line: 901, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !35, line: 663, size: 640, elements: !262)
!262 = !{!263, !271, !284, !293, !302, !315, !329, !341, !353}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !261, file: !35, line: 664, baseType: !264, size: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !35, line: 567, size: 128, elements: !265)
!265 = !{!266, !267, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !35, line: 568, baseType: !12, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !35, line: 568, baseType: !47, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !35, line: 568, baseType: !47, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !35, line: 568, baseType: !52, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !35, line: 568, baseType: !52, size: 16, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !261, file: !35, line: 665, baseType: !272, size: 384)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !35, line: 593, size: 384, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !35, line: 594, baseType: !12, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !272, file: !35, line: 594, baseType: !47, size: 8, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !272, file: !35, line: 594, baseType: !47, size: 8, offset: 72)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !272, file: !35, line: 594, baseType: !52, size: 16, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !272, file: !35, line: 594, baseType: !52, size: 16, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !272, file: !35, line: 594, baseType: !52, size: 16, offset: 112)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !272, file: !35, line: 595, baseType: !175, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !272, file: !35, line: 596, baseType: !90, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !272, file: !35, line: 597, baseType: !90, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !272, file: !35, line: 598, baseType: !14, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !261, file: !35, line: 666, baseType: !285, size: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !35, line: 573, size: 192, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !35, line: 574, baseType: !12, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !285, file: !35, line: 574, baseType: !47, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !35, line: 574, baseType: !47, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !285, file: !35, line: 574, baseType: !52, size: 16, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !285, file: !35, line: 574, baseType: !52, size: 16, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !285, file: !35, line: 574, baseType: !38, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !261, file: !35, line: 667, baseType: !294, size: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !35, line: 604, size: 192, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !35, line: 605, baseType: !12, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !35, line: 605, baseType: !47, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !35, line: 605, baseType: !47, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !35, line: 605, baseType: !52, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !35, line: 605, baseType: !52, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !35, line: 605, baseType: !33, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !261, file: !35, line: 668, baseType: !303, size: 448)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !35, line: 608, size: 448, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !35, line: 609, baseType: !12, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !35, line: 609, baseType: !47, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !35, line: 609, baseType: !47, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !35, line: 609, baseType: !52, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !35, line: 609, baseType: !52, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !303, file: !35, line: 609, baseType: !6, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !303, file: !35, line: 610, baseType: !175, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !303, file: !35, line: 611, baseType: !90, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !303, file: !35, line: 612, baseType: !90, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !303, file: !35, line: 613, baseType: !6, size: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !261, file: !35, line: 669, baseType: !316, size: 512)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !35, line: 580, size: 512, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !35, line: 581, baseType: !12, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !35, line: 581, baseType: !47, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !35, line: 581, baseType: !47, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !35, line: 581, baseType: !52, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !35, line: 581, baseType: !52, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !316, file: !35, line: 581, baseType: !6, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !316, file: !35, line: 582, baseType: !38, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !316, file: !35, line: 583, baseType: !38, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !316, file: !35, line: 584, baseType: !140, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !316, file: !35, line: 585, baseType: !12, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !316, file: !35, line: 586, baseType: !6, size: 32, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !261, file: !35, line: 670, baseType: !330, size: 320)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !35, line: 620, size: 320, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !35, line: 621, baseType: !12, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !35, line: 621, baseType: !47, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !35, line: 621, baseType: !47, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !35, line: 621, baseType: !52, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !35, line: 621, baseType: !52, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !330, file: !35, line: 621, baseType: !47, size: 8, offset: 112)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !330, file: !35, line: 622, baseType: !140, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !330, file: !35, line: 623, baseType: !38, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !330, file: !35, line: 624, baseType: !14, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !261, file: !35, line: 671, baseType: !342, size: 640)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !35, line: 631, size: 640, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !35, line: 632, baseType: !12, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !35, line: 632, baseType: !47, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !35, line: 632, baseType: !47, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !35, line: 632, baseType: !52, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !35, line: 632, baseType: !52, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !342, file: !35, line: 633, baseType: !350, size: 512, offset: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !261, file: !35, line: 672, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !35, line: 654, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !35, line: 655, baseType: !12, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !35, line: 655, baseType: !47, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !35, line: 655, baseType: !47, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !35, line: 655, baseType: !52, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !35, line: 655, baseType: !52, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !354, file: !35, line: 655, baseType: !47, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !354, file: !35, line: 656, baseType: !33, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !354, file: !35, line: 657, baseType: !38, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !354, file: !35, line: 658, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !35, line: 645, size: 128, elements: !367)
!367 = !{!368, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !366, file: !35, line: 646, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !5, line: 1052, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !11, !6, !12}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !35, line: 647, baseType: !12, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !167, file: !35, line: 902, baseType: !175, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !167, file: !35, line: 903, baseType: !6, size: 32, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !141, file: !142, line: 61, baseType: !6, size: 32, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !141, file: !142, line: 62, baseType: !6, size: 32, offset: 1120)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !141, file: !142, line: 63, baseType: !52, size: 16, offset: 1152)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !141, file: !142, line: 64, baseType: !47, size: 8, offset: 1168)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !141, file: !142, line: 66, baseType: !381, size: 2688, offset: 1216)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2688, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 7)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !141, file: !142, line: 67, baseType: !385, size: 3072, offset: 3904)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 3072, elements: !351)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !141, file: !142, line: 68, baseType: !387, size: 576, offset: 6976)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 576, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 9)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !141, file: !142, line: 69, baseType: !105, size: 64, offset: 7552)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !141, file: !142, line: 71, baseType: !90, size: 64, offset: 7616)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !141, file: !142, line: 72, baseType: !105, size: 64, offset: 7680)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !141, file: !142, line: 73, baseType: !260, size: 64, offset: 7744)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !141, file: !142, line: 74, baseType: !33, size: 64, offset: 7808)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !141, file: !142, line: 75, baseType: !38, size: 64, offset: 7872)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !141, file: !142, line: 76, baseType: !33, size: 64, offset: 7936)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !141, file: !142, line: 77, baseType: !175, size: 64, offset: 8000)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !141, file: !142, line: 78, baseType: !38, size: 64, offset: 8064)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !141, file: !142, line: 79, baseType: !33, size: 64, offset: 8128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !141, file: !142, line: 80, baseType: !78, size: 64, offset: 8192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !141, file: !142, line: 81, baseType: !175, size: 64, offset: 8256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !141, file: !142, line: 82, baseType: !403, size: 64, offset: 8320)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !35, line: 702, size: 128, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !405, file: !35, line: 706, baseType: !6, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !405, file: !35, line: 707, baseType: !6, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !35, line: 708, baseType: !52, size: 16, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !405, file: !35, line: 709, baseType: !47, size: 8, offset: 80)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !405, file: !35, line: 710, baseType: !47, size: 8, offset: 88)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !35, line: 711, baseType: !47, size: 8, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !141, file: !142, line: 83, baseType: !175, size: 64, offset: 8384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !141, file: !142, line: 84, baseType: !38, size: 64, offset: 8448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !141, file: !142, line: 85, baseType: !260, size: 64, offset: 8512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !141, file: !142, line: 86, baseType: !38, size: 64, offset: 8576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !141, file: !142, line: 87, baseType: !260, size: 64, offset: 8640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !141, file: !142, line: 88, baseType: !175, size: 64, offset: 8704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !141, file: !142, line: 89, baseType: !175, size: 64, offset: 8768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !141, file: !142, line: 90, baseType: !421, size: 64, offset: 8832)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !141, file: !142, line: 91, baseType: !423, size: 64, offset: 8896)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !35, line: 637, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!4, !140, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !141, file: !142, line: 92, baseType: !429, size: 64, offset: 8960)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !35, line: 641, baseType: !137)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !133, file: !40, line: 152, baseType: !38, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !119, file: !40, line: 155, baseType: !6, size: 32, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !119, file: !40, line: 156, baseType: !152, size: 16, offset: 416)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !119, file: !40, line: 157, baseType: !47, size: 8, offset: 432)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !39, file: !40, line: 375, baseType: !435, size: 576)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !40, line: 122, size: 576, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !435, file: !40, line: 123, baseType: !38, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !435, file: !40, line: 123, baseType: !47, size: 8, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !435, file: !40, line: 123, baseType: !47, size: 8, offset: 72)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !435, file: !40, line: 123, baseType: !52, size: 16, offset: 80)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !40, line: 123, baseType: !47, size: 8, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !435, file: !40, line: 123, baseType: !47, size: 8, offset: 104)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !435, file: !40, line: 124, baseType: !52, size: 16, offset: 112)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !435, file: !40, line: 125, baseType: !12, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !435, file: !40, line: 126, baseType: !14, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !435, file: !40, line: 127, baseType: !421, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !435, file: !40, line: 128, baseType: !38, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !40, line: 129, baseType: !38, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !435, file: !40, line: 130, baseType: !33, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !435, file: !40, line: 131, baseType: !47, size: 8, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !39, file: !40, line: 376, baseType: !452, size: 448)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !40, line: 134, size: 448, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !465}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !40, line: 135, baseType: !38, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !40, line: 135, baseType: !47, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !40, line: 135, baseType: !47, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !40, line: 135, baseType: !52, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !40, line: 135, baseType: !47, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !452, file: !40, line: 135, baseType: !47, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !40, line: 136, baseType: !33, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !452, file: !40, line: 137, baseType: !38, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !40, line: 138, baseType: !38, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !452, file: !40, line: 139, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !5, line: 129, baseType: !14)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !452, file: !40, line: 140, baseType: !6, size: 32, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !39, file: !40, line: 377, baseType: !467, size: 320)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !40, line: 184, size: 320, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !478}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !40, line: 185, baseType: !38, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !40, line: 185, baseType: !47, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !40, line: 185, baseType: !47, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !40, line: 185, baseType: !52, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !40, line: 185, baseType: !47, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !467, file: !40, line: 185, baseType: !475, size: 128, offset: 128)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 2)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !467, file: !40, line: 185, baseType: !38, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !39, file: !40, line: 378, baseType: !480, size: 384)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !40, line: 187, size: 384, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !40, line: 188, baseType: !38, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !40, line: 188, baseType: !47, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !40, line: 188, baseType: !47, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !40, line: 188, baseType: !52, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !40, line: 188, baseType: !47, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !480, file: !40, line: 189, baseType: !475, size: 128, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !40, line: 189, baseType: !38, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !480, file: !40, line: 189, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !35, line: 480, size: 576, elements: !492)
!492 = !{!493, !494, !495, !496, !504, !519, !551, !552, !553, !554, !555, !556}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !491, file: !35, line: 481, baseType: !33, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !491, file: !35, line: 482, baseType: !490, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !35, line: 483, baseType: !490, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !491, file: !35, line: 484, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !35, line: 497, size: 256, elements: !499)
!499 = !{!500, !501, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !498, file: !35, line: 498, baseType: !497, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !35, line: 499, baseType: !497, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !498, file: !35, line: 500, baseType: !490, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !498, file: !35, line: 501, baseType: !6, size: 32, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !491, file: !35, line: 485, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !35, line: 466, size: 320, elements: !507)
!507 = !{!508, !513, !514, !515, !516, !517, !518}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !506, file: !35, line: 467, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !35, line: 459, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !35, line: 460, baseType: !47, size: 8)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !35, line: 461, baseType: !14, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !506, file: !35, line: 468, baseType: !509, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !506, file: !35, line: 469, baseType: !52, size: 16, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !506, file: !35, line: 470, baseType: !47, size: 8, offset: 272)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !506, file: !35, line: 471, baseType: !47, size: 8, offset: 280)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !506, file: !35, line: 472, baseType: !47, size: 8, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !506, file: !35, line: 473, baseType: !47, size: 8, offset: 296)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !491, file: !35, line: 486, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !35, line: 448, size: 192, elements: !522)
!522 = !{!523, !546, !547, !548, !549, !550}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !521, file: !35, line: 449, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !35, line: 438, size: 64, elements: !525)
!525 = !{!526, !527, !540}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !524, file: !35, line: 439, baseType: !33, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !524, file: !35, line: 440, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !35, line: 419, size: 256, elements: !530)
!530 = !{!531, !536, !537, !538, !539}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !529, file: !35, line: 420, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !5, line: 1049, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!6, !11, !6, !12}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !529, file: !35, line: 421, baseType: !12, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !35, line: 422, baseType: !33, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !529, file: !35, line: 423, baseType: !47, size: 8, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !529, file: !35, line: 424, baseType: !47, size: 8, offset: 200)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !524, file: !35, line: 441, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !35, line: 429, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !542, file: !35, line: 430, baseType: !33, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !35, line: 431, baseType: !541, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !521, file: !35, line: 450, baseType: !505, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !35, line: 451, baseType: !47, size: 8, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !521, file: !35, line: 452, baseType: !47, size: 8, offset: 136)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !521, file: !35, line: 453, baseType: !47, size: 8, offset: 144)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !521, file: !35, line: 454, baseType: !47, size: 8, offset: 152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !491, file: !35, line: 487, baseType: !14, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !491, file: !35, line: 488, baseType: !6, size: 32, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !491, file: !35, line: 489, baseType: !52, size: 16, offset: 480)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !491, file: !35, line: 490, baseType: !52, size: 16, offset: 496)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !491, file: !35, line: 491, baseType: !47, size: 8, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !491, file: !35, line: 492, baseType: !47, size: 8, offset: 520)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !39, file: !40, line: 379, baseType: !558, size: 384)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !40, line: 192, size: 384, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !558, file: !40, line: 193, baseType: !38, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !558, file: !40, line: 193, baseType: !47, size: 8, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !558, file: !40, line: 193, baseType: !47, size: 8, offset: 72)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !558, file: !40, line: 193, baseType: !52, size: 16, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !40, line: 193, baseType: !47, size: 8, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !558, file: !40, line: 193, baseType: !475, size: 128, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !558, file: !40, line: 193, baseType: !38, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !558, file: !40, line: 193, baseType: !6, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !558, file: !40, line: 194, baseType: !6, size: 32, offset: 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !39, file: !40, line: 380, baseType: !570, size: 384)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !40, line: 197, size: 384, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !40, line: 198, baseType: !38, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !40, line: 198, baseType: !47, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !40, line: 198, baseType: !47, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !40, line: 198, baseType: !52, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !40, line: 198, baseType: !47, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !570, file: !40, line: 200, baseType: !47, size: 8, offset: 104)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !570, file: !40, line: 201, baseType: !47, size: 8, offset: 112)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !570, file: !40, line: 202, baseType: !475, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !570, file: !40, line: 202, baseType: !38, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !570, file: !40, line: 202, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5, line: 128, baseType: !14)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !39, file: !40, line: 381, baseType: !584, size: 320)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !40, line: 205, size: 320, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !40, line: 206, baseType: !38, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !40, line: 206, baseType: !47, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !40, line: 206, baseType: !47, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !40, line: 206, baseType: !52, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !40, line: 206, baseType: !47, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !40, line: 206, baseType: !475, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !40, line: 206, baseType: !38, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !39, file: !40, line: 382, baseType: !594, size: 384)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !40, line: 233, size: 384, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !594, file: !40, line: 234, baseType: !38, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !594, file: !40, line: 234, baseType: !52, size: 16, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 96)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 104)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 120)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !594, file: !40, line: 234, baseType: !33, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !594, file: !40, line: 234, baseType: !6, size: 32, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !594, file: !40, line: 234, baseType: !6, size: 32, offset: 224)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !594, file: !40, line: 234, baseType: !6, size: 32, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !594, file: !40, line: 234, baseType: !47, size: 8, offset: 296)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !594, file: !40, line: 234, baseType: !38, size: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !39, file: !40, line: 383, baseType: !612, size: 576)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !40, line: 237, size: 576, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !40, line: 238, baseType: !38, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !40, line: 238, baseType: !52, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !40, line: 238, baseType: !33, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !40, line: 238, baseType: !6, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !40, line: 238, baseType: !6, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !40, line: 238, baseType: !6, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !40, line: 238, baseType: !47, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !612, file: !40, line: 238, baseType: !52, size: 16, offset: 304)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !40, line: 239, baseType: !38, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !612, file: !40, line: 240, baseType: !90, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !612, file: !40, line: 241, baseType: !52, size: 16, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !612, file: !40, line: 242, baseType: !90, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !39, file: !40, line: 384, baseType: !634, size: 384)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !40, line: 262, size: 384, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !634, file: !40, line: 263, baseType: !38, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 72)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !634, file: !40, line: 263, baseType: !52, size: 16, offset: 80)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 104)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !40, line: 263, baseType: !33, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !634, file: !40, line: 263, baseType: !6, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !634, file: !40, line: 263, baseType: !6, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !634, file: !40, line: 263, baseType: !6, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 296)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !634, file: !40, line: 263, baseType: !47, size: 8, offset: 304)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !634, file: !40, line: 264, baseType: !38, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !39, file: !40, line: 385, baseType: !653, size: 448)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !40, line: 245, size: 448, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !653, file: !40, line: 246, baseType: !38, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 72)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !653, file: !40, line: 246, baseType: !52, size: 16, offset: 80)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 104)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 112)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 120)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !40, line: 246, baseType: !33, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !653, file: !40, line: 246, baseType: !6, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !653, file: !40, line: 246, baseType: !6, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !653, file: !40, line: 246, baseType: !6, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 288)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !653, file: !40, line: 246, baseType: !47, size: 8, offset: 296)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !653, file: !40, line: 246, baseType: !38, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !653, file: !40, line: 247, baseType: !38, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !39, file: !40, line: 386, baseType: !672, size: 448)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !40, line: 250, size: 448, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !40, line: 251, baseType: !38, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !40, line: 251, baseType: !52, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !40, line: 251, baseType: !33, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !40, line: 251, baseType: !6, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !40, line: 251, baseType: !6, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !40, line: 251, baseType: !6, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !40, line: 251, baseType: !47, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !672, file: !40, line: 256, baseType: !38, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !672, file: !40, line: 257, baseType: !38, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !39, file: !40, line: 387, baseType: !691, size: 512)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !40, line: 273, size: 512, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !40, line: 274, baseType: !38, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !40, line: 274, baseType: !47, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !40, line: 274, baseType: !47, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !40, line: 274, baseType: !52, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !40, line: 274, baseType: !47, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !691, file: !40, line: 274, baseType: !33, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !691, file: !40, line: 275, baseType: !6, size: 32, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !691, file: !40, line: 276, baseType: !369, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !691, file: !40, line: 277, baseType: !12, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !40, line: 278, baseType: !475, size: 128, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !39, file: !40, line: 388, baseType: !704, size: 512)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !40, line: 281, size: 512, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !719, !720, !721, !727, !728}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !40, line: 282, baseType: !38, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !40, line: 282, baseType: !47, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !40, line: 282, baseType: !47, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !40, line: 282, baseType: !52, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !40, line: 282, baseType: !47, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !704, file: !40, line: 282, baseType: !47, size: 8, offset: 104)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !704, file: !40, line: 283, baseType: !47, size: 8, offset: 112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !704, file: !40, line: 284, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !5, line: 1084, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!4, !6, !464, !6, !718, !12, !12}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !40, line: 285, baseType: !33, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !704, file: !40, line: 286, baseType: !12, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !704, file: !40, line: 287, baseType: !722, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !5, line: 1102, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!4, !11, !6, !12, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !704, file: !40, line: 288, baseType: !38, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !40, line: 289, baseType: !38, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !39, file: !40, line: 389, baseType: !730, size: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !40, line: 307, size: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !40, line: 308, baseType: !38, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !40, line: 308, baseType: !47, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !40, line: 308, baseType: !47, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !40, line: 308, baseType: !52, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !40, line: 308, baseType: !47, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !730, file: !40, line: 308, baseType: !47, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !730, file: !40, line: 309, baseType: !47, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !730, file: !40, line: 310, baseType: !47, size: 8, offset: 120)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !730, file: !40, line: 311, baseType: !12, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !40, line: 312, baseType: !33, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !730, file: !40, line: 313, baseType: !105, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !730, file: !40, line: 314, baseType: !90, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !730, file: !40, line: 315, baseType: !90, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !730, file: !40, line: 316, baseType: !6, size: 32, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !39, file: !40, line: 390, baseType: !747, size: 448)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !40, line: 340, size: 448, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !40, line: 341, baseType: !38, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !40, line: 341, baseType: !47, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !40, line: 341, baseType: !47, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !40, line: 341, baseType: !52, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !40, line: 341, baseType: !47, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !747, file: !40, line: 341, baseType: !33, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !747, file: !40, line: 342, baseType: !33, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !747, file: !40, line: 343, baseType: !12, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !747, file: !40, line: 344, baseType: !90, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !747, file: !40, line: 345, baseType: !6, size: 32, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !39, file: !40, line: 391, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !40, line: 350, size: 256, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !40, line: 351, baseType: !38, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !40, line: 351, baseType: !47, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !40, line: 351, baseType: !47, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !40, line: 351, baseType: !52, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !40, line: 351, baseType: !47, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !760, file: !40, line: 351, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !5, line: 1055, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !11, !12}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !760, file: !40, line: 352, baseType: !12, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !39, file: !40, line: 392, baseType: !774, size: 192)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !40, line: 357, size: 192, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !40, line: 358, baseType: !38, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !40, line: 358, baseType: !47, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !40, line: 358, baseType: !47, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !40, line: 358, baseType: !52, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !40, line: 358, baseType: !47, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !774, file: !40, line: 358, baseType: !38, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !39, file: !40, line: 399, baseType: !34, size: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !34, file: !35, line: 135, baseType: !47, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !35, line: 136, baseType: !47, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !35, line: 137, baseType: !52, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 138, baseType: !787, size: 32, offset: 96)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !788, line: 327, size: 32, elements: !789)
!788 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !787, file: !788, line: 328, baseType: !6, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !787, file: !788, line: 329, baseType: !234, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !34, file: !35, line: 139, baseType: !33, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !34, file: !35, line: 140, baseType: !33, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !34, file: !35, line: 141, baseType: !33, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !34, file: !35, line: 142, baseType: !152, size: 16, offset: 320)
!796 = !DILocation(line: 33, column: 30, scope: !23)
!797 = !DILocalVariable(name: "status", scope: !23, file: !1, line: 34, type: !4)
!798 = !DILocation(line: 34, column: 14, scope: !23)
!799 = !DILocation(line: 38, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !23, file: !1, line: 38, column: 6)
!801 = !DILocation(line: 38, column: 6, scope: !23)
!802 = !DILocation(line: 39, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !1, line: 38, column: 17)
!804 = !DILocation(line: 44, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !23, file: !1, line: 44, column: 6)
!806 = !DILocation(line: 44, column: 13, scope: !805)
!807 = !DILocation(line: 44, column: 6, scope: !23)
!808 = !DILocation(line: 45, column: 4, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !1, line: 44, column: 34)
!810 = !DILocation(line: 45, column: 13, scope: !809)
!811 = !DILocation(line: 46, column: 3, scope: !809)
!812 = !DILocation(line: 49, column: 11, scope: !23)
!813 = !DILocation(line: 49, column: 9, scope: !23)
!814 = !DILocation(line: 50, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !23, file: !1, line: 50, column: 6)
!816 = !DILocation(line: 50, column: 6, scope: !23)
!817 = !DILocation(line: 51, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !1, line: 50, column: 28)
!819 = !DILocation(line: 51, column: 3, scope: !818)
!820 = !DILocation(line: 56, column: 33, scope: !23)
!821 = !DILocation(line: 56, column: 9, scope: !23)
!822 = !DILocation(line: 56, column: 7, scope: !23)
!823 = !DILocation(line: 57, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !23, file: !1, line: 57, column: 6)
!825 = !DILocation(line: 57, column: 6, scope: !23)
!826 = !DILocation(line: 58, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !824, file: !1, line: 57, column: 13)
!828 = !DILocation(line: 59, column: 3, scope: !827)
!829 = !DILocation(line: 62, column: 14, scope: !23)
!830 = !DILocation(line: 62, column: 20, scope: !23)
!831 = !DILocation(line: 62, column: 3, scope: !23)
!832 = !DILocation(line: 62, column: 12, scope: !23)
!833 = !DILocation(line: 64, column: 11, scope: !23)
!834 = !DILocation(line: 64, column: 9, scope: !23)
!835 = !DILocation(line: 65, column: 10, scope: !23)
!836 = !DILocation(line: 65, column: 2, scope: !23)
!837 = !DILocation(line: 66, column: 1, scope: !23)
!838 = distinct !DISubprogram(name: "acpi_get_parent", scope: !1, file: !1, line: 83, type: !839, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!839 = !DISubroutineType(types: !840)
!840 = !{!4, !11, !17}
!841 = !DILocalVariable(name: "handle", arg: 1, scope: !838, file: !1, line: 83, type: !11)
!842 = !DILocation(line: 83, column: 41, scope: !838)
!843 = !DILocalVariable(name: "ret_handle", arg: 2, scope: !838, file: !1, line: 83, type: !17)
!844 = !DILocation(line: 83, column: 62, scope: !838)
!845 = !DILocalVariable(name: "node", scope: !838, file: !1, line: 85, type: !33)
!846 = !DILocation(line: 85, column: 30, scope: !838)
!847 = !DILocalVariable(name: "parent_node", scope: !838, file: !1, line: 86, type: !33)
!848 = !DILocation(line: 86, column: 30, scope: !838)
!849 = !DILocalVariable(name: "status", scope: !838, file: !1, line: 87, type: !4)
!850 = !DILocation(line: 87, column: 14, scope: !838)
!851 = !DILocation(line: 89, column: 7, scope: !852)
!852 = distinct !DILexicalBlock(scope: !838, file: !1, line: 89, column: 6)
!853 = !DILocation(line: 89, column: 6, scope: !838)
!854 = !DILocation(line: 90, column: 3, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !1, line: 89, column: 19)
!856 = !DILocation(line: 95, column: 6, scope: !857)
!857 = distinct !DILexicalBlock(scope: !838, file: !1, line: 95, column: 6)
!858 = !DILocation(line: 95, column: 13, scope: !857)
!859 = !DILocation(line: 95, column: 6, scope: !838)
!860 = !DILocation(line: 96, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !1, line: 95, column: 34)
!862 = !DILocation(line: 99, column: 11, scope: !838)
!863 = !DILocation(line: 99, column: 9, scope: !838)
!864 = !DILocation(line: 100, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !838, file: !1, line: 100, column: 6)
!866 = !DILocation(line: 100, column: 6, scope: !838)
!867 = !DILocation(line: 101, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 100, column: 28)
!869 = !DILocation(line: 101, column: 3, scope: !868)
!870 = !DILocation(line: 106, column: 33, scope: !838)
!871 = !DILocation(line: 106, column: 9, scope: !838)
!872 = !DILocation(line: 106, column: 7, scope: !838)
!873 = !DILocation(line: 107, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !838, file: !1, line: 107, column: 6)
!875 = !DILocation(line: 107, column: 6, scope: !838)
!876 = !DILocation(line: 108, column: 10, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !1, line: 107, column: 13)
!878 = !DILocation(line: 109, column: 3, scope: !877)
!879 = !DILocation(line: 114, column: 16, scope: !838)
!880 = !DILocation(line: 114, column: 22, scope: !838)
!881 = !DILocation(line: 114, column: 14, scope: !838)
!882 = !DILocation(line: 115, column: 16, scope: !838)
!883 = !DILocation(line: 115, column: 3, scope: !838)
!884 = !DILocation(line: 115, column: 14, scope: !838)
!885 = !DILocation(line: 119, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !838, file: !1, line: 119, column: 6)
!887 = !DILocation(line: 119, column: 6, scope: !838)
!888 = !DILocation(line: 120, column: 10, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !1, line: 119, column: 20)
!890 = !DILocation(line: 121, column: 2, scope: !889)
!891 = !DILabel(scope: !838, name: "unlock_and_exit", file: !1, line: 123)
!892 = !DILocation(line: 123, column: 1, scope: !838)
!893 = !DILocation(line: 125, column: 8, scope: !838)
!894 = !DILocation(line: 126, column: 10, scope: !838)
!895 = !DILocation(line: 126, column: 2, scope: !838)
!896 = !DILocation(line: 127, column: 1, scope: !838)
!897 = distinct !DISubprogram(name: "acpi_get_next_object", scope: !1, file: !1, line: 149, type: !898, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!898 = !DISubroutineType(types: !899)
!899 = !{!4, !27, !11, !11, !17}
!900 = !DILocalVariable(name: "type", arg: 1, scope: !897, file: !1, line: 149, type: !27)
!901 = !DILocation(line: 149, column: 39, scope: !897)
!902 = !DILocalVariable(name: "parent", arg: 2, scope: !897, file: !1, line: 150, type: !11)
!903 = !DILocation(line: 150, column: 20, scope: !897)
!904 = !DILocalVariable(name: "child", arg: 3, scope: !897, file: !1, line: 151, type: !11)
!905 = !DILocation(line: 151, column: 20, scope: !897)
!906 = !DILocalVariable(name: "ret_handle", arg: 4, scope: !897, file: !1, line: 151, type: !17)
!907 = !DILocation(line: 151, column: 40, scope: !897)
!908 = !DILocalVariable(name: "status", scope: !897, file: !1, line: 153, type: !4)
!909 = !DILocation(line: 153, column: 14, scope: !897)
!910 = !DILocalVariable(name: "node", scope: !897, file: !1, line: 154, type: !33)
!911 = !DILocation(line: 154, column: 30, scope: !897)
!912 = !DILocalVariable(name: "parent_node", scope: !897, file: !1, line: 155, type: !33)
!913 = !DILocation(line: 155, column: 30, scope: !897)
!914 = !DILocalVariable(name: "child_node", scope: !897, file: !1, line: 156, type: !33)
!915 = !DILocation(line: 156, column: 30, scope: !897)
!916 = !DILocation(line: 160, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !897, file: !1, line: 160, column: 6)
!918 = !DILocation(line: 160, column: 11, scope: !917)
!919 = !DILocation(line: 160, column: 6, scope: !897)
!920 = !DILocation(line: 161, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !1, line: 160, column: 37)
!922 = !DILocation(line: 164, column: 11, scope: !897)
!923 = !DILocation(line: 164, column: 9, scope: !897)
!924 = !DILocation(line: 165, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !897, file: !1, line: 165, column: 6)
!926 = !DILocation(line: 165, column: 6, scope: !897)
!927 = !DILocation(line: 166, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !1, line: 165, column: 28)
!929 = !DILocation(line: 166, column: 3, scope: !928)
!930 = !DILocation(line: 171, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !897, file: !1, line: 171, column: 6)
!932 = !DILocation(line: 171, column: 6, scope: !897)
!933 = !DILocation(line: 175, column: 41, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !1, line: 171, column: 14)
!935 = !DILocation(line: 175, column: 17, scope: !934)
!936 = !DILocation(line: 175, column: 15, scope: !934)
!937 = !DILocation(line: 176, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !1, line: 176, column: 7)
!939 = !DILocation(line: 176, column: 7, scope: !934)
!940 = !DILocation(line: 177, column: 11, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !1, line: 176, column: 21)
!942 = !DILocation(line: 178, column: 4, scope: !941)
!943 = !DILocation(line: 180, column: 2, scope: !934)
!944 = !DILocation(line: 184, column: 40, scope: !945)
!945 = distinct !DILexicalBlock(scope: !931, file: !1, line: 180, column: 9)
!946 = !DILocation(line: 184, column: 16, scope: !945)
!947 = !DILocation(line: 184, column: 14, scope: !945)
!948 = !DILocation(line: 185, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !1, line: 185, column: 7)
!950 = !DILocation(line: 185, column: 7, scope: !945)
!951 = !DILocation(line: 186, column: 11, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !1, line: 185, column: 20)
!953 = !DILocation(line: 187, column: 4, scope: !952)
!954 = !DILocation(line: 193, column: 37, scope: !897)
!955 = !DILocation(line: 193, column: 43, scope: !897)
!956 = !DILocation(line: 193, column: 56, scope: !897)
!957 = !DILocation(line: 193, column: 9, scope: !897)
!958 = !DILocation(line: 193, column: 7, scope: !897)
!959 = !DILocation(line: 194, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !897, file: !1, line: 194, column: 6)
!961 = !DILocation(line: 194, column: 6, scope: !897)
!962 = !DILocation(line: 195, column: 10, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !1, line: 194, column: 13)
!964 = !DILocation(line: 196, column: 3, scope: !963)
!965 = !DILocation(line: 199, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !897, file: !1, line: 199, column: 6)
!967 = !DILocation(line: 199, column: 6, scope: !897)
!968 = !DILocation(line: 200, column: 17, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !1, line: 199, column: 18)
!970 = !DILocation(line: 200, column: 4, scope: !969)
!971 = !DILocation(line: 200, column: 15, scope: !969)
!972 = !DILocation(line: 201, column: 2, scope: !969)
!973 = !DILabel(scope: !897, name: "unlock_and_exit", file: !1, line: 203)
!974 = !DILocation(line: 203, column: 1, scope: !897)
!975 = !DILocation(line: 205, column: 8, scope: !897)
!976 = !DILocation(line: 206, column: 10, scope: !897)
!977 = !DILocation(line: 206, column: 2, scope: !897)
!978 = !DILocation(line: 207, column: 1, scope: !897)
