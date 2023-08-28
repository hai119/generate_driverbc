; ModuleID = '../bcout/drivers/acpi/acpica/evhandler.llvm.bc'
source_filename = "drivers/acpi/acpica/evhandler.c"
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
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }

@acpi_gbl_default_address_spaces = dso_local global [4 x i8] c"\00\01\02~", align 1, !dbg !0
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@_acpi_module_name = internal constant [10 x i8] c"evhandler\00", align 1, !dbg !782

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_install_region_handlers() #0 !dbg !794 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !797, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.declare(metadata i32* %i, metadata !799, metadata !DIExpression()), !dbg !800
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !801
  store i32 %call, i32* %status, align 4, !dbg !802
  %0 = load i32, i32* %status, align 4, !dbg !803
  %tobool = icmp ne i32 %0, 0, !dbg !803
  br i1 %tobool, label %if.then, label %if.end, !dbg !805

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !806
  store i32 %1, i32* %retval, align 4, !dbg !806
  br label %return, !dbg !806

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !808
  br label %for.cond, !dbg !810

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !811
  %cmp = icmp ult i32 %2, 4, !dbg !813
  br i1 %cmp, label %for.body, label %for.end, !dbg !814

for.body:                                         ; preds = %for.cond
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !815
  %4 = load i32, i32* %i, align 4, !dbg !817
  %idxprom = zext i32 %4 to i64, !dbg !818
  %arrayidx = getelementptr [4 x i8], [4 x i8]* @acpi_gbl_default_address_spaces, i64 0, i64 %idxprom, !dbg !818
  %5 = load i8, i8* %arrayidx, align 1, !dbg !818
  %call1 = call i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node* %3, i8 zeroext %5, i32 (i32, i64, i32, i64*, i8*, i8*)* null, i32 (i8*, i32, i8*, i8**)* null, i8* null) #3, !dbg !819
  store i32 %call1, i32* %status, align 4, !dbg !820
  %6 = load i32, i32* %status, align 4, !dbg !821
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 25, label %sw.bb
    i32 7, label %sw.bb
  ], !dbg !822

sw.bb:                                            ; preds = %for.body, %for.body, %for.body
  store i32 0, i32* %status, align 4, !dbg !823
  br label %sw.epilog, !dbg !825

sw.default:                                       ; preds = %for.body
  br label %unlock_and_exit, !dbg !826

sw.epilog:                                        ; preds = %sw.bb
  br label %for.inc, !dbg !827

for.inc:                                          ; preds = %sw.epilog
  %7 = load i32, i32* %i, align 4, !dbg !828
  %inc = add i32 %7, 1, !dbg !828
  store i32 %inc, i32* %i, align 4, !dbg !828
  br label %for.cond, !dbg !829, !llvm.loop !830

for.end:                                          ; preds = %for.cond
  br label %unlock_and_exit, !dbg !831

unlock_and_exit:                                  ; preds = %for.end, %sw.default
  call void @llvm.dbg.label(metadata !832), !dbg !833
  %call2 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !834
  %8 = load i32, i32* %status, align 4, !dbg !835
  store i32 %8, i32* %retval, align 4, !dbg !835
  br label %return, !dbg !835

return:                                           ; preds = %unlock_and_exit, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !836
  ret i32 %9, !dbg !836
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node* %node, i8 zeroext %space_id, i32 (i32, i64, i32, i64*, i8*, i8*)* %handler, i32 (i8*, i32, i8*, i8**)* %setup, i8* %context) #0 !dbg !837 {
entry:
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %space_id.addr = alloca i8, align 1
  %handler.addr = alloca i32 (i32, i64, i32, i64*, i8*, i8*)*, align 8
  %setup.addr = alloca i32 (i8*, i32, i8*, i8**)*, align 8
  %context.addr = alloca i8*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %type = alloca i32, align 4
  %flags = alloca i8, align 1
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !841, metadata !DIExpression()), !dbg !842
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !843, metadata !DIExpression()), !dbg !844
  store i32 (i32, i64, i32, i64*, i8*, i8*)* %handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, metadata !845, metadata !DIExpression()), !dbg !846
  store i32 (i8*, i32, i8*, i8**)* %setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*, i8**)** %setup.addr, metadata !847, metadata !DIExpression()), !dbg !848
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata i32* %status, metadata !855, metadata !DIExpression()), !dbg !856
  store i32 0, i32* %status, align 4, !dbg !856
  call void @llvm.dbg.declare(metadata i32* %type, metadata !857, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !860, metadata !DIExpression()), !dbg !861
  store i8 0, i8* %flags, align 1, !dbg !861
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !862
  %type1 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %0, i32 0, i32 2, !dbg !864
  %1 = load i8, i8* %type1, align 1, !dbg !864
  %conv = zext i8 %1 to i32, !dbg !862
  %cmp = icmp ne i32 %conv, 6, !dbg !865
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !866

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !867
  %type3 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %2, i32 0, i32 2, !dbg !868
  %3 = load i8, i8* %type3, align 1, !dbg !868
  %conv4 = zext i8 %3 to i32, !dbg !867
  %cmp5 = icmp ne i32 %conv4, 12, !dbg !869
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !870

land.lhs.true7:                                   ; preds = %land.lhs.true
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !871
  %type8 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %4, i32 0, i32 2, !dbg !872
  %5 = load i8, i8* %type8, align 1, !dbg !872
  %conv9 = zext i8 %5 to i32, !dbg !871
  %cmp10 = icmp ne i32 %conv9, 13, !dbg !873
  br i1 %cmp10, label %land.lhs.true12, label %if.end, !dbg !874

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !875
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !876
  %cmp13 = icmp ne %struct.acpi_namespace_node* %6, %7, !dbg !877
  br i1 %cmp13, label %if.then, label %if.end, !dbg !878

if.then:                                          ; preds = %land.lhs.true12
  store i32 4097, i32* %status, align 4, !dbg !879
  br label %unlock_and_exit, !dbg !881

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true7, %land.lhs.true, %entry
  %8 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !882
  %cmp15 = icmp eq i32 (i32, i64, i32, i64*, i8*, i8*)* %8, null, !dbg !884
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !885

if.then17:                                        ; preds = %if.end
  store i8 1, i8* %flags, align 1, !dbg !886
  %9 = load i8, i8* %space_id.addr, align 1, !dbg !888
  %conv18 = zext i8 %9 to i32, !dbg !888
  switch i32 %conv18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb20
    i32 5, label %sw.bb21
    i32 6, label %sw.bb22
    i32 126, label %sw.bb23
  ], !dbg !889

sw.bb:                                            ; preds = %if.then17
  store i32 (i32, i64, i32, i64*, i8*, i8*)* @acpi_ex_system_memory_space_handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !890
  store i32 (i8*, i32, i8*, i8**)* @acpi_ev_system_memory_region_setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !892
  br label %sw.epilog, !dbg !893

sw.bb19:                                          ; preds = %if.then17
  store i32 (i32, i64, i32, i64*, i8*, i8*)* @acpi_ex_system_io_space_handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !894
  store i32 (i8*, i32, i8*, i8**)* @acpi_ev_io_space_region_setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !895
  br label %sw.epilog, !dbg !896

sw.bb20:                                          ; preds = %if.then17
  store i32 (i32, i64, i32, i64*, i8*, i8*)* @acpi_ex_pci_config_space_handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !897
  store i32 (i8*, i32, i8*, i8**)* @acpi_ev_pci_config_region_setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !898
  br label %sw.epilog, !dbg !899

sw.bb21:                                          ; preds = %if.then17
  store i32 (i32, i64, i32, i64*, i8*, i8*)* @acpi_ex_cmos_space_handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !900
  store i32 (i8*, i32, i8*, i8**)* @acpi_ev_cmos_region_setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !901
  br label %sw.epilog, !dbg !902

sw.bb22:                                          ; preds = %if.then17
  store i32 (i32, i64, i32, i64*, i8*, i8*)* @acpi_ex_pci_bar_space_handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !903
  store i32 (i8*, i32, i8*, i8**)* @acpi_ev_pci_bar_region_setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !904
  br label %sw.epilog, !dbg !905

sw.bb23:                                          ; preds = %if.then17
  store i32 (i32, i64, i32, i64*, i8*, i8*)* @acpi_ex_data_table_space_handler, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !906
  store i32 (i8*, i32, i8*, i8**)* null, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !907
  br label %sw.epilog, !dbg !908

sw.default:                                       ; preds = %if.then17
  store i32 4097, i32* %status, align 4, !dbg !909
  br label %unlock_and_exit, !dbg !910

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb
  br label %if.end24, !dbg !911

if.end24:                                         ; preds = %sw.epilog, %if.end
  %10 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !912
  %tobool = icmp ne i32 (i8*, i32, i8*, i8**)* %10, null, !dbg !912
  br i1 %tobool, label %if.end26, label %if.then25, !dbg !914

if.then25:                                        ; preds = %if.end24
  store i32 (i8*, i32, i8*, i8**)* @acpi_ev_default_region_setup, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !915
  br label %if.end26, !dbg !917

if.end26:                                         ; preds = %if.then25, %if.end24
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !918
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %11) #3, !dbg !919
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !920
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !921
  %tobool27 = icmp ne %union.acpi_operand_object* %12, null, !dbg !921
  br i1 %tobool27, label %if.then28, label %if.else39, !dbg !923

if.then28:                                        ; preds = %if.end26
  %13 = load i8, i8* %space_id.addr, align 1, !dbg !924
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !926
  %common_notify = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_notify_common*, !dbg !927
  %handler29 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 6, !dbg !928
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler29, align 8, !dbg !928
  %call30 = call %union.acpi_operand_object* @acpi_ev_find_region_handler(i8 zeroext %13, %union.acpi_operand_object* %15) #3, !dbg !929
  store %union.acpi_operand_object* %call30, %union.acpi_operand_object** %handler_obj, align 8, !dbg !930
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !931
  %tobool31 = icmp ne %union.acpi_operand_object* %16, null, !dbg !931
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !933

if.then32:                                        ; preds = %if.then28
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !934
  %address_space = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_addr_handler*, !dbg !937
  %handler33 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 7, !dbg !938
  %18 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler33, align 8, !dbg !938
  %19 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !939
  %cmp34 = icmp eq i32 (i32, i64, i32, i64*, i8*, i8*)* %18, %19, !dbg !940
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !941

if.then36:                                        ; preds = %if.then32
  store i32 25, i32* %status, align 4, !dbg !942
  br label %unlock_and_exit, !dbg !944

if.else:                                          ; preds = %if.then32
  store i32 7, i32* %status, align 4, !dbg !945
  br label %if.end37

if.end37:                                         ; preds = %if.else
  br label %unlock_and_exit, !dbg !947

if.end38:                                         ; preds = %if.then28
  br label %if.end59, !dbg !948

if.else39:                                        ; preds = %if.end26
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !949
  %type40 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 2, !dbg !952
  %21 = load i8, i8* %type40, align 1, !dbg !952
  %conv41 = zext i8 %21 to i32, !dbg !949
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !953
  br i1 %cmp42, label %if.then44, label %if.else45, !dbg !954

if.then44:                                        ; preds = %if.else39
  store i32 6, i32* %type, align 4, !dbg !955
  br label %if.end48, !dbg !957

if.else45:                                        ; preds = %if.else39
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !958
  %type46 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %22, i32 0, i32 2, !dbg !960
  %23 = load i8, i8* %type46, align 1, !dbg !960
  %conv47 = zext i8 %23 to i32, !dbg !958
  store i32 %conv47, i32* %type, align 4, !dbg !961
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then44
  %24 = load i32, i32* %type, align 4, !dbg !962
  %call49 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 448, i32 4, i32 %24) #3, !dbg !962
  store %union.acpi_operand_object* %call49, %union.acpi_operand_object** %obj_desc, align 8, !dbg !963
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !964
  %tobool50 = icmp ne %union.acpi_operand_object* %25, null, !dbg !964
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !966

if.then51:                                        ; preds = %if.end48
  store i32 4, i32* %status, align 4, !dbg !967
  br label %unlock_and_exit, !dbg !969

if.end52:                                         ; preds = %if.end48
  %26 = load i32, i32* %type, align 4, !dbg !970
  %conv53 = trunc i32 %26 to i8, !dbg !971
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !972
  %common = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_common*, !dbg !973
  %type54 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !974
  store i8 %conv53, i8* %type54, align 1, !dbg !975
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !976
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !977
  %30 = load i32, i32* %type, align 4, !dbg !978
  %call55 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %28, %union.acpi_operand_object* %29, i32 %30) #3, !dbg !979
  store i32 %call55, i32* %status, align 4, !dbg !980
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !981
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %31) #3, !dbg !982
  %32 = load i32, i32* %status, align 4, !dbg !983
  %tobool56 = icmp ne i32 %32, 0, !dbg !983
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !985

if.then57:                                        ; preds = %if.end52
  br label %unlock_and_exit, !dbg !986

if.end58:                                         ; preds = %if.end52
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end38
  %call60 = call %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 484, i32 4, i32 24) #3, !dbg !988
  store %union.acpi_operand_object* %call60, %union.acpi_operand_object** %handler_obj, align 8, !dbg !989
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !990
  %tobool61 = icmp ne %union.acpi_operand_object* %33, null, !dbg !990
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !992

if.then62:                                        ; preds = %if.end59
  store i32 4, i32* %status, align 4, !dbg !993
  br label %unlock_and_exit, !dbg !995

if.end63:                                         ; preds = %if.end59
  %34 = load i8, i8* %space_id.addr, align 1, !dbg !996
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !997
  %address_space64 = bitcast %union.acpi_operand_object* %35 to %struct.acpi_object_addr_handler*, !dbg !998
  %space_id65 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space64, i32 0, i32 5, !dbg !999
  store i8 %34, i8* %space_id65, align 1, !dbg !1000
  %36 = load i8, i8* %flags, align 1, !dbg !1001
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1002
  %address_space66 = bitcast %union.acpi_operand_object* %37 to %struct.acpi_object_addr_handler*, !dbg !1003
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space66, i32 0, i32 6, !dbg !1004
  store i8 %36, i8* %handler_flags, align 2, !dbg !1005
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1006
  %address_space67 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_object_addr_handler*, !dbg !1007
  %region_list = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space67, i32 0, i32 11, !dbg !1008
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %region_list, align 8, !dbg !1009
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1010
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1011
  %address_space68 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_addr_handler*, !dbg !1012
  %node69 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space68, i32 0, i32 8, !dbg !1013
  store %struct.acpi_namespace_node* %39, %struct.acpi_namespace_node** %node69, align 8, !dbg !1014
  %41 = load i32 (i32, i64, i32, i64*, i8*, i8*)*, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler.addr, align 8, !dbg !1015
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1016
  %address_space70 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_addr_handler*, !dbg !1017
  %handler71 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space70, i32 0, i32 7, !dbg !1018
  store i32 (i32, i64, i32, i64*, i8*, i8*)* %41, i32 (i32, i64, i32, i64*, i8*, i8*)** %handler71, align 8, !dbg !1019
  %43 = load i8*, i8** %context.addr, align 8, !dbg !1020
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1021
  %address_space72 = bitcast %union.acpi_operand_object* %44 to %struct.acpi_object_addr_handler*, !dbg !1022
  %context73 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space72, i32 0, i32 9, !dbg !1023
  store i8* %43, i8** %context73, align 8, !dbg !1024
  %45 = load i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)** %setup.addr, align 8, !dbg !1025
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1026
  %address_space74 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_addr_handler*, !dbg !1027
  %setup75 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space74, i32 0, i32 10, !dbg !1028
  store i32 (i8*, i32, i8*, i8**)* %45, i32 (i8*, i32, i8*, i8**)** %setup75, align 8, !dbg !1029
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1030
  %common_notify76 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_notify_common*, !dbg !1031
  %handler77 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify76, i32 0, i32 6, !dbg !1032
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler77, align 8, !dbg !1032
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1033
  %address_space78 = bitcast %union.acpi_operand_object* %49 to %struct.acpi_object_addr_handler*, !dbg !1034
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space78, i32 0, i32 12, !dbg !1035
  store %union.acpi_operand_object* %48, %union.acpi_operand_object** %next, align 8, !dbg !1036
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1037
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1038
  %common_notify79 = bitcast %union.acpi_operand_object* %51 to %struct.acpi_object_notify_common*, !dbg !1039
  %handler80 = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify79, i32 0, i32 6, !dbg !1040
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %handler80, align 8, !dbg !1041
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1042
  %53 = bitcast %struct.acpi_namespace_node* %52 to i8*, !dbg !1042
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1043
  %55 = bitcast %union.acpi_operand_object* %54 to i8*, !dbg !1043
  %call81 = call i32 @acpi_ns_walk_namespace(i32 0, i8* %53, i32 -1, i32 1, i32 (i8*, i32, i8*, i8**)* @acpi_ev_install_handler, i32 (i8*, i32, i8*, i8**)* null, i8* %55, i8** null) #3, !dbg !1044
  store i32 %call81, i32* %status, align 4, !dbg !1045
  br label %unlock_and_exit, !dbg !1046

unlock_and_exit:                                  ; preds = %if.end63, %if.then62, %if.then57, %if.then51, %if.end37, %if.then36, %sw.default, %if.then
  call void @llvm.dbg.label(metadata !1047), !dbg !1048
  %56 = load i32, i32* %status, align 4, !dbg !1049
  ret i32 %56, !dbg !1049
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i8 @acpi_ev_has_default_handler(%struct.acpi_namespace_node* %node, i8 zeroext %space_id) #0 !dbg !1050 {
entry:
  %retval = alloca i8, align 1
  %node.addr = alloca %struct.acpi_namespace_node*, align 8
  %space_id.addr = alloca i8, align 1
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %node, %struct.acpi_namespace_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node.addr, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1057, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !1059, metadata !DIExpression()), !dbg !1060
  %0 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node.addr, align 8, !dbg !1061
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %0) #3, !dbg !1062
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1063
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1064
  %tobool = icmp ne %union.acpi_operand_object* %1, null, !dbg !1064
  br i1 %tobool, label %if.then, label %if.end12, !dbg !1066

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1067
  %common_notify = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_notify_common*, !dbg !1069
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 6, !dbg !1070
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1070
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1071
  br label %while.cond, !dbg !1072

while.cond:                                       ; preds = %if.end10, %if.then
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1073
  %tobool1 = icmp ne %union.acpi_operand_object* %4, null, !dbg !1072
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1072

while.body:                                       ; preds = %while.cond
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1074
  %address_space = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_addr_handler*, !dbg !1077
  %space_id2 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 5, !dbg !1078
  %6 = load i8, i8* %space_id2, align 1, !dbg !1078
  %conv = zext i8 %6 to i32, !dbg !1074
  %7 = load i8, i8* %space_id.addr, align 1, !dbg !1079
  %conv3 = zext i8 %7 to i32, !dbg !1079
  %cmp = icmp eq i32 %conv, %conv3, !dbg !1080
  br i1 %cmp, label %if.then5, label %if.end10, !dbg !1081

if.then5:                                         ; preds = %while.body
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1082
  %address_space6 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_addr_handler*, !dbg !1085
  %handler_flags = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space6, i32 0, i32 6, !dbg !1086
  %9 = load i8, i8* %handler_flags, align 2, !dbg !1086
  %conv7 = zext i8 %9 to i32, !dbg !1082
  %and = and i32 %conv7, 1, !dbg !1087
  %tobool8 = icmp ne i32 %and, 0, !dbg !1087
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !1088

if.then9:                                         ; preds = %if.then5
  store i8 1, i8* %retval, align 1, !dbg !1089
  br label %return, !dbg !1089

if.end:                                           ; preds = %if.then5
  br label %if.end10, !dbg !1091

if.end10:                                         ; preds = %if.end, %while.body
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1092
  %address_space11 = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_addr_handler*, !dbg !1093
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space11, i32 0, i32 12, !dbg !1094
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !1094
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1095
  br label %while.cond, !dbg !1072, !llvm.loop !1096

while.end:                                        ; preds = %while.cond
  br label %if.end12, !dbg !1098

if.end12:                                         ; preds = %while.end, %entry
  store i8 0, i8* %retval, align 1, !dbg !1099
  br label %return, !dbg !1099

return:                                           ; preds = %if.end12, %if.then9
  %12 = load i8, i8* %retval, align 1, !dbg !1100
  ret i8 %12, !dbg !1100
}

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %union.acpi_operand_object* @acpi_ev_find_region_handler(i8 zeroext %space_id, %union.acpi_operand_object* %handler_obj) #0 !dbg !1101 {
entry:
  %retval = alloca %union.acpi_operand_object*, align 8
  %space_id.addr = alloca i8, align 1
  %handler_obj.addr = alloca %union.acpi_operand_object*, align 8
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !1104, metadata !DIExpression()), !dbg !1105
  store %union.acpi_operand_object* %handler_obj, %union.acpi_operand_object** %handler_obj.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  br label %while.cond, !dbg !1108

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1109
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1108
  br i1 %tobool, label %while.body, label %while.end, !dbg !1108

while.body:                                       ; preds = %while.cond
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1110
  %address_space = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_addr_handler*, !dbg !1113
  %space_id1 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 5, !dbg !1114
  %2 = load i8, i8* %space_id1, align 1, !dbg !1114
  %conv = zext i8 %2 to i32, !dbg !1110
  %3 = load i8, i8* %space_id.addr, align 1, !dbg !1115
  %conv2 = zext i8 %3 to i32, !dbg !1115
  %cmp = icmp eq i32 %conv, %conv2, !dbg !1116
  br i1 %cmp, label %if.then, label %if.end, !dbg !1117

if.then:                                          ; preds = %while.body
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1118
  store %union.acpi_operand_object* %4, %union.acpi_operand_object** %retval, align 8, !dbg !1120
  br label %return, !dbg !1120

if.end:                                           ; preds = %while.body
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1121
  %address_space4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_addr_handler*, !dbg !1122
  %next = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space4, i32 0, i32 12, !dbg !1123
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !1123
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %handler_obj.addr, align 8, !dbg !1124
  br label %while.cond, !dbg !1108, !llvm.loop !1125

while.end:                                        ; preds = %while.cond
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %retval, align 8, !dbg !1127
  br label %return, !dbg !1127

return:                                           ; preds = %while.end, %if.then
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %retval, align 8, !dbg !1128
  ret %union.acpi_operand_object* %7, !dbg !1128
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_memory_space_handler(i32, i64, i32, i64*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_system_memory_region_setup(i8*, i32, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_io_space_handler(i32, i64, i32, i64*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_io_space_region_setup(i8*, i32, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_pci_config_space_handler(i32, i64, i32, i64*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_pci_config_region_setup(i8*, i32, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_cmos_space_handler(i32, i64, i32, i64*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_cmos_region_setup(i8*, i32, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_pci_bar_space_handler(i32, i64, i32, i64*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_pci_bar_region_setup(i8*, i32, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_data_table_space_handler(i32, i64, i32, i64*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_default_region_setup(i8*, i32, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object_dbg(i8*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ev_install_handler(i8* %obj_handle, i32 %level, i8* %context, i8** %return_value) #0 !dbg !1129 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %handler_obj = alloca %union.acpi_operand_object*, align 8
  %next_handler_obj = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %handler_obj, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %next_handler_obj, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1146, metadata !DIExpression()), !dbg !1147
  %0 = load i8*, i8** %context.addr, align 8, !dbg !1148
  %1 = bitcast i8* %0 to %union.acpi_operand_object*, !dbg !1149
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1150
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1151
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1151
  br i1 %tobool, label %if.end, label %if.then, !dbg !1153

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1154
  br label %return, !dbg !1154

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1156
  %call = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8* %3) #3, !dbg !1157
  store %struct.acpi_namespace_node* %call, %struct.acpi_namespace_node** %node, align 8, !dbg !1158
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1159
  %tobool1 = icmp ne %struct.acpi_namespace_node* %4, null, !dbg !1159
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1161

if.then2:                                         ; preds = %if.end
  store i32 4097, i32* %retval, align 4, !dbg !1162
  br label %return, !dbg !1162

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1164
  %type = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %5, i32 0, i32 2, !dbg !1166
  %6 = load i8, i8* %type, align 1, !dbg !1166
  %conv = zext i8 %6 to i32, !dbg !1164
  %cmp = icmp ne i32 %conv, 6, !dbg !1167
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !1168

land.lhs.true:                                    ; preds = %if.end3
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1169
  %type5 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %7, i32 0, i32 2, !dbg !1170
  %8 = load i8, i8* %type5, align 1, !dbg !1170
  %conv6 = zext i8 %8 to i32, !dbg !1169
  %cmp7 = icmp ne i32 %conv6, 10, !dbg !1171
  br i1 %cmp7, label %land.lhs.true9, label %if.end13, !dbg !1172

land.lhs.true9:                                   ; preds = %land.lhs.true
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1173
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !1174
  %cmp10 = icmp ne %struct.acpi_namespace_node* %9, %10, !dbg !1175
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1176

if.then12:                                        ; preds = %land.lhs.true9
  store i32 0, i32* %retval, align 4, !dbg !1177
  br label %return, !dbg !1177

if.end13:                                         ; preds = %land.lhs.true9, %land.lhs.true, %if.end3
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1179
  %call14 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %11) #3, !dbg !1180
  store %union.acpi_operand_object* %call14, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1181
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1182
  %tobool15 = icmp ne %union.acpi_operand_object* %12, null, !dbg !1182
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1184

if.then16:                                        ; preds = %if.end13
  store i32 0, i32* %retval, align 4, !dbg !1185
  br label %return, !dbg !1185

if.end17:                                         ; preds = %if.end13
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1187
  %common = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_common*, !dbg !1189
  %type18 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !1190
  %14 = load i8, i8* %type18, align 1, !dbg !1190
  %conv19 = zext i8 %14 to i32, !dbg !1187
  %cmp20 = icmp eq i32 %conv19, 6, !dbg !1191
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !1192

if.then22:                                        ; preds = %if.end17
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1193
  %address_space = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_addr_handler*, !dbg !1195
  %space_id = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space, i32 0, i32 5, !dbg !1196
  %16 = load i8, i8* %space_id, align 1, !dbg !1196
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1197
  %common_notify = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_notify_common*, !dbg !1198
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, %struct.acpi_object_notify_common* %common_notify, i32 0, i32 6, !dbg !1199
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler, align 8, !dbg !1199
  %call23 = call %union.acpi_operand_object* @acpi_ev_find_region_handler(i8 zeroext %16, %union.acpi_operand_object* %18) #3, !dbg !1200
  store %union.acpi_operand_object* %call23, %union.acpi_operand_object** %next_handler_obj, align 8, !dbg !1201
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next_handler_obj, align 8, !dbg !1202
  %tobool24 = icmp ne %union.acpi_operand_object* %19, null, !dbg !1202
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1204

if.then25:                                        ; preds = %if.then22
  store i32 16390, i32* %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

if.end26:                                         ; preds = %if.then22
  store i32 0, i32* %retval, align 4, !dbg !1207
  br label %return, !dbg !1207

if.end27:                                         ; preds = %if.end17
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1208
  %region = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_region*, !dbg !1210
  %space_id28 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 5, !dbg !1211
  %21 = load i8, i8* %space_id28, align 1, !dbg !1211
  %conv29 = zext i8 %21 to i32, !dbg !1208
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1212
  %address_space30 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_addr_handler*, !dbg !1213
  %space_id31 = getelementptr inbounds %struct.acpi_object_addr_handler, %struct.acpi_object_addr_handler* %address_space30, i32 0, i32 5, !dbg !1214
  %23 = load i8, i8* %space_id31, align 1, !dbg !1214
  %conv32 = zext i8 %23 to i32, !dbg !1212
  %cmp33 = icmp ne i32 %conv29, %conv32, !dbg !1215
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1216

if.then35:                                        ; preds = %if.end27
  store i32 0, i32* %retval, align 4, !dbg !1217
  br label %return, !dbg !1217

if.end36:                                         ; preds = %if.end27
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1219
  call void @acpi_ev_detach_region(%union.acpi_operand_object* %24, i8 zeroext 0) #3, !dbg !1220
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %handler_obj, align 8, !dbg !1221
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1222
  %call37 = call i32 @acpi_ev_attach_region(%union.acpi_operand_object* %25, %union.acpi_operand_object* %26, i8 zeroext 0) #3, !dbg !1223
  store i32 %call37, i32* %status, align 4, !dbg !1224
  %27 = load i32, i32* %status, align 4, !dbg !1225
  store i32 %27, i32* %retval, align 4, !dbg !1226
  br label %return, !dbg !1226

return:                                           ; preds = %if.end36, %if.then35, %if.end26, %if.then25, %if.then16, %if.then12, %if.then2, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !1227
  ret i32 %28, !dbg !1227
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_ev_detach_region(%union.acpi_operand_object*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object*, %union.acpi_operand_object*, i8 zeroext) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!789, !790, !791, !792}
!llvm.ident = !{!793}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_default_address_spaces", scope: !2, file: !3, line: 26, type: !788, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !781, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evhandler.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7, !14, !9, !17}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !8, line: 421, baseType: !9)
!8 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !10, line: 17, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !12, line: 21, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !19, line: 367, size: 576, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !32, !48, !60, !96, !110, !119, !432, !449, !464, !477, !555, !567, !581, !591, !609, !631, !650, !669, !688, !701, !727, !744, !757, !771, !780}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !18, file: !19, line: 368, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !19, line: 73, size: 128, elements: !23)
!23 = !{!24, !25, !26, !27, !31}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !22, file: !19, line: 74, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !19, line: 74, baseType: !14, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !19, line: 74, baseType: !14, size: 8, offset: 72)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !22, file: !19, line: 74, baseType: !28, size: 16, offset: 80)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !10, line: 19, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !12, line: 24, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !19, line: 74, baseType: !14, size: 8, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !18, file: !19, line: 369, baseType: !33, size: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !19, line: 76, size: 192, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !19, line: 77, baseType: !17, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !19, line: 77, baseType: !14, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !19, line: 77, baseType: !14, size: 8, offset: 72)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !19, line: 77, baseType: !28, size: 16, offset: 80)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !19, line: 77, baseType: !14, size: 8, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !33, file: !19, line: 77, baseType: !41, size: 24, offset: 104)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 24, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !19, line: 78, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !10, line: 23, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !12, line: 31, baseType: !47)
!47 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !18, file: !19, line: 370, baseType: !49, size: 256)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !19, line: 93, size: 256, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !59}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !19, line: 94, baseType: !17, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !19, line: 94, baseType: !14, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !19, line: 94, baseType: !14, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !19, line: 94, baseType: !28, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !19, line: 94, baseType: !14, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !49, file: !19, line: 94, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !49, file: !19, line: 94, baseType: !9, size: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !18, file: !19, line: 371, baseType: !61, size: 384)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !19, line: 97, size: 384, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !70, !71, !72, !73}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !19, line: 98, baseType: !17, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !19, line: 98, baseType: !14, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !19, line: 98, baseType: !14, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !19, line: 98, baseType: !28, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !19, line: 98, baseType: !14, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !61, file: !19, line: 98, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !61, file: !19, line: 98, baseType: !9, size: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !61, file: !19, line: 99, baseType: !9, size: 32, offset: 224)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !61, file: !19, line: 100, baseType: !69, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !61, file: !19, line: 101, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !76, line: 133, size: 384, elements: !77)
!76 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81, !82, !91, !92, !93, !94}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !75, file: !76, line: 134, baseType: !17, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !76, line: 135, baseType: !14, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !76, line: 136, baseType: !14, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !76, line: 137, baseType: !28, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !76, line: 138, baseType: !83, size: 32, offset: 96)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !84, line: 327, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !83, file: !84, line: 328, baseType: !9, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !83, file: !84, line: 329, baseType: !88, size: 32)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 4)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !75, file: !76, line: 139, baseType: !74, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !75, file: !76, line: 140, baseType: !74, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !75, file: !76, line: 141, baseType: !74, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !75, file: !76, line: 142, baseType: !95, size: 16, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !8, line: 445, baseType: !28)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !18, file: !19, line: 372, baseType: !97, size: 384)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !19, line: 104, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !107, !108, !109}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !19, line: 105, baseType: !17, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !19, line: 105, baseType: !14, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !19, line: 105, baseType: !14, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !19, line: 105, baseType: !28, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !19, line: 105, baseType: !14, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !19, line: 105, baseType: !74, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !97, file: !19, line: 106, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !97, file: !19, line: 107, baseType: !69, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !97, file: !19, line: 108, baseType: !9, size: 32, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !97, file: !19, line: 109, baseType: !9, size: 32, offset: 352)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !18, file: !19, line: 373, baseType: !111, size: 192)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !19, line: 118, size: 192, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !19, line: 119, baseType: !17, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !19, line: 119, baseType: !14, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !19, line: 119, baseType: !14, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !19, line: 119, baseType: !28, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !19, line: 119, baseType: !14, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !111, file: !19, line: 119, baseType: !6, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !18, file: !19, line: 374, baseType: !120, size: 448)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !19, line: 143, size: 448, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !429, !430, !431}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !19, line: 144, baseType: !17, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !19, line: 144, baseType: !14, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !19, line: 144, baseType: !14, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !19, line: 144, baseType: !28, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !19, line: 144, baseType: !14, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !120, file: !19, line: 144, baseType: !14, size: 8, offset: 104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !120, file: !19, line: 145, baseType: !14, size: 8, offset: 112)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !120, file: !19, line: 146, baseType: !14, size: 8, offset: 120)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !120, file: !19, line: 147, baseType: !17, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !19, line: 148, baseType: !17, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !19, line: 149, baseType: !69, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !120, file: !19, line: 153, baseType: !134, size: 64, offset: 320)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !19, line: 150, size: 64, elements: !135)
!135 = !{!136, !428}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !134, file: !19, line: 151, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !76, line: 248, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!7, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !143, line: 37, size: 9024, elements: !144)
!143 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !374, !375, !376, !377, !378, !382, !384, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !411, !412, !413, !414, !415, !416, !417, !418, !420, !426}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !143, line: 38, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !143, line: 39, baseType: !14, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !142, file: !143, line: 40, baseType: !14, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !142, file: !143, line: 41, baseType: !28, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !142, file: !143, line: 42, baseType: !14, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !142, file: !143, line: 43, baseType: !14, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !142, file: !143, line: 44, baseType: !14, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !143, line: 45, baseType: !95, size: 16, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !142, file: !143, line: 46, baseType: !14, size: 8, offset: 144)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !142, file: !143, line: 47, baseType: !14, size: 8, offset: 152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !142, file: !143, line: 48, baseType: !14, size: 8, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !142, file: !143, line: 49, baseType: !14, size: 8, offset: 168)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !142, file: !143, line: 50, baseType: !14, size: 8, offset: 176)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !142, file: !143, line: 51, baseType: !14, size: 8, offset: 184)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !142, file: !143, line: 52, baseType: !14, size: 8, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !142, file: !143, line: 53, baseType: !14, size: 8, offset: 200)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !142, file: !143, line: 54, baseType: !69, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !142, file: !143, line: 55, baseType: !9, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !142, file: !143, line: 56, baseType: !9, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !142, file: !143, line: 57, baseType: !9, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !142, file: !143, line: 58, baseType: !9, size: 32, offset: 416)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !142, file: !143, line: 60, baseType: !167, size: 640, offset: 448)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !76, line: 893, size: 640, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !255, !256, !372, !373}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !167, file: !76, line: 894, baseType: !69, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !167, file: !76, line: 895, baseType: !69, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !167, file: !76, line: 896, baseType: !69, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !167, file: !76, line: 897, baseType: !69, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !167, file: !76, line: 898, baseType: !69, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !167, file: !76, line: 899, baseType: !175, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !76, line: 875, size: 1600, elements: !177)
!177 = !{!178, !198, !214}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !176, file: !76, line: 876, baseType: !179, size: 448)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !76, line: 828, size: 448, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !197}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !76, line: 829, baseType: !175, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !179, file: !76, line: 829, baseType: !14, size: 8, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !179, file: !76, line: 829, baseType: !14, size: 8, offset: 72)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !179, file: !76, line: 829, baseType: !28, size: 16, offset: 80)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !179, file: !76, line: 829, baseType: !69, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !76, line: 829, baseType: !175, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !179, file: !76, line: 829, baseType: !74, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !179, file: !76, line: 829, baseType: !189, size: 64, offset: 320)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !76, line: 716, size: 64, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !189, file: !76, line: 717, baseType: !45, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !189, file: !76, line: 718, baseType: !9, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !189, file: !76, line: 719, baseType: !57, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !189, file: !76, line: 720, baseType: !69, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !76, line: 721, baseType: !57, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !189, file: !76, line: 722, baseType: !175, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !179, file: !76, line: 829, baseType: !14, size: 8, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !176, file: !76, line: 877, baseType: !199, size: 640)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !76, line: 835, size: 640, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !76, line: 836, baseType: !175, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !76, line: 836, baseType: !14, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !76, line: 836, baseType: !14, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !76, line: 836, baseType: !28, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !76, line: 836, baseType: !69, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !76, line: 836, baseType: !175, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !76, line: 836, baseType: !74, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !76, line: 836, baseType: !189, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !76, line: 836, baseType: !14, size: 8, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !199, file: !76, line: 836, baseType: !57, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !76, line: 837, baseType: !69, size: 64, offset: 512)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !199, file: !76, line: 838, baseType: !9, size: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !76, line: 839, baseType: !9, size: 32, offset: 608)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !176, file: !76, line: 878, baseType: !215, size: 1600)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !76, line: 846, size: 1600, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !215, file: !76, line: 847, baseType: !175, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !76, line: 847, baseType: !14, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !76, line: 847, baseType: !14, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !215, file: !76, line: 847, baseType: !28, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !215, file: !76, line: 847, baseType: !69, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !76, line: 847, baseType: !175, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !76, line: 847, baseType: !74, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !76, line: 847, baseType: !189, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !215, file: !76, line: 847, baseType: !14, size: 8, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !215, file: !76, line: 847, baseType: !175, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !215, file: !76, line: 848, baseType: !175, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !215, file: !76, line: 849, baseType: !57, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !215, file: !76, line: 850, baseType: !14, size: 8, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !215, file: !76, line: 851, baseType: !57, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !215, file: !76, line: 852, baseType: !57, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !215, file: !76, line: 853, baseType: !57, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !215, file: !76, line: 854, baseType: !88, size: 32, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !215, file: !76, line: 855, baseType: !9, size: 32, offset: 928)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !215, file: !76, line: 856, baseType: !9, size: 32, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !215, file: !76, line: 857, baseType: !9, size: 32, offset: 992)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !215, file: !76, line: 858, baseType: !9, size: 32, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !215, file: !76, line: 859, baseType: !9, size: 32, offset: 1056)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !215, file: !76, line: 860, baseType: !9, size: 32, offset: 1088)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !215, file: !76, line: 861, baseType: !9, size: 32, offset: 1120)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !215, file: !76, line: 862, baseType: !9, size: 32, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !76, line: 863, baseType: !9, size: 32, offset: 1184)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !215, file: !76, line: 864, baseType: !9, size: 32, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !215, file: !76, line: 865, baseType: !9, size: 32, offset: 1248)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !215, file: !76, line: 866, baseType: !9, size: 32, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !215, file: !76, line: 867, baseType: !9, size: 32, offset: 1312)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !215, file: !76, line: 868, baseType: !28, size: 16, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !215, file: !76, line: 869, baseType: !14, size: 8, offset: 1360)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !215, file: !76, line: 870, baseType: !14, size: 8, offset: 1368)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !215, file: !76, line: 871, baseType: !14, size: 8, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !215, file: !76, line: 872, baseType: !252, size: 160, offset: 1384)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 20)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !167, file: !76, line: 900, baseType: !74, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !167, file: !76, line: 901, baseType: !257, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !76, line: 663, size: 640, elements: !259)
!259 = !{!260, !268, !281, !290, !299, !312, !326, !338, !350}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !258, file: !76, line: 664, baseType: !261, size: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !76, line: 567, size: 128, elements: !262)
!262 = !{!263, !264, !265, !266, !267}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !76, line: 568, baseType: !6, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !76, line: 568, baseType: !14, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !76, line: 568, baseType: !14, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !76, line: 568, baseType: !28, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !261, file: !76, line: 568, baseType: !28, size: 16, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !258, file: !76, line: 665, baseType: !269, size: 384)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !76, line: 593, size: 384, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !76, line: 594, baseType: !6, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !76, line: 594, baseType: !14, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !76, line: 594, baseType: !14, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !76, line: 594, baseType: !28, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !76, line: 594, baseType: !28, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !269, file: !76, line: 594, baseType: !28, size: 16, offset: 112)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !269, file: !76, line: 595, baseType: !175, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !269, file: !76, line: 596, baseType: !69, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !269, file: !76, line: 597, baseType: !69, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !269, file: !76, line: 598, baseType: !45, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !258, file: !76, line: 666, baseType: !282, size: 192)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !76, line: 573, size: 192, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !76, line: 574, baseType: !6, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !282, file: !76, line: 574, baseType: !14, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !76, line: 574, baseType: !14, size: 8, offset: 72)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !282, file: !76, line: 574, baseType: !28, size: 16, offset: 80)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !76, line: 574, baseType: !28, size: 16, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !282, file: !76, line: 574, baseType: !17, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !258, file: !76, line: 667, baseType: !291, size: 192)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !76, line: 604, size: 192, elements: !292)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !76, line: 605, baseType: !6, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !76, line: 605, baseType: !14, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !76, line: 605, baseType: !14, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !76, line: 605, baseType: !28, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !76, line: 605, baseType: !28, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !291, file: !76, line: 605, baseType: !74, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !258, file: !76, line: 668, baseType: !300, size: 448)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !76, line: 608, size: 448, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !76, line: 609, baseType: !6, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !76, line: 609, baseType: !14, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !76, line: 609, baseType: !14, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !76, line: 609, baseType: !28, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !300, file: !76, line: 609, baseType: !28, size: 16, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !300, file: !76, line: 609, baseType: !9, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !300, file: !76, line: 610, baseType: !175, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !300, file: !76, line: 611, baseType: !69, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !300, file: !76, line: 612, baseType: !69, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !300, file: !76, line: 613, baseType: !9, size: 32, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !258, file: !76, line: 669, baseType: !313, size: 512)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !76, line: 580, size: 512, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !76, line: 581, baseType: !6, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !76, line: 581, baseType: !14, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !76, line: 581, baseType: !14, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !76, line: 581, baseType: !28, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !76, line: 581, baseType: !28, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !313, file: !76, line: 581, baseType: !9, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !313, file: !76, line: 582, baseType: !17, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !313, file: !76, line: 583, baseType: !17, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !313, file: !76, line: 584, baseType: !141, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !313, file: !76, line: 585, baseType: !6, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !313, file: !76, line: 586, baseType: !9, size: 32, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !258, file: !76, line: 670, baseType: !327, size: 320)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !76, line: 620, size: 320, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !76, line: 621, baseType: !6, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !76, line: 621, baseType: !14, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !76, line: 621, baseType: !14, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !76, line: 621, baseType: !28, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !76, line: 621, baseType: !28, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !327, file: !76, line: 621, baseType: !14, size: 8, offset: 112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !327, file: !76, line: 622, baseType: !141, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !327, file: !76, line: 623, baseType: !17, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !327, file: !76, line: 624, baseType: !45, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !258, file: !76, line: 671, baseType: !339, size: 640)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !76, line: 631, size: 640, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !76, line: 632, baseType: !6, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !76, line: 632, baseType: !14, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !76, line: 632, baseType: !14, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !76, line: 632, baseType: !28, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !76, line: 632, baseType: !28, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !339, file: !76, line: 633, baseType: !347, size: 512, offset: 128)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 8)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !258, file: !76, line: 672, baseType: !351, size: 320)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !76, line: 654, size: 320, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !76, line: 655, baseType: !6, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !351, file: !76, line: 655, baseType: !14, size: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !76, line: 655, baseType: !14, size: 8, offset: 72)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !76, line: 655, baseType: !28, size: 16, offset: 80)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !76, line: 655, baseType: !28, size: 16, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !351, file: !76, line: 655, baseType: !14, size: 8, offset: 112)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !351, file: !76, line: 656, baseType: !74, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !351, file: !76, line: 657, baseType: !17, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !351, file: !76, line: 658, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !76, line: 645, size: 128, elements: !364)
!364 = !{!365, !371}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !363, file: !76, line: 646, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !8, line: 1052, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370, !9, !6}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !8, line: 424, baseType: !6)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !363, file: !76, line: 647, baseType: !6, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !167, file: !76, line: 902, baseType: !175, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !167, file: !76, line: 903, baseType: !9, size: 32, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !142, file: !143, line: 61, baseType: !9, size: 32, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !142, file: !143, line: 62, baseType: !9, size: 32, offset: 1120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !142, file: !143, line: 63, baseType: !28, size: 16, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !142, file: !143, line: 64, baseType: !14, size: 8, offset: 1168)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !142, file: !143, line: 66, baseType: !379, size: 2688, offset: 1216)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2688, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 7)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !142, file: !143, line: 67, baseType: !383, size: 3072, offset: 3904)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 3072, elements: !348)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !142, file: !143, line: 68, baseType: !385, size: 576, offset: 6976)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 9)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !142, file: !143, line: 69, baseType: !106, size: 64, offset: 7552)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !142, file: !143, line: 71, baseType: !69, size: 64, offset: 7616)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !142, file: !143, line: 72, baseType: !106, size: 64, offset: 7680)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !142, file: !143, line: 73, baseType: !257, size: 64, offset: 7744)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !142, file: !143, line: 74, baseType: !74, size: 64, offset: 7808)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !142, file: !143, line: 75, baseType: !17, size: 64, offset: 7872)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !142, file: !143, line: 76, baseType: !74, size: 64, offset: 7936)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !142, file: !143, line: 77, baseType: !175, size: 64, offset: 8000)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !142, file: !143, line: 78, baseType: !17, size: 64, offset: 8064)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !142, file: !143, line: 79, baseType: !74, size: 64, offset: 8128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !142, file: !143, line: 80, baseType: !57, size: 64, offset: 8192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !142, file: !143, line: 81, baseType: !175, size: 64, offset: 8256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !142, file: !143, line: 82, baseType: !401, size: 64, offset: 8320)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !76, line: 702, size: 128, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !403, file: !76, line: 706, baseType: !9, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !403, file: !76, line: 707, baseType: !9, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !76, line: 708, baseType: !28, size: 16, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !403, file: !76, line: 709, baseType: !14, size: 8, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !403, file: !76, line: 710, baseType: !14, size: 8, offset: 88)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !76, line: 711, baseType: !14, size: 8, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !142, file: !143, line: 83, baseType: !175, size: 64, offset: 8384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !142, file: !143, line: 84, baseType: !17, size: 64, offset: 8448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !142, file: !143, line: 85, baseType: !257, size: 64, offset: 8512)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !142, file: !143, line: 86, baseType: !17, size: 64, offset: 8576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !142, file: !143, line: 87, baseType: !257, size: 64, offset: 8640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !142, file: !143, line: 88, baseType: !175, size: 64, offset: 8704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !142, file: !143, line: 89, baseType: !175, size: 64, offset: 8768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !142, file: !143, line: 90, baseType: !419, size: 64, offset: 8832)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !142, file: !143, line: 91, baseType: !421, size: 64, offset: 8896)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !76, line: 637, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!7, !141, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !142, file: !143, line: 92, baseType: !427, size: 64, offset: 8960)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !76, line: 641, baseType: !138)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !134, file: !19, line: 152, baseType: !17, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !19, line: 155, baseType: !9, size: 32, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !120, file: !19, line: 156, baseType: !95, size: 16, offset: 416)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !120, file: !19, line: 157, baseType: !14, size: 8, offset: 432)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 375, baseType: !433, size: 576)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !19, line: 122, size: 576, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !433, file: !19, line: 123, baseType: !17, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !433, file: !19, line: 123, baseType: !14, size: 8, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !19, line: 123, baseType: !14, size: 8, offset: 72)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !433, file: !19, line: 123, baseType: !28, size: 16, offset: 80)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !19, line: 123, baseType: !14, size: 8, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !433, file: !19, line: 123, baseType: !14, size: 8, offset: 104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !433, file: !19, line: 124, baseType: !28, size: 16, offset: 112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !433, file: !19, line: 125, baseType: !6, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !433, file: !19, line: 126, baseType: !45, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !433, file: !19, line: 127, baseType: !419, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !433, file: !19, line: 128, baseType: !17, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !19, line: 129, baseType: !17, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !433, file: !19, line: 130, baseType: !74, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !433, file: !19, line: 131, baseType: !14, size: 8, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !18, file: !19, line: 376, baseType: !450, size: 448)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !19, line: 134, size: 448, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !463}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !19, line: 135, baseType: !17, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !19, line: 135, baseType: !14, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !19, line: 135, baseType: !14, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !19, line: 135, baseType: !28, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !19, line: 135, baseType: !14, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !450, file: !19, line: 135, baseType: !14, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !19, line: 136, baseType: !74, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !450, file: !19, line: 137, baseType: !17, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !19, line: 138, baseType: !17, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !450, file: !19, line: 139, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !8, line: 129, baseType: !45)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !450, file: !19, line: 140, baseType: !9, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !18, file: !19, line: 377, baseType: !465, size: 320)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !19, line: 184, size: 320, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !476}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !19, line: 185, baseType: !17, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !19, line: 185, baseType: !14, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !19, line: 185, baseType: !14, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !19, line: 185, baseType: !28, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !19, line: 185, baseType: !14, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !465, file: !19, line: 185, baseType: !473, size: 128, offset: 128)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 2)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !19, line: 185, baseType: !17, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !18, file: !19, line: 378, baseType: !478, size: 384)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !19, line: 187, size: 384, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !19, line: 188, baseType: !17, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !19, line: 188, baseType: !14, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !19, line: 188, baseType: !14, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !19, line: 188, baseType: !28, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !19, line: 188, baseType: !14, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !478, file: !19, line: 189, baseType: !473, size: 128, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !478, file: !19, line: 189, baseType: !17, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !478, file: !19, line: 189, baseType: !488, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !76, line: 480, size: 576, elements: !490)
!490 = !{!491, !492, !493, !494, !502, !517, !549, !550, !551, !552, !553, !554}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !489, file: !76, line: 481, baseType: !74, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !489, file: !76, line: 482, baseType: !488, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !76, line: 483, baseType: !488, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !489, file: !76, line: 484, baseType: !495, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !76, line: 497, size: 256, elements: !497)
!497 = !{!498, !499, !500, !501}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !76, line: 498, baseType: !495, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !76, line: 499, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !496, file: !76, line: 500, baseType: !488, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !496, file: !76, line: 501, baseType: !9, size: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !489, file: !76, line: 485, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !76, line: 466, size: 320, elements: !505)
!505 = !{!506, !511, !512, !513, !514, !515, !516}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !504, file: !76, line: 467, baseType: !507, size: 128)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !76, line: 459, size: 128, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !507, file: !76, line: 460, baseType: !14, size: 8)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !507, file: !76, line: 461, baseType: !45, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !504, file: !76, line: 468, baseType: !507, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !504, file: !76, line: 469, baseType: !28, size: 16, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !504, file: !76, line: 470, baseType: !14, size: 8, offset: 272)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !504, file: !76, line: 471, baseType: !14, size: 8, offset: 280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !504, file: !76, line: 472, baseType: !14, size: 8, offset: 288)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !504, file: !76, line: 473, baseType: !14, size: 8, offset: 296)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !489, file: !76, line: 486, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !76, line: 448, size: 192, elements: !520)
!520 = !{!521, !544, !545, !546, !547, !548}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !519, file: !76, line: 449, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !76, line: 438, size: 64, elements: !523)
!523 = !{!524, !525, !538}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !522, file: !76, line: 439, baseType: !74, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !522, file: !76, line: 440, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !76, line: 419, size: 256, elements: !528)
!528 = !{!529, !534, !535, !536, !537}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !76, line: 420, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !8, line: 1049, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!9, !370, !9, !6}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !527, file: !76, line: 421, baseType: !6, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !527, file: !76, line: 422, baseType: !74, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !527, file: !76, line: 423, baseType: !14, size: 8, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !527, file: !76, line: 424, baseType: !14, size: 8, offset: 200)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !522, file: !76, line: 441, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !76, line: 429, size: 128, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !540, file: !76, line: 430, baseType: !74, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !540, file: !76, line: 431, baseType: !539, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !519, file: !76, line: 450, baseType: !503, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !76, line: 451, baseType: !14, size: 8, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !519, file: !76, line: 452, baseType: !14, size: 8, offset: 136)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !519, file: !76, line: 453, baseType: !14, size: 8, offset: 144)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !519, file: !76, line: 454, baseType: !14, size: 8, offset: 152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !489, file: !76, line: 487, baseType: !45, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !489, file: !76, line: 488, baseType: !9, size: 32, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !489, file: !76, line: 489, baseType: !28, size: 16, offset: 480)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !489, file: !76, line: 490, baseType: !28, size: 16, offset: 496)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !489, file: !76, line: 491, baseType: !14, size: 8, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !489, file: !76, line: 492, baseType: !14, size: 8, offset: 520)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !18, file: !19, line: 379, baseType: !556, size: 384)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !19, line: 192, size: 384, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !556, file: !19, line: 193, baseType: !17, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !19, line: 193, baseType: !14, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !19, line: 193, baseType: !14, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !556, file: !19, line: 193, baseType: !28, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !19, line: 193, baseType: !14, size: 8, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !556, file: !19, line: 193, baseType: !473, size: 128, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !556, file: !19, line: 193, baseType: !17, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !556, file: !19, line: 193, baseType: !9, size: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !556, file: !19, line: 194, baseType: !9, size: 32, offset: 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !18, file: !19, line: 380, baseType: !568, size: 384)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !19, line: 197, size: 384, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !568, file: !19, line: 198, baseType: !17, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !568, file: !19, line: 198, baseType: !14, size: 8, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !19, line: 198, baseType: !14, size: 8, offset: 72)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !568, file: !19, line: 198, baseType: !28, size: 16, offset: 80)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !19, line: 198, baseType: !14, size: 8, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !568, file: !19, line: 200, baseType: !14, size: 8, offset: 104)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !568, file: !19, line: 201, baseType: !14, size: 8, offset: 112)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !568, file: !19, line: 202, baseType: !473, size: 128, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !568, file: !19, line: 202, baseType: !17, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !568, file: !19, line: 202, baseType: !580, size: 64, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !8, line: 128, baseType: !45)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !18, file: !19, line: 381, baseType: !582, size: 320)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !19, line: 205, size: 320, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !582, file: !19, line: 206, baseType: !17, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !19, line: 206, baseType: !14, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !19, line: 206, baseType: !14, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !582, file: !19, line: 206, baseType: !28, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !19, line: 206, baseType: !14, size: 8, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !582, file: !19, line: 206, baseType: !473, size: 128, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !582, file: !19, line: 206, baseType: !17, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !18, file: !19, line: 382, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !19, line: 233, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !19, line: 234, baseType: !17, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !19, line: 234, baseType: !28, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 104)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 112)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 120)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !592, file: !19, line: 234, baseType: !74, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !592, file: !19, line: 234, baseType: !9, size: 32, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !592, file: !19, line: 234, baseType: !9, size: 32, offset: 224)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !592, file: !19, line: 234, baseType: !9, size: 32, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 288)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !592, file: !19, line: 234, baseType: !14, size: 8, offset: 296)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !592, file: !19, line: 234, baseType: !17, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !18, file: !19, line: 383, baseType: !610, size: 576)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !19, line: 237, size: 576, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !19, line: 238, baseType: !17, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !19, line: 238, baseType: !28, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 104)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 120)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !610, file: !19, line: 238, baseType: !74, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !610, file: !19, line: 238, baseType: !9, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !610, file: !19, line: 238, baseType: !9, size: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !610, file: !19, line: 238, baseType: !9, size: 32, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 288)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !610, file: !19, line: 238, baseType: !14, size: 8, offset: 296)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !610, file: !19, line: 238, baseType: !28, size: 16, offset: 304)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !610, file: !19, line: 239, baseType: !17, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !610, file: !19, line: 240, baseType: !69, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !610, file: !19, line: 241, baseType: !28, size: 16, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !610, file: !19, line: 242, baseType: !69, size: 64, offset: 512)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !18, file: !19, line: 384, baseType: !632, size: 384)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !19, line: 262, size: 384, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !19, line: 263, baseType: !17, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !19, line: 263, baseType: !28, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 104)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 120)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !19, line: 263, baseType: !74, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !632, file: !19, line: 263, baseType: !9, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !632, file: !19, line: 263, baseType: !9, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !632, file: !19, line: 263, baseType: !9, size: 32, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 296)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !632, file: !19, line: 263, baseType: !14, size: 8, offset: 304)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !632, file: !19, line: 264, baseType: !17, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !18, file: !19, line: 385, baseType: !651, size: 448)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !19, line: 245, size: 448, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !19, line: 246, baseType: !17, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !19, line: 246, baseType: !28, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !19, line: 246, baseType: !74, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !19, line: 246, baseType: !9, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !19, line: 246, baseType: !9, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !19, line: 246, baseType: !9, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !19, line: 246, baseType: !14, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !651, file: !19, line: 246, baseType: !17, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !651, file: !19, line: 247, baseType: !17, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !18, file: !19, line: 386, baseType: !670, size: 448)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !19, line: 250, size: 448, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !19, line: 251, baseType: !17, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !19, line: 251, baseType: !28, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 104)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 112)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 120)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !19, line: 251, baseType: !74, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !670, file: !19, line: 251, baseType: !9, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !670, file: !19, line: 251, baseType: !9, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !670, file: !19, line: 251, baseType: !9, size: 32, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !670, file: !19, line: 251, baseType: !14, size: 8, offset: 296)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !670, file: !19, line: 256, baseType: !17, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !670, file: !19, line: 257, baseType: !17, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !18, file: !19, line: 387, baseType: !689, size: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !19, line: 273, size: 512, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !19, line: 274, baseType: !17, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !19, line: 274, baseType: !14, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !19, line: 274, baseType: !14, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !19, line: 274, baseType: !28, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !19, line: 274, baseType: !14, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !19, line: 274, baseType: !74, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !689, file: !19, line: 275, baseType: !9, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !689, file: !19, line: 276, baseType: !366, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !689, file: !19, line: 277, baseType: !6, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !19, line: 278, baseType: !473, size: 128, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !18, file: !19, line: 388, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !19, line: 281, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !717, !718, !719, !725, !726}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !19, line: 282, baseType: !17, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !19, line: 282, baseType: !14, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !19, line: 282, baseType: !14, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !19, line: 282, baseType: !28, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !19, line: 282, baseType: !14, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !702, file: !19, line: 282, baseType: !14, size: 8, offset: 104)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !702, file: !19, line: 283, baseType: !14, size: 8, offset: 112)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !702, file: !19, line: 284, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !8, line: 1084, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!7, !9, !462, !9, !716, !6, !6}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !19, line: 285, baseType: !74, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !702, file: !19, line: 286, baseType: !6, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !702, file: !19, line: 287, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !8, line: 1102, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!7, !370, !9, !6, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !702, file: !19, line: 288, baseType: !17, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !19, line: 289, baseType: !17, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !18, file: !19, line: 389, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !19, line: 307, size: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !728, file: !19, line: 308, baseType: !17, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !728, file: !19, line: 308, baseType: !14, size: 8, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !728, file: !19, line: 308, baseType: !14, size: 8, offset: 72)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !728, file: !19, line: 308, baseType: !28, size: 16, offset: 80)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !728, file: !19, line: 308, baseType: !14, size: 8, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !728, file: !19, line: 308, baseType: !14, size: 8, offset: 104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !728, file: !19, line: 309, baseType: !14, size: 8, offset: 112)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !728, file: !19, line: 310, baseType: !14, size: 8, offset: 120)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !728, file: !19, line: 311, baseType: !6, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !19, line: 312, baseType: !74, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !728, file: !19, line: 313, baseType: !106, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !728, file: !19, line: 314, baseType: !69, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !728, file: !19, line: 315, baseType: !69, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !728, file: !19, line: 316, baseType: !9, size: 32, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !18, file: !19, line: 390, baseType: !745, size: 448)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !19, line: 340, size: 448, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !19, line: 341, baseType: !17, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !19, line: 341, baseType: !14, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !19, line: 341, baseType: !14, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !19, line: 341, baseType: !28, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !19, line: 341, baseType: !14, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !745, file: !19, line: 341, baseType: !74, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !745, file: !19, line: 342, baseType: !74, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !745, file: !19, line: 343, baseType: !6, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !745, file: !19, line: 344, baseType: !69, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !745, file: !19, line: 345, baseType: !9, size: 32, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !19, line: 391, baseType: !758, size: 256)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !19, line: 350, size: 256, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !770}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !758, file: !19, line: 351, baseType: !17, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !19, line: 351, baseType: !14, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !19, line: 351, baseType: !14, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !758, file: !19, line: 351, baseType: !28, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !19, line: 351, baseType: !14, size: 8, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !758, file: !19, line: 351, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !8, line: 1055, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{null, !370, !6}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !758, file: !19, line: 352, baseType: !6, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !18, file: !19, line: 392, baseType: !772, size: 192)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !19, line: 357, size: 192, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !772, file: !19, line: 358, baseType: !17, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !772, file: !19, line: 358, baseType: !14, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !19, line: 358, baseType: !14, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !772, file: !19, line: 358, baseType: !28, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !19, line: 358, baseType: !14, size: 8, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !19, line: 358, baseType: !17, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 399, baseType: !75, size: 384)
!781 = !{!0, !782}
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !784, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 80, elements: !786)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!786 = !{!787}
!787 = !DISubrange(count: 10)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !89)
!789 = !{i32 7, !"Dwarf Version", i32 4}
!790 = !{i32 2, !"Debug Info Version", i32 3}
!791 = !{i32 1, !"wchar_size", i32 2}
!792 = !{i32 1, !"Code Model", i32 2}
!793 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!794 = distinct !DISubprogram(name: "acpi_ev_install_region_handlers", scope: !3, file: !3, line: 45, type: !795, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!795 = !DISubroutineType(types: !796)
!796 = !{!7}
!797 = !DILocalVariable(name: "status", scope: !794, file: !3, line: 47, type: !7)
!798 = !DILocation(line: 47, column: 14, scope: !794)
!799 = !DILocalVariable(name: "i", scope: !794, file: !3, line: 48, type: !9)
!800 = !DILocation(line: 48, column: 6, scope: !794)
!801 = !DILocation(line: 52, column: 11, scope: !794)
!802 = !DILocation(line: 52, column: 9, scope: !794)
!803 = !DILocation(line: 53, column: 6, scope: !804)
!804 = distinct !DILexicalBlock(scope: !794, file: !3, line: 53, column: 6)
!805 = !DILocation(line: 53, column: 6, scope: !794)
!806 = !DILocation(line: 54, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !3, line: 53, column: 28)
!808 = !DILocation(line: 76, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !794, file: !3, line: 76, column: 2)
!810 = !DILocation(line: 76, column: 7, scope: !809)
!811 = !DILocation(line: 76, column: 14, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !3, line: 76, column: 2)
!813 = !DILocation(line: 76, column: 16, scope: !812)
!814 = !DILocation(line: 76, column: 2, scope: !809)
!815 = !DILocation(line: 77, column: 42, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !3, line: 76, column: 48)
!817 = !DILocation(line: 79, column: 15, scope: !816)
!818 = !DILocation(line: 78, column: 14, scope: !816)
!819 = !DILocation(line: 77, column: 12, scope: !816)
!820 = !DILocation(line: 77, column: 10, scope: !816)
!821 = !DILocation(line: 82, column: 11, scope: !816)
!822 = !DILocation(line: 82, column: 3, scope: !816)
!823 = !DILocation(line: 89, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !816, file: !3, line: 82, column: 19)
!825 = !DILocation(line: 90, column: 4, scope: !824)
!826 = !DILocation(line: 94, column: 4, scope: !824)
!827 = !DILocation(line: 96, column: 2, scope: !816)
!828 = !DILocation(line: 76, column: 44, scope: !812)
!829 = !DILocation(line: 76, column: 2, scope: !812)
!830 = distinct !{!830, !814, !831}
!831 = !DILocation(line: 96, column: 2, scope: !809)
!832 = !DILabel(scope: !794, name: "unlock_and_exit", file: !3, line: 98)
!833 = !DILocation(line: 98, column: 1, scope: !794)
!834 = !DILocation(line: 99, column: 8, scope: !794)
!835 = !DILocation(line: 100, column: 2, scope: !794)
!836 = !DILocation(line: 101, column: 1, scope: !794)
!837 = distinct !DISubprogram(name: "acpi_ev_install_space_handler", scope: !3, file: !3, line: 328, type: !838, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!838 = !DISubroutineType(types: !839)
!839 = !{!7, !74, !840, !712, !720, !6}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !8, line: 805, baseType: !14)
!841 = !DILocalVariable(name: "node", arg: 1, scope: !837, file: !3, line: 328, type: !74)
!842 = !DILocation(line: 328, column: 59, scope: !837)
!843 = !DILocalVariable(name: "space_id", arg: 2, scope: !837, file: !3, line: 329, type: !840)
!844 = !DILocation(line: 329, column: 30, scope: !837)
!845 = !DILocalVariable(name: "handler", arg: 3, scope: !837, file: !3, line: 330, type: !712)
!846 = !DILocation(line: 330, column: 33, scope: !837)
!847 = !DILocalVariable(name: "setup", arg: 4, scope: !837, file: !3, line: 331, type: !720)
!848 = !DILocation(line: 331, column: 31, scope: !837)
!849 = !DILocalVariable(name: "context", arg: 5, scope: !837, file: !3, line: 331, type: !6)
!850 = !DILocation(line: 331, column: 44, scope: !837)
!851 = !DILocalVariable(name: "obj_desc", scope: !837, file: !3, line: 333, type: !17)
!852 = !DILocation(line: 333, column: 29, scope: !837)
!853 = !DILocalVariable(name: "handler_obj", scope: !837, file: !3, line: 334, type: !17)
!854 = !DILocation(line: 334, column: 29, scope: !837)
!855 = !DILocalVariable(name: "status", scope: !837, file: !3, line: 335, type: !7)
!856 = !DILocation(line: 335, column: 14, scope: !837)
!857 = !DILocalVariable(name: "type", scope: !837, file: !3, line: 336, type: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !8, line: 635, baseType: !9)
!859 = !DILocation(line: 336, column: 19, scope: !837)
!860 = !DILocalVariable(name: "flags", scope: !837, file: !3, line: 337, type: !14)
!861 = !DILocation(line: 337, column: 5, scope: !837)
!862 = !DILocation(line: 345, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !837, file: !3, line: 345, column: 6)
!864 = !DILocation(line: 345, column: 13, scope: !863)
!865 = !DILocation(line: 345, column: 18, scope: !863)
!866 = !DILocation(line: 345, column: 39, scope: !863)
!867 = !DILocation(line: 346, column: 7, scope: !863)
!868 = !DILocation(line: 346, column: 13, scope: !863)
!869 = !DILocation(line: 346, column: 18, scope: !863)
!870 = !DILocation(line: 346, column: 42, scope: !863)
!871 = !DILocation(line: 347, column: 7, scope: !863)
!872 = !DILocation(line: 347, column: 13, scope: !863)
!873 = !DILocation(line: 347, column: 18, scope: !863)
!874 = !DILocation(line: 347, column: 40, scope: !863)
!875 = !DILocation(line: 347, column: 44, scope: !863)
!876 = !DILocation(line: 347, column: 52, scope: !863)
!877 = !DILocation(line: 347, column: 49, scope: !863)
!878 = !DILocation(line: 345, column: 6, scope: !837)
!879 = !DILocation(line: 348, column: 10, scope: !880)
!880 = distinct !DILexicalBlock(scope: !863, file: !3, line: 347, column: 73)
!881 = !DILocation(line: 349, column: 3, scope: !880)
!882 = !DILocation(line: 352, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !837, file: !3, line: 352, column: 6)
!884 = !DILocation(line: 352, column: 14, scope: !883)
!885 = !DILocation(line: 352, column: 6, scope: !837)
!886 = !DILocation(line: 353, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 352, column: 39)
!888 = !DILocation(line: 355, column: 11, scope: !887)
!889 = !DILocation(line: 355, column: 3, scope: !887)
!890 = !DILocation(line: 358, column: 12, scope: !891)
!891 = distinct !DILexicalBlock(scope: !887, file: !3, line: 355, column: 21)
!892 = !DILocation(line: 359, column: 10, scope: !891)
!893 = !DILocation(line: 360, column: 4, scope: !891)
!894 = !DILocation(line: 364, column: 12, scope: !891)
!895 = !DILocation(line: 365, column: 10, scope: !891)
!896 = !DILocation(line: 366, column: 4, scope: !891)
!897 = !DILocation(line: 370, column: 12, scope: !891)
!898 = !DILocation(line: 371, column: 10, scope: !891)
!899 = !DILocation(line: 372, column: 4, scope: !891)
!900 = !DILocation(line: 376, column: 12, scope: !891)
!901 = !DILocation(line: 377, column: 10, scope: !891)
!902 = !DILocation(line: 378, column: 4, scope: !891)
!903 = !DILocation(line: 382, column: 12, scope: !891)
!904 = !DILocation(line: 383, column: 10, scope: !891)
!905 = !DILocation(line: 384, column: 4, scope: !891)
!906 = !DILocation(line: 388, column: 12, scope: !891)
!907 = !DILocation(line: 389, column: 10, scope: !891)
!908 = !DILocation(line: 390, column: 4, scope: !891)
!909 = !DILocation(line: 394, column: 11, scope: !891)
!910 = !DILocation(line: 395, column: 4, scope: !891)
!911 = !DILocation(line: 397, column: 2, scope: !887)
!912 = !DILocation(line: 401, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !837, file: !3, line: 401, column: 6)
!914 = !DILocation(line: 401, column: 6, scope: !837)
!915 = !DILocation(line: 402, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !3, line: 401, column: 14)
!917 = !DILocation(line: 403, column: 2, scope: !916)
!918 = !DILocation(line: 407, column: 41, scope: !837)
!919 = !DILocation(line: 407, column: 13, scope: !837)
!920 = !DILocation(line: 407, column: 11, scope: !837)
!921 = !DILocation(line: 408, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !837, file: !3, line: 408, column: 6)
!923 = !DILocation(line: 408, column: 6, scope: !837)
!924 = !DILocation(line: 413, column: 45, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !3, line: 408, column: 16)
!926 = !DILocation(line: 414, column: 10, scope: !925)
!927 = !DILocation(line: 415, column: 10, scope: !925)
!928 = !DILocation(line: 416, column: 10, scope: !925)
!929 = !DILocation(line: 413, column: 17, scope: !925)
!930 = !DILocation(line: 413, column: 15, scope: !925)
!931 = !DILocation(line: 418, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !925, file: !3, line: 418, column: 7)
!933 = !DILocation(line: 418, column: 7, scope: !925)
!934 = !DILocation(line: 419, column: 8, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 419, column: 8)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 418, column: 20)
!937 = !DILocation(line: 419, column: 21, scope: !935)
!938 = !DILocation(line: 419, column: 35, scope: !935)
!939 = !DILocation(line: 419, column: 46, scope: !935)
!940 = !DILocation(line: 419, column: 43, scope: !935)
!941 = !DILocation(line: 419, column: 8, scope: !936)
!942 = !DILocation(line: 425, column: 12, scope: !943)
!943 = distinct !DILexicalBlock(scope: !935, file: !3, line: 419, column: 55)
!944 = !DILocation(line: 426, column: 5, scope: !943)
!945 = !DILocation(line: 430, column: 12, scope: !946)
!946 = distinct !DILexicalBlock(scope: !935, file: !3, line: 427, column: 11)
!947 = !DILocation(line: 433, column: 4, scope: !936)
!948 = !DILocation(line: 435, column: 2, scope: !925)
!949 = !DILocation(line: 442, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 442, column: 7)
!951 = distinct !DILexicalBlock(scope: !922, file: !3, line: 435, column: 9)
!952 = !DILocation(line: 442, column: 13, scope: !950)
!953 = !DILocation(line: 442, column: 18, scope: !950)
!954 = !DILocation(line: 442, column: 7, scope: !951)
!955 = !DILocation(line: 443, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !950, file: !3, line: 442, column: 36)
!957 = !DILocation(line: 444, column: 3, scope: !956)
!958 = !DILocation(line: 445, column: 11, scope: !959)
!959 = distinct !DILexicalBlock(scope: !950, file: !3, line: 444, column: 10)
!960 = !DILocation(line: 445, column: 17, scope: !959)
!961 = !DILocation(line: 445, column: 9, scope: !959)
!962 = !DILocation(line: 448, column: 14, scope: !951)
!963 = !DILocation(line: 448, column: 12, scope: !951)
!964 = !DILocation(line: 449, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !951, file: !3, line: 449, column: 7)
!966 = !DILocation(line: 449, column: 7, scope: !951)
!967 = !DILocation(line: 450, column: 11, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 449, column: 18)
!969 = !DILocation(line: 451, column: 4, scope: !968)
!970 = !DILocation(line: 456, column: 31, scope: !951)
!971 = !DILocation(line: 456, column: 27, scope: !951)
!972 = !DILocation(line: 456, column: 3, scope: !951)
!973 = !DILocation(line: 456, column: 13, scope: !951)
!974 = !DILocation(line: 456, column: 20, scope: !951)
!975 = !DILocation(line: 456, column: 25, scope: !951)
!976 = !DILocation(line: 460, column: 34, scope: !951)
!977 = !DILocation(line: 460, column: 40, scope: !951)
!978 = !DILocation(line: 460, column: 50, scope: !951)
!979 = !DILocation(line: 460, column: 12, scope: !951)
!980 = !DILocation(line: 460, column: 10, scope: !951)
!981 = !DILocation(line: 464, column: 28, scope: !951)
!982 = !DILocation(line: 464, column: 3, scope: !951)
!983 = !DILocation(line: 466, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !951, file: !3, line: 466, column: 7)
!985 = !DILocation(line: 466, column: 7, scope: !951)
!986 = !DILocation(line: 467, column: 4, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 466, column: 29)
!988 = !DILocation(line: 484, column: 6, scope: !837)
!989 = !DILocation(line: 483, column: 14, scope: !837)
!990 = !DILocation(line: 485, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !837, file: !3, line: 485, column: 6)
!992 = !DILocation(line: 485, column: 6, scope: !837)
!993 = !DILocation(line: 486, column: 10, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 485, column: 20)
!995 = !DILocation(line: 487, column: 3, scope: !994)
!996 = !DILocation(line: 492, column: 44, scope: !837)
!997 = !DILocation(line: 492, column: 2, scope: !837)
!998 = !DILocation(line: 492, column: 15, scope: !837)
!999 = !DILocation(line: 492, column: 29, scope: !837)
!1000 = !DILocation(line: 492, column: 38, scope: !837)
!1001 = !DILocation(line: 493, column: 45, scope: !837)
!1002 = !DILocation(line: 493, column: 2, scope: !837)
!1003 = !DILocation(line: 493, column: 15, scope: !837)
!1004 = !DILocation(line: 493, column: 29, scope: !837)
!1005 = !DILocation(line: 493, column: 43, scope: !837)
!1006 = !DILocation(line: 494, column: 2, scope: !837)
!1007 = !DILocation(line: 494, column: 15, scope: !837)
!1008 = !DILocation(line: 494, column: 29, scope: !837)
!1009 = !DILocation(line: 494, column: 41, scope: !837)
!1010 = !DILocation(line: 495, column: 36, scope: !837)
!1011 = !DILocation(line: 495, column: 2, scope: !837)
!1012 = !DILocation(line: 495, column: 15, scope: !837)
!1013 = !DILocation(line: 495, column: 29, scope: !837)
!1014 = !DILocation(line: 495, column: 34, scope: !837)
!1015 = !DILocation(line: 496, column: 39, scope: !837)
!1016 = !DILocation(line: 496, column: 2, scope: !837)
!1017 = !DILocation(line: 496, column: 15, scope: !837)
!1018 = !DILocation(line: 496, column: 29, scope: !837)
!1019 = !DILocation(line: 496, column: 37, scope: !837)
!1020 = !DILocation(line: 497, column: 39, scope: !837)
!1021 = !DILocation(line: 497, column: 2, scope: !837)
!1022 = !DILocation(line: 497, column: 15, scope: !837)
!1023 = !DILocation(line: 497, column: 29, scope: !837)
!1024 = !DILocation(line: 497, column: 37, scope: !837)
!1025 = !DILocation(line: 498, column: 37, scope: !837)
!1026 = !DILocation(line: 498, column: 2, scope: !837)
!1027 = !DILocation(line: 498, column: 15, scope: !837)
!1028 = !DILocation(line: 498, column: 29, scope: !837)
!1029 = !DILocation(line: 498, column: 35, scope: !837)
!1030 = !DILocation(line: 502, column: 36, scope: !837)
!1031 = !DILocation(line: 502, column: 46, scope: !837)
!1032 = !DILocation(line: 502, column: 60, scope: !837)
!1033 = !DILocation(line: 502, column: 2, scope: !837)
!1034 = !DILocation(line: 502, column: 15, scope: !837)
!1035 = !DILocation(line: 502, column: 29, scope: !837)
!1036 = !DILocation(line: 502, column: 34, scope: !837)
!1037 = !DILocation(line: 508, column: 36, scope: !837)
!1038 = !DILocation(line: 508, column: 2, scope: !837)
!1039 = !DILocation(line: 508, column: 12, scope: !837)
!1040 = !DILocation(line: 508, column: 26, scope: !837)
!1041 = !DILocation(line: 508, column: 34, scope: !837)
!1042 = !DILocation(line: 520, column: 49, scope: !837)
!1043 = !DILocation(line: 523, column: 6, scope: !837)
!1044 = !DILocation(line: 520, column: 11, scope: !837)
!1045 = !DILocation(line: 520, column: 9, scope: !837)
!1046 = !DILocation(line: 520, column: 2, scope: !837)
!1047 = !DILabel(scope: !837, name: "unlock_and_exit", file: !3, line: 525)
!1048 = !DILocation(line: 525, column: 1, scope: !837)
!1049 = !DILocation(line: 526, column: 2, scope: !837)
!1050 = distinct !DISubprogram(name: "acpi_ev_has_default_handler", scope: !3, file: !3, line: 118, type: !1051, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!14, !74, !840}
!1053 = !DILocalVariable(name: "node", arg: 1, scope: !1050, file: !3, line: 118, type: !74)
!1054 = !DILocation(line: 118, column: 57, scope: !1050)
!1055 = !DILocalVariable(name: "space_id", arg: 2, scope: !1050, file: !3, line: 119, type: !840)
!1056 = !DILocation(line: 119, column: 28, scope: !1050)
!1057 = !DILocalVariable(name: "obj_desc", scope: !1050, file: !3, line: 121, type: !17)
!1058 = !DILocation(line: 121, column: 29, scope: !1050)
!1059 = !DILocalVariable(name: "handler_obj", scope: !1050, file: !3, line: 122, type: !17)
!1060 = !DILocation(line: 122, column: 29, scope: !1050)
!1061 = !DILocation(line: 126, column: 41, scope: !1050)
!1062 = !DILocation(line: 126, column: 13, scope: !1050)
!1063 = !DILocation(line: 126, column: 11, scope: !1050)
!1064 = !DILocation(line: 127, column: 6, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 127, column: 6)
!1066 = !DILocation(line: 127, column: 6, scope: !1050)
!1067 = !DILocation(line: 128, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 127, column: 16)
!1069 = !DILocation(line: 128, column: 27, scope: !1068)
!1070 = !DILocation(line: 128, column: 41, scope: !1068)
!1071 = !DILocation(line: 128, column: 15, scope: !1068)
!1072 = !DILocation(line: 132, column: 3, scope: !1068)
!1073 = !DILocation(line: 132, column: 10, scope: !1068)
!1074 = !DILocation(line: 133, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 133, column: 8)
!1076 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 132, column: 23)
!1077 = !DILocation(line: 133, column: 21, scope: !1075)
!1078 = !DILocation(line: 133, column: 35, scope: !1075)
!1079 = !DILocation(line: 133, column: 47, scope: !1075)
!1080 = !DILocation(line: 133, column: 44, scope: !1075)
!1081 = !DILocation(line: 133, column: 8, scope: !1076)
!1082 = !DILocation(line: 134, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 134, column: 9)
!1084 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 133, column: 57)
!1085 = !DILocation(line: 134, column: 22, scope: !1083)
!1086 = !DILocation(line: 134, column: 36, scope: !1083)
!1087 = !DILocation(line: 134, column: 50, scope: !1083)
!1088 = !DILocation(line: 134, column: 9, scope: !1084)
!1089 = !DILocation(line: 136, column: 6, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 135, column: 46)
!1091 = !DILocation(line: 138, column: 4, scope: !1084)
!1092 = !DILocation(line: 140, column: 18, scope: !1076)
!1093 = !DILocation(line: 140, column: 31, scope: !1076)
!1094 = !DILocation(line: 140, column: 45, scope: !1076)
!1095 = !DILocation(line: 140, column: 16, scope: !1076)
!1096 = distinct !{!1096, !1072, !1097}
!1097 = !DILocation(line: 141, column: 3, scope: !1068)
!1098 = !DILocation(line: 142, column: 2, scope: !1068)
!1099 = !DILocation(line: 144, column: 2, scope: !1050)
!1100 = !DILocation(line: 145, column: 1, scope: !1050)
!1101 = distinct !DISubprogram(name: "acpi_ev_find_region_handler", scope: !3, file: !3, line: 286, type: !1102, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!17, !840, !17}
!1104 = !DILocalVariable(name: "space_id", arg: 1, scope: !1101, file: !3, line: 287, type: !840)
!1105 = !DILocation(line: 287, column: 14, scope: !1101)
!1106 = !DILocalVariable(name: "handler_obj", arg: 2, scope: !1101, file: !3, line: 289, type: !17)
!1107 = !DILocation(line: 289, column: 15, scope: !1101)
!1108 = !DILocation(line: 294, column: 2, scope: !1101)
!1109 = !DILocation(line: 294, column: 9, scope: !1101)
!1110 = !DILocation(line: 298, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 298, column: 7)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 294, column: 22)
!1113 = !DILocation(line: 298, column: 20, scope: !1111)
!1114 = !DILocation(line: 298, column: 34, scope: !1111)
!1115 = !DILocation(line: 298, column: 46, scope: !1111)
!1116 = !DILocation(line: 298, column: 43, scope: !1111)
!1117 = !DILocation(line: 298, column: 7, scope: !1112)
!1118 = !DILocation(line: 299, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 298, column: 56)
!1120 = !DILocation(line: 299, column: 4, scope: !1119)
!1121 = !DILocation(line: 304, column: 17, scope: !1112)
!1122 = !DILocation(line: 304, column: 30, scope: !1112)
!1123 = !DILocation(line: 304, column: 44, scope: !1112)
!1124 = !DILocation(line: 304, column: 15, scope: !1112)
!1125 = distinct !{!1125, !1108, !1126}
!1126 = !DILocation(line: 305, column: 2, scope: !1101)
!1127 = !DILocation(line: 307, column: 2, scope: !1101)
!1128 = !DILocation(line: 308, column: 1, scope: !1101)
!1129 = distinct !DISubprogram(name: "acpi_ev_install_handler", scope: !3, file: !3, line: 165, type: !722, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1130 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1129, file: !3, line: 165, type: !370)
!1131 = !DILocation(line: 165, column: 37, scope: !1129)
!1132 = !DILocalVariable(name: "level", arg: 2, scope: !1129, file: !3, line: 166, type: !9)
!1133 = !DILocation(line: 166, column: 8, scope: !1129)
!1134 = !DILocalVariable(name: "context", arg: 3, scope: !1129, file: !3, line: 166, type: !6)
!1135 = !DILocation(line: 166, column: 21, scope: !1129)
!1136 = !DILocalVariable(name: "return_value", arg: 4, scope: !1129, file: !3, line: 166, type: !724)
!1137 = !DILocation(line: 166, column: 37, scope: !1129)
!1138 = !DILocalVariable(name: "handler_obj", scope: !1129, file: !3, line: 168, type: !17)
!1139 = !DILocation(line: 168, column: 29, scope: !1129)
!1140 = !DILocalVariable(name: "next_handler_obj", scope: !1129, file: !3, line: 169, type: !17)
!1141 = !DILocation(line: 169, column: 29, scope: !1129)
!1142 = !DILocalVariable(name: "obj_desc", scope: !1129, file: !3, line: 170, type: !17)
!1143 = !DILocation(line: 170, column: 29, scope: !1129)
!1144 = !DILocalVariable(name: "node", scope: !1129, file: !3, line: 171, type: !74)
!1145 = !DILocation(line: 171, column: 30, scope: !1129)
!1146 = !DILocalVariable(name: "status", scope: !1129, file: !3, line: 172, type: !7)
!1147 = !DILocation(line: 172, column: 14, scope: !1129)
!1148 = !DILocation(line: 176, column: 45, scope: !1129)
!1149 = !DILocation(line: 176, column: 16, scope: !1129)
!1150 = !DILocation(line: 176, column: 14, scope: !1129)
!1151 = !DILocation(line: 180, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 180, column: 6)
!1153 = !DILocation(line: 180, column: 6, scope: !1129)
!1154 = !DILocation(line: 181, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 180, column: 20)
!1156 = !DILocation(line: 186, column: 33, scope: !1129)
!1157 = !DILocation(line: 186, column: 9, scope: !1129)
!1158 = !DILocation(line: 186, column: 7, scope: !1129)
!1159 = !DILocation(line: 187, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 187, column: 6)
!1161 = !DILocation(line: 187, column: 6, scope: !1129)
!1162 = !DILocation(line: 188, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 187, column: 13)
!1164 = !DILocation(line: 195, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 195, column: 6)
!1166 = !DILocation(line: 195, column: 13, scope: !1165)
!1167 = !DILocation(line: 195, column: 18, scope: !1165)
!1168 = !DILocation(line: 195, column: 39, scope: !1165)
!1169 = !DILocation(line: 196, column: 7, scope: !1165)
!1170 = !DILocation(line: 196, column: 13, scope: !1165)
!1171 = !DILocation(line: 196, column: 18, scope: !1165)
!1172 = !DILocation(line: 196, column: 39, scope: !1165)
!1173 = !DILocation(line: 196, column: 43, scope: !1165)
!1174 = !DILocation(line: 196, column: 51, scope: !1165)
!1175 = !DILocation(line: 196, column: 48, scope: !1165)
!1176 = !DILocation(line: 195, column: 6, scope: !1129)
!1177 = !DILocation(line: 197, column: 3, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 196, column: 72)
!1179 = !DILocation(line: 202, column: 41, scope: !1129)
!1180 = !DILocation(line: 202, column: 13, scope: !1129)
!1181 = !DILocation(line: 202, column: 11, scope: !1129)
!1182 = !DILocation(line: 203, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 203, column: 6)
!1184 = !DILocation(line: 203, column: 6, scope: !1129)
!1185 = !DILocation(line: 207, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 203, column: 17)
!1187 = !DILocation(line: 212, column: 6, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 212, column: 6)
!1189 = !DILocation(line: 212, column: 16, scope: !1188)
!1190 = !DILocation(line: 212, column: 23, scope: !1188)
!1191 = !DILocation(line: 212, column: 28, scope: !1188)
!1192 = !DILocation(line: 212, column: 6, scope: !1129)
!1193 = !DILocation(line: 217, column: 35, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 212, column: 49)
!1195 = !DILocation(line: 217, column: 48, scope: !1194)
!1196 = !DILocation(line: 218, column: 7, scope: !1194)
!1197 = !DILocation(line: 219, column: 7, scope: !1194)
!1198 = !DILocation(line: 219, column: 17, scope: !1194)
!1199 = !DILocation(line: 220, column: 7, scope: !1194)
!1200 = !DILocation(line: 217, column: 7, scope: !1194)
!1201 = !DILocation(line: 216, column: 20, scope: !1194)
!1202 = !DILocation(line: 221, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 221, column: 7)
!1204 = !DILocation(line: 221, column: 7, scope: !1194)
!1205 = !DILocation(line: 240, column: 4, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 221, column: 25)
!1207 = !DILocation(line: 247, column: 3, scope: !1194)
!1208 = !DILocation(line: 252, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 252, column: 6)
!1210 = !DILocation(line: 252, column: 16, scope: !1209)
!1211 = !DILocation(line: 252, column: 23, scope: !1209)
!1212 = !DILocation(line: 252, column: 35, scope: !1209)
!1213 = !DILocation(line: 252, column: 48, scope: !1209)
!1214 = !DILocation(line: 252, column: 62, scope: !1209)
!1215 = !DILocation(line: 252, column: 32, scope: !1209)
!1216 = !DILocation(line: 252, column: 6, scope: !1129)
!1217 = !DILocation(line: 256, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 252, column: 72)
!1219 = !DILocation(line: 264, column: 24, scope: !1129)
!1220 = !DILocation(line: 264, column: 2, scope: !1129)
!1221 = !DILocation(line: 268, column: 33, scope: !1129)
!1222 = !DILocation(line: 268, column: 46, scope: !1129)
!1223 = !DILocation(line: 268, column: 11, scope: !1129)
!1224 = !DILocation(line: 268, column: 9, scope: !1129)
!1225 = !DILocation(line: 269, column: 10, scope: !1129)
!1226 = !DILocation(line: 269, column: 2, scope: !1129)
!1227 = !DILocation(line: 270, column: 1, scope: !1129)
