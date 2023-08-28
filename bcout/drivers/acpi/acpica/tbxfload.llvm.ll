; ModuleID = '../bcout/drivers/acpi/acpica/tbxfload.llvm.bc'
source_filename = "drivers/acpi/acpica/tbxfload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_list = type { %struct.acpi_table_desc*, i32, i32, i8 }
%struct.acpi_table_desc = type { i64, %struct.acpi_table_header*, i32, %union.acpi_name_union, i16, i8, i16 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%union.acpi_name_union = type { i32 }
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

@_acpi_module_name = internal constant [9 x i8] c"tbxfload\00", align 1, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"During Region initialization\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"While loading namespace from ACPI tables\00", align 1
@acpi_gbl_namespace_initialized = external dso_local global i8, align 1
@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8
@acpi_gbl_dsdt_index = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@acpi_gbl_DSDT = external dso_local global %struct.acpi_table_header*, align 8
@acpi_gbl_copy_dsdt_locally = external dso_local global i8, align 1
@acpi_gbl_original_dsdt_header = external dso_local global %struct.acpi_table_header, align 1
@acpi_gbl_root_node = external dso_local global %struct.acpi_namespace_node*, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"[DSDT] table load failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PSDT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"OSDT\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"(%4.4s:%8.8s) while loading table\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"%u ACPI AML tables successfully acquired and loaded\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%u table load failures, %u successful\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Host-directed Dynamic ACPI Table Load:\00", align 1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_load_tables() #0 section ".init.text" !dbg !791 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !794, metadata !DIExpression()), !dbg !795
  %call = call i32 @acpi_ev_install_region_handlers() #5, !dbg !796
  store i32 %call, i32* %status, align 4, !dbg !797
  %0 = load i32, i32* %status, align 4, !dbg !798
  %tobool = icmp ne i32 %0, 0, !dbg !798
  br i1 %tobool, label %if.then, label %if.end, !dbg !800

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !801
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 52, i32 %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #5, !dbg !801
  %2 = load i32, i32* %status, align 4, !dbg !803
  store i32 %2, i32* %retval, align 4, !dbg !803
  br label %return, !dbg !803

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_tb_load_namespace() #5, !dbg !804
  store i32 %call1, i32* %status, align 4, !dbg !805
  %3 = load i32, i32* %status, align 4, !dbg !806
  %cmp = icmp eq i32 %3, 16387, !dbg !808
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !809

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %status, align 4, !dbg !810
  br label %if.end3, !dbg !812

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, i32* %status, align 4, !dbg !813
  %tobool4 = icmp ne i32 %4, 0, !dbg !813
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !815

if.then5:                                         ; preds = %if.end3
  %5 = load i32, i32* %status, align 4, !dbg !816
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 68, i32 %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !816
  br label %if.end6, !dbg !818

if.end6:                                          ; preds = %if.then5, %if.end3
  %call7 = call i32 @acpi_ns_initialize_objects() #5, !dbg !819
  store i32 %call7, i32* %status, align 4, !dbg !820
  %6 = load i32, i32* %status, align 4, !dbg !821
  %tobool8 = icmp ne i32 %6, 0, !dbg !821
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !823

if.then9:                                         ; preds = %if.end6
  store i8 1, i8* @acpi_gbl_namespace_initialized, align 1, !dbg !824
  br label %if.end10, !dbg !826

if.end10:                                         ; preds = %if.then9, %if.end6
  %7 = load i32, i32* %status, align 4, !dbg !827
  store i32 %7, i32* %retval, align 4, !dbg !827
  br label %return, !dbg !827

return:                                           ; preds = %if.end10, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !828
  ret i32 %8, !dbg !828
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_install_region_handlers() #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_tb_load_namespace() #3 !dbg !829 {
entry:
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %new_dsdt = alloca %struct.acpi_table_header*, align 8
  %table = alloca %struct.acpi_table_desc*, align 8
  %tables_loaded = alloca i32, align 4
  %tables_failed = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata i32* %i, metadata !832, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %new_dsdt, metadata !834, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.declare(metadata %struct.acpi_table_desc** %table, metadata !852, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata i32* %tables_loaded, metadata !864, metadata !DIExpression()), !dbg !865
  store i32 0, i32* %tables_loaded, align 4, !dbg !865
  call void @llvm.dbg.declare(metadata i32* %tables_failed, metadata !866, metadata !DIExpression()), !dbg !867
  store i32 0, i32* %tables_failed, align 4, !dbg !867
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !868
  %0 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !869
  %1 = load i32, i32* @acpi_gbl_dsdt_index, align 4, !dbg !870
  %idxprom = zext i32 %1 to i64, !dbg !871
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %0, i64 %idxprom, !dbg !871
  store %struct.acpi_table_desc* %arrayidx, %struct.acpi_table_desc** %table, align 8, !dbg !872
  %2 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !873
  %tobool = icmp ne i32 %2, 0, !dbg !875
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !876

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !877
  %signature = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 3, !dbg !877
  %ascii = bitcast %union.acpi_name_union* %signature to [4 x i8]*, !dbg !877
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !877
  %4 = bitcast i8* %arraydecay to i32*, !dbg !877
  %5 = load i32, i32* %4, align 4, !dbg !877
  %6 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 4, !dbg !877
  %cmp = icmp eq i32 %5, %6, !dbg !877
  br i1 %cmp, label %lor.lhs.false1, label %if.then, !dbg !878

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %7 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !879
  %call2 = call i32 @acpi_tb_validate_table(%struct.acpi_table_desc* %7) #5, !dbg !879
  %tobool3 = icmp ne i32 %call2, 0, !dbg !879
  br i1 %tobool3, label %if.then, label %if.end, !dbg !880

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 2, i32* %status, align 4, !dbg !881
  br label %unlock_and_exit, !dbg !883

if.end:                                           ; preds = %lor.lhs.false1
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !884
  %pointer = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %8, i32 0, i32 1, !dbg !885
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer, align 8, !dbg !885
  store %struct.acpi_table_header* %9, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !886
  %10 = load i8, i8* @acpi_gbl_copy_dsdt_locally, align 1, !dbg !887
  %tobool4 = icmp ne i8 %10, 0, !dbg !887
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !889

if.then5:                                         ; preds = %if.end
  %11 = load i32, i32* @acpi_gbl_dsdt_index, align 4, !dbg !890
  %call6 = call %struct.acpi_table_header* @acpi_tb_copy_dsdt(i32 %11) #5, !dbg !892
  store %struct.acpi_table_header* %call6, %struct.acpi_table_header** %new_dsdt, align 8, !dbg !893
  %12 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_dsdt, align 8, !dbg !894
  %tobool7 = icmp ne %struct.acpi_table_header* %12, null, !dbg !894
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !896

if.then8:                                         ; preds = %if.then5
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %new_dsdt, align 8, !dbg !897
  store %struct.acpi_table_header* %13, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !899
  br label %if.end9, !dbg !900

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %if.end10, !dbg !901

if.end10:                                         ; preds = %if.end9, %if.end
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** @acpi_gbl_DSDT, align 8, !dbg !902
  %15 = bitcast %struct.acpi_table_header* %14 to i8*, !dbg !903
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.acpi_table_header, %struct.acpi_table_header* @acpi_gbl_original_dsdt_header, i32 0, i32 0, i32 0), i8* align 1 %15, i64 36, i1 false), !dbg !903
  %call11 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !904
  %16 = load i32, i32* @acpi_gbl_dsdt_index, align 4, !dbg !905
  %17 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !906
  %call12 = call i32 @acpi_ns_load_table(i32 %16, %struct.acpi_namespace_node* %17) #5, !dbg !907
  store i32 %call12, i32* %status, align 4, !dbg !908
  %call13 = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !909
  %18 = load i32, i32* %status, align 4, !dbg !910
  %tobool14 = icmp ne i32 %18, 0, !dbg !910
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !912

if.then15:                                        ; preds = %if.end10
  %19 = load i32, i32* %status, align 4, !dbg !913
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 161, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !913
  %20 = load i32, i32* %tables_failed, align 4, !dbg !915
  %inc = add i32 %20, 1, !dbg !915
  store i32 %inc, i32* %tables_failed, align 4, !dbg !915
  br label %if.end17, !dbg !916

if.else:                                          ; preds = %if.end10
  %21 = load i32, i32* %tables_loaded, align 4, !dbg !917
  %inc16 = add i32 %21, 1, !dbg !917
  store i32 %inc16, i32* %tables_loaded, align 4, !dbg !917
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  store i32 0, i32* %i, align 4, !dbg !919
  br label %for.cond, !dbg !921

for.cond:                                         ; preds = %for.inc, %if.end17
  %22 = load i32, i32* %i, align 4, !dbg !922
  %23 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !924
  %cmp18 = icmp ult i32 %22, %23, !dbg !925
  br i1 %cmp18, label %for.body, label %for.end, !dbg !926

for.body:                                         ; preds = %for.cond
  %24 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !927
  %25 = load i32, i32* %i, align 4, !dbg !929
  %idxprom19 = zext i32 %25 to i64, !dbg !930
  %arrayidx20 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %24, i64 %idxprom19, !dbg !930
  store %struct.acpi_table_desc* %arrayidx20, %struct.acpi_table_desc** %table, align 8, !dbg !931
  %26 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !932
  %address = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %26, i32 0, i32 0, !dbg !934
  %27 = load i64, i64* %address, align 8, !dbg !934
  %tobool21 = icmp ne i64 %27, 0, !dbg !932
  br i1 %tobool21, label %lor.lhs.false22, label %if.then39, !dbg !935

lor.lhs.false22:                                  ; preds = %for.body
  %28 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !936
  %signature23 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %28, i32 0, i32 3, !dbg !936
  %ascii24 = bitcast %union.acpi_name_union* %signature23 to [4 x i8]*, !dbg !936
  %arraydecay25 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii24, i64 0, i64 0, !dbg !936
  %29 = bitcast i8* %arraydecay25 to i32*, !dbg !936
  %30 = load i32, i32* %29, align 4, !dbg !936
  %31 = load i32, i32* bitcast ([5 x i8]* @.str.4 to i32*), align 4, !dbg !936
  %cmp26 = icmp eq i32 %30, %31, !dbg !936
  br i1 %cmp26, label %lor.lhs.false36, label %land.lhs.true, !dbg !937

land.lhs.true:                                    ; preds = %lor.lhs.false22
  %32 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !938
  %signature27 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %32, i32 0, i32 3, !dbg !938
  %ascii28 = bitcast %union.acpi_name_union* %signature27 to [4 x i8]*, !dbg !938
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii28, i64 0, i64 0, !dbg !938
  %33 = bitcast i8* %arraydecay29 to i32*, !dbg !938
  %34 = load i32, i32* %33, align 4, !dbg !938
  %35 = load i32, i32* bitcast ([5 x i8]* @.str.5 to i32*), align 4, !dbg !938
  %cmp30 = icmp eq i32 %34, %35, !dbg !938
  br i1 %cmp30, label %lor.lhs.false36, label %land.lhs.true31, !dbg !939

land.lhs.true31:                                  ; preds = %land.lhs.true
  %36 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !940
  %signature32 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %36, i32 0, i32 3, !dbg !940
  %ascii33 = bitcast %union.acpi_name_union* %signature32 to [4 x i8]*, !dbg !940
  %arraydecay34 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii33, i64 0, i64 0, !dbg !940
  %37 = bitcast i8* %arraydecay34 to i32*, !dbg !940
  %38 = load i32, i32* %37, align 4, !dbg !940
  %39 = load i32, i32* bitcast ([5 x i8]* @.str.6 to i32*), align 4, !dbg !940
  %cmp35 = icmp eq i32 %38, %39, !dbg !940
  br i1 %cmp35, label %lor.lhs.false36, label %if.then39, !dbg !941

lor.lhs.false36:                                  ; preds = %land.lhs.true31, %land.lhs.true, %lor.lhs.false22
  %40 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !942
  %call37 = call i32 @acpi_tb_validate_table(%struct.acpi_table_desc* %40) #5, !dbg !942
  %tobool38 = icmp ne i32 %call37, 0, !dbg !942
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !943

if.then39:                                        ; preds = %lor.lhs.false36, %land.lhs.true31, %for.body
  br label %for.inc, !dbg !944

if.end40:                                         ; preds = %lor.lhs.false36
  %call41 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !946
  %41 = load i32, i32* %i, align 4, !dbg !947
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8, !dbg !948
  %call42 = call i32 @acpi_ns_load_table(i32 %41, %struct.acpi_namespace_node* %42) #5, !dbg !949
  store i32 %call42, i32* %status, align 4, !dbg !950
  %call43 = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !951
  %43 = load i32, i32* %status, align 4, !dbg !952
  %tobool44 = icmp ne i32 %43, 0, !dbg !952
  br i1 %tobool44, label %if.then45, label %if.else52, !dbg !954

if.then45:                                        ; preds = %if.end40
  %44 = load i32, i32* %status, align 4, !dbg !955
  %45 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !955
  %signature46 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %45, i32 0, i32 3, !dbg !955
  %ascii47 = bitcast %union.acpi_name_union* %signature46 to [4 x i8]*, !dbg !955
  %arraydecay48 = getelementptr inbounds [4 x i8], [4 x i8]* %ascii47, i64 0, i64 0, !dbg !955
  %46 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %table, align 8, !dbg !955
  %pointer49 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %46, i32 0, i32 1, !dbg !955
  %47 = load %struct.acpi_table_header*, %struct.acpi_table_header** %pointer49, align 8, !dbg !955
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %47, i32 0, i32 5, !dbg !955
  %arraydecay50 = getelementptr inbounds [8 x i8], [8 x i8]* %oem_table_id, i64 0, i64 0, !dbg !955
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 189, i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay48, i8* %arraydecay50) #5, !dbg !955
  %48 = load i32, i32* %tables_failed, align 4, !dbg !957
  %inc51 = add i32 %48, 1, !dbg !957
  store i32 %inc51, i32* %tables_failed, align 4, !dbg !957
  br label %if.end54, !dbg !958

if.else52:                                        ; preds = %if.end40
  %49 = load i32, i32* %tables_loaded, align 4, !dbg !959
  %inc53 = add i32 %49, 1, !dbg !959
  store i32 %inc53, i32* %tables_loaded, align 4, !dbg !959
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then45
  br label %for.inc, !dbg !961

for.inc:                                          ; preds = %if.end54, %if.then39
  %50 = load i32, i32* %i, align 4, !dbg !962
  %inc55 = add i32 %50, 1, !dbg !962
  store i32 %inc55, i32* %i, align 4, !dbg !962
  br label %for.cond, !dbg !963, !llvm.loop !964

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %tables_failed, align 4, !dbg !966
  %tobool56 = icmp ne i32 %51, 0, !dbg !966
  br i1 %tobool56, label %if.else58, label %if.then57, !dbg !968

if.then57:                                        ; preds = %for.end
  %52 = load i32, i32* %tables_loaded, align 4, !dbg !969
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %52) #5, !dbg !969
  br label %if.end59, !dbg !971

if.else58:                                        ; preds = %for.end
  %53 = load i32, i32* %tables_failed, align 4, !dbg !972
  %54 = load i32, i32* %tables_loaded, align 4, !dbg !972
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 208, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %53, i32 %54) #5, !dbg !972
  store i32 16387, i32* %status, align 4, !dbg !974
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  br label %unlock_and_exit, !dbg !966

unlock_and_exit:                                  ; preds = %if.end59, %if.then
  call void @llvm.dbg.label(metadata !975), !dbg !976
  %call60 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !977
  %55 = load i32, i32* %status, align 4, !dbg !978
  ret i32 %55, !dbg !978
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_initialize_objects() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_validate_table(%struct.acpi_table_desc*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_table_header* @acpi_tb_copy_dsdt(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_load_table(i32, %struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_install_table(i64 %address, i8 zeroext %physical) #0 section ".init.text" !dbg !979 {
entry:
  %address.addr = alloca i64, align 8
  %physical.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %flags = alloca i8, align 1
  %table_index = alloca i32, align 4
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !982, metadata !DIExpression()), !dbg !983
  store i8 %physical, i8* %physical.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %physical.addr, metadata !984, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata i32* %status, metadata !986, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !990, metadata !DIExpression()), !dbg !991
  %0 = load i8, i8* %physical.addr, align 1, !dbg !992
  %tobool = icmp ne i8 %0, 0, !dbg !992
  br i1 %tobool, label %if.then, label %if.else, !dbg !994

if.then:                                          ; preds = %entry
  store i8 1, i8* %flags, align 1, !dbg !995
  br label %if.end, !dbg !997

if.else:                                          ; preds = %entry
  store i8 0, i8* %flags, align 1, !dbg !998
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i64, i64* %address.addr, align 8, !dbg !1000
  %2 = load i8, i8* %flags, align 1, !dbg !1001
  %call = call i32 @acpi_tb_install_standard_table(i64 %1, i8 zeroext %2, i8 zeroext 0, i8 zeroext 0, i32* %table_index) #5, !dbg !1002
  store i32 %call, i32* %status, align 4, !dbg !1003
  %3 = load i32, i32* %status, align 4, !dbg !1004
  ret i32 %3, !dbg !1004
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_install_standard_table(i64, i8 zeroext, i8 zeroext, i8 zeroext, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_load_table(%struct.acpi_table_header* %table, i32* %table_idx) #3 !dbg !1005 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.acpi_table_header*, align 8
  %table_idx.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %table_index = alloca i32, align 4
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i32* %table_idx, i32** %table_idx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %table_idx.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !1014, metadata !DIExpression()), !dbg !1015
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !1016
  %tobool = icmp ne %struct.acpi_table_header* %0, null, !dbg !1016
  br i1 %tobool, label %if.end, label %if.then, !dbg !1018

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1019
  br label %return, !dbg !1019

if.end:                                           ; preds = %entry
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !1021
  %1 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !1022
  %2 = bitcast %struct.acpi_table_header* %1 to i8*, !dbg !1022
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64, !dbg !1022
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0, !dbg !1022
  %call = call i32 @acpi_tb_install_and_load_table(i64 %sub.ptr.sub, i8 zeroext 0, i8 zeroext 0, i32* %table_index) #5, !dbg !1023
  store i32 %call, i32* %status, align 4, !dbg !1024
  %3 = load i32*, i32** %table_idx.addr, align 8, !dbg !1025
  %tobool1 = icmp ne i32* %3, null, !dbg !1025
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1027

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %table_index, align 4, !dbg !1028
  %5 = load i32*, i32** %table_idx.addr, align 8, !dbg !1030
  store i32 %4, i32* %5, align 4, !dbg !1031
  br label %if.end3, !dbg !1032

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %status, align 4, !dbg !1033
  %tobool4 = icmp ne i32 %6, 0, !dbg !1033
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1035

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 @acpi_ns_initialize_objects() #5, !dbg !1036
  br label %if.end7, !dbg !1038

if.end7:                                          ; preds = %if.then5, %if.end3
  %7 = load i32, i32* %status, align 4, !dbg !1039
  store i32 %7, i32* %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

return:                                           ; preds = %if.end7, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1040
  ret i32 %8, !dbg !1040
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_install_and_load_table(i64, i8 zeroext, i8 zeroext, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_unload_parent_table(i8* %object) #3 !dbg !1041 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca i8*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %status = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %i = alloca i32, align 4
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1044, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1046, metadata !DIExpression()), !dbg !1047
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1048
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !1048
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1049, metadata !DIExpression()), !dbg !1050
  store i32 6, i32* %status, align 4, !dbg !1050
  call void @llvm.dbg.declare(metadata i16* %owner_id, metadata !1051, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1053, metadata !DIExpression()), !dbg !1054
  %2 = load i8*, i8** %object.addr, align 8, !dbg !1055
  %tobool = icmp ne i8* %2, null, !dbg !1055
  br i1 %tobool, label %if.end, label %if.then, !dbg !1057

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1058
  br label %return, !dbg !1058

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1060
  %owner_id1 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %3, i32 0, i32 8, !dbg !1061
  %4 = load i16, i16* %owner_id1, align 8, !dbg !1061
  store i16 %4, i16* %owner_id, align 2, !dbg !1062
  %5 = load i16, i16* %owner_id, align 2, !dbg !1063
  %tobool2 = icmp ne i16 %5, 0, !dbg !1063
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1065

if.then3:                                         ; preds = %if.end
  store i32 8, i32* %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

if.end4:                                          ; preds = %if.end
  %call = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !1068
  store i32 %call, i32* %status, align 4, !dbg !1069
  %6 = load i32, i32* %status, align 4, !dbg !1070
  %tobool5 = icmp ne i32 %6, 0, !dbg !1070
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1072

if.then6:                                         ; preds = %if.end4
  %7 = load i32, i32* %status, align 4, !dbg !1073
  store i32 %7, i32* %retval, align 4, !dbg !1073
  br label %return, !dbg !1073

if.end7:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !1075
  br label %for.cond, !dbg !1077

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, i32* %i, align 4, !dbg !1078
  %9 = load i32, i32* getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !1080
  %cmp = icmp ult i32 %8, %9, !dbg !1081
  br i1 %cmp, label %for.body, label %for.end, !dbg !1082

for.body:                                         ; preds = %for.cond
  %10 = load i16, i16* %owner_id, align 2, !dbg !1083
  %conv = zext i16 %10 to i32, !dbg !1083
  %11 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !1086
  %12 = load i32, i32* %i, align 4, !dbg !1087
  %idxprom = zext i32 %12 to i64, !dbg !1088
  %arrayidx = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %11, i64 %idxprom, !dbg !1088
  %owner_id8 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx, i32 0, i32 4, !dbg !1089
  %13 = load i16, i16* %owner_id8, align 8, !dbg !1089
  %conv9 = zext i16 %13 to i32, !dbg !1088
  %cmp10 = icmp ne i32 %conv, %conv9, !dbg !1090
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1091

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !1092

if.end13:                                         ; preds = %for.body
  %14 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** getelementptr inbounds (%struct.acpi_table_list, %struct.acpi_table_list* @acpi_gbl_root_table_list, i32 0, i32 0), align 8, !dbg !1094
  %15 = load i32, i32* %i, align 4, !dbg !1094
  %idxprom14 = zext i32 %15 to i64, !dbg !1094
  %arrayidx15 = getelementptr %struct.acpi_table_desc, %struct.acpi_table_desc* %14, i64 %idxprom14, !dbg !1094
  %signature = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %arrayidx15, i32 0, i32 3, !dbg !1094
  %ascii = bitcast %union.acpi_name_union* %signature to [4 x i8]*, !dbg !1094
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1094
  %16 = bitcast i8* %arraydecay to i32*, !dbg !1094
  %17 = load i32, i32* %16, align 4, !dbg !1094
  %18 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 4, !dbg !1094
  %cmp16 = icmp eq i32 %17, %18, !dbg !1094
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1096

if.then18:                                        ; preds = %if.end13
  store i32 8, i32* %status, align 4, !dbg !1097
  br label %for.end, !dbg !1099

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !1100
  %19 = load i32, i32* %i, align 4, !dbg !1101
  %call21 = call i32 @acpi_tb_unload_table(i32 %19) #5, !dbg !1102
  store i32 %call21, i32* %status, align 4, !dbg !1103
  %call22 = call i32 @acpi_ut_acquire_mutex(i32 2) #5, !dbg !1104
  br label %for.end, !dbg !1105

for.inc:                                          ; preds = %if.then12
  %20 = load i32, i32* %i, align 4, !dbg !1106
  %inc = add i32 %20, 1, !dbg !1106
  store i32 %inc, i32* %i, align 4, !dbg !1106
  br label %for.cond, !dbg !1107, !llvm.loop !1108

for.end:                                          ; preds = %if.end19, %if.then18, %for.cond
  %call23 = call i32 @acpi_ut_release_mutex(i32 2) #5, !dbg !1110
  %21 = load i32, i32* %status, align 4, !dbg !1111
  store i32 %21, i32* %retval, align 4, !dbg !1111
  br label %return, !dbg !1111

return:                                           ; preds = %for.end, %if.then6, %if.then3, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !1112
  ret i32 %22, !dbg !1112
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_unload_table(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_unload_table(i32 %table_index) #3 !dbg !1113 {
entry:
  %retval = alloca i32, align 4
  %table_index.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %table_index, i32* %table_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %table_index.addr, metadata !1116, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1118, metadata !DIExpression()), !dbg !1119
  %0 = load i32, i32* %table_index.addr, align 4, !dbg !1120
  %cmp = icmp eq i32 %0, 1, !dbg !1122
  br i1 %cmp, label %if.then, label %if.end, !dbg !1123

if.then:                                          ; preds = %entry
  store i32 8, i32* %retval, align 4, !dbg !1124
  br label %return, !dbg !1124

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %table_index.addr, align 4, !dbg !1126
  %call = call i32 @acpi_tb_unload_table(i32 %1) #5, !dbg !1127
  store i32 %call, i32* %status, align 4, !dbg !1128
  %2 = load i32, i32* %status, align 4, !dbg !1129
  store i32 %2, i32* %retval, align 4, !dbg !1129
  br label %return, !dbg !1129

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1130
  ret i32 %3, !dbg !1130
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!786, !787, !788, !789}
!llvm.ident = !{!790}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !784, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !783, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/tbxfload.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !14, !15, !19, !23}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !7, line: 127, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !18)
!18 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !25, line: 133, size: 384, elements: !26)
!25 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !770, !771, !772, !773, !779, !780, !781, !782}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !24, file: !25, line: 134, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !30, line: 367, size: 576, elements: !31)
!30 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !43, !56, !68, !81, !95, !104, !421, !438, !453, !466, !544, !556, !570, !580, !598, !620, !639, !658, !677, !690, !716, !733, !746, !760, !769}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !29, file: !30, line: 368, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !30, line: 73, size: 128, elements: !34)
!34 = !{!35, !36, !37, !38, !42}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !30, line: 74, baseType: !28, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !30, line: 74, baseType: !20, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !30, line: 74, baseType: !20, size: 8, offset: 72)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !30, line: 74, baseType: !39, size: 16, offset: 80)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !41)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !30, line: 74, baseType: !20, size: 8, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !29, file: !30, line: 369, baseType: !44, size: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !30, line: 76, size: 192, elements: !45)
!45 = !{!46, !47, !48, !49, !50, !51, !55}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !44, file: !30, line: 77, baseType: !28, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !30, line: 77, baseType: !20, size: 8, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !30, line: 77, baseType: !20, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !44, file: !30, line: 77, baseType: !39, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !30, line: 77, baseType: !20, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !44, file: !30, line: 77, baseType: !52, size: 24, offset: 104)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 3)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !30, line: 78, baseType: !16, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !29, file: !30, line: 370, baseType: !57, size: 256)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !30, line: 93, size: 256, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !67}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !57, file: !30, line: 94, baseType: !28, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !57, file: !30, line: 94, baseType: !20, size: 8, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !30, line: 94, baseType: !20, size: 8, offset: 72)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !57, file: !30, line: 94, baseType: !39, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !57, file: !30, line: 94, baseType: !20, size: 8, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !57, file: !30, line: 94, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !57, file: !30, line: 94, baseType: !8, size: 32, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !29, file: !30, line: 371, baseType: !69, size: 384)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !30, line: 97, size: 384, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !30, line: 98, baseType: !28, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !30, line: 98, baseType: !20, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !30, line: 98, baseType: !20, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !30, line: 98, baseType: !39, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !30, line: 98, baseType: !20, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !30, line: 98, baseType: !19, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !30, line: 98, baseType: !8, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !69, file: !30, line: 99, baseType: !8, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !69, file: !30, line: 100, baseType: !19, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !69, file: !30, line: 101, baseType: !23, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !29, file: !30, line: 372, baseType: !82, size: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !30, line: 104, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !30, line: 105, baseType: !28, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !30, line: 105, baseType: !20, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !30, line: 105, baseType: !20, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !30, line: 105, baseType: !39, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !30, line: 105, baseType: !20, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !30, line: 105, baseType: !23, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !82, file: !30, line: 106, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !82, file: !30, line: 107, baseType: !19, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !82, file: !30, line: 108, baseType: !8, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !82, file: !30, line: 109, baseType: !8, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !29, file: !30, line: 373, baseType: !96, size: 192)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !30, line: 118, size: 192, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !30, line: 119, baseType: !28, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !30, line: 119, baseType: !20, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !30, line: 119, baseType: !20, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !30, line: 119, baseType: !39, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !30, line: 119, baseType: !20, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !96, file: !30, line: 119, baseType: !14, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !29, file: !30, line: 374, baseType: !105, size: 448)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !30, line: 143, size: 448, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !418, !419, !420}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !30, line: 144, baseType: !28, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !30, line: 144, baseType: !20, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !30, line: 144, baseType: !20, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !30, line: 144, baseType: !39, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !30, line: 144, baseType: !20, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !105, file: !30, line: 144, baseType: !20, size: 8, offset: 104)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !105, file: !30, line: 145, baseType: !20, size: 8, offset: 112)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !105, file: !30, line: 146, baseType: !20, size: 8, offset: 120)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !105, file: !30, line: 147, baseType: !28, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !105, file: !30, line: 148, baseType: !28, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !105, file: !30, line: 149, baseType: !19, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !105, file: !30, line: 153, baseType: !119, size: 64, offset: 320)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !30, line: 150, size: 64, elements: !120)
!120 = !{!121, !417}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !119, file: !30, line: 151, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !25, line: 248, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!6, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !128, line: 37, size: 9024, elements: !129)
!128 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !363, !364, !365, !366, !367, !371, !373, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !400, !401, !402, !403, !404, !405, !406, !407, !409, !415}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !128, line: 38, baseType: !126, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !128, line: 39, baseType: !20, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !127, file: !128, line: 40, baseType: !20, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !127, file: !128, line: 41, baseType: !39, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !127, file: !128, line: 42, baseType: !20, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !127, file: !128, line: 43, baseType: !20, size: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !127, file: !128, line: 44, baseType: !20, size: 8, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !127, file: !128, line: 45, baseType: !138, size: 16, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !39)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !127, file: !128, line: 46, baseType: !20, size: 8, offset: 144)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !127, file: !128, line: 47, baseType: !20, size: 8, offset: 152)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !127, file: !128, line: 48, baseType: !20, size: 8, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !127, file: !128, line: 49, baseType: !20, size: 8, offset: 168)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !127, file: !128, line: 50, baseType: !20, size: 8, offset: 176)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !127, file: !128, line: 51, baseType: !20, size: 8, offset: 184)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !127, file: !128, line: 52, baseType: !20, size: 8, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !127, file: !128, line: 53, baseType: !20, size: 8, offset: 200)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !127, file: !128, line: 54, baseType: !19, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !127, file: !128, line: 55, baseType: !8, size: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !127, file: !128, line: 56, baseType: !8, size: 32, offset: 352)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !127, file: !128, line: 57, baseType: !8, size: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !127, file: !128, line: 58, baseType: !8, size: 32, offset: 416)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !127, file: !128, line: 60, baseType: !153, size: 640, offset: 448)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !25, line: 893, size: 640, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !244, !245, !361, !362}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !153, file: !25, line: 894, baseType: !19, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !153, file: !25, line: 895, baseType: !19, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !153, file: !25, line: 896, baseType: !19, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !153, file: !25, line: 897, baseType: !19, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !153, file: !25, line: 898, baseType: !19, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !153, file: !25, line: 899, baseType: !161, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !25, line: 875, size: 1600, elements: !163)
!163 = !{!164, !184, !200}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !162, file: !25, line: 876, baseType: !165, size: 448)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !25, line: 828, size: 448, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !183}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !25, line: 829, baseType: !161, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !25, line: 829, baseType: !20, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !25, line: 829, baseType: !20, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !165, file: !25, line: 829, baseType: !39, size: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !25, line: 829, baseType: !19, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !25, line: 829, baseType: !161, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !165, file: !25, line: 829, baseType: !23, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !165, file: !25, line: 829, baseType: !175, size: 64, offset: 320)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !25, line: 716, size: 64, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !175, file: !25, line: 717, baseType: !16, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !175, file: !25, line: 718, baseType: !8, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !175, file: !25, line: 719, baseType: !65, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !175, file: !25, line: 720, baseType: !19, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !25, line: 721, baseType: !65, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !175, file: !25, line: 722, baseType: !161, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !165, file: !25, line: 829, baseType: !20, size: 8, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !162, file: !25, line: 877, baseType: !185, size: 640)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !25, line: 835, size: 640, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !25, line: 836, baseType: !161, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !25, line: 836, baseType: !20, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !25, line: 836, baseType: !20, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !185, file: !25, line: 836, baseType: !39, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !25, line: 836, baseType: !19, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !25, line: 836, baseType: !161, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !25, line: 836, baseType: !23, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !25, line: 836, baseType: !175, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !185, file: !25, line: 836, baseType: !20, size: 8, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !185, file: !25, line: 836, baseType: !65, size: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !185, file: !25, line: 837, baseType: !19, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !185, file: !25, line: 838, baseType: !8, size: 32, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !25, line: 839, baseType: !8, size: 32, offset: 608)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !162, file: !25, line: 878, baseType: !201, size: 1600)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !25, line: 846, size: 1600, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !201, file: !25, line: 847, baseType: !161, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !201, file: !25, line: 847, baseType: !20, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !25, line: 847, baseType: !20, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !201, file: !25, line: 847, baseType: !39, size: 16, offset: 80)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !201, file: !25, line: 847, baseType: !19, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !25, line: 847, baseType: !161, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !201, file: !25, line: 847, baseType: !23, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !201, file: !25, line: 847, baseType: !175, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !201, file: !25, line: 847, baseType: !20, size: 8, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !201, file: !25, line: 847, baseType: !161, size: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !201, file: !25, line: 848, baseType: !161, size: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !201, file: !25, line: 849, baseType: !65, size: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !201, file: !25, line: 850, baseType: !20, size: 8, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !201, file: !25, line: 851, baseType: !65, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !201, file: !25, line: 852, baseType: !65, size: 64, offset: 768)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !201, file: !25, line: 853, baseType: !65, size: 64, offset: 832)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !201, file: !25, line: 854, baseType: !220, size: 32, offset: 896)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 4)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !201, file: !25, line: 855, baseType: !8, size: 32, offset: 928)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !201, file: !25, line: 856, baseType: !8, size: 32, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !201, file: !25, line: 857, baseType: !8, size: 32, offset: 992)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !201, file: !25, line: 858, baseType: !8, size: 32, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !201, file: !25, line: 859, baseType: !8, size: 32, offset: 1056)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !201, file: !25, line: 860, baseType: !8, size: 32, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !201, file: !25, line: 861, baseType: !8, size: 32, offset: 1120)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !201, file: !25, line: 862, baseType: !8, size: 32, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !201, file: !25, line: 863, baseType: !8, size: 32, offset: 1184)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !201, file: !25, line: 864, baseType: !8, size: 32, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !201, file: !25, line: 865, baseType: !8, size: 32, offset: 1248)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !201, file: !25, line: 866, baseType: !8, size: 32, offset: 1280)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !201, file: !25, line: 867, baseType: !8, size: 32, offset: 1312)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !201, file: !25, line: 868, baseType: !39, size: 16, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !201, file: !25, line: 869, baseType: !20, size: 8, offset: 1360)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !201, file: !25, line: 870, baseType: !20, size: 8, offset: 1368)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !201, file: !25, line: 871, baseType: !20, size: 8, offset: 1376)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !201, file: !25, line: 872, baseType: !241, size: 160, offset: 1384)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 160, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 20)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !153, file: !25, line: 900, baseType: !23, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !153, file: !25, line: 901, baseType: !246, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !25, line: 663, size: 640, elements: !248)
!248 = !{!249, !257, !270, !279, !288, !301, !315, !327, !339}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !247, file: !25, line: 664, baseType: !250, size: 128)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !25, line: 567, size: 128, elements: !251)
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !25, line: 568, baseType: !14, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !25, line: 568, baseType: !20, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !25, line: 568, baseType: !20, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !25, line: 568, baseType: !39, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !250, file: !25, line: 568, baseType: !39, size: 16, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !247, file: !25, line: 665, baseType: !258, size: 384)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !25, line: 593, size: 384, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !25, line: 594, baseType: !14, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !258, file: !25, line: 594, baseType: !20, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !25, line: 594, baseType: !20, size: 8, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !258, file: !25, line: 594, baseType: !39, size: 16, offset: 80)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !258, file: !25, line: 594, baseType: !39, size: 16, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !258, file: !25, line: 594, baseType: !39, size: 16, offset: 112)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !258, file: !25, line: 595, baseType: !161, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !258, file: !25, line: 596, baseType: !19, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !258, file: !25, line: 597, baseType: !19, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !258, file: !25, line: 598, baseType: !16, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !247, file: !25, line: 666, baseType: !271, size: 192)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !25, line: 573, size: 192, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !25, line: 574, baseType: !14, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !271, file: !25, line: 574, baseType: !20, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !25, line: 574, baseType: !20, size: 8, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !271, file: !25, line: 574, baseType: !39, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !271, file: !25, line: 574, baseType: !39, size: 16, offset: 96)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !271, file: !25, line: 574, baseType: !28, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !247, file: !25, line: 667, baseType: !280, size: 192)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !25, line: 604, size: 192, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !25, line: 605, baseType: !14, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !25, line: 605, baseType: !20, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !25, line: 605, baseType: !20, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !25, line: 605, baseType: !39, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !25, line: 605, baseType: !39, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !280, file: !25, line: 605, baseType: !23, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !247, file: !25, line: 668, baseType: !289, size: 448)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !25, line: 608, size: 448, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !25, line: 609, baseType: !14, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !25, line: 609, baseType: !20, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !25, line: 609, baseType: !20, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !25, line: 609, baseType: !39, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !25, line: 609, baseType: !39, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !289, file: !25, line: 609, baseType: !8, size: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !289, file: !25, line: 610, baseType: !161, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !289, file: !25, line: 611, baseType: !19, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !289, file: !25, line: 612, baseType: !19, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !289, file: !25, line: 613, baseType: !8, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !247, file: !25, line: 669, baseType: !302, size: 512)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !25, line: 580, size: 512, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !25, line: 581, baseType: !14, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !25, line: 581, baseType: !20, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !25, line: 581, baseType: !20, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !25, line: 581, baseType: !39, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !25, line: 581, baseType: !39, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !302, file: !25, line: 581, baseType: !8, size: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !302, file: !25, line: 582, baseType: !28, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !302, file: !25, line: 583, baseType: !28, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !302, file: !25, line: 584, baseType: !126, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !302, file: !25, line: 585, baseType: !14, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !302, file: !25, line: 586, baseType: !8, size: 32, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !247, file: !25, line: 670, baseType: !316, size: 320)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !25, line: 620, size: 320, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !25, line: 621, baseType: !14, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !25, line: 621, baseType: !20, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !25, line: 621, baseType: !20, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !25, line: 621, baseType: !39, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !25, line: 621, baseType: !39, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !316, file: !25, line: 621, baseType: !20, size: 8, offset: 112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !316, file: !25, line: 622, baseType: !126, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !316, file: !25, line: 623, baseType: !28, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !316, file: !25, line: 624, baseType: !16, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !247, file: !25, line: 671, baseType: !328, size: 640)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !25, line: 631, size: 640, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !25, line: 632, baseType: !14, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !25, line: 632, baseType: !20, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !25, line: 632, baseType: !20, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !25, line: 632, baseType: !39, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !25, line: 632, baseType: !39, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !328, file: !25, line: 633, baseType: !336, size: 512, offset: 128)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !247, file: !25, line: 672, baseType: !340, size: 320)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !25, line: 654, size: 320, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !25, line: 655, baseType: !14, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !25, line: 655, baseType: !20, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !25, line: 655, baseType: !20, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !25, line: 655, baseType: !39, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !25, line: 655, baseType: !39, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !340, file: !25, line: 655, baseType: !20, size: 8, offset: 112)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !340, file: !25, line: 656, baseType: !23, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !340, file: !25, line: 657, baseType: !28, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !340, file: !25, line: 658, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !25, line: 645, size: 128, elements: !353)
!353 = !{!354, !360}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !352, file: !25, line: 646, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359, !8, !14}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !14)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !352, file: !25, line: 647, baseType: !14, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !153, file: !25, line: 902, baseType: !161, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !153, file: !25, line: 903, baseType: !8, size: 32, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !127, file: !128, line: 61, baseType: !8, size: 32, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !127, file: !128, line: 62, baseType: !8, size: 32, offset: 1120)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !127, file: !128, line: 63, baseType: !39, size: 16, offset: 1152)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !127, file: !128, line: 64, baseType: !20, size: 8, offset: 1168)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !127, file: !128, line: 66, baseType: !368, size: 2688, offset: 1216)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2688, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 7)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !127, file: !128, line: 67, baseType: !372, size: 3072, offset: 3904)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 3072, elements: !337)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !127, file: !128, line: 68, baseType: !374, size: 576, offset: 6976)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 576, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 9)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !127, file: !128, line: 69, baseType: !91, size: 64, offset: 7552)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !127, file: !128, line: 71, baseType: !19, size: 64, offset: 7616)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !127, file: !128, line: 72, baseType: !91, size: 64, offset: 7680)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !127, file: !128, line: 73, baseType: !246, size: 64, offset: 7744)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !127, file: !128, line: 74, baseType: !23, size: 64, offset: 7808)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !127, file: !128, line: 75, baseType: !28, size: 64, offset: 7872)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !127, file: !128, line: 76, baseType: !23, size: 64, offset: 7936)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !127, file: !128, line: 77, baseType: !161, size: 64, offset: 8000)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !127, file: !128, line: 78, baseType: !28, size: 64, offset: 8064)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !127, file: !128, line: 79, baseType: !23, size: 64, offset: 8128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !127, file: !128, line: 80, baseType: !65, size: 64, offset: 8192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !127, file: !128, line: 81, baseType: !161, size: 64, offset: 8256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !127, file: !128, line: 82, baseType: !390, size: 64, offset: 8320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !25, line: 702, size: 128, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !392, file: !25, line: 706, baseType: !8, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !392, file: !25, line: 707, baseType: !8, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !25, line: 708, baseType: !39, size: 16, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !392, file: !25, line: 709, baseType: !20, size: 8, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !392, file: !25, line: 710, baseType: !20, size: 8, offset: 88)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !25, line: 711, baseType: !20, size: 8, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !127, file: !128, line: 83, baseType: !161, size: 64, offset: 8384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !127, file: !128, line: 84, baseType: !28, size: 64, offset: 8448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !127, file: !128, line: 85, baseType: !246, size: 64, offset: 8512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !127, file: !128, line: 86, baseType: !28, size: 64, offset: 8576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !127, file: !128, line: 87, baseType: !246, size: 64, offset: 8640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !127, file: !128, line: 88, baseType: !161, size: 64, offset: 8704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !127, file: !128, line: 89, baseType: !161, size: 64, offset: 8768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !127, file: !128, line: 90, baseType: !408, size: 64, offset: 8832)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !127, file: !128, line: 91, baseType: !410, size: 64, offset: 8896)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !25, line: 637, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!6, !126, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !127, file: !128, line: 92, baseType: !416, size: 64, offset: 8960)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !25, line: 641, baseType: !123)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !119, file: !30, line: 152, baseType: !28, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !105, file: !30, line: 155, baseType: !8, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !105, file: !30, line: 156, baseType: !138, size: 16, offset: 416)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !105, file: !30, line: 157, baseType: !20, size: 8, offset: 432)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !29, file: !30, line: 375, baseType: !422, size: 576)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !30, line: 122, size: 576, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !422, file: !30, line: 123, baseType: !28, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !422, file: !30, line: 123, baseType: !20, size: 8, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !30, line: 123, baseType: !20, size: 8, offset: 72)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !422, file: !30, line: 123, baseType: !39, size: 16, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !30, line: 123, baseType: !20, size: 8, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !422, file: !30, line: 123, baseType: !20, size: 8, offset: 104)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !422, file: !30, line: 124, baseType: !39, size: 16, offset: 112)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !422, file: !30, line: 125, baseType: !14, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !422, file: !30, line: 126, baseType: !16, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !422, file: !30, line: 127, baseType: !408, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !422, file: !30, line: 128, baseType: !28, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !30, line: 129, baseType: !28, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !422, file: !30, line: 130, baseType: !23, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !422, file: !30, line: 131, baseType: !20, size: 8, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !29, file: !30, line: 376, baseType: !439, size: 448)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !30, line: 134, size: 448, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !452}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !439, file: !30, line: 135, baseType: !28, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !30, line: 135, baseType: !20, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !30, line: 135, baseType: !20, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !439, file: !30, line: 135, baseType: !39, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !30, line: 135, baseType: !20, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !439, file: !30, line: 135, baseType: !20, size: 8, offset: 104)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !30, line: 136, baseType: !23, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !439, file: !30, line: 137, baseType: !28, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !30, line: 138, baseType: !28, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !439, file: !30, line: 139, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !439, file: !30, line: 140, baseType: !8, size: 32, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !29, file: !30, line: 377, baseType: !454, size: 320)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !30, line: 184, size: 320, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !465}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !30, line: 185, baseType: !28, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !30, line: 185, baseType: !20, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !30, line: 185, baseType: !20, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !30, line: 185, baseType: !39, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !30, line: 185, baseType: !20, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !454, file: !30, line: 185, baseType: !462, size: 128, offset: 128)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 2)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !454, file: !30, line: 185, baseType: !28, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !29, file: !30, line: 378, baseType: !467, size: 384)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !30, line: 187, size: 384, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !467, file: !30, line: 188, baseType: !28, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !467, file: !30, line: 188, baseType: !20, size: 8, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !30, line: 188, baseType: !20, size: 8, offset: 72)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !467, file: !30, line: 188, baseType: !39, size: 16, offset: 80)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !30, line: 188, baseType: !20, size: 8, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !467, file: !30, line: 189, baseType: !462, size: 128, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !467, file: !30, line: 189, baseType: !28, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !467, file: !30, line: 189, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !25, line: 480, size: 576, elements: !479)
!479 = !{!480, !481, !482, !483, !491, !506, !538, !539, !540, !541, !542, !543}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !478, file: !25, line: 481, baseType: !23, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !478, file: !25, line: 482, baseType: !477, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !25, line: 483, baseType: !477, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !478, file: !25, line: 484, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !25, line: 497, size: 256, elements: !486)
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !485, file: !25, line: 498, baseType: !484, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !25, line: 499, baseType: !484, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !485, file: !25, line: 500, baseType: !477, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !485, file: !25, line: 501, baseType: !8, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !478, file: !25, line: 485, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !25, line: 466, size: 320, elements: !494)
!494 = !{!495, !500, !501, !502, !503, !504, !505}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !493, file: !25, line: 467, baseType: !496, size: 128)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !25, line: 459, size: 128, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !25, line: 460, baseType: !20, size: 8)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !25, line: 461, baseType: !16, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !493, file: !25, line: 468, baseType: !496, size: 128, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !493, file: !25, line: 469, baseType: !39, size: 16, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !493, file: !25, line: 470, baseType: !20, size: 8, offset: 272)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !493, file: !25, line: 471, baseType: !20, size: 8, offset: 280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !493, file: !25, line: 472, baseType: !20, size: 8, offset: 288)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !493, file: !25, line: 473, baseType: !20, size: 8, offset: 296)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !478, file: !25, line: 486, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !25, line: 448, size: 192, elements: !509)
!509 = !{!510, !533, !534, !535, !536, !537}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !508, file: !25, line: 449, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !25, line: 438, size: 64, elements: !512)
!512 = !{!513, !514, !527}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !511, file: !25, line: 439, baseType: !23, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !25, line: 440, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !25, line: 419, size: 256, elements: !517)
!517 = !{!518, !523, !524, !525, !526}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !25, line: 420, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!8, !359, !8, !14}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !516, file: !25, line: 421, baseType: !14, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !516, file: !25, line: 422, baseType: !23, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !516, file: !25, line: 423, baseType: !20, size: 8, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !516, file: !25, line: 424, baseType: !20, size: 8, offset: 200)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !511, file: !25, line: 441, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !25, line: 429, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !529, file: !25, line: 430, baseType: !23, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !25, line: 431, baseType: !528, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !508, file: !25, line: 450, baseType: !492, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !25, line: 451, baseType: !20, size: 8, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !508, file: !25, line: 452, baseType: !20, size: 8, offset: 136)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !508, file: !25, line: 453, baseType: !20, size: 8, offset: 144)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !508, file: !25, line: 454, baseType: !20, size: 8, offset: 152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !478, file: !25, line: 487, baseType: !16, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !478, file: !25, line: 488, baseType: !8, size: 32, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !478, file: !25, line: 489, baseType: !39, size: 16, offset: 480)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !478, file: !25, line: 490, baseType: !39, size: 16, offset: 496)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !478, file: !25, line: 491, baseType: !20, size: 8, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !478, file: !25, line: 492, baseType: !20, size: 8, offset: 520)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !29, file: !30, line: 379, baseType: !545, size: 384)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !30, line: 192, size: 384, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !545, file: !30, line: 193, baseType: !28, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !545, file: !30, line: 193, baseType: !20, size: 8, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !545, file: !30, line: 193, baseType: !20, size: 8, offset: 72)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !545, file: !30, line: 193, baseType: !39, size: 16, offset: 80)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !545, file: !30, line: 193, baseType: !20, size: 8, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !545, file: !30, line: 193, baseType: !462, size: 128, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !545, file: !30, line: 193, baseType: !28, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !545, file: !30, line: 193, baseType: !8, size: 32, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !545, file: !30, line: 194, baseType: !8, size: 32, offset: 352)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !29, file: !30, line: 380, baseType: !557, size: 384)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !30, line: 197, size: 384, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !30, line: 198, baseType: !28, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !30, line: 198, baseType: !20, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !30, line: 198, baseType: !20, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !30, line: 198, baseType: !39, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !30, line: 198, baseType: !20, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !557, file: !30, line: 200, baseType: !20, size: 8, offset: 104)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !557, file: !30, line: 201, baseType: !20, size: 8, offset: 112)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !30, line: 202, baseType: !462, size: 128, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !30, line: 202, baseType: !28, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !557, file: !30, line: 202, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !16)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !29, file: !30, line: 381, baseType: !571, size: 320)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !30, line: 205, size: 320, elements: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !571, file: !30, line: 206, baseType: !28, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !571, file: !30, line: 206, baseType: !20, size: 8, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !571, file: !30, line: 206, baseType: !20, size: 8, offset: 72)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !571, file: !30, line: 206, baseType: !39, size: 16, offset: 80)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !30, line: 206, baseType: !20, size: 8, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !571, file: !30, line: 206, baseType: !462, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !571, file: !30, line: 206, baseType: !28, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !29, file: !30, line: 382, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !30, line: 233, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !30, line: 234, baseType: !28, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !30, line: 234, baseType: !39, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 104)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 112)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 120)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !581, file: !30, line: 234, baseType: !23, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !581, file: !30, line: 234, baseType: !8, size: 32, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !581, file: !30, line: 234, baseType: !8, size: 32, offset: 224)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !581, file: !30, line: 234, baseType: !8, size: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 288)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !581, file: !30, line: 234, baseType: !20, size: 8, offset: 296)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !581, file: !30, line: 234, baseType: !28, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !29, file: !30, line: 383, baseType: !599, size: 576)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !30, line: 237, size: 576, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !30, line: 238, baseType: !28, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !30, line: 238, baseType: !39, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !30, line: 238, baseType: !23, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !30, line: 238, baseType: !8, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !30, line: 238, baseType: !8, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !30, line: 238, baseType: !8, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !30, line: 238, baseType: !20, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !599, file: !30, line: 238, baseType: !39, size: 16, offset: 304)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !30, line: 239, baseType: !28, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !599, file: !30, line: 240, baseType: !19, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !599, file: !30, line: 241, baseType: !39, size: 16, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !599, file: !30, line: 242, baseType: !19, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !29, file: !30, line: 384, baseType: !621, size: 384)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !30, line: 262, size: 384, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !30, line: 263, baseType: !28, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !30, line: 263, baseType: !39, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 120)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !30, line: 263, baseType: !23, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !621, file: !30, line: 263, baseType: !8, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !621, file: !30, line: 263, baseType: !8, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !30, line: 263, baseType: !8, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 296)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !621, file: !30, line: 263, baseType: !20, size: 8, offset: 304)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !621, file: !30, line: 264, baseType: !28, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !29, file: !30, line: 385, baseType: !640, size: 448)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !30, line: 245, size: 448, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !640, file: !30, line: 246, baseType: !28, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 72)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !640, file: !30, line: 246, baseType: !39, size: 16, offset: 80)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 104)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !30, line: 246, baseType: !23, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !640, file: !30, line: 246, baseType: !8, size: 32, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !640, file: !30, line: 246, baseType: !8, size: 32, offset: 224)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !640, file: !30, line: 246, baseType: !8, size: 32, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !640, file: !30, line: 246, baseType: !20, size: 8, offset: 296)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !640, file: !30, line: 246, baseType: !28, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !640, file: !30, line: 247, baseType: !28, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !29, file: !30, line: 386, baseType: !659, size: 448)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !30, line: 250, size: 448, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !659, file: !30, line: 251, baseType: !28, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 72)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !659, file: !30, line: 251, baseType: !39, size: 16, offset: 80)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 104)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 120)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !30, line: 251, baseType: !23, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !659, file: !30, line: 251, baseType: !8, size: 32, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !659, file: !30, line: 251, baseType: !8, size: 32, offset: 224)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !659, file: !30, line: 251, baseType: !8, size: 32, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 288)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !659, file: !30, line: 251, baseType: !20, size: 8, offset: 296)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !659, file: !30, line: 256, baseType: !28, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !659, file: !30, line: 257, baseType: !28, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !29, file: !30, line: 387, baseType: !678, size: 512)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !30, line: 273, size: 512, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !678, file: !30, line: 274, baseType: !28, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !30, line: 274, baseType: !20, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !30, line: 274, baseType: !20, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !678, file: !30, line: 274, baseType: !39, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !30, line: 274, baseType: !20, size: 8, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !30, line: 274, baseType: !23, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !678, file: !30, line: 275, baseType: !8, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !678, file: !30, line: 276, baseType: !355, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !678, file: !30, line: 277, baseType: !14, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !30, line: 278, baseType: !462, size: 128, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !29, file: !30, line: 388, baseType: !691, size: 512)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !30, line: 281, size: 512, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !706, !707, !708, !714, !715}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !30, line: 282, baseType: !28, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !30, line: 282, baseType: !20, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !30, line: 282, baseType: !20, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !30, line: 282, baseType: !39, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !30, line: 282, baseType: !20, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !691, file: !30, line: 282, baseType: !20, size: 8, offset: 104)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !691, file: !30, line: 283, baseType: !20, size: 8, offset: 112)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !691, file: !30, line: 284, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!6, !8, !451, !8, !705, !14, !14}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !691, file: !30, line: 285, baseType: !23, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !691, file: !30, line: 286, baseType: !14, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !691, file: !30, line: 287, baseType: !709, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!6, !359, !8, !14, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !691, file: !30, line: 288, baseType: !28, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !30, line: 289, baseType: !28, size: 64, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !29, file: !30, line: 389, baseType: !717, size: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !30, line: 307, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !30, line: 308, baseType: !28, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !30, line: 308, baseType: !20, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !30, line: 308, baseType: !20, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !30, line: 308, baseType: !39, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !30, line: 308, baseType: !20, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !717, file: !30, line: 308, baseType: !20, size: 8, offset: 104)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !717, file: !30, line: 309, baseType: !20, size: 8, offset: 112)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !717, file: !30, line: 310, baseType: !20, size: 8, offset: 120)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !717, file: !30, line: 311, baseType: !14, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !30, line: 312, baseType: !23, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !717, file: !30, line: 313, baseType: !91, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !717, file: !30, line: 314, baseType: !19, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !717, file: !30, line: 315, baseType: !19, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !717, file: !30, line: 316, baseType: !8, size: 32, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !29, file: !30, line: 390, baseType: !734, size: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !30, line: 340, size: 448, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !30, line: 341, baseType: !28, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !30, line: 341, baseType: !20, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !30, line: 341, baseType: !20, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !30, line: 341, baseType: !39, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !30, line: 341, baseType: !20, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !734, file: !30, line: 341, baseType: !23, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !734, file: !30, line: 342, baseType: !23, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !734, file: !30, line: 343, baseType: !14, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !734, file: !30, line: 344, baseType: !19, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !734, file: !30, line: 345, baseType: !8, size: 32, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !30, line: 391, baseType: !747, size: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !30, line: 350, size: 256, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !759}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !30, line: 351, baseType: !28, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !30, line: 351, baseType: !20, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !30, line: 351, baseType: !20, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !30, line: 351, baseType: !39, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !30, line: 351, baseType: !20, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !747, file: !30, line: 351, baseType: !755, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !359, !14}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !747, file: !30, line: 352, baseType: !14, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !29, file: !30, line: 392, baseType: !761, size: 192)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !30, line: 357, size: 192, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !761, file: !30, line: 358, baseType: !28, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !30, line: 358, baseType: !20, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !30, line: 358, baseType: !20, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !761, file: !30, line: 358, baseType: !39, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !30, line: 358, baseType: !20, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !30, line: 358, baseType: !28, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !29, file: !30, line: 399, baseType: !24, size: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !24, file: !25, line: 135, baseType: !20, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !25, line: 136, baseType: !20, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !25, line: 137, baseType: !39, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !25, line: 138, baseType: !774, size: 32, offset: 96)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !775, line: 327, size: 32, elements: !776)
!775 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !774, file: !775, line: 328, baseType: !8, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !774, file: !775, line: 329, baseType: !220, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !24, file: !25, line: 139, baseType: !23, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !24, file: !25, line: 140, baseType: !23, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !24, file: !25, line: 141, baseType: !23, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !24, file: !25, line: 142, baseType: !138, size: 16, offset: 320)
!783 = !{!0}
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 72, elements: !375)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!786 = !{i32 7, !"Dwarf Version", i32 4}
!787 = !{i32 2, !"Debug Info Version", i32 3}
!788 = !{i32 1, !"wchar_size", i32 2}
!789 = !{i32 1, !"Code Model", i32 2}
!790 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!791 = distinct !DISubprogram(name: "acpi_load_tables", scope: !3, file: !3, line: 32, type: !792, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!792 = !DISubroutineType(types: !793)
!793 = !{!6}
!794 = !DILocalVariable(name: "status", scope: !791, file: !3, line: 34, type: !6)
!795 = !DILocation(line: 34, column: 14, scope: !791)
!796 = !DILocation(line: 50, column: 11, scope: !791)
!797 = !DILocation(line: 50, column: 9, scope: !791)
!798 = !DILocation(line: 51, column: 6, scope: !799)
!799 = distinct !DILexicalBlock(scope: !791, file: !3, line: 51, column: 6)
!800 = !DILocation(line: 51, column: 6, scope: !791)
!801 = !DILocation(line: 52, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !3, line: 51, column: 28)
!803 = !DILocation(line: 54, column: 3, scope: !802)
!804 = !DILocation(line: 59, column: 11, scope: !791)
!805 = !DILocation(line: 59, column: 9, scope: !791)
!806 = !DILocation(line: 63, column: 6, scope: !807)
!807 = distinct !DILexicalBlock(scope: !791, file: !3, line: 63, column: 6)
!808 = !DILocation(line: 63, column: 13, scope: !807)
!809 = !DILocation(line: 63, column: 6, scope: !791)
!810 = !DILocation(line: 64, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 63, column: 35)
!812 = !DILocation(line: 65, column: 2, scope: !811)
!813 = !DILocation(line: 67, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !791, file: !3, line: 67, column: 6)
!815 = !DILocation(line: 67, column: 6, scope: !791)
!816 = !DILocation(line: 68, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !3, line: 67, column: 28)
!818 = !DILocation(line: 70, column: 2, scope: !817)
!819 = !DILocation(line: 79, column: 11, scope: !791)
!820 = !DILocation(line: 79, column: 9, scope: !791)
!821 = !DILocation(line: 80, column: 6, scope: !822)
!822 = distinct !DILexicalBlock(scope: !791, file: !3, line: 80, column: 6)
!823 = !DILocation(line: 80, column: 6, scope: !791)
!824 = !DILocation(line: 81, column: 34, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !3, line: 80, column: 28)
!826 = !DILocation(line: 82, column: 2, scope: !825)
!827 = !DILocation(line: 84, column: 2, scope: !791)
!828 = !DILocation(line: 85, column: 1, scope: !791)
!829 = distinct !DISubprogram(name: "acpi_tb_load_namespace", scope: !3, file: !3, line: 101, type: !792, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!830 = !DILocalVariable(name: "status", scope: !829, file: !3, line: 103, type: !6)
!831 = !DILocation(line: 103, column: 14, scope: !829)
!832 = !DILocalVariable(name: "i", scope: !829, file: !3, line: 104, type: !8)
!833 = !DILocation(line: 104, column: 6, scope: !829)
!834 = !DILocalVariable(name: "new_dsdt", scope: !829, file: !3, line: 105, type: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !775, line: 68, size: 288, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !846, !848, !849, !850}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !836, file: !775, line: 69, baseType: !220, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !836, file: !775, line: 70, baseType: !8, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !836, file: !775, line: 71, baseType: !20, size: 8, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !836, file: !775, line: 72, baseType: !20, size: 8, offset: 72)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !836, file: !775, line: 73, baseType: !843, size: 48, offset: 80)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 48, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 6)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !836, file: !775, line: 74, baseType: !847, size: 64, offset: 128)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 64, elements: !337)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !836, file: !775, line: 75, baseType: !8, size: 32, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !836, file: !775, line: 76, baseType: !220, size: 32, offset: 224)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !836, file: !775, line: 77, baseType: !8, size: 32, offset: 256)
!851 = !DILocation(line: 105, column: 28, scope: !829)
!852 = !DILocalVariable(name: "table", scope: !829, file: !3, line: 106, type: !853)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !775, line: 334, size: 256, elements: !855)
!855 = !{!856, !857, !858, !859, !860, !861, !862}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !854, file: !775, line: 335, baseType: !451, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !854, file: !775, line: 336, baseType: !835, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !854, file: !775, line: 337, baseType: !8, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !854, file: !775, line: 338, baseType: !774, size: 32, offset: 160)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !854, file: !775, line: 339, baseType: !138, size: 16, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !775, line: 340, baseType: !20, size: 8, offset: 208)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !854, file: !775, line: 341, baseType: !39, size: 16, offset: 224)
!863 = !DILocation(line: 106, column: 26, scope: !829)
!864 = !DILocalVariable(name: "tables_loaded", scope: !829, file: !3, line: 107, type: !8)
!865 = !DILocation(line: 107, column: 6, scope: !829)
!866 = !DILocalVariable(name: "tables_failed", scope: !829, file: !3, line: 108, type: !8)
!867 = !DILocation(line: 108, column: 6, scope: !829)
!868 = !DILocation(line: 112, column: 8, scope: !829)
!869 = !DILocation(line: 118, column: 36, scope: !829)
!870 = !DILocation(line: 118, column: 43, scope: !829)
!871 = !DILocation(line: 118, column: 11, scope: !829)
!872 = !DILocation(line: 118, column: 8, scope: !829)
!873 = !DILocation(line: 120, column: 32, scope: !874)
!874 = distinct !DILexicalBlock(scope: !829, file: !3, line: 120, column: 6)
!875 = !DILocation(line: 120, column: 7, scope: !874)
!876 = !DILocation(line: 120, column: 52, scope: !874)
!877 = !DILocation(line: 121, column: 7, scope: !874)
!878 = !DILocation(line: 121, column: 67, scope: !874)
!879 = !DILocation(line: 122, column: 6, scope: !874)
!880 = !DILocation(line: 120, column: 6, scope: !829)
!881 = !DILocation(line: 123, column: 10, scope: !882)
!882 = distinct !DILexicalBlock(scope: !874, file: !3, line: 122, column: 51)
!883 = !DILocation(line: 124, column: 3, scope: !882)
!884 = !DILocation(line: 133, column: 18, scope: !829)
!885 = !DILocation(line: 133, column: 25, scope: !829)
!886 = !DILocation(line: 133, column: 16, scope: !829)
!887 = !DILocation(line: 141, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !829, file: !3, line: 141, column: 6)
!889 = !DILocation(line: 141, column: 6, scope: !829)
!890 = !DILocation(line: 142, column: 32, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 141, column: 34)
!892 = !DILocation(line: 142, column: 14, scope: !891)
!893 = !DILocation(line: 142, column: 12, scope: !891)
!894 = !DILocation(line: 143, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !3, line: 143, column: 7)
!896 = !DILocation(line: 143, column: 7, scope: !891)
!897 = !DILocation(line: 144, column: 20, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !3, line: 143, column: 17)
!899 = !DILocation(line: 144, column: 18, scope: !898)
!900 = !DILocation(line: 145, column: 3, scope: !898)
!901 = !DILocation(line: 146, column: 2, scope: !891)
!902 = !DILocation(line: 152, column: 41, scope: !829)
!903 = !DILocation(line: 152, column: 2, scope: !829)
!904 = !DILocation(line: 157, column: 8, scope: !829)
!905 = !DILocation(line: 158, column: 30, scope: !829)
!906 = !DILocation(line: 158, column: 51, scope: !829)
!907 = !DILocation(line: 158, column: 11, scope: !829)
!908 = !DILocation(line: 158, column: 9, scope: !829)
!909 = !DILocation(line: 159, column: 8, scope: !829)
!910 = !DILocation(line: 160, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !829, file: !3, line: 160, column: 6)
!912 = !DILocation(line: 160, column: 6, scope: !829)
!913 = !DILocation(line: 161, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 160, column: 28)
!915 = !DILocation(line: 162, column: 16, scope: !914)
!916 = !DILocation(line: 163, column: 2, scope: !914)
!917 = !DILocation(line: 164, column: 16, scope: !918)
!918 = distinct !DILexicalBlock(scope: !911, file: !3, line: 163, column: 9)
!919 = !DILocation(line: 169, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !829, file: !3, line: 169, column: 2)
!921 = !DILocation(line: 169, column: 7, scope: !920)
!922 = !DILocation(line: 169, column: 14, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 169, column: 2)
!924 = !DILocation(line: 169, column: 43, scope: !923)
!925 = !DILocation(line: 169, column: 16, scope: !923)
!926 = !DILocation(line: 169, column: 2, scope: !920)
!927 = !DILocation(line: 170, column: 37, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 169, column: 69)
!929 = !DILocation(line: 170, column: 44, scope: !928)
!930 = !DILocation(line: 170, column: 12, scope: !928)
!931 = !DILocation(line: 170, column: 9, scope: !928)
!932 = !DILocation(line: 172, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 172, column: 7)
!934 = !DILocation(line: 172, column: 15, scope: !933)
!935 = !DILocation(line: 172, column: 23, scope: !933)
!936 = !DILocation(line: 173, column: 9, scope: !933)
!937 = !DILocation(line: 175, column: 8, scope: !933)
!938 = !DILocation(line: 175, column: 12, scope: !933)
!939 = !DILocation(line: 177, column: 8, scope: !933)
!940 = !DILocation(line: 177, column: 12, scope: !933)
!941 = !DILocation(line: 179, column: 7, scope: !933)
!942 = !DILocation(line: 179, column: 10, scope: !933)
!943 = !DILocation(line: 172, column: 7, scope: !928)
!944 = !DILocation(line: 180, column: 4, scope: !945)
!945 = distinct !DILexicalBlock(scope: !933, file: !3, line: 179, column: 55)
!946 = !DILocation(line: 185, column: 9, scope: !928)
!947 = !DILocation(line: 186, column: 31, scope: !928)
!948 = !DILocation(line: 186, column: 34, scope: !928)
!949 = !DILocation(line: 186, column: 12, scope: !928)
!950 = !DILocation(line: 186, column: 10, scope: !928)
!951 = !DILocation(line: 187, column: 9, scope: !928)
!952 = !DILocation(line: 188, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !928, file: !3, line: 188, column: 7)
!954 = !DILocation(line: 188, column: 7, scope: !928)
!955 = !DILocation(line: 189, column: 4, scope: !956)
!956 = distinct !DILexicalBlock(scope: !953, file: !3, line: 188, column: 29)
!957 = !DILocation(line: 194, column: 17, scope: !956)
!958 = !DILocation(line: 200, column: 3, scope: !956)
!959 = !DILocation(line: 201, column: 17, scope: !960)
!960 = distinct !DILexicalBlock(scope: !953, file: !3, line: 200, column: 10)
!961 = !DILocation(line: 203, column: 2, scope: !928)
!962 = !DILocation(line: 169, column: 64, scope: !923)
!963 = !DILocation(line: 169, column: 2, scope: !923)
!964 = distinct !{!964, !926, !965}
!965 = !DILocation(line: 203, column: 2, scope: !920)
!966 = !DILocation(line: 205, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !829, file: !3, line: 205, column: 6)
!968 = !DILocation(line: 205, column: 6, scope: !829)
!969 = !DILocation(line: 206, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 205, column: 22)
!971 = !DILocation(line: 207, column: 2, scope: !970)
!972 = !DILocation(line: 208, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !3, line: 207, column: 9)
!974 = !DILocation(line: 214, column: 10, scope: !973)
!975 = !DILabel(scope: !829, name: "unlock_and_exit", file: !3, line: 221)
!976 = !DILocation(line: 221, column: 1, scope: !829)
!977 = !DILocation(line: 222, column: 8, scope: !829)
!978 = !DILocation(line: 223, column: 2, scope: !829)
!979 = distinct !DISubprogram(name: "acpi_install_table", scope: !3, file: !3, line: 243, type: !980, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!980 = !DISubroutineType(types: !981)
!981 = !{!6, !451, !20}
!982 = !DILocalVariable(name: "address", arg: 1, scope: !979, file: !3, line: 243, type: !451)
!983 = !DILocation(line: 243, column: 42, scope: !979)
!984 = !DILocalVariable(name: "physical", arg: 2, scope: !979, file: !3, line: 243, type: !20)
!985 = !DILocation(line: 243, column: 54, scope: !979)
!986 = !DILocalVariable(name: "status", scope: !979, file: !3, line: 245, type: !6)
!987 = !DILocation(line: 245, column: 14, scope: !979)
!988 = !DILocalVariable(name: "flags", scope: !979, file: !3, line: 246, type: !20)
!989 = !DILocation(line: 246, column: 5, scope: !979)
!990 = !DILocalVariable(name: "table_index", scope: !979, file: !3, line: 247, type: !8)
!991 = !DILocation(line: 247, column: 6, scope: !979)
!992 = !DILocation(line: 251, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !979, file: !3, line: 251, column: 6)
!994 = !DILocation(line: 251, column: 6, scope: !979)
!995 = !DILocation(line: 252, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 251, column: 16)
!997 = !DILocation(line: 253, column: 2, scope: !996)
!998 = !DILocation(line: 254, column: 9, scope: !999)
!999 = distinct !DILexicalBlock(scope: !993, file: !3, line: 253, column: 9)
!1000 = !DILocation(line: 257, column: 42, scope: !979)
!1001 = !DILocation(line: 257, column: 51, scope: !979)
!1002 = !DILocation(line: 257, column: 11, scope: !979)
!1003 = !DILocation(line: 257, column: 9, scope: !979)
!1004 = !DILocation(line: 260, column: 2, scope: !979)
!1005 = distinct !DISubprogram(name: "acpi_load_table", scope: !3, file: !3, line: 283, type: !1006, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!6, !835, !13}
!1008 = !DILocalVariable(name: "table", arg: 1, scope: !1005, file: !3, line: 283, type: !835)
!1009 = !DILocation(line: 283, column: 55, scope: !1005)
!1010 = !DILocalVariable(name: "table_idx", arg: 2, scope: !1005, file: !3, line: 283, type: !13)
!1011 = !DILocation(line: 283, column: 67, scope: !1005)
!1012 = !DILocalVariable(name: "status", scope: !1005, file: !3, line: 285, type: !6)
!1013 = !DILocation(line: 285, column: 14, scope: !1005)
!1014 = !DILocalVariable(name: "table_index", scope: !1005, file: !3, line: 286, type: !8)
!1015 = !DILocation(line: 286, column: 6, scope: !1005)
!1016 = !DILocation(line: 292, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 292, column: 6)
!1018 = !DILocation(line: 292, column: 6, scope: !1005)
!1019 = !DILocation(line: 293, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 292, column: 14)
!1021 = !DILocation(line: 298, column: 2, scope: !1005)
!1022 = !DILocation(line: 299, column: 42, scope: !1005)
!1023 = !DILocation(line: 299, column: 11, scope: !1005)
!1024 = !DILocation(line: 299, column: 9, scope: !1005)
!1025 = !DILocation(line: 302, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 302, column: 6)
!1027 = !DILocation(line: 302, column: 6, scope: !1005)
!1028 = !DILocation(line: 303, column: 16, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 302, column: 17)
!1030 = !DILocation(line: 303, column: 4, scope: !1029)
!1031 = !DILocation(line: 303, column: 14, scope: !1029)
!1032 = !DILocation(line: 304, column: 2, scope: !1029)
!1033 = !DILocation(line: 306, column: 6, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 306, column: 6)
!1035 = !DILocation(line: 306, column: 6, scope: !1005)
!1036 = !DILocation(line: 310, column: 3, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 306, column: 28)
!1038 = !DILocation(line: 311, column: 2, scope: !1037)
!1039 = !DILocation(line: 313, column: 2, scope: !1005)
!1040 = !DILocation(line: 314, column: 1, scope: !1005)
!1041 = distinct !DISubprogram(name: "acpi_unload_parent_table", scope: !3, file: !3, line: 333, type: !1042, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!6, !359}
!1044 = !DILocalVariable(name: "object", arg: 1, scope: !1041, file: !3, line: 333, type: !359)
!1045 = !DILocation(line: 333, column: 50, scope: !1041)
!1046 = !DILocalVariable(name: "node", scope: !1041, file: !3, line: 335, type: !23)
!1047 = !DILocation(line: 335, column: 30, scope: !1041)
!1048 = !DILocation(line: 336, column: 6, scope: !1041)
!1049 = !DILocalVariable(name: "status", scope: !1041, file: !3, line: 337, type: !6)
!1050 = !DILocation(line: 337, column: 14, scope: !1041)
!1051 = !DILocalVariable(name: "owner_id", scope: !1041, file: !3, line: 338, type: !138)
!1052 = !DILocation(line: 338, column: 16, scope: !1041)
!1053 = !DILocalVariable(name: "i", scope: !1041, file: !3, line: 339, type: !8)
!1054 = !DILocation(line: 339, column: 6, scope: !1041)
!1055 = !DILocation(line: 345, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 345, column: 6)
!1057 = !DILocation(line: 345, column: 6, scope: !1041)
!1058 = !DILocation(line: 346, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 345, column: 15)
!1060 = !DILocation(line: 353, column: 13, scope: !1041)
!1061 = !DILocation(line: 353, column: 19, scope: !1041)
!1062 = !DILocation(line: 353, column: 11, scope: !1041)
!1063 = !DILocation(line: 354, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 354, column: 6)
!1065 = !DILocation(line: 354, column: 6, scope: !1041)
!1066 = !DILocation(line: 358, column: 3, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 354, column: 17)
!1068 = !DILocation(line: 363, column: 11, scope: !1041)
!1069 = !DILocation(line: 363, column: 9, scope: !1041)
!1070 = !DILocation(line: 364, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 364, column: 6)
!1072 = !DILocation(line: 364, column: 6, scope: !1041)
!1073 = !DILocation(line: 365, column: 3, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 364, column: 28)
!1075 = !DILocation(line: 370, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 370, column: 2)
!1077 = !DILocation(line: 370, column: 7, scope: !1076)
!1078 = !DILocation(line: 370, column: 14, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 370, column: 2)
!1080 = !DILocation(line: 370, column: 43, scope: !1079)
!1081 = !DILocation(line: 370, column: 16, scope: !1079)
!1082 = !DILocation(line: 370, column: 2, scope: !1076)
!1083 = !DILocation(line: 371, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 371, column: 7)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 370, column: 69)
!1086 = !DILocation(line: 371, column: 44, scope: !1084)
!1087 = !DILocation(line: 371, column: 51, scope: !1084)
!1088 = !DILocation(line: 371, column: 19, scope: !1084)
!1089 = !DILocation(line: 371, column: 54, scope: !1084)
!1090 = !DILocation(line: 371, column: 16, scope: !1084)
!1091 = !DILocation(line: 371, column: 7, scope: !1085)
!1092 = !DILocation(line: 372, column: 4, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 371, column: 64)
!1094 = !DILocation(line: 381, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 381, column: 7)
!1096 = !DILocation(line: 381, column: 7, scope: !1085)
!1097 = !DILocation(line: 384, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 383, column: 24)
!1099 = !DILocation(line: 385, column: 4, scope: !1098)
!1100 = !DILocation(line: 388, column: 9, scope: !1085)
!1101 = !DILocation(line: 389, column: 33, scope: !1085)
!1102 = !DILocation(line: 389, column: 12, scope: !1085)
!1103 = !DILocation(line: 389, column: 10, scope: !1085)
!1104 = !DILocation(line: 390, column: 9, scope: !1085)
!1105 = !DILocation(line: 391, column: 3, scope: !1085)
!1106 = !DILocation(line: 370, column: 65, scope: !1079)
!1107 = !DILocation(line: 370, column: 2, scope: !1079)
!1108 = distinct !{!1108, !1082, !1109}
!1109 = !DILocation(line: 392, column: 2, scope: !1076)
!1110 = !DILocation(line: 394, column: 8, scope: !1041)
!1111 = !DILocation(line: 395, column: 2, scope: !1041)
!1112 = !DILocation(line: 396, column: 1, scope: !1041)
!1113 = distinct !DISubprogram(name: "acpi_unload_table", scope: !3, file: !3, line: 413, type: !1114, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!6, !8}
!1116 = !DILocalVariable(name: "table_index", arg: 1, scope: !1113, file: !3, line: 413, type: !8)
!1117 = !DILocation(line: 413, column: 35, scope: !1113)
!1118 = !DILocalVariable(name: "status", scope: !1113, file: !3, line: 415, type: !6)
!1119 = !DILocation(line: 415, column: 14, scope: !1113)
!1120 = !DILocation(line: 419, column: 6, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 419, column: 6)
!1122 = !DILocation(line: 419, column: 18, scope: !1121)
!1123 = !DILocation(line: 419, column: 6, scope: !1113)
!1124 = !DILocation(line: 423, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 419, column: 24)
!1126 = !DILocation(line: 426, column: 32, scope: !1113)
!1127 = !DILocation(line: 426, column: 11, scope: !1113)
!1128 = !DILocation(line: 426, column: 9, scope: !1113)
!1129 = !DILocation(line: 427, column: 2, scope: !1113)
!1130 = !DILocation(line: 428, column: 1, scope: !1113)
