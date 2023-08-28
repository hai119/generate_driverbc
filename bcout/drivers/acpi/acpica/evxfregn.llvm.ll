; ModuleID = '../bcout/drivers/acpi/acpica/evxfregn.llvm.bc'
source_filename = "drivers/acpi/acpica/evxfregn.c"
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
%struct.acpi_object_notify_common = type { %union.acpi_operand_object*, i8, i8, i16, i8, [2 x %union.acpi_operand_object*], %union.acpi_operand_object* }
%struct.acpi_object_addr_handler = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i32 (i32, i64, i32, i64*, i8*, i8*)*, %struct.acpi_namespace_node*, i8*, i32 (i8*, i32, i8*, i8**)*, %union.acpi_operand_object*, %union.acpi_operand_object* }

@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_address_space_handler(i8* %device, i8 zeroext %space_id, i32 (i32, i64, i32, i64*, i8*, i8*)* %handler, i32 (i8*, i32, i8*, i8**)* %setup, i8* %context) #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca i8*, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca i32 (i32, i64, i32, i64*, i8*, i8*)*, align 8
  %setup.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %context.addr = alloca i8*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %device, i8** %device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 (i32, i64, i32, i64*, i8*, i8*)* %handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 (i8*, i32, i8*, i8**)* %setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %setup.addr, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !49, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata i32* %status, metadata !800, metadata !DIExpression()), !dbg !801
  %0 = load i8*, i8** %device.addr, align 8, !dbg !802
  %tobool = icmp ne i8* %0, null, !dbg !802
  br i1 %tobool, label %if.end, label %if.then, !dbg !804

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !805
  br label %return, !dbg !805

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !807
  store i32 %call, i32* %status, align 4, !dbg !808
  %1 = load i32, i32* %status, align 4, !dbg !809
  %tobool1 = icmp ne i32 %1, 0, !dbg !809
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !811

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !812
  store i32 %2, i32* %retval, align 4, !dbg !812
  br label %return, !dbg !812

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %device.addr, align 8, !dbg !814
  %call4 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %3) #3, !dbg !815
  store %struct.acpi_namespace_node* %call4, %struct.acpi_namespace_node** %node, align 8, !dbg !816
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !817
  %tobool5 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !817
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !819

if.then6:                                         ; preds = %if.end3
  store i32 4097, i32* %status, align 4, !dbg !820
  br label %unlock_and_exit, !dbg !822

if.end7:                                          ; preds = %if.end3
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !823
  %6 = load i8, i8* %space_id.addr, align 1, !dbg !824
  %7 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !825
  %8 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !826
  %9 = load i8*, i8** %context.addr, align 8, !dbg !827
  %call8 = call i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node* %5, i8 zeroext %6, i32 (i32, i64, i32, i64*, i8*, i8*)* %7, i32 (i8*, i32, i8*, i8**)* %8, i8* %9) #3, !dbg !828
  store i32 %call8, i32* %status, align 4, !dbg !829
  %10 = load i32, i32* %status, align 4, !dbg !830
  %tobool9 = icmp ne i32 %10, 0, !dbg !830
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !832

if.then10:                                        ; preds = %if.end7
  br label %unlock_and_exit, !dbg !833

if.end11:                                         ; preds = %if.end7
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !835
  %12 = load i8, i8* %space_id.addr, align 1, !dbg !836
  call void @acpi_ev_execute_reg_methods(%struct.acpi_namespace_node* %11, i8 zeroext %12, i32 1) #3, !dbg !837
  br label %unlock_and_exit, !dbg !837

unlock_and_exit:                                  ; preds = %if.end11, %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !838), !dbg !839
  %call12 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !840
  %13 = load i32, i32* %status, align 4, !dbg !841
  store i32 %13, i32* %retval, align 4, !dbg !841
  br label %return, !dbg !841

return:                                           ; preds = %unlock_and_exit, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !842
  ret i32 %14, !dbg !842
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node*, i8 zeroext, i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i8*, i32, i8*, i8**)*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ev_execute_reg_methods(%struct.acpi_namespace_node*, i8 zeroext, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_remove_address_space_handler(i8* %device, i8 zeroext %space_id, i32 (i32, i64, i32, i64*, i8*, i8*)* %handler) #0 !dbg !843 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca i8*, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca i32 (i32, i64, i32, i64*, i8*, i8*)*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %region_obj = alloca %union.acpi_operand_object*, align 8
  %last_obj_ptr = alloca %union.acpi_operand_object**, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %device, i8** %device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %device.addr, metadata !846, metadata !DIExpression()), !dbg !847
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !848, metadata !DIExpression()), !dbg !849
  store i32 (i32, i64, i32, i64*, i8*, i8*)* %handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, metadata !850, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !852, metadata !DIExpression()), !dbg !853
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !854, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %region_obj, metadata !856, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %last_obj_ptr, metadata !858, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata i32* %status, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load i8*, i8** %device.addr, align 8, !dbg !864
  %tobool = icmp ne i8* %0, null, !dbg !864
  br i1 %tobool, label %if.end, label %if.then, !dbg !866

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !867
  br label %return, !dbg !867

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !869
  store i32 %call, i32* %status, align 4, !dbg !870
  %1 = load i32, i32* %status, align 4, !dbg !871
  %tobool1 = icmp ne i32 %1, 0, !dbg !871
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !873

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* %status, align 4, !dbg !874
  store i32 %2, i32* %retval, align 4, !dbg !874
  br label %return, !dbg !874

if.end3:                                          ; preds = %if.end
  %3 = load i8*, i8** %device.addr, align 8, !dbg !876
  %call4 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %3) #3, !dbg !877
  store %struct.acpi_namespace_node* %call4, %struct.acpi_namespace_node** %node, align 8, !dbg !878
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !879
  %tobool5 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !879
  br i1 %tobool5, label %lor.lhs.false, label %if.then19, !dbg !881

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !882
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 2, !dbg !883
  %6 = load i8, i8* %type, align 1, !dbg !883
  %conv = zext i8 %6 to i32, !dbg !882
  %cmp = icmp ne i32 %conv, 6, !dbg !884
  br i1 %cmp, label %land.lhs.true, label %if.end20, !dbg !885

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !886
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 2, !dbg !887
  %8 = load i8, i8* %type7, align 1, !dbg !887
  %conv8 = zext i8 %8 to i32, !dbg !886
  %cmp9 = icmp ne i32 %conv8, 12, !dbg !888
  br i1 %cmp9, label %land.lhs.true11, label %if.end20, !dbg !889

land.lhs.true11:                                  ; preds = %land.lhs.true
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !890
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %9, i32 0, i32 2, !dbg !891
  %10 = load i8, i8* %type12, align 1, !dbg !891
  %conv13 = zext i8 %10 to i32, !dbg !890
  %cmp14 = icmp ne i32 %conv13, 13, !dbg !892
  br i1 %cmp14, label %land.lhs.true16, label %if.end20, !dbg !893

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !894
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !895
  %cmp17 = icmp ne %struct.acpi_namespace_node* %11, %12, !dbg !896
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !897

if.then19:                                        ; preds = %land.lhs.true16, %if.end3
  store i32 4097, i32* %status, align 4, !dbg !898
  br label %unlock_and_exit, !dbg !900

if.end20:                                         ; preds = %land.lhs.true16, %land.lhs.true11, %land.lhs.true, %lor.lhs.false
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !901
  %call21 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %13) #3, !dbg !902
  store %union.acpi_operand_object* %call21, %union.acpi_operand_object** %obj_desc, align 8, !dbg !903
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !904
  %tobool22 = icmp ne %union.acpi_operand_object* %14, null, !dbg !904
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !906

if.then23:                                        ; preds = %if.end20
  store i32 6, i32* %status, align 4, !dbg !907
  br label %unlock_and_exit, !dbg !909

if.end24:                                         ; preds = %if.end20
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !910
  %common_notify = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_notify_common*, !dbg !911
  %handler25 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 6, !dbg !912
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler25, align 8, !dbg !912
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %handler_obj, align 8, !dbg !913
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !914
  %common_notify26 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_notify_common*, !dbg !915
  %handler27 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify26, i32 0, i32 6, !dbg !916
  store %union.acpi_operand_object** %handler27, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !917
  br label %while.cond, !dbg !918

while.cond:                                       ; preds = %if.end48, %if.end24
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !919
  %tobool28 = icmp ne %union.acpi_operand_object* %18, null, !dbg !918
  br i1 %tobool28, label %while.body, label %while.end53, !dbg !918

while.body:                                       ; preds = %while.cond
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !920
  %address_space = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_addr_handler*, !dbg !923
  %space_id29 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 5, !dbg !924
  %20 = load i8, i8* %space_id29, align 1, !dbg !924
  %conv30 = zext i8 %20 to i32, !dbg !920
  %21 = load i8, i8* %space_id.addr, align 1, !dbg !925
  %conv31 = zext i8 %21 to i32, !dbg !925
  %cmp32 = icmp eq i32 %conv30, %conv31, !dbg !926
  br i1 %cmp32, label %if.then34, label %if.end48, !dbg !927

if.then34:                                        ; preds = %while.body
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !928
  %address_space35 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_addr_handler*, !dbg !931
  %handler36 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space35, i32 0, i32 7, !dbg !932
  %23 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler36, align 8, !dbg !932
  %24 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !933
  %cmp37 = icmp ne i32 (i32, i64, i32, i64*, i8*, i8*)* %23, %24, !dbg !934
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !935

if.then39:                                        ; preds = %if.then34
  store i32 4097, i32* %status, align 4, !dbg !936
  br label %unlock_and_exit, !dbg !938

if.end40:                                         ; preds = %if.then34
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !939
  %address_space41 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_addr_handler*, !dbg !940
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space41, i32 0, i32 11, !dbg !941
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_list, align 8, !dbg !941
  store %union.acpi_operand_object* %26, %union.acpi_operand_object** %region_obj, align 8, !dbg !942
  br label %while.cond42, !dbg !943

while.cond42:                                     ; preds = %while.body44, %if.end40
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !944
  %tobool43 = icmp ne %union.acpi_operand_object* %27, null, !dbg !943
  br i1 %tobool43, label %while.body44, label %while.end, !dbg !943

while.body44:                                     ; preds = %while.cond42
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_obj, align 8, !dbg !945
  call void @acpi_ev_detach_region(%union.acpi_operand_object* %28, i8 zeroext 1) #3, !dbg !947
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !948
  %address_space45 = bitcast %union.acpi_operand_object* %29 to %struct.acpi_object_addr_handler*, !dbg !949
  %region_list46 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space45, i32 0, i32 11, !dbg !950
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %region_list46, align 8, !dbg !950
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %region_obj, align 8, !dbg !951
  br label %while.cond42, !dbg !943, !llvm.loop !952

while.end:                                        ; preds = %while.cond42
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !954
  %address_space47 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_addr_handler*, !dbg !955
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space47, i32 0, i32 12, !dbg !956
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !956
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !957
  store %union.acpi_operand_object* %32, %union.acpi_operand_object** %33, align 8, !dbg !958
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !959
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %34) #3, !dbg !960
  br label %unlock_and_exit, !dbg !961

if.end48:                                         ; preds = %while.body
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !962
  %address_space49 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_addr_handler*, !dbg !963
  %next50 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space49, i32 0, i32 12, !dbg !964
  store %union.acpi_operand_object** %next50, %union.acpi_operand_object*** %last_obj_ptr, align 8, !dbg !965
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !966
  %address_space51 = bitcast %union.acpi_operand_object* %36 to %struct.acpi_object_addr_handler*, !dbg !967
  %next52 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space51, i32 0, i32 12, !dbg !968
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next52, align 8, !dbg !968
  store %union.acpi_operand_object* %37, %union.acpi_operand_object** %handler_obj, align 8, !dbg !969
  br label %while.cond, !dbg !918, !llvm.loop !970

while.end53:                                      ; preds = %while.cond
  store i32 6, i32* %status, align 4, !dbg !972
  br label %unlock_and_exit, !dbg !973

unlock_and_exit:                                  ; preds = %while.end53, %while.end, %if.then39, %if.then23, %if.then19
  call void @llvm.dbg.label(metadata !974), !dbg !975
  %call54 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !976
  %38 = load i32, i32* %status, align 4, !dbg !977
  store i32 %38, i32* %retval, align 4, !dbg !977
  br label %return, !dbg !977

return:                                           ; preds = %unlock_and_exit, %if.then2, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !978
  ret i32 %39, !dbg !978
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ev_detach_region(%union.acpi_operand_object*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/evxfregn.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !5, line: 421, baseType: !6)
!5 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "acpi_install_address_space_handler", scope: !1, file: !1, line: 43, type: !17, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !19, !21, !25, !34, !20}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5, line: 424, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !5, line: 805, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !9, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !5, line: 1084, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{!4, !6, !29, !6, !33, !20, !20}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !5, line: 129, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !32)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !5, line: 1102, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!4, !19, !6, !20, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!39 = !DILocalVariable(name: "device", arg: 1, scope: !16, file: !1, line: 43, type: !19)
!40 = !DILocation(line: 43, column: 48, scope: !16)
!41 = !DILocalVariable(name: "space_id", arg: 2, scope: !16, file: !1, line: 44, type: !21)
!42 = !DILocation(line: 44, column: 28, scope: !16)
!43 = !DILocalVariable(name: "handler", arg: 3, scope: !16, file: !1, line: 45, type: !25)
!44 = !DILocation(line: 45, column: 31, scope: !16)
!45 = !DILocalVariable(name: "setup", arg: 4, scope: !16, file: !1, line: 46, type: !34)
!46 = !DILocation(line: 46, column: 29, scope: !16)
!47 = !DILocalVariable(name: "context", arg: 5, scope: !16, file: !1, line: 46, type: !20)
!48 = !DILocation(line: 46, column: 42, scope: !16)
!49 = !DILocalVariable(name: "node", scope: !16, file: !1, line: 48, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !52, line: 133, size: 384, elements: !53)
!52 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !786, !787, !788, !789, !795, !796, !797, !798}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !51, file: !52, line: 134, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !57, line: 367, size: 576, elements: !58)
!57 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !70, !83, !95, !109, !123, !132, !448, !465, !479, !492, !570, !582, !596, !606, !624, !646, !665, !684, !703, !716, !732, !749, !762, !776, !785}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !56, file: !57, line: 368, baseType: !60, size: 128)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !57, line: 73, size: 128, elements: !61)
!61 = !{!62, !63, !64, !65, !69}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !60, file: !57, line: 74, baseType: !55, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !60, file: !57, line: 74, baseType: !22, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !57, line: 74, baseType: !22, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !60, file: !57, line: 74, baseType: !66, size: 16, offset: 80)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !68)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !57, line: 74, baseType: !22, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !56, file: !57, line: 369, baseType: !71, size: 192)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !57, line: 76, size: 192, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !82}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !71, file: !57, line: 77, baseType: !55, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !71, file: !57, line: 77, baseType: !22, size: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !57, line: 77, baseType: !22, size: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !71, file: !57, line: 77, baseType: !66, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !57, line: 77, baseType: !22, size: 8, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !71, file: !57, line: 77, baseType: !79, size: 24, offset: 104)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 3)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !71, file: !57, line: 78, baseType: !30, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !56, file: !57, line: 370, baseType: !84, size: 256)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !57, line: 93, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !94}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !84, file: !57, line: 94, baseType: !55, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !84, file: !57, line: 94, baseType: !22, size: 8, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !57, line: 94, baseType: !22, size: 8, offset: 72)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !84, file: !57, line: 94, baseType: !66, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !57, line: 94, baseType: !22, size: 8, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !84, file: !57, line: 94, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !84, file: !57, line: 94, baseType: !6, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !56, file: !57, line: 371, baseType: !96, size: 384)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !57, line: 97, size: 384, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !105, !106, !107, !108}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !57, line: 98, baseType: !55, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !57, line: 98, baseType: !22, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !57, line: 98, baseType: !22, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !57, line: 98, baseType: !66, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !57, line: 98, baseType: !22, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !96, file: !57, line: 98, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !96, file: !57, line: 98, baseType: !6, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !96, file: !57, line: 99, baseType: !6, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !96, file: !57, line: 100, baseType: !104, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !96, file: !57, line: 101, baseType: !50, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !56, file: !57, line: 372, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !57, line: 104, size: 384, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !120, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !57, line: 105, baseType: !55, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !57, line: 105, baseType: !22, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !57, line: 105, baseType: !22, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !57, line: 105, baseType: !66, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !57, line: 105, baseType: !22, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !57, line: 105, baseType: !50, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !110, file: !57, line: 106, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !110, file: !57, line: 107, baseType: !104, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !110, file: !57, line: 108, baseType: !6, size: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !110, file: !57, line: 109, baseType: !6, size: 32, offset: 352)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !56, file: !57, line: 373, baseType: !124, size: 192)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !57, line: 118, size: 192, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !57, line: 119, baseType: !55, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !57, line: 119, baseType: !22, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !57, line: 119, baseType: !22, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !57, line: 119, baseType: !66, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !57, line: 119, baseType: !22, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !124, file: !57, line: 119, baseType: !20, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !56, file: !57, line: 374, baseType: !133, size: 448)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !57, line: 143, size: 448, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !445, !446, !447}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !57, line: 144, baseType: !55, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !57, line: 144, baseType: !22, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !57, line: 144, baseType: !22, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !57, line: 144, baseType: !66, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !57, line: 144, baseType: !22, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !133, file: !57, line: 144, baseType: !22, size: 8, offset: 104)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !133, file: !57, line: 145, baseType: !22, size: 8, offset: 112)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !133, file: !57, line: 146, baseType: !22, size: 8, offset: 120)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !133, file: !57, line: 147, baseType: !55, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !57, line: 148, baseType: !55, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !57, line: 149, baseType: !104, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !133, file: !57, line: 153, baseType: !147, size: 64, offset: 320)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !57, line: 150, size: 64, elements: !148)
!148 = !{!149, !444}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !147, file: !57, line: 151, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !52, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!4, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !156, line: 37, size: 9024, elements: !157)
!156 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !390, !391, !392, !393, !394, !398, !400, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !427, !428, !429, !430, !431, !432, !433, !434, !436, !442}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 38, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !156, line: 39, baseType: !22, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !155, file: !156, line: 40, baseType: !22, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !155, file: !156, line: 41, baseType: !66, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !155, file: !156, line: 42, baseType: !22, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !155, file: !156, line: 43, baseType: !22, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !155, file: !156, line: 44, baseType: !22, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !155, file: !156, line: 45, baseType: !166, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !5, line: 445, baseType: !66)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !155, file: !156, line: 46, baseType: !22, size: 8, offset: 144)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !155, file: !156, line: 47, baseType: !22, size: 8, offset: 152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !155, file: !156, line: 48, baseType: !22, size: 8, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !155, file: !156, line: 49, baseType: !22, size: 8, offset: 168)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !155, file: !156, line: 50, baseType: !22, size: 8, offset: 176)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !155, file: !156, line: 51, baseType: !22, size: 8, offset: 184)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !155, file: !156, line: 52, baseType: !22, size: 8, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !155, file: !156, line: 53, baseType: !22, size: 8, offset: 200)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !155, file: !156, line: 54, baseType: !104, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !155, file: !156, line: 55, baseType: !6, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !155, file: !156, line: 56, baseType: !6, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !155, file: !156, line: 57, baseType: !6, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !155, file: !156, line: 58, baseType: !6, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !155, file: !156, line: 60, baseType: !181, size: 640, offset: 448)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !52, line: 893, size: 640, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !272, !273, !388, !389}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !52, line: 894, baseType: !104, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !181, file: !52, line: 895, baseType: !104, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !181, file: !52, line: 896, baseType: !104, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !181, file: !52, line: 897, baseType: !104, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !181, file: !52, line: 898, baseType: !104, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !181, file: !52, line: 899, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !52, line: 875, size: 1600, elements: !191)
!191 = !{!192, !212, !228}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !190, file: !52, line: 876, baseType: !193, size: 448)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !52, line: 828, size: 448, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !211}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !52, line: 829, baseType: !189, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !52, line: 829, baseType: !22, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !52, line: 829, baseType: !22, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !52, line: 829, baseType: !66, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !52, line: 829, baseType: !104, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !52, line: 829, baseType: !189, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !52, line: 829, baseType: !50, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !52, line: 829, baseType: !203, size: 64, offset: 320)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !52, line: 716, size: 64, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !203, file: !52, line: 717, baseType: !30, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !52, line: 718, baseType: !6, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !203, file: !52, line: 719, baseType: !92, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !203, file: !52, line: 720, baseType: !104, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !52, line: 721, baseType: !92, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !203, file: !52, line: 722, baseType: !189, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !52, line: 829, baseType: !22, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !190, file: !52, line: 877, baseType: !213, size: 640)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !52, line: 835, size: 640, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !52, line: 836, baseType: !189, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !52, line: 836, baseType: !22, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !52, line: 836, baseType: !22, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !52, line: 836, baseType: !66, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !52, line: 836, baseType: !104, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !52, line: 836, baseType: !189, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !52, line: 836, baseType: !50, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !52, line: 836, baseType: !203, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !52, line: 836, baseType: !22, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !213, file: !52, line: 836, baseType: !92, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !52, line: 837, baseType: !104, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !213, file: !52, line: 838, baseType: !6, size: 32, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !52, line: 839, baseType: !6, size: 32, offset: 608)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !190, file: !52, line: 878, baseType: !229, size: 1600)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !52, line: 846, size: 1600, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !52, line: 847, baseType: !189, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !52, line: 847, baseType: !22, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !52, line: 847, baseType: !22, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !52, line: 847, baseType: !66, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !52, line: 847, baseType: !104, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !52, line: 847, baseType: !189, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !52, line: 847, baseType: !50, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !52, line: 847, baseType: !203, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !52, line: 847, baseType: !22, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !229, file: !52, line: 847, baseType: !189, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !229, file: !52, line: 848, baseType: !189, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !229, file: !52, line: 849, baseType: !92, size: 64, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !229, file: !52, line: 850, baseType: !22, size: 8, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !229, file: !52, line: 851, baseType: !92, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !229, file: !52, line: 852, baseType: !92, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !229, file: !52, line: 853, baseType: !92, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !229, file: !52, line: 854, baseType: !248, size: 32, offset: 896)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 4)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !229, file: !52, line: 855, baseType: !6, size: 32, offset: 928)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !229, file: !52, line: 856, baseType: !6, size: 32, offset: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !229, file: !52, line: 857, baseType: !6, size: 32, offset: 992)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !229, file: !52, line: 858, baseType: !6, size: 32, offset: 1024)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !229, file: !52, line: 859, baseType: !6, size: 32, offset: 1056)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !229, file: !52, line: 860, baseType: !6, size: 32, offset: 1088)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !229, file: !52, line: 861, baseType: !6, size: 32, offset: 1120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !229, file: !52, line: 862, baseType: !6, size: 32, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !229, file: !52, line: 863, baseType: !6, size: 32, offset: 1184)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !229, file: !52, line: 864, baseType: !6, size: 32, offset: 1216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !229, file: !52, line: 865, baseType: !6, size: 32, offset: 1248)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !229, file: !52, line: 866, baseType: !6, size: 32, offset: 1280)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !229, file: !52, line: 867, baseType: !6, size: 32, offset: 1312)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !229, file: !52, line: 868, baseType: !66, size: 16, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !229, file: !52, line: 869, baseType: !22, size: 8, offset: 1360)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !229, file: !52, line: 870, baseType: !22, size: 8, offset: 1368)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !229, file: !52, line: 871, baseType: !22, size: 8, offset: 1376)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !229, file: !52, line: 872, baseType: !269, size: 160, offset: 1384)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 160, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 20)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !181, file: !52, line: 900, baseType: !50, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !181, file: !52, line: 901, baseType: !274, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !52, line: 663, size: 640, elements: !276)
!276 = !{!277, !285, !298, !307, !316, !329, !343, !355, !367}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !275, file: !52, line: 664, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !52, line: 567, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !52, line: 568, baseType: !20, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !278, file: !52, line: 568, baseType: !22, size: 8, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !52, line: 568, baseType: !22, size: 8, offset: 72)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !278, file: !52, line: 568, baseType: !66, size: 16, offset: 80)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !278, file: !52, line: 568, baseType: !66, size: 16, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !275, file: !52, line: 665, baseType: !286, size: 384)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !52, line: 593, size: 384, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !286, file: !52, line: 594, baseType: !20, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !286, file: !52, line: 594, baseType: !22, size: 8, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !52, line: 594, baseType: !22, size: 8, offset: 72)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !286, file: !52, line: 594, baseType: !66, size: 16, offset: 80)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !286, file: !52, line: 594, baseType: !66, size: 16, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !286, file: !52, line: 594, baseType: !66, size: 16, offset: 112)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !286, file: !52, line: 595, baseType: !189, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !286, file: !52, line: 596, baseType: !104, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !286, file: !52, line: 597, baseType: !104, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !286, file: !52, line: 598, baseType: !30, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !275, file: !52, line: 666, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !52, line: 573, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !52, line: 574, baseType: !20, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !52, line: 574, baseType: !22, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !52, line: 574, baseType: !22, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !52, line: 574, baseType: !66, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !52, line: 574, baseType: !66, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !299, file: !52, line: 574, baseType: !55, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !275, file: !52, line: 667, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !52, line: 604, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !52, line: 605, baseType: !20, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !52, line: 605, baseType: !22, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !52, line: 605, baseType: !22, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !52, line: 605, baseType: !66, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !52, line: 605, baseType: !66, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !308, file: !52, line: 605, baseType: !50, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !275, file: !52, line: 668, baseType: !317, size: 448)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !52, line: 608, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !52, line: 609, baseType: !20, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !52, line: 609, baseType: !22, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !52, line: 609, baseType: !22, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !52, line: 609, baseType: !66, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !52, line: 609, baseType: !66, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !317, file: !52, line: 609, baseType: !6, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !317, file: !52, line: 610, baseType: !189, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !317, file: !52, line: 611, baseType: !104, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !317, file: !52, line: 612, baseType: !104, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !317, file: !52, line: 613, baseType: !6, size: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !275, file: !52, line: 669, baseType: !330, size: 512)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !52, line: 580, size: 512, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !52, line: 581, baseType: !20, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !52, line: 581, baseType: !22, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !52, line: 581, baseType: !22, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !52, line: 581, baseType: !66, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !52, line: 581, baseType: !66, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !330, file: !52, line: 581, baseType: !6, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !330, file: !52, line: 582, baseType: !55, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !330, file: !52, line: 583, baseType: !55, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !330, file: !52, line: 584, baseType: !154, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !330, file: !52, line: 585, baseType: !20, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !330, file: !52, line: 586, baseType: !6, size: 32, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !275, file: !52, line: 670, baseType: !344, size: 320)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !52, line: 620, size: 320, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !52, line: 621, baseType: !20, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !344, file: !52, line: 621, baseType: !22, size: 8, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !344, file: !52, line: 621, baseType: !22, size: 8, offset: 72)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !344, file: !52, line: 621, baseType: !66, size: 16, offset: 80)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !344, file: !52, line: 621, baseType: !66, size: 16, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !344, file: !52, line: 621, baseType: !22, size: 8, offset: 112)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !344, file: !52, line: 622, baseType: !154, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !344, file: !52, line: 623, baseType: !55, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !344, file: !52, line: 624, baseType: !30, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !275, file: !52, line: 671, baseType: !356, size: 640)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !52, line: 631, size: 640, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !52, line: 632, baseType: !20, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !52, line: 632, baseType: !22, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !52, line: 632, baseType: !22, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !52, line: 632, baseType: !66, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !52, line: 632, baseType: !66, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !356, file: !52, line: 633, baseType: !364, size: 512, offset: 128)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 512, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !275, file: !52, line: 672, baseType: !368, size: 320)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !52, line: 654, size: 320, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !52, line: 655, baseType: !20, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !52, line: 655, baseType: !22, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !52, line: 655, baseType: !22, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !52, line: 655, baseType: !66, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !52, line: 655, baseType: !66, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !368, file: !52, line: 655, baseType: !22, size: 8, offset: 112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !52, line: 656, baseType: !50, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !368, file: !52, line: 657, baseType: !55, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !368, file: !52, line: 658, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !52, line: 645, size: 128, elements: !381)
!381 = !{!382, !387}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !380, file: !52, line: 646, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !5, line: 1052, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !19, !6, !20}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !52, line: 647, baseType: !20, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !181, file: !52, line: 902, baseType: !189, size: 64, offset: 512)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !181, file: !52, line: 903, baseType: !6, size: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !155, file: !156, line: 61, baseType: !6, size: 32, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !155, file: !156, line: 62, baseType: !6, size: 32, offset: 1120)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !155, file: !156, line: 63, baseType: !66, size: 16, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !155, file: !156, line: 64, baseType: !22, size: 8, offset: 1168)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !155, file: !156, line: 66, baseType: !395, size: 2688, offset: 1216)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2688, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 7)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !155, file: !156, line: 67, baseType: !399, size: 3072, offset: 3904)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3072, elements: !365)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !155, file: !156, line: 68, baseType: !401, size: 576, offset: 6976)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 9)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !155, file: !156, line: 69, baseType: !119, size: 64, offset: 7552)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !155, file: !156, line: 71, baseType: !104, size: 64, offset: 7616)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !155, file: !156, line: 72, baseType: !119, size: 64, offset: 7680)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !155, file: !156, line: 73, baseType: !274, size: 64, offset: 7744)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !155, file: !156, line: 74, baseType: !50, size: 64, offset: 7808)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !155, file: !156, line: 75, baseType: !55, size: 64, offset: 7872)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !155, file: !156, line: 76, baseType: !50, size: 64, offset: 7936)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !155, file: !156, line: 77, baseType: !189, size: 64, offset: 8000)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !155, file: !156, line: 78, baseType: !55, size: 64, offset: 8064)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !155, file: !156, line: 79, baseType: !50, size: 64, offset: 8128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !155, file: !156, line: 80, baseType: !92, size: 64, offset: 8192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !155, file: !156, line: 81, baseType: !189, size: 64, offset: 8256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !155, file: !156, line: 82, baseType: !417, size: 64, offset: 8320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !52, line: 702, size: 128, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !419, file: !52, line: 706, baseType: !6, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !419, file: !52, line: 707, baseType: !6, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !52, line: 708, baseType: !66, size: 16, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !419, file: !52, line: 709, baseType: !22, size: 8, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !419, file: !52, line: 710, baseType: !22, size: 8, offset: 88)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !419, file: !52, line: 711, baseType: !22, size: 8, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !155, file: !156, line: 83, baseType: !189, size: 64, offset: 8384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !155, file: !156, line: 84, baseType: !55, size: 64, offset: 8448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !155, file: !156, line: 85, baseType: !274, size: 64, offset: 8512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !155, file: !156, line: 86, baseType: !55, size: 64, offset: 8576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !155, file: !156, line: 87, baseType: !274, size: 64, offset: 8640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !155, file: !156, line: 88, baseType: !189, size: 64, offset: 8704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !155, file: !156, line: 89, baseType: !189, size: 64, offset: 8768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !155, file: !156, line: 90, baseType: !435, size: 64, offset: 8832)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !155, file: !156, line: 91, baseType: !437, size: 64, offset: 8896)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !52, line: 637, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!4, !154, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !155, file: !156, line: 92, baseType: !443, size: 64, offset: 8960)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !52, line: 641, baseType: !151)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !147, file: !57, line: 152, baseType: !55, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !57, line: 155, baseType: !6, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !133, file: !57, line: 156, baseType: !166, size: 16, offset: 416)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !133, file: !57, line: 157, baseType: !22, size: 8, offset: 432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !56, file: !57, line: 375, baseType: !449, size: 576)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !57, line: 122, size: 576, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !449, file: !57, line: 123, baseType: !55, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !449, file: !57, line: 123, baseType: !22, size: 8, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !449, file: !57, line: 123, baseType: !22, size: 8, offset: 72)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !449, file: !57, line: 123, baseType: !66, size: 16, offset: 80)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !57, line: 123, baseType: !22, size: 8, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !449, file: !57, line: 123, baseType: !22, size: 8, offset: 104)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !449, file: !57, line: 124, baseType: !66, size: 16, offset: 112)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !449, file: !57, line: 125, baseType: !20, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !449, file: !57, line: 126, baseType: !30, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !449, file: !57, line: 127, baseType: !435, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !449, file: !57, line: 128, baseType: !55, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !57, line: 129, baseType: !55, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !449, file: !57, line: 130, baseType: !50, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !449, file: !57, line: 131, baseType: !22, size: 8, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !56, file: !57, line: 376, baseType: !466, size: 448)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !57, line: 134, size: 448, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !57, line: 135, baseType: !55, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !57, line: 135, baseType: !22, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !57, line: 135, baseType: !22, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !57, line: 135, baseType: !66, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !57, line: 135, baseType: !22, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !466, file: !57, line: 135, baseType: !22, size: 8, offset: 104)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !466, file: !57, line: 136, baseType: !50, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !57, line: 137, baseType: !55, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !57, line: 138, baseType: !55, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !466, file: !57, line: 139, baseType: !29, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !466, file: !57, line: 140, baseType: !6, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !56, file: !57, line: 377, baseType: !480, size: 320)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !57, line: 184, size: 320, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !491}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !57, line: 185, baseType: !55, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !57, line: 185, baseType: !22, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !57, line: 185, baseType: !22, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !57, line: 185, baseType: !66, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !57, line: 185, baseType: !22, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !480, file: !57, line: 185, baseType: !488, size: 128, offset: 128)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 2)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !57, line: 185, baseType: !55, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !56, file: !57, line: 378, baseType: !493, size: 384)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !57, line: 187, size: 384, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !57, line: 188, baseType: !55, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !57, line: 188, baseType: !22, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !57, line: 188, baseType: !22, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !57, line: 188, baseType: !66, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !57, line: 188, baseType: !22, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !493, file: !57, line: 189, baseType: !488, size: 128, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !57, line: 189, baseType: !55, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !493, file: !57, line: 189, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !52, line: 480, size: 576, elements: !505)
!505 = !{!506, !507, !508, !509, !517, !532, !564, !565, !566, !567, !568, !569}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !504, file: !52, line: 481, baseType: !50, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !504, file: !52, line: 482, baseType: !503, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !52, line: 483, baseType: !503, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !504, file: !52, line: 484, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !52, line: 497, size: 256, elements: !512)
!512 = !{!513, !514, !515, !516}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !511, file: !52, line: 498, baseType: !510, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !52, line: 499, baseType: !510, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !511, file: !52, line: 500, baseType: !503, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !511, file: !52, line: 501, baseType: !6, size: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !504, file: !52, line: 485, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !52, line: 466, size: 320, elements: !520)
!520 = !{!521, !526, !527, !528, !529, !530, !531}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !519, file: !52, line: 467, baseType: !522, size: 128)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !52, line: 459, size: 128, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !522, file: !52, line: 460, baseType: !22, size: 8)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !522, file: !52, line: 461, baseType: !30, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !519, file: !52, line: 468, baseType: !522, size: 128, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !519, file: !52, line: 469, baseType: !66, size: 16, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !519, file: !52, line: 470, baseType: !22, size: 8, offset: 272)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !519, file: !52, line: 471, baseType: !22, size: 8, offset: 280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !519, file: !52, line: 472, baseType: !22, size: 8, offset: 288)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !519, file: !52, line: 473, baseType: !22, size: 8, offset: 296)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !504, file: !52, line: 486, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !52, line: 448, size: 192, elements: !535)
!535 = !{!536, !559, !560, !561, !562, !563}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !534, file: !52, line: 449, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !52, line: 438, size: 64, elements: !538)
!538 = !{!539, !540, !553}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !537, file: !52, line: 439, baseType: !50, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !537, file: !52, line: 440, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !52, line: 419, size: 256, elements: !543)
!543 = !{!544, !549, !550, !551, !552}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !542, file: !52, line: 420, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !5, line: 1049, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!6, !19, !6, !20}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !542, file: !52, line: 421, baseType: !20, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !52, line: 422, baseType: !50, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !542, file: !52, line: 423, baseType: !22, size: 8, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !542, file: !52, line: 424, baseType: !22, size: 8, offset: 200)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !537, file: !52, line: 441, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !52, line: 429, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !555, file: !52, line: 430, baseType: !50, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !52, line: 431, baseType: !554, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !534, file: !52, line: 450, baseType: !518, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !52, line: 451, baseType: !22, size: 8, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !534, file: !52, line: 452, baseType: !22, size: 8, offset: 136)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !534, file: !52, line: 453, baseType: !22, size: 8, offset: 144)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !534, file: !52, line: 454, baseType: !22, size: 8, offset: 152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !504, file: !52, line: 487, baseType: !30, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !504, file: !52, line: 488, baseType: !6, size: 32, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !504, file: !52, line: 489, baseType: !66, size: 16, offset: 480)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !504, file: !52, line: 490, baseType: !66, size: 16, offset: 496)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !504, file: !52, line: 491, baseType: !22, size: 8, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !504, file: !52, line: 492, baseType: !22, size: 8, offset: 520)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !56, file: !57, line: 379, baseType: !571, size: 384)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !57, line: 192, size: 384, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !571, file: !57, line: 193, baseType: !55, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !571, file: !57, line: 193, baseType: !22, size: 8, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !571, file: !57, line: 193, baseType: !22, size: 8, offset: 72)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !571, file: !57, line: 193, baseType: !66, size: 16, offset: 80)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !57, line: 193, baseType: !22, size: 8, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !571, file: !57, line: 193, baseType: !488, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !571, file: !57, line: 193, baseType: !55, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !571, file: !57, line: 193, baseType: !6, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !571, file: !57, line: 194, baseType: !6, size: 32, offset: 352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !56, file: !57, line: 380, baseType: !583, size: 384)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !57, line: 197, size: 384, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !57, line: 198, baseType: !55, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !57, line: 198, baseType: !22, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !57, line: 198, baseType: !22, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !57, line: 198, baseType: !66, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !57, line: 198, baseType: !22, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !583, file: !57, line: 200, baseType: !22, size: 8, offset: 104)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !583, file: !57, line: 201, baseType: !22, size: 8, offset: 112)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !57, line: 202, baseType: !488, size: 128, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !57, line: 202, baseType: !55, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !583, file: !57, line: 202, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5, line: 128, baseType: !30)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !56, file: !57, line: 381, baseType: !597, size: 320)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !57, line: 205, size: 320, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !57, line: 206, baseType: !55, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !57, line: 206, baseType: !22, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !57, line: 206, baseType: !22, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !57, line: 206, baseType: !66, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !57, line: 206, baseType: !22, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !597, file: !57, line: 206, baseType: !488, size: 128, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !597, file: !57, line: 206, baseType: !55, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !56, file: !57, line: 382, baseType: !607, size: 384)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !57, line: 233, size: 384, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !57, line: 234, baseType: !55, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !57, line: 234, baseType: !66, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 104)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 120)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !607, file: !57, line: 234, baseType: !50, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !607, file: !57, line: 234, baseType: !6, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !607, file: !57, line: 234, baseType: !6, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !607, file: !57, line: 234, baseType: !6, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 288)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !607, file: !57, line: 234, baseType: !22, size: 8, offset: 296)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !607, file: !57, line: 234, baseType: !55, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !56, file: !57, line: 383, baseType: !625, size: 576)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !57, line: 237, size: 576, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !625, file: !57, line: 238, baseType: !55, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 72)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !625, file: !57, line: 238, baseType: !66, size: 16, offset: 80)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 104)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 120)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !625, file: !57, line: 238, baseType: !50, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !625, file: !57, line: 238, baseType: !6, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !625, file: !57, line: 238, baseType: !6, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !625, file: !57, line: 238, baseType: !6, size: 32, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !625, file: !57, line: 238, baseType: !22, size: 8, offset: 296)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !625, file: !57, line: 238, baseType: !66, size: 16, offset: 304)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !625, file: !57, line: 239, baseType: !55, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !625, file: !57, line: 240, baseType: !104, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !625, file: !57, line: 241, baseType: !66, size: 16, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !625, file: !57, line: 242, baseType: !104, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !56, file: !57, line: 384, baseType: !647, size: 384)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !57, line: 262, size: 384, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !647, file: !57, line: 263, baseType: !55, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !647, file: !57, line: 263, baseType: !66, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 104)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !57, line: 263, baseType: !50, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !647, file: !57, line: 263, baseType: !6, size: 32, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !647, file: !57, line: 263, baseType: !6, size: 32, offset: 224)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !647, file: !57, line: 263, baseType: !6, size: 32, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 288)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 296)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !647, file: !57, line: 263, baseType: !22, size: 8, offset: 304)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !647, file: !57, line: 264, baseType: !55, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !56, file: !57, line: 385, baseType: !666, size: 448)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !57, line: 245, size: 448, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !666, file: !57, line: 246, baseType: !55, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 72)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !666, file: !57, line: 246, baseType: !66, size: 16, offset: 80)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 96)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 104)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 112)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 120)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !666, file: !57, line: 246, baseType: !50, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !666, file: !57, line: 246, baseType: !6, size: 32, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !666, file: !57, line: 246, baseType: !6, size: 32, offset: 224)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !666, file: !57, line: 246, baseType: !6, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 288)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !666, file: !57, line: 246, baseType: !22, size: 8, offset: 296)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !666, file: !57, line: 246, baseType: !55, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !666, file: !57, line: 247, baseType: !55, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !56, file: !57, line: 386, baseType: !685, size: 448)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !57, line: 250, size: 448, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !57, line: 251, baseType: !55, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !57, line: 251, baseType: !66, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 104)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 112)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 120)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !685, file: !57, line: 251, baseType: !50, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !685, file: !57, line: 251, baseType: !6, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !685, file: !57, line: 251, baseType: !6, size: 32, offset: 224)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !685, file: !57, line: 251, baseType: !6, size: 32, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 288)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !685, file: !57, line: 251, baseType: !22, size: 8, offset: 296)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !685, file: !57, line: 256, baseType: !55, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !685, file: !57, line: 257, baseType: !55, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !56, file: !57, line: 387, baseType: !704, size: 512)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !57, line: 273, size: 512, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !57, line: 274, baseType: !55, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !57, line: 274, baseType: !22, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !57, line: 274, baseType: !22, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !57, line: 274, baseType: !66, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !57, line: 274, baseType: !22, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !57, line: 274, baseType: !50, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !704, file: !57, line: 275, baseType: !6, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !704, file: !57, line: 276, baseType: !383, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !704, file: !57, line: 277, baseType: !20, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !57, line: 278, baseType: !488, size: 128, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !56, file: !57, line: 388, baseType: !717, size: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !57, line: 281, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !57, line: 282, baseType: !55, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !57, line: 282, baseType: !22, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !57, line: 282, baseType: !22, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !57, line: 282, baseType: !66, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !57, line: 282, baseType: !22, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !717, file: !57, line: 282, baseType: !22, size: 8, offset: 104)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !717, file: !57, line: 283, baseType: !22, size: 8, offset: 112)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !57, line: 284, baseType: !25, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !57, line: 285, baseType: !50, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !717, file: !57, line: 286, baseType: !20, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !717, file: !57, line: 287, baseType: !34, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !717, file: !57, line: 288, baseType: !55, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !57, line: 289, baseType: !55, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !56, file: !57, line: 389, baseType: !733, size: 512)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !57, line: 307, size: 512, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !57, line: 308, baseType: !55, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !57, line: 308, baseType: !22, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !57, line: 308, baseType: !22, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !57, line: 308, baseType: !66, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !57, line: 308, baseType: !22, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !733, file: !57, line: 308, baseType: !22, size: 8, offset: 104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !733, file: !57, line: 309, baseType: !22, size: 8, offset: 112)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !733, file: !57, line: 310, baseType: !22, size: 8, offset: 120)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !733, file: !57, line: 311, baseType: !20, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !57, line: 312, baseType: !50, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !733, file: !57, line: 313, baseType: !119, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !733, file: !57, line: 314, baseType: !104, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !733, file: !57, line: 315, baseType: !104, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !733, file: !57, line: 316, baseType: !6, size: 32, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !56, file: !57, line: 390, baseType: !750, size: 448)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !57, line: 340, size: 448, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !57, line: 341, baseType: !55, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !57, line: 341, baseType: !22, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !57, line: 341, baseType: !22, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !57, line: 341, baseType: !66, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !57, line: 341, baseType: !22, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !750, file: !57, line: 341, baseType: !50, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !750, file: !57, line: 342, baseType: !50, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !750, file: !57, line: 343, baseType: !20, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !750, file: !57, line: 344, baseType: !104, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !750, file: !57, line: 345, baseType: !6, size: 32, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !57, line: 391, baseType: !763, size: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !57, line: 350, size: 256, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !57, line: 351, baseType: !55, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !57, line: 351, baseType: !22, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !57, line: 351, baseType: !22, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !57, line: 351, baseType: !66, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !57, line: 351, baseType: !22, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !763, file: !57, line: 351, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !5, line: 1055, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !19, !20}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !763, file: !57, line: 352, baseType: !20, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !56, file: !57, line: 392, baseType: !777, size: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !57, line: 357, size: 192, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !777, file: !57, line: 358, baseType: !55, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !57, line: 358, baseType: !22, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !57, line: 358, baseType: !22, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !777, file: !57, line: 358, baseType: !66, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !57, line: 358, baseType: !22, size: 8, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !57, line: 358, baseType: !55, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !56, file: !57, line: 399, baseType: !51, size: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !52, line: 135, baseType: !22, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !52, line: 136, baseType: !22, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !52, line: 137, baseType: !66, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 138, baseType: !790, size: 32, offset: 96)
!790 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !791, line: 327, size: 32, elements: !792)
!791 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !790, file: !791, line: 328, baseType: !6, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !790, file: !791, line: 329, baseType: !248, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !51, file: !52, line: 139, baseType: !50, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !51, file: !52, line: 140, baseType: !50, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !51, file: !52, line: 141, baseType: !50, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !51, file: !52, line: 142, baseType: !166, size: 16, offset: 320)
!799 = !DILocation(line: 48, column: 30, scope: !16)
!800 = !DILocalVariable(name: "status", scope: !16, file: !1, line: 49, type: !4)
!801 = !DILocation(line: 49, column: 14, scope: !16)
!802 = !DILocation(line: 55, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !16, file: !1, line: 55, column: 6)
!804 = !DILocation(line: 55, column: 6, scope: !16)
!805 = !DILocation(line: 56, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !1, line: 55, column: 15)
!807 = !DILocation(line: 59, column: 11, scope: !16)
!808 = !DILocation(line: 59, column: 9, scope: !16)
!809 = !DILocation(line: 60, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !16, file: !1, line: 60, column: 6)
!811 = !DILocation(line: 60, column: 6, scope: !16)
!812 = !DILocation(line: 61, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !1, line: 60, column: 28)
!814 = !DILocation(line: 66, column: 33, scope: !16)
!815 = !DILocation(line: 66, column: 9, scope: !16)
!816 = !DILocation(line: 66, column: 7, scope: !16)
!817 = !DILocation(line: 67, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !16, file: !1, line: 67, column: 6)
!819 = !DILocation(line: 67, column: 6, scope: !16)
!820 = !DILocation(line: 68, column: 10, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 67, column: 13)
!822 = !DILocation(line: 69, column: 3, scope: !821)
!823 = !DILocation(line: 75, column: 36, scope: !16)
!824 = !DILocation(line: 75, column: 42, scope: !16)
!825 = !DILocation(line: 75, column: 52, scope: !16)
!826 = !DILocation(line: 75, column: 61, scope: !16)
!827 = !DILocation(line: 76, column: 8, scope: !16)
!828 = !DILocation(line: 75, column: 6, scope: !16)
!829 = !DILocation(line: 74, column: 9, scope: !16)
!830 = !DILocation(line: 77, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !16, file: !1, line: 77, column: 6)
!832 = !DILocation(line: 77, column: 6, scope: !16)
!833 = !DILocation(line: 78, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !1, line: 77, column: 28)
!835 = !DILocation(line: 83, column: 30, scope: !16)
!836 = !DILocation(line: 83, column: 36, scope: !16)
!837 = !DILocation(line: 83, column: 2, scope: !16)
!838 = !DILabel(scope: !16, name: "unlock_and_exit", file: !1, line: 85)
!839 = !DILocation(line: 85, column: 1, scope: !16)
!840 = !DILocation(line: 86, column: 8, scope: !16)
!841 = !DILocation(line: 87, column: 2, scope: !16)
!842 = !DILocation(line: 88, column: 1, scope: !16)
!843 = distinct !DISubprogram(name: "acpi_remove_address_space_handler", scope: !1, file: !1, line: 106, type: !844, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!844 = !DISubroutineType(types: !845)
!845 = !{!4, !19, !21, !25}
!846 = !DILocalVariable(name: "device", arg: 1, scope: !843, file: !1, line: 106, type: !19)
!847 = !DILocation(line: 106, column: 47, scope: !843)
!848 = !DILocalVariable(name: "space_id", arg: 2, scope: !843, file: !1, line: 107, type: !21)
!849 = !DILocation(line: 107, column: 27, scope: !843)
!850 = !DILocalVariable(name: "handler", arg: 3, scope: !843, file: !1, line: 108, type: !25)
!851 = !DILocation(line: 108, column: 30, scope: !843)
!852 = !DILocalVariable(name: "obj_desc", scope: !843, file: !1, line: 110, type: !55)
!853 = !DILocation(line: 110, column: 29, scope: !843)
!854 = !DILocalVariable(name: "handler_obj", scope: !843, file: !1, line: 111, type: !55)
!855 = !DILocation(line: 111, column: 29, scope: !843)
!856 = !DILocalVariable(name: "region_obj", scope: !843, file: !1, line: 112, type: !55)
!857 = !DILocation(line: 112, column: 29, scope: !843)
!858 = !DILocalVariable(name: "last_obj_ptr", scope: !843, file: !1, line: 113, type: !119)
!859 = !DILocation(line: 113, column: 30, scope: !843)
!860 = !DILocalVariable(name: "node", scope: !843, file: !1, line: 114, type: !50)
!861 = !DILocation(line: 114, column: 30, scope: !843)
!862 = !DILocalVariable(name: "status", scope: !843, file: !1, line: 115, type: !4)
!863 = !DILocation(line: 115, column: 14, scope: !843)
!864 = !DILocation(line: 121, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !843, file: !1, line: 121, column: 6)
!866 = !DILocation(line: 121, column: 6, scope: !843)
!867 = !DILocation(line: 122, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 121, column: 15)
!869 = !DILocation(line: 125, column: 11, scope: !843)
!870 = !DILocation(line: 125, column: 9, scope: !843)
!871 = !DILocation(line: 126, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !843, file: !1, line: 126, column: 6)
!873 = !DILocation(line: 126, column: 6, scope: !843)
!874 = !DILocation(line: 127, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !1, line: 126, column: 28)
!876 = !DILocation(line: 132, column: 33, scope: !843)
!877 = !DILocation(line: 132, column: 9, scope: !843)
!878 = !DILocation(line: 132, column: 7, scope: !843)
!879 = !DILocation(line: 133, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !843, file: !1, line: 133, column: 6)
!881 = !DILocation(line: 133, column: 12, scope: !880)
!882 = !DILocation(line: 134, column: 8, scope: !880)
!883 = !DILocation(line: 134, column: 14, scope: !880)
!884 = !DILocation(line: 134, column: 19, scope: !880)
!885 = !DILocation(line: 134, column: 40, scope: !880)
!886 = !DILocation(line: 135, column: 8, scope: !880)
!887 = !DILocation(line: 135, column: 14, scope: !880)
!888 = !DILocation(line: 135, column: 19, scope: !880)
!889 = !DILocation(line: 135, column: 43, scope: !880)
!890 = !DILocation(line: 136, column: 8, scope: !880)
!891 = !DILocation(line: 136, column: 14, scope: !880)
!892 = !DILocation(line: 136, column: 19, scope: !880)
!893 = !DILocation(line: 136, column: 41, scope: !880)
!894 = !DILocation(line: 137, column: 8, scope: !880)
!895 = !DILocation(line: 137, column: 16, scope: !880)
!896 = !DILocation(line: 137, column: 13, scope: !880)
!897 = !DILocation(line: 133, column: 6, scope: !843)
!898 = !DILocation(line: 138, column: 10, scope: !899)
!899 = distinct !DILexicalBlock(scope: !880, file: !1, line: 137, column: 38)
!900 = !DILocation(line: 139, column: 3, scope: !899)
!901 = !DILocation(line: 144, column: 41, scope: !843)
!902 = !DILocation(line: 144, column: 13, scope: !843)
!903 = !DILocation(line: 144, column: 11, scope: !843)
!904 = !DILocation(line: 145, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !843, file: !1, line: 145, column: 6)
!906 = !DILocation(line: 145, column: 6, scope: !843)
!907 = !DILocation(line: 146, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 145, column: 17)
!909 = !DILocation(line: 147, column: 3, scope: !908)
!910 = !DILocation(line: 152, column: 16, scope: !843)
!911 = !DILocation(line: 152, column: 26, scope: !843)
!912 = !DILocation(line: 152, column: 40, scope: !843)
!913 = !DILocation(line: 152, column: 14, scope: !843)
!914 = !DILocation(line: 153, column: 18, scope: !843)
!915 = !DILocation(line: 153, column: 28, scope: !843)
!916 = !DILocation(line: 153, column: 42, scope: !843)
!917 = !DILocation(line: 153, column: 15, scope: !843)
!918 = !DILocation(line: 154, column: 2, scope: !843)
!919 = !DILocation(line: 154, column: 9, scope: !843)
!920 = !DILocation(line: 158, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 158, column: 7)
!922 = distinct !DILexicalBlock(scope: !843, file: !1, line: 154, column: 22)
!923 = !DILocation(line: 158, column: 20, scope: !921)
!924 = !DILocation(line: 158, column: 34, scope: !921)
!925 = !DILocation(line: 158, column: 46, scope: !921)
!926 = !DILocation(line: 158, column: 43, scope: !921)
!927 = !DILocation(line: 158, column: 7, scope: !922)
!928 = !DILocation(line: 162, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 162, column: 8)
!930 = distinct !DILexicalBlock(scope: !921, file: !1, line: 158, column: 56)
!931 = !DILocation(line: 162, column: 21, scope: !929)
!932 = !DILocation(line: 162, column: 35, scope: !929)
!933 = !DILocation(line: 162, column: 46, scope: !929)
!934 = !DILocation(line: 162, column: 43, scope: !929)
!935 = !DILocation(line: 162, column: 8, scope: !930)
!936 = !DILocation(line: 163, column: 12, scope: !937)
!937 = distinct !DILexicalBlock(scope: !929, file: !1, line: 162, column: 55)
!938 = !DILocation(line: 164, column: 5, scope: !937)
!939 = !DILocation(line: 176, column: 17, scope: !930)
!940 = !DILocation(line: 176, column: 30, scope: !930)
!941 = !DILocation(line: 176, column: 44, scope: !930)
!942 = !DILocation(line: 176, column: 15, scope: !930)
!943 = !DILocation(line: 180, column: 4, scope: !930)
!944 = !DILocation(line: 180, column: 11, scope: !930)
!945 = !DILocation(line: 188, column: 27, scope: !946)
!946 = distinct !DILexicalBlock(scope: !930, file: !1, line: 180, column: 23)
!947 = !DILocation(line: 188, column: 5, scope: !946)
!948 = !DILocation(line: 195, column: 9, scope: !946)
!949 = !DILocation(line: 195, column: 22, scope: !946)
!950 = !DILocation(line: 195, column: 36, scope: !946)
!951 = !DILocation(line: 194, column: 16, scope: !946)
!952 = distinct !{!952, !943, !953}
!953 = !DILocation(line: 196, column: 4, scope: !930)
!954 = !DILocation(line: 200, column: 20, scope: !930)
!955 = !DILocation(line: 200, column: 33, scope: !930)
!956 = !DILocation(line: 200, column: 47, scope: !930)
!957 = !DILocation(line: 200, column: 5, scope: !930)
!958 = !DILocation(line: 200, column: 18, scope: !930)
!959 = !DILocation(line: 204, column: 29, scope: !930)
!960 = !DILocation(line: 204, column: 4, scope: !930)
!961 = !DILocation(line: 205, column: 4, scope: !930)
!962 = !DILocation(line: 210, column: 19, scope: !922)
!963 = !DILocation(line: 210, column: 32, scope: !922)
!964 = !DILocation(line: 210, column: 46, scope: !922)
!965 = !DILocation(line: 210, column: 16, scope: !922)
!966 = !DILocation(line: 211, column: 17, scope: !922)
!967 = !DILocation(line: 211, column: 30, scope: !922)
!968 = !DILocation(line: 211, column: 44, scope: !922)
!969 = !DILocation(line: 211, column: 15, scope: !922)
!970 = distinct !{!970, !918, !971}
!971 = !DILocation(line: 212, column: 2, scope: !843)
!972 = !DILocation(line: 221, column: 9, scope: !843)
!973 = !DILocation(line: 221, column: 2, scope: !843)
!974 = !DILabel(scope: !843, name: "unlock_and_exit", file: !1, line: 223)
!975 = !DILocation(line: 223, column: 1, scope: !843)
!976 = !DILocation(line: 224, column: 8, scope: !843)
!977 = !DILocation(line: 225, column: 2, scope: !843)
!978 = !DILocation(line: 226, column: 1, scope: !843)
