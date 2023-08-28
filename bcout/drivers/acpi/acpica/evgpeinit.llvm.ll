; ModuleID = '../bcout/drivers/acpi/acpica/evgpeinit.llvm.bc'
source_filename = "drivers/acpi/acpica/evgpeinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
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
%struct.acpi_gpe_block_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_register_info*, %struct.acpi_gpe_event_info*, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i32 }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, %struct.acpi_gpe_register_info*, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { %struct.acpi_namespace_node* }
%struct.acpi_gpe_walk_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info*, i16, i16, i8 }

@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_xgpe0_block_logical_address = external dso_local global i64, align 8
@acpi_gbl_fadt_gpe_device = external dso_local global %struct.acpi_namespace_node*, align 8
@acpi_gbl_gpe_fadt_blocks = external dso_local global [2 x %struct.acpi_gpe_block_info*], align 16
@_acpi_module_name = internal constant [10 x i8] c"evgpeinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 0\00", align 1
@acpi_gbl_xgpe1_block_logical_address = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [80 x i8] c"GPE0 block (GPE 0 to %u) overlaps the GPE1 block (GPE %u to %u) - Ignoring GPE1\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not create GPE Block 1\00", align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global %struct.acpi_gpe_xrupt_info*, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"While decoding _Lxx/_Exx methods\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Enabled %u new GPEs\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"For GPE 0x%.2X, found both _L%2.2X and _E%2.2X methods\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_gpe_initialize() #0 !dbg !801 {
entry:
  %retval = alloca i32, align 4
  %register_count0 = alloca i32, align 4
  %register_count1 = alloca i32, align 4
  %gpe_number_max = alloca i32, align 4
  %status = alloca i32, align 4
  %address = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %register_count0, metadata !804, metadata !DIExpression()), !dbg !805
  store i32 0, i32* %register_count0, align 4, !dbg !805
  call void @llvm.dbg.declare(metadata i32* %register_count1, metadata !806, metadata !DIExpression()), !dbg !807
  store i32 0, i32* %register_count1, align 4, !dbg !807
  call void @llvm.dbg.declare(metadata i32* %gpe_number_max, metadata !808, metadata !DIExpression()), !dbg !809
  store i32 0, i32* %gpe_number_max, align 4, !dbg !809
  call void @llvm.dbg.declare(metadata i32* %status, metadata !810, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata i64* %address, metadata !812, metadata !DIExpression()), !dbg !813
  %call = call i32 @acpi_ut_acquire_mutex(i32 1) #3, !dbg !814
  store i32 %call, i32* %status, align 4, !dbg !815
  %0 = load i32, i32* %status, align 4, !dbg !816
  %tobool = icmp ne i32 %0, 0, !dbg !816
  br i1 %tobool, label %if.then, label %if.end, !dbg !818

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %status, align 4, !dbg !819
  store i32 %1, i32* %retval, align 4, !dbg !819
  br label %return, !dbg !819

if.end:                                           ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 51, i32 0), align 1, !dbg !821
  %conv = zext i8 %2 to i32, !dbg !821
  %cmp = icmp eq i32 %conv, 0, !dbg !821
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !821

cond.true:                                        ; preds = %if.end
  %3 = load i64, i64* @acpi_gbl_xgpe0_block_logical_address, align 8, !dbg !821
  br label %cond.end, !dbg !821

cond.false:                                       ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 51, i32 4), align 1, !dbg !821
  br label %cond.end, !dbg !821

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !821
  store i64 %cond, i64* %address, align 8, !dbg !822
  %5 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 23), align 1, !dbg !823
  %conv2 = zext i8 %5 to i32, !dbg !825
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !825
  br i1 %tobool3, label %land.lhs.true, label %if.end14, !dbg !826

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i64, i64* %address, align 8, !dbg !827
  %tobool4 = icmp ne i64 %6, 0, !dbg !827
  br i1 %tobool4, label %if.then5, label %if.end14, !dbg !828

if.then5:                                         ; preds = %land.lhs.true
  %7 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 23), align 1, !dbg !829
  %conv6 = zext i8 %7 to i32, !dbg !831
  %div = sdiv i32 %conv6, 2, !dbg !832
  %conv7 = trunc i32 %div to i16, !dbg !833
  %conv8 = zext i16 %conv7 to i32, !dbg !833
  store i32 %conv8, i32* %register_count0, align 4, !dbg !834
  %8 = load i32, i32* %register_count0, align 4, !dbg !835
  %mul = mul i32 %8, 8, !dbg !836
  %sub = sub i32 %mul, 1, !dbg !837
  store i32 %sub, i32* %gpe_number_max, align 4, !dbg !838
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_fadt_gpe_device, align 8, !dbg !839
  %10 = load i64, i64* %address, align 8, !dbg !840
  %11 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 51, i32 0), align 1, !dbg !841
  %12 = load i32, i32* %register_count0, align 4, !dbg !842
  %13 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !843
  %conv9 = zext i16 %13 to i32, !dbg !844
  %call10 = call i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node* %9, i64 %10, i8 zeroext %11, i32 %12, i16 zeroext 0, i32 %conv9, %struct.acpi_gpe_block_info** getelementptr inbounds ([2 x %struct.acpi_gpe_block_info*], [2 x %struct.acpi_gpe_block_info*]* @acpi_gbl_gpe_fadt_blocks, i64 0, i64 0)) #3, !dbg !845
  store i32 %call10, i32* %status, align 4, !dbg !846
  %14 = load i32, i32* %status, align 4, !dbg !847
  %tobool11 = icmp ne i32 %14, 0, !dbg !847
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !849

if.then12:                                        ; preds = %if.then5
  %15 = load i32, i32* %status, align 4, !dbg !850
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 119, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)) #3, !dbg !850
  br label %if.end13, !dbg !852

if.end13:                                         ; preds = %if.then12, %if.then5
  br label %if.end14, !dbg !853

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %cond.end
  %16 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 52, i32 0), align 1, !dbg !854
  %conv15 = zext i8 %16 to i32, !dbg !854
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !854
  br i1 %cmp16, label %cond.true18, label %cond.false19, !dbg !854

cond.true18:                                      ; preds = %if.end14
  %17 = load i64, i64* @acpi_gbl_xgpe1_block_logical_address, align 8, !dbg !854
  br label %cond.end20, !dbg !854

cond.false19:                                     ; preds = %if.end14
  %18 = load i64, i64* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 52, i32 4), align 1, !dbg !854
  br label %cond.end20, !dbg !854

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i64 [ %17, %cond.true18 ], [ %18, %cond.false19 ], !dbg !854
  store i64 %cond21, i64* %address, align 8, !dbg !855
  %19 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 24), align 1, !dbg !856
  %conv22 = zext i8 %19 to i32, !dbg !858
  %tobool23 = icmp ne i32 %conv22, 0, !dbg !858
  br i1 %tobool23, label %land.lhs.true24, label %if.end48, !dbg !859

land.lhs.true24:                                  ; preds = %cond.end20
  %20 = load i64, i64* %address, align 8, !dbg !860
  %tobool25 = icmp ne i64 %20, 0, !dbg !860
  br i1 %tobool25, label %if.then26, label %if.end48, !dbg !861

if.then26:                                        ; preds = %land.lhs.true24
  %21 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 24), align 1, !dbg !862
  %conv27 = zext i8 %21 to i32, !dbg !864
  %div28 = sdiv i32 %conv27, 2, !dbg !865
  %conv29 = trunc i32 %div28 to i16, !dbg !866
  %conv30 = zext i16 %conv29 to i32, !dbg !866
  store i32 %conv30, i32* %register_count1, align 4, !dbg !867
  %22 = load i32, i32* %register_count0, align 4, !dbg !868
  %tobool31 = icmp ne i32 %22, 0, !dbg !870
  br i1 %tobool31, label %land.lhs.true32, label %if.else, !dbg !871

land.lhs.true32:                                  ; preds = %if.then26
  %23 = load i32, i32* %gpe_number_max, align 4, !dbg !872
  %24 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !873
  %conv33 = zext i8 %24 to i32, !dbg !874
  %cmp34 = icmp uge i32 %23, %conv33, !dbg !875
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !876

if.then36:                                        ; preds = %land.lhs.true32
  %25 = load i32, i32* %gpe_number_max, align 4, !dbg !877
  %26 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !877
  %conv37 = zext i8 %26 to i32, !dbg !877
  %27 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !877
  %conv38 = zext i8 %27 to i32, !dbg !877
  %28 = load i32, i32* %register_count1, align 4, !dbg !877
  %mul39 = mul i32 %28, 8, !dbg !877
  %sub40 = sub i32 %mul39, 1, !dbg !877
  %add = add i32 %conv38, %sub40, !dbg !877
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %conv37, i32 %add) #3, !dbg !877
  store i32 0, i32* %register_count1, align 4, !dbg !879
  br label %if.end47, !dbg !880

if.else:                                          ; preds = %land.lhs.true32, %if.then26
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_fadt_gpe_device, align 8, !dbg !881
  %30 = load i64, i64* %address, align 8, !dbg !883
  %31 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 52, i32 0), align 1, !dbg !884
  %32 = load i32, i32* %register_count1, align 4, !dbg !885
  %33 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 25), align 1, !dbg !886
  %conv41 = zext i8 %33 to i16, !dbg !887
  %34 = load i16, i16* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !888
  %conv42 = zext i16 %34 to i32, !dbg !889
  %call43 = call i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node* %29, i64 %30, i8 zeroext %31, i32 %32, i16 zeroext %conv41, i32 %conv42, %struct.acpi_gpe_block_info** getelementptr inbounds ([2 x %struct.acpi_gpe_block_info*], [2 x %struct.acpi_gpe_block_info*]* @acpi_gbl_gpe_fadt_blocks, i64 0, i64 1)) #3, !dbg !890
  store i32 %call43, i32* %status, align 4, !dbg !891
  %35 = load i32, i32* %status, align 4, !dbg !892
  %tobool44 = icmp ne i32 %35, 0, !dbg !892
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !894

if.then45:                                        ; preds = %if.else
  %36 = load i32, i32* %status, align 4, !dbg !895
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 162, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !895
  br label %if.end46, !dbg !897

if.end46:                                         ; preds = %if.then45, %if.else
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then36
  br label %if.end48, !dbg !898

if.end48:                                         ; preds = %if.end47, %land.lhs.true24, %cond.end20
  %37 = load i32, i32* %register_count0, align 4, !dbg !899
  %38 = load i32, i32* %register_count1, align 4, !dbg !901
  %add49 = add i32 %37, %38, !dbg !902
  %cmp50 = icmp eq i32 %add49, 0, !dbg !903
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !904

if.then52:                                        ; preds = %if.end48
  br label %cleanup, !dbg !905

if.end53:                                         ; preds = %if.end48
  br label %cleanup, !dbg !907

cleanup:                                          ; preds = %if.end53, %if.then52
  call void @llvm.dbg.label(metadata !908), !dbg !909
  %call54 = call i32 @acpi_ut_release_mutex(i32 1) #3, !dbg !910
  store i32 0, i32* %retval, align 4, !dbg !911
  br label %return, !dbg !911

return:                                           ; preds = %cleanup, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !912
  ret i32 %39, !dbg !912
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_acquire_mutex(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node*, i64, i8 zeroext, i32, i16 zeroext, i32, %struct.acpi_gpe_block_info**) #2

; Function Attrs: noredzone
declare dso_local void @acpi_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_release_mutex(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ev_update_gpes(i16 zeroext %table_owner_id) #0 !dbg !913 {
entry:
  %table_owner_id.addr = alloca i16, align 2
  %gpe_xrupt_info = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %gpe_block = alloca %struct.acpi_gpe_block_info*, align 8
  %walk_info = alloca %struct.acpi_gpe_walk_info, align 8
  %status = alloca i32, align 4
  store i16 %table_owner_id, i16* %table_owner_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %table_owner_id.addr, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_block_info** %gpe_block, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_walk_info* %walk_info, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %status, metadata !924, metadata !DIExpression()), !dbg !925
  store i32 0, i32* %status, align 4, !dbg !925
  %call = call i32 @acpi_ut_acquire_mutex(i32 3) #3, !dbg !926
  store i32 %call, i32* %status, align 4, !dbg !927
  %0 = load i32, i32* %status, align 4, !dbg !928
  %tobool = icmp ne i32 %0, 0, !dbg !928
  br i1 %tobool, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %entry
  br label %return, !dbg !931

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 2, !dbg !933
  store i16 0, i16* %count, align 8, !dbg !934
  %1 = load i16, i16* %table_owner_id.addr, align 2, !dbg !935
  %owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 3, !dbg !936
  store i16 %1, i16* %owner_id, align 2, !dbg !937
  %execute_by_owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 4, !dbg !938
  store i8 1, i8* %execute_by_owner_id, align 4, !dbg !939
  %2 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !940
  store %struct.acpi_gpe_xrupt_info* %2, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !941
  br label %while.cond, !dbg !942

while.cond:                                       ; preds = %while.end, %if.end
  %3 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !943
  %tobool1 = icmp ne %struct.acpi_gpe_xrupt_info* %3, null, !dbg !942
  br i1 %tobool1, label %while.body, label %while.end12, !dbg !942

while.body:                                       ; preds = %while.cond
  %4 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !944
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %4, i32 0, i32 2, !dbg !946
  %5 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block_list_head, align 8, !dbg !946
  store %struct.acpi_gpe_block_info* %5, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !947
  br label %while.cond2, !dbg !948

while.cond2:                                      ; preds = %if.end10, %while.body
  %6 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !949
  %tobool3 = icmp ne %struct.acpi_gpe_block_info* %6, null, !dbg !948
  br i1 %tobool3, label %while.body4, label %while.end, !dbg !948

while.body4:                                      ; preds = %while.cond2
  %7 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !950
  %gpe_block5 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 1, !dbg !952
  store %struct.acpi_gpe_block_info* %7, %struct.acpi_gpe_block_info** %gpe_block5, align 8, !dbg !953
  %8 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !954
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %8, i32 0, i32 0, !dbg !955
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !955
  %gpe_device = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 0, !dbg !956
  store %struct.acpi_namespace_node* %9, %struct.acpi_namespace_node** %gpe_device, align 8, !dbg !957
  %gpe_device6 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 0, !dbg !958
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %gpe_device6, align 8, !dbg !958
  %11 = bitcast %struct.acpi_namespace_node* %10 to i8*, !dbg !959
  %12 = bitcast %struct.acpi_gpe_walk_info* %walk_info to i8*, !dbg !960
  %call7 = call i32 @acpi_ns_walk_namespace(i32 8, i8* %11, i32 -1, i32 0, i32 (i8*, i32, i8*, i8**)* @acpi_ev_match_gpe_method, i32 (i8*, i32, i8*, i8**)* null, i8* %12, i8** null) #3, !dbg !961
  store i32 %call7, i32* %status, align 4, !dbg !962
  %13 = load i32, i32* %status, align 4, !dbg !963
  %tobool8 = icmp ne i32 %13, 0, !dbg !963
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !965

if.then9:                                         ; preds = %while.body4
  %14 = load i32, i32* %status, align 4, !dbg !966
  call void (i8*, i32, i32, i8*, ...) @acpi_exception(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 247, i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !966
  br label %if.end10, !dbg !968

if.end10:                                         ; preds = %if.then9, %while.body4
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !969
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %15, i32 0, i32 2, !dbg !970
  %16 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %next, align 8, !dbg !970
  store %struct.acpi_gpe_block_info* %16, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !971
  br label %while.cond2, !dbg !948, !llvm.loop !972

while.end:                                        ; preds = %while.cond2
  %17 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !974
  %next11 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %17, i32 0, i32 1, !dbg !975
  %18 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %next11, align 8, !dbg !975
  store %struct.acpi_gpe_xrupt_info* %18, %struct.acpi_gpe_xrupt_info** %gpe_xrupt_info, align 8, !dbg !976
  br label %while.cond, !dbg !942, !llvm.loop !977

while.end12:                                      ; preds = %while.cond
  %count13 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 2, !dbg !979
  %19 = load i16, i16* %count13, align 8, !dbg !979
  %tobool14 = icmp ne i16 %19, 0, !dbg !981
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !982

if.then15:                                        ; preds = %while.end12
  %count16 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %walk_info, i32 0, i32 2, !dbg !983
  %20 = load i16, i16* %count16, align 8, !dbg !983
  %conv = zext i16 %20 to i32, !dbg !983
  call void (i8*, ...) @acpi_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #3, !dbg !983
  br label %if.end17, !dbg !985

if.end17:                                         ; preds = %if.then15, %while.end12
  %call18 = call i32 @acpi_ut_release_mutex(i32 3) #3, !dbg !986
  br label %return, !dbg !987

return:                                           ; preds = %if.end17, %if.then
  ret void, !dbg !988
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ns_walk_namespace(i32, i8*, i32, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ev_match_gpe_method(i8* %obj_handle, i32 %level, i8* %context, i8** %return_value) #0 !dbg !989 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %return_value.addr = alloca i8**, align 8
  %method_node = alloca %struct.acpi_namespace_node*, align 8
  %walk_info = alloca %struct.acpi_gpe_walk_info*, align 8
  %gpe_event_info = alloca %struct.acpi_gpe_event_info*, align 8
  %status = alloca i32, align 4
  %gpe_number = alloca i32, align 4
  %temp_gpe_number = alloca i8, align 1
  %name = alloca [5 x i8], align 1
  %type = alloca i8, align 1
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !990, metadata !DIExpression()), !dbg !991
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !992, metadata !DIExpression()), !dbg !993
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !994, metadata !DIExpression()), !dbg !995
  store i8** %return_value, i8*** %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %return_value.addr, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %method_node, metadata !998, metadata !DIExpression()), !dbg !999
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !1000
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !1000
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %method_node, align 8, !dbg !999
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_walk_info** %walk_info, metadata !1001, metadata !DIExpression()), !dbg !1002
  %2 = load i8*, i8** %context.addr, align 8, !dbg !1003
  %3 = bitcast i8* %2 to %struct.acpi_gpe_walk_info*, !dbg !1003
  store %struct.acpi_gpe_walk_info* %3, %struct.acpi_gpe_walk_info** %walk_info, align 8, !dbg !1002
  call void @llvm.dbg.declare(metadata %struct.acpi_gpe_event_info** %gpe_event_info, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %gpe_number, metadata !1008, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.declare(metadata i8* %temp_gpe_number, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata [5 x i8]* %name, metadata !1012, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata i8* %type, metadata !1017, metadata !DIExpression()), !dbg !1018
  %4 = load %struct.acpi_gpe_walk_info*, %struct.acpi_gpe_walk_info** %walk_info, align 8, !dbg !1019
  %execute_by_owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %4, i32 0, i32 4, !dbg !1021
  %5 = load i8, i8* %execute_by_owner_id, align 4, !dbg !1021
  %conv = zext i8 %5 to i32, !dbg !1022
  %tobool = icmp ne i32 %conv, 0, !dbg !1022
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1023

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1024
  %owner_id = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 8, !dbg !1025
  %7 = load i16, i16* %owner_id, align 8, !dbg !1025
  %conv1 = zext i16 %7 to i32, !dbg !1024
  %8 = load %struct.acpi_gpe_walk_info*, %struct.acpi_gpe_walk_info** %walk_info, align 8, !dbg !1026
  %owner_id2 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %8, i32 0, i32 3, !dbg !1027
  %9 = load i16, i16* %owner_id2, align 2, !dbg !1027
  %conv3 = zext i16 %9 to i32, !dbg !1026
  %cmp = icmp ne i32 %conv1, %conv3, !dbg !1028
  br i1 %cmp, label %if.then, label %if.end, !dbg !1029

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1030
  br label %return, !dbg !1030

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1032
  %name5 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %10, i32 0, i32 4, !dbg !1032
  %integer = bitcast %union.acpi_name_union* %name5 to i32*, !dbg !1032
  %11 = bitcast i32* %integer to i8*, !dbg !1032
  %12 = bitcast i8* %11 to i32*, !dbg !1032
  %13 = load i32, i32* %12, align 4, !dbg !1032
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !1032
  %14 = bitcast i8* %arraydecay to i32*, !dbg !1032
  store i32 %13, i32* %14, align 4, !dbg !1032
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %name, i64 0, i64 4, !dbg !1033
  store i8 0, i8* %arrayidx, align 1, !dbg !1034
  %arrayidx6 = getelementptr [5 x i8], [5 x i8]* %name, i64 0, i64 0, !dbg !1035
  %15 = load i8, i8* %arrayidx6, align 1, !dbg !1035
  %conv7 = sext i8 %15 to i32, !dbg !1035
  %cmp8 = icmp ne i32 %conv7, 95, !dbg !1037
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1038

if.then10:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr [5 x i8], [5 x i8]* %name, i64 0, i64 1, !dbg !1041
  %16 = load i8, i8* %arrayidx12, align 1, !dbg !1041
  %conv13 = sext i8 %16 to i32, !dbg !1041
  switch i32 %conv13, label %sw.default [
    i32 76, label %sw.bb
    i32 69, label %sw.bb14
  ], !dbg !1042

sw.bb:                                            ; preds = %if.end11
  store i8 8, i8* %type, align 1, !dbg !1043
  br label %sw.epilog, !dbg !1045

sw.bb14:                                          ; preds = %if.end11
  store i8 0, i8* %type, align 1, !dbg !1046
  br label %sw.epilog, !dbg !1047

sw.default:                                       ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !1048
  br label %return, !dbg !1048

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb
  %arrayidx15 = getelementptr [5 x i8], [5 x i8]* %name, i64 0, i64 2, !dbg !1049
  %call = call i32 @acpi_ut_ascii_to_hex_byte(i8* %arrayidx15, i8* %temp_gpe_number) #3, !dbg !1050
  store i32 %call, i32* %status, align 4, !dbg !1051
  %17 = load i32, i32* %status, align 4, !dbg !1052
  %tobool16 = icmp ne i32 %17, 0, !dbg !1052
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1054

if.then17:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !1055
  br label %return, !dbg !1055

if.end18:                                         ; preds = %sw.epilog
  %18 = load i8, i8* %temp_gpe_number, align 1, !dbg !1057
  %conv19 = zext i8 %18 to i32, !dbg !1058
  store i32 %conv19, i32* %gpe_number, align 4, !dbg !1059
  %19 = load i32, i32* %gpe_number, align 4, !dbg !1060
  %20 = load %struct.acpi_gpe_walk_info*, %struct.acpi_gpe_walk_info** %walk_info, align 8, !dbg !1061
  %gpe_block = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %20, i32 0, i32 1, !dbg !1062
  %21 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %gpe_block, align 8, !dbg !1062
  %call20 = call %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i32 %19, %struct.acpi_gpe_block_info* %21) #3, !dbg !1063
  store %struct.acpi_gpe_event_info* %call20, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1064
  %22 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1065
  %tobool21 = icmp ne %struct.acpi_gpe_event_info* %22, null, !dbg !1065
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1067

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %retval, align 4, !dbg !1068
  br label %return, !dbg !1068

if.end23:                                         ; preds = %if.end18
  %23 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1070
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %23, i32 0, i32 2, !dbg !1070
  %24 = load i8, i8* %flags, align 8, !dbg !1070
  %conv24 = zext i8 %24 to i32, !dbg !1070
  %and = and i32 %conv24, 7, !dbg !1070
  %conv25 = trunc i32 %and to i8, !dbg !1070
  %conv26 = zext i8 %conv25 to i32, !dbg !1070
  %cmp27 = icmp eq i32 %conv26, 2, !dbg !1072
  br i1 %cmp27, label %if.then36, label %lor.lhs.false, !dbg !1073

lor.lhs.false:                                    ; preds = %if.end23
  %25 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1074
  %flags29 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %25, i32 0, i32 2, !dbg !1074
  %26 = load i8, i8* %flags29, align 8, !dbg !1074
  %conv30 = zext i8 %26 to i32, !dbg !1074
  %and31 = and i32 %conv30, 7, !dbg !1074
  %conv32 = trunc i32 %and31 to i8, !dbg !1074
  %conv33 = zext i8 %conv32 to i32, !dbg !1074
  %cmp34 = icmp eq i32 %conv33, 4, !dbg !1075
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1076

if.then36:                                        ; preds = %lor.lhs.false, %if.end23
  store i32 0, i32* %retval, align 4, !dbg !1077
  br label %return, !dbg !1077

if.end37:                                         ; preds = %lor.lhs.false
  %27 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1079
  %flags38 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %27, i32 0, i32 2, !dbg !1079
  %28 = load i8, i8* %flags38, align 8, !dbg !1079
  %conv39 = zext i8 %28 to i32, !dbg !1079
  %and40 = and i32 %conv39, 7, !dbg !1079
  %conv41 = trunc i32 %and40 to i8, !dbg !1079
  %conv42 = zext i8 %conv41 to i32, !dbg !1079
  %cmp43 = icmp eq i32 %conv42, 1, !dbg !1081
  br i1 %cmp43, label %if.then45, label %if.end54, !dbg !1082

if.then45:                                        ; preds = %if.end37
  %29 = load i8, i8* %type, align 1, !dbg !1083
  %conv46 = zext i8 %29 to i32, !dbg !1083
  %30 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1086
  %flags47 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %30, i32 0, i32 2, !dbg !1087
  %31 = load i8, i8* %flags47, align 8, !dbg !1087
  %conv48 = zext i8 %31 to i32, !dbg !1086
  %and49 = and i32 %conv48, 8, !dbg !1088
  %cmp50 = icmp ne i32 %conv46, %and49, !dbg !1089
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1090

if.then52:                                        ; preds = %if.then45
  %32 = load i32, i32* %gpe_number, align 4, !dbg !1091
  %33 = load i32, i32* %gpe_number, align 4, !dbg !1091
  %34 = load i32, i32* %gpe_number, align 4, !dbg !1091
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %33, i32 %34) #3, !dbg !1091
  br label %if.end53, !dbg !1093

if.end53:                                         ; preds = %if.then52, %if.then45
  store i32 0, i32* %retval, align 4, !dbg !1094
  br label %return, !dbg !1094

if.end54:                                         ; preds = %if.end37
  %35 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1095
  %call55 = call i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info* %35, i32 1) #3, !dbg !1096
  %36 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1097
  %flags56 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %36, i32 0, i32 2, !dbg !1098
  %37 = load i8, i8* %flags56, align 8, !dbg !1099
  %conv57 = zext i8 %37 to i32, !dbg !1099
  %and58 = and i32 %conv57, -8, !dbg !1099
  %conv59 = trunc i32 %and58 to i8, !dbg !1099
  store i8 %conv59, i8* %flags56, align 8, !dbg !1099
  %38 = load i8, i8* %type, align 1, !dbg !1100
  %conv60 = zext i8 %38 to i32, !dbg !1100
  %or = or i32 %conv60, 1, !dbg !1101
  %conv61 = trunc i32 %or to i8, !dbg !1102
  %conv62 = zext i8 %conv61 to i32, !dbg !1102
  %39 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1103
  %flags63 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %39, i32 0, i32 2, !dbg !1104
  %40 = load i8, i8* %flags63, align 8, !dbg !1105
  %conv64 = zext i8 %40 to i32, !dbg !1105
  %or65 = or i32 %conv64, %conv62, !dbg !1105
  %conv66 = trunc i32 %or65 to i8, !dbg !1105
  store i8 %conv66, i8* %flags63, align 8, !dbg !1105
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %method_node, align 8, !dbg !1106
  %42 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %gpe_event_info, align 8, !dbg !1107
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %42, i32 0, i32 0, !dbg !1108
  %method_node67 = bitcast %union.acpi_gpe_dispatch_info* %dispatch to %struct.acpi_namespace_node**, !dbg !1109
  store %struct.acpi_namespace_node* %41, %struct.acpi_namespace_node** %method_node67, align 8, !dbg !1110
  store i32 0, i32* %retval, align 4, !dbg !1111
  br label %return, !dbg !1111

return:                                           ; preds = %if.end54, %if.end53, %if.then36, %if.then22, %if.then17, %sw.default, %if.then10, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !1112
  ret i32 %43, !dbg !1112
}

; Function Attrs: noredzone
declare dso_local void @acpi_info(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_ascii_to_hex_byte(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.acpi_gpe_event_info* @acpi_ev_low_get_gpe_info(i32, %struct.acpi_gpe_block_info*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hw_low_set_gpe(%struct.acpi_gpe_event_info*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!796, !797, !798, !799}
!llvm.ident = !{!800}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !792, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !791, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpeinit.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !16, !19, !20, !23, !102, !782, !790, !8}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !7, line: 805, baseType: !8)
!7 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !10)
!9 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !15)
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !9, line: 19, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !11, line: 24, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !7, line: 421, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !9, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !11, line: 27, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !25, line: 133, size: 384, elements: !26)
!25 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !769, !770, !771, !772, !778, !779, !780, !781}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !24, file: !25, line: 134, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !30, line: 367, size: 576, elements: !31)
!30 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !40, !53, !65, !79, !93, !103, !420, !437, !452, !465, !543, !555, !569, !579, !597, !619, !638, !657, !676, !689, !715, !732, !745, !759, !768}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !29, file: !30, line: 368, baseType: !33, size: 128)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !30, line: 73, size: 128, elements: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !33, file: !30, line: 74, baseType: !28, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !30, line: 74, baseType: !8, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !30, line: 74, baseType: !8, size: 8, offset: 72)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !33, file: !30, line: 74, baseType: !16, size: 16, offset: 80)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !30, line: 74, baseType: !8, size: 8, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !29, file: !30, line: 369, baseType: !41, size: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !30, line: 76, size: 192, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !52}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !30, line: 77, baseType: !28, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !30, line: 77, baseType: !8, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !30, line: 77, baseType: !8, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !30, line: 77, baseType: !16, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !30, line: 77, baseType: !8, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !41, file: !30, line: 77, baseType: !49, size: 24, offset: 104)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 24, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 3)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !41, file: !30, line: 78, baseType: !13, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !29, file: !30, line: 370, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !30, line: 93, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !30, line: 94, baseType: !28, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !30, line: 94, baseType: !8, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !30, line: 94, baseType: !8, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !30, line: 94, baseType: !16, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !30, line: 94, baseType: !8, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !30, line: 94, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !30, line: 94, baseType: !20, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !29, file: !30, line: 371, baseType: !66, size: 384)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !30, line: 97, size: 384, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !75, !76, !77, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !30, line: 98, baseType: !28, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !30, line: 98, baseType: !8, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !30, line: 98, baseType: !8, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !30, line: 98, baseType: !16, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !30, line: 98, baseType: !8, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !30, line: 98, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !30, line: 98, baseType: !20, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !66, file: !30, line: 99, baseType: !20, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !66, file: !30, line: 100, baseType: !74, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !30, line: 101, baseType: !23, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !29, file: !30, line: 372, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !30, line: 104, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !30, line: 105, baseType: !28, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !30, line: 105, baseType: !8, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !30, line: 105, baseType: !8, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !30, line: 105, baseType: !16, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !30, line: 105, baseType: !8, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !30, line: 105, baseType: !23, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !80, file: !30, line: 106, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !30, line: 107, baseType: !74, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !30, line: 108, baseType: !20, size: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !80, file: !30, line: 109, baseType: !20, size: 32, offset: 352)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !29, file: !30, line: 373, baseType: !94, size: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !30, line: 118, size: 192, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !30, line: 119, baseType: !28, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !30, line: 119, baseType: !8, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !30, line: 119, baseType: !8, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !30, line: 119, baseType: !16, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !30, line: 119, baseType: !8, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !94, file: !30, line: 119, baseType: !102, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !29, file: !30, line: 374, baseType: !104, size: 448)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !30, line: 143, size: 448, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !417, !418, !419}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !104, file: !30, line: 144, baseType: !28, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !30, line: 144, baseType: !8, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !30, line: 144, baseType: !8, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !104, file: !30, line: 144, baseType: !16, size: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !30, line: 144, baseType: !8, size: 8, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !104, file: !30, line: 144, baseType: !8, size: 8, offset: 104)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !104, file: !30, line: 145, baseType: !8, size: 8, offset: 112)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !104, file: !30, line: 146, baseType: !8, size: 8, offset: 120)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !104, file: !30, line: 147, baseType: !28, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !30, line: 148, baseType: !28, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !104, file: !30, line: 149, baseType: !74, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !104, file: !30, line: 153, baseType: !118, size: 64, offset: 320)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !30, line: 150, size: 64, elements: !119)
!119 = !{!120, !416}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !118, file: !30, line: 151, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !25, line: 248, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!19, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !127, line: 37, size: 9024, elements: !128)
!127 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !362, !363, !364, !365, !366, !370, !372, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !399, !400, !401, !402, !403, !404, !405, !406, !408, !414}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !127, line: 38, baseType: !125, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !127, line: 39, baseType: !8, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !126, file: !127, line: 40, baseType: !8, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !126, file: !127, line: 41, baseType: !16, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !126, file: !127, line: 42, baseType: !8, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !126, file: !127, line: 43, baseType: !8, size: 8, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !126, file: !127, line: 44, baseType: !8, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !126, file: !127, line: 45, baseType: !137, size: 16, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !126, file: !127, line: 46, baseType: !8, size: 8, offset: 144)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !126, file: !127, line: 47, baseType: !8, size: 8, offset: 152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !126, file: !127, line: 48, baseType: !8, size: 8, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !126, file: !127, line: 49, baseType: !8, size: 8, offset: 168)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !126, file: !127, line: 50, baseType: !8, size: 8, offset: 176)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !126, file: !127, line: 51, baseType: !8, size: 8, offset: 184)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !126, file: !127, line: 52, baseType: !8, size: 8, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !126, file: !127, line: 53, baseType: !8, size: 8, offset: 200)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !126, file: !127, line: 54, baseType: !74, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !126, file: !127, line: 55, baseType: !20, size: 32, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !126, file: !127, line: 56, baseType: !20, size: 32, offset: 352)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !126, file: !127, line: 57, baseType: !20, size: 32, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !126, file: !127, line: 58, baseType: !20, size: 32, offset: 416)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !126, file: !127, line: 60, baseType: !152, size: 640, offset: 448)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !25, line: 893, size: 640, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !243, !244, !360, !361}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !152, file: !25, line: 894, baseType: !74, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !152, file: !25, line: 895, baseType: !74, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !152, file: !25, line: 896, baseType: !74, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !152, file: !25, line: 897, baseType: !74, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !152, file: !25, line: 898, baseType: !74, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !152, file: !25, line: 899, baseType: !160, size: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !25, line: 875, size: 1600, elements: !162)
!162 = !{!163, !183, !199}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !161, file: !25, line: 876, baseType: !164, size: 448)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !25, line: 828, size: 448, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !182}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !25, line: 829, baseType: !160, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !25, line: 829, baseType: !8, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !25, line: 829, baseType: !8, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !164, file: !25, line: 829, baseType: !16, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !164, file: !25, line: 829, baseType: !74, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !25, line: 829, baseType: !160, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !25, line: 829, baseType: !23, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !164, file: !25, line: 829, baseType: !174, size: 64, offset: 320)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !25, line: 716, size: 64, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !174, file: !25, line: 717, baseType: !13, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !25, line: 718, baseType: !20, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !174, file: !25, line: 719, baseType: !62, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !174, file: !25, line: 720, baseType: !74, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !25, line: 721, baseType: !62, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !174, file: !25, line: 722, baseType: !160, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !164, file: !25, line: 829, baseType: !8, size: 8, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !161, file: !25, line: 877, baseType: !184, size: 640)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !25, line: 835, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !25, line: 836, baseType: !160, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !25, line: 836, baseType: !8, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !184, file: !25, line: 836, baseType: !8, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !184, file: !25, line: 836, baseType: !16, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !25, line: 836, baseType: !74, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !25, line: 836, baseType: !160, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !184, file: !25, line: 836, baseType: !23, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !184, file: !25, line: 836, baseType: !174, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !184, file: !25, line: 836, baseType: !8, size: 8, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !184, file: !25, line: 836, baseType: !62, size: 64, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !184, file: !25, line: 837, baseType: !74, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !184, file: !25, line: 838, baseType: !20, size: 32, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !25, line: 839, baseType: !20, size: 32, offset: 608)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !161, file: !25, line: 878, baseType: !200, size: 1600)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !25, line: 846, size: 1600, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !25, line: 847, baseType: !160, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !25, line: 847, baseType: !8, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !25, line: 847, baseType: !8, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !200, file: !25, line: 847, baseType: !16, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !25, line: 847, baseType: !74, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !25, line: 847, baseType: !160, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !25, line: 847, baseType: !23, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !200, file: !25, line: 847, baseType: !174, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !200, file: !25, line: 847, baseType: !8, size: 8, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !200, file: !25, line: 847, baseType: !160, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !200, file: !25, line: 848, baseType: !160, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !200, file: !25, line: 849, baseType: !62, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !200, file: !25, line: 850, baseType: !8, size: 8, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !200, file: !25, line: 851, baseType: !62, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !200, file: !25, line: 852, baseType: !62, size: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !200, file: !25, line: 853, baseType: !62, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !200, file: !25, line: 854, baseType: !219, size: 32, offset: 896)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 4)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !200, file: !25, line: 855, baseType: !20, size: 32, offset: 928)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !200, file: !25, line: 856, baseType: !20, size: 32, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !200, file: !25, line: 857, baseType: !20, size: 32, offset: 992)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !200, file: !25, line: 858, baseType: !20, size: 32, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !200, file: !25, line: 859, baseType: !20, size: 32, offset: 1056)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !200, file: !25, line: 860, baseType: !20, size: 32, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !200, file: !25, line: 861, baseType: !20, size: 32, offset: 1120)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !200, file: !25, line: 862, baseType: !20, size: 32, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !200, file: !25, line: 863, baseType: !20, size: 32, offset: 1184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !200, file: !25, line: 864, baseType: !20, size: 32, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !200, file: !25, line: 865, baseType: !20, size: 32, offset: 1248)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !200, file: !25, line: 866, baseType: !20, size: 32, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !200, file: !25, line: 867, baseType: !20, size: 32, offset: 1312)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !200, file: !25, line: 868, baseType: !16, size: 16, offset: 1344)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !200, file: !25, line: 869, baseType: !8, size: 8, offset: 1360)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !200, file: !25, line: 870, baseType: !8, size: 8, offset: 1368)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !200, file: !25, line: 871, baseType: !8, size: 8, offset: 1376)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !200, file: !25, line: 872, baseType: !240, size: 160, offset: 1384)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 20)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !152, file: !25, line: 900, baseType: !23, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !152, file: !25, line: 901, baseType: !245, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !25, line: 663, size: 640, elements: !247)
!247 = !{!248, !256, !269, !278, !287, !300, !314, !326, !338}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !246, file: !25, line: 664, baseType: !249, size: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !25, line: 567, size: 128, elements: !250)
!250 = !{!251, !252, !253, !254, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !25, line: 568, baseType: !102, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !249, file: !25, line: 568, baseType: !8, size: 8, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !249, file: !25, line: 568, baseType: !8, size: 8, offset: 72)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !25, line: 568, baseType: !16, size: 16, offset: 80)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !249, file: !25, line: 568, baseType: !16, size: 16, offset: 96)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !246, file: !25, line: 665, baseType: !257, size: 384)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !25, line: 593, size: 384, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !25, line: 594, baseType: !102, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !25, line: 594, baseType: !8, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !25, line: 594, baseType: !8, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !25, line: 594, baseType: !16, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !25, line: 594, baseType: !16, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !257, file: !25, line: 594, baseType: !16, size: 16, offset: 112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !257, file: !25, line: 595, baseType: !160, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !257, file: !25, line: 596, baseType: !74, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !257, file: !25, line: 597, baseType: !74, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !257, file: !25, line: 598, baseType: !13, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !246, file: !25, line: 666, baseType: !270, size: 192)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !25, line: 573, size: 192, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !25, line: 574, baseType: !102, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !25, line: 574, baseType: !8, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !25, line: 574, baseType: !8, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !25, line: 574, baseType: !16, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !25, line: 574, baseType: !16, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !270, file: !25, line: 574, baseType: !28, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !246, file: !25, line: 667, baseType: !279, size: 192)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !25, line: 604, size: 192, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !25, line: 605, baseType: !102, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !25, line: 605, baseType: !8, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !25, line: 605, baseType: !8, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !25, line: 605, baseType: !16, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !25, line: 605, baseType: !16, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !25, line: 605, baseType: !23, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !246, file: !25, line: 668, baseType: !288, size: 448)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !25, line: 608, size: 448, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !25, line: 609, baseType: !102, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !25, line: 609, baseType: !8, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !25, line: 609, baseType: !8, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !25, line: 609, baseType: !16, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !25, line: 609, baseType: !16, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !288, file: !25, line: 609, baseType: !20, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !288, file: !25, line: 610, baseType: !160, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !288, file: !25, line: 611, baseType: !74, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !288, file: !25, line: 612, baseType: !74, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !288, file: !25, line: 613, baseType: !20, size: 32, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !246, file: !25, line: 669, baseType: !301, size: 512)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !25, line: 580, size: 512, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !25, line: 581, baseType: !102, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !25, line: 581, baseType: !8, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !25, line: 581, baseType: !8, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !25, line: 581, baseType: !16, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !25, line: 581, baseType: !16, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !301, file: !25, line: 581, baseType: !20, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !301, file: !25, line: 582, baseType: !28, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !301, file: !25, line: 583, baseType: !28, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !301, file: !25, line: 584, baseType: !125, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !301, file: !25, line: 585, baseType: !102, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !301, file: !25, line: 586, baseType: !20, size: 32, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !246, file: !25, line: 670, baseType: !315, size: 320)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !25, line: 620, size: 320, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !25, line: 621, baseType: !102, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !25, line: 621, baseType: !8, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !25, line: 621, baseType: !8, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !25, line: 621, baseType: !16, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !25, line: 621, baseType: !16, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !315, file: !25, line: 621, baseType: !8, size: 8, offset: 112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !315, file: !25, line: 622, baseType: !125, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !315, file: !25, line: 623, baseType: !28, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !315, file: !25, line: 624, baseType: !13, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !246, file: !25, line: 671, baseType: !327, size: 640)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !25, line: 631, size: 640, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !25, line: 632, baseType: !102, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !25, line: 632, baseType: !8, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !25, line: 632, baseType: !8, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !25, line: 632, baseType: !16, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !25, line: 632, baseType: !16, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !327, file: !25, line: 633, baseType: !335, size: 512, offset: 128)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 8)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !246, file: !25, line: 672, baseType: !339, size: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !25, line: 654, size: 320, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !25, line: 655, baseType: !102, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !25, line: 655, baseType: !8, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !25, line: 655, baseType: !8, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !25, line: 655, baseType: !16, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !25, line: 655, baseType: !16, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !339, file: !25, line: 655, baseType: !8, size: 8, offset: 112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !339, file: !25, line: 656, baseType: !23, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !339, file: !25, line: 657, baseType: !28, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !339, file: !25, line: 658, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !25, line: 645, size: 128, elements: !352)
!352 = !{!353, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !351, file: !25, line: 646, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358, !20, !102}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !102)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !351, file: !25, line: 647, baseType: !102, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !152, file: !25, line: 902, baseType: !160, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !152, file: !25, line: 903, baseType: !20, size: 32, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !126, file: !127, line: 61, baseType: !20, size: 32, offset: 1088)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !126, file: !127, line: 62, baseType: !20, size: 32, offset: 1120)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !126, file: !127, line: 63, baseType: !16, size: 16, offset: 1152)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !126, file: !127, line: 64, baseType: !8, size: 8, offset: 1168)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !126, file: !127, line: 66, baseType: !367, size: 2688, offset: 1216)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2688, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 7)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !126, file: !127, line: 67, baseType: !371, size: 3072, offset: 3904)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 3072, elements: !336)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !126, file: !127, line: 68, baseType: !373, size: 576, offset: 6976)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 576, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 9)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !126, file: !127, line: 69, baseType: !89, size: 64, offset: 7552)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !126, file: !127, line: 71, baseType: !74, size: 64, offset: 7616)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !126, file: !127, line: 72, baseType: !89, size: 64, offset: 7680)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !126, file: !127, line: 73, baseType: !245, size: 64, offset: 7744)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !126, file: !127, line: 74, baseType: !23, size: 64, offset: 7808)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !126, file: !127, line: 75, baseType: !28, size: 64, offset: 7872)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !126, file: !127, line: 76, baseType: !23, size: 64, offset: 7936)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !126, file: !127, line: 77, baseType: !160, size: 64, offset: 8000)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !126, file: !127, line: 78, baseType: !28, size: 64, offset: 8064)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !126, file: !127, line: 79, baseType: !23, size: 64, offset: 8128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !126, file: !127, line: 80, baseType: !62, size: 64, offset: 8192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !126, file: !127, line: 81, baseType: !160, size: 64, offset: 8256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !126, file: !127, line: 82, baseType: !389, size: 64, offset: 8320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !25, line: 702, size: 128, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !391, file: !25, line: 706, baseType: !20, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !391, file: !25, line: 707, baseType: !20, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !25, line: 708, baseType: !16, size: 16, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !391, file: !25, line: 709, baseType: !8, size: 8, offset: 80)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !391, file: !25, line: 710, baseType: !8, size: 8, offset: 88)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !25, line: 711, baseType: !8, size: 8, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !126, file: !127, line: 83, baseType: !160, size: 64, offset: 8384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !126, file: !127, line: 84, baseType: !28, size: 64, offset: 8448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !126, file: !127, line: 85, baseType: !245, size: 64, offset: 8512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !126, file: !127, line: 86, baseType: !28, size: 64, offset: 8576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !126, file: !127, line: 87, baseType: !245, size: 64, offset: 8640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !126, file: !127, line: 88, baseType: !160, size: 64, offset: 8704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !126, file: !127, line: 89, baseType: !160, size: 64, offset: 8768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !126, file: !127, line: 90, baseType: !407, size: 64, offset: 8832)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !126, file: !127, line: 91, baseType: !409, size: 64, offset: 8896)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !25, line: 637, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!19, !125, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !126, file: !127, line: 92, baseType: !415, size: 64, offset: 8960)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !25, line: 641, baseType: !122)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !118, file: !30, line: 152, baseType: !28, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !104, file: !30, line: 155, baseType: !20, size: 32, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !104, file: !30, line: 156, baseType: !137, size: 16, offset: 416)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !104, file: !30, line: 157, baseType: !8, size: 8, offset: 432)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !29, file: !30, line: 375, baseType: !421, size: 576)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !30, line: 122, size: 576, elements: !422)
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !421, file: !30, line: 123, baseType: !28, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !421, file: !30, line: 123, baseType: !8, size: 8, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !30, line: 123, baseType: !8, size: 8, offset: 72)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !421, file: !30, line: 123, baseType: !16, size: 16, offset: 80)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !421, file: !30, line: 123, baseType: !8, size: 8, offset: 96)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !421, file: !30, line: 123, baseType: !8, size: 8, offset: 104)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !421, file: !30, line: 124, baseType: !16, size: 16, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !421, file: !30, line: 125, baseType: !102, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !421, file: !30, line: 126, baseType: !13, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !421, file: !30, line: 127, baseType: !407, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !421, file: !30, line: 128, baseType: !28, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !30, line: 129, baseType: !28, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !421, file: !30, line: 130, baseType: !23, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !421, file: !30, line: 131, baseType: !8, size: 8, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !29, file: !30, line: 376, baseType: !438, size: 448)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !30, line: 134, size: 448, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !451}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !438, file: !30, line: 135, baseType: !28, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !30, line: 135, baseType: !8, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !30, line: 135, baseType: !8, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !438, file: !30, line: 135, baseType: !16, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !30, line: 135, baseType: !8, size: 8, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !438, file: !30, line: 135, baseType: !8, size: 8, offset: 104)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !438, file: !30, line: 136, baseType: !23, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !438, file: !30, line: 137, baseType: !28, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !30, line: 138, baseType: !28, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !438, file: !30, line: 139, baseType: !450, size: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !13)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !438, file: !30, line: 140, baseType: !20, size: 32, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !29, file: !30, line: 377, baseType: !453, size: 320)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !30, line: 184, size: 320, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !464}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !30, line: 185, baseType: !28, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !30, line: 185, baseType: !8, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !30, line: 185, baseType: !8, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !30, line: 185, baseType: !16, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !30, line: 185, baseType: !8, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !453, file: !30, line: 185, baseType: !461, size: 128, offset: 128)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 2)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !453, file: !30, line: 185, baseType: !28, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !29, file: !30, line: 378, baseType: !466, size: 384)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !30, line: 187, size: 384, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !30, line: 188, baseType: !28, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !30, line: 188, baseType: !8, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !30, line: 188, baseType: !8, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !30, line: 188, baseType: !16, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !30, line: 188, baseType: !8, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !466, file: !30, line: 189, baseType: !461, size: 128, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !30, line: 189, baseType: !28, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !466, file: !30, line: 189, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !25, line: 480, size: 576, elements: !478)
!478 = !{!479, !480, !481, !482, !490, !505, !537, !538, !539, !540, !541, !542}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !25, line: 481, baseType: !23, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !477, file: !25, line: 482, baseType: !476, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !25, line: 483, baseType: !476, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !477, file: !25, line: 484, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !25, line: 497, size: 256, elements: !485)
!485 = !{!486, !487, !488, !489}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !484, file: !25, line: 498, baseType: !483, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !25, line: 499, baseType: !483, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !484, file: !25, line: 500, baseType: !476, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !484, file: !25, line: 501, baseType: !20, size: 32, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !477, file: !25, line: 485, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !25, line: 466, size: 320, elements: !493)
!493 = !{!494, !499, !500, !501, !502, !503, !504}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !492, file: !25, line: 467, baseType: !495, size: 128)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !25, line: 459, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !495, file: !25, line: 460, baseType: !8, size: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !495, file: !25, line: 461, baseType: !13, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !492, file: !25, line: 468, baseType: !495, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !492, file: !25, line: 469, baseType: !16, size: 16, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !492, file: !25, line: 470, baseType: !8, size: 8, offset: 272)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !492, file: !25, line: 471, baseType: !8, size: 8, offset: 280)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !492, file: !25, line: 472, baseType: !8, size: 8, offset: 288)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !492, file: !25, line: 473, baseType: !8, size: 8, offset: 296)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !477, file: !25, line: 486, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !25, line: 448, size: 192, elements: !508)
!508 = !{!509, !532, !533, !534, !535, !536}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !507, file: !25, line: 449, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !25, line: 438, size: 64, elements: !511)
!511 = !{!512, !513, !526}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !510, file: !25, line: 439, baseType: !23, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !25, line: 440, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !25, line: 419, size: 256, elements: !516)
!516 = !{!517, !522, !523, !524, !525}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !25, line: 420, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!20, !358, !20, !102}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !515, file: !25, line: 421, baseType: !102, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !515, file: !25, line: 422, baseType: !23, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !515, file: !25, line: 423, baseType: !8, size: 8, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !515, file: !25, line: 424, baseType: !8, size: 8, offset: 200)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !510, file: !25, line: 441, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !25, line: 429, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !528, file: !25, line: 430, baseType: !23, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !25, line: 431, baseType: !527, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !507, file: !25, line: 450, baseType: !491, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !25, line: 451, baseType: !8, size: 8, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !507, file: !25, line: 452, baseType: !8, size: 8, offset: 136)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !507, file: !25, line: 453, baseType: !8, size: 8, offset: 144)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !507, file: !25, line: 454, baseType: !8, size: 8, offset: 152)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !477, file: !25, line: 487, baseType: !13, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !477, file: !25, line: 488, baseType: !20, size: 32, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !477, file: !25, line: 489, baseType: !16, size: 16, offset: 480)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !477, file: !25, line: 490, baseType: !16, size: 16, offset: 496)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !477, file: !25, line: 491, baseType: !8, size: 8, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !477, file: !25, line: 492, baseType: !8, size: 8, offset: 520)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !29, file: !30, line: 379, baseType: !544, size: 384)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !30, line: 192, size: 384, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !544, file: !30, line: 193, baseType: !28, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !544, file: !30, line: 193, baseType: !8, size: 8, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !30, line: 193, baseType: !8, size: 8, offset: 72)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !544, file: !30, line: 193, baseType: !16, size: 16, offset: 80)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !30, line: 193, baseType: !8, size: 8, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !544, file: !30, line: 193, baseType: !461, size: 128, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !544, file: !30, line: 193, baseType: !28, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !544, file: !30, line: 193, baseType: !20, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !544, file: !30, line: 194, baseType: !20, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !29, file: !30, line: 380, baseType: !556, size: 384)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !30, line: 197, size: 384, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !556, file: !30, line: 198, baseType: !28, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !30, line: 198, baseType: !8, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !556, file: !30, line: 198, baseType: !8, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !556, file: !30, line: 198, baseType: !16, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !30, line: 198, baseType: !8, size: 8, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !556, file: !30, line: 200, baseType: !8, size: 8, offset: 104)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !556, file: !30, line: 201, baseType: !8, size: 8, offset: 112)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !556, file: !30, line: 202, baseType: !461, size: 128, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !556, file: !30, line: 202, baseType: !28, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !556, file: !30, line: 202, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !13)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !29, file: !30, line: 381, baseType: !570, size: 320)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !30, line: 205, size: 320, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !30, line: 206, baseType: !28, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !30, line: 206, baseType: !8, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !30, line: 206, baseType: !8, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !30, line: 206, baseType: !16, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !30, line: 206, baseType: !8, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !570, file: !30, line: 206, baseType: !461, size: 128, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !570, file: !30, line: 206, baseType: !28, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !29, file: !30, line: 382, baseType: !580, size: 384)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !30, line: 233, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !30, line: 234, baseType: !28, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !30, line: 234, baseType: !16, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !30, line: 234, baseType: !23, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !580, file: !30, line: 234, baseType: !20, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !580, file: !30, line: 234, baseType: !20, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !580, file: !30, line: 234, baseType: !20, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !580, file: !30, line: 234, baseType: !8, size: 8, offset: 296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !580, file: !30, line: 234, baseType: !28, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !29, file: !30, line: 383, baseType: !598, size: 576)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !30, line: 237, size: 576, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !30, line: 238, baseType: !28, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !30, line: 238, baseType: !16, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 104)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 112)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 120)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !598, file: !30, line: 238, baseType: !23, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !598, file: !30, line: 238, baseType: !20, size: 32, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !598, file: !30, line: 238, baseType: !20, size: 32, offset: 224)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !598, file: !30, line: 238, baseType: !20, size: 32, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 288)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !598, file: !30, line: 238, baseType: !8, size: 8, offset: 296)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !598, file: !30, line: 238, baseType: !16, size: 16, offset: 304)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !598, file: !30, line: 239, baseType: !28, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !598, file: !30, line: 240, baseType: !74, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !598, file: !30, line: 241, baseType: !16, size: 16, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !598, file: !30, line: 242, baseType: !74, size: 64, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !29, file: !30, line: 384, baseType: !620, size: 384)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !30, line: 262, size: 384, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !30, line: 263, baseType: !28, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !30, line: 263, baseType: !16, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !30, line: 263, baseType: !23, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !30, line: 263, baseType: !20, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !30, line: 263, baseType: !20, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !30, line: 263, baseType: !20, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !620, file: !30, line: 263, baseType: !8, size: 8, offset: 304)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !620, file: !30, line: 264, baseType: !28, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !29, file: !30, line: 385, baseType: !639, size: 448)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !30, line: 245, size: 448, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !30, line: 246, baseType: !28, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !30, line: 246, baseType: !16, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !30, line: 246, baseType: !23, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !30, line: 246, baseType: !20, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !30, line: 246, baseType: !20, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !30, line: 246, baseType: !20, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !30, line: 246, baseType: !8, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !639, file: !30, line: 246, baseType: !28, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !639, file: !30, line: 247, baseType: !28, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !29, file: !30, line: 386, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !30, line: 250, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !30, line: 251, baseType: !28, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !30, line: 251, baseType: !16, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !30, line: 251, baseType: !23, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !30, line: 251, baseType: !20, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !30, line: 251, baseType: !20, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !30, line: 251, baseType: !20, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !30, line: 251, baseType: !8, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !658, file: !30, line: 256, baseType: !28, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !658, file: !30, line: 257, baseType: !28, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !29, file: !30, line: 387, baseType: !677, size: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !30, line: 273, size: 512, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !30, line: 274, baseType: !28, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !30, line: 274, baseType: !8, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !30, line: 274, baseType: !8, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !30, line: 274, baseType: !16, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !30, line: 274, baseType: !8, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !30, line: 274, baseType: !23, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !677, file: !30, line: 275, baseType: !20, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !677, file: !30, line: 276, baseType: !354, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !677, file: !30, line: 277, baseType: !102, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !30, line: 278, baseType: !461, size: 128, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !29, file: !30, line: 388, baseType: !690, size: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !30, line: 281, size: 512, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !705, !706, !707, !713, !714}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !30, line: 282, baseType: !28, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !30, line: 282, baseType: !8, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !30, line: 282, baseType: !8, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !30, line: 282, baseType: !16, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !30, line: 282, baseType: !8, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !690, file: !30, line: 282, baseType: !8, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !690, file: !30, line: 283, baseType: !8, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !30, line: 284, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!19, !20, !450, !20, !704, !102, !102}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !30, line: 285, baseType: !23, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !690, file: !30, line: 286, baseType: !102, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !690, file: !30, line: 287, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!19, !358, !20, !102, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !690, file: !30, line: 288, baseType: !28, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !30, line: 289, baseType: !28, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !29, file: !30, line: 389, baseType: !716, size: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !30, line: 307, size: 512, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !30, line: 308, baseType: !28, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !30, line: 308, baseType: !8, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !30, line: 308, baseType: !8, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !30, line: 308, baseType: !16, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !30, line: 308, baseType: !8, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !716, file: !30, line: 308, baseType: !8, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !716, file: !30, line: 309, baseType: !8, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !716, file: !30, line: 310, baseType: !8, size: 8, offset: 120)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !716, file: !30, line: 311, baseType: !102, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !30, line: 312, baseType: !23, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !716, file: !30, line: 313, baseType: !89, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !716, file: !30, line: 314, baseType: !74, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !716, file: !30, line: 315, baseType: !74, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !716, file: !30, line: 316, baseType: !20, size: 32, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !29, file: !30, line: 390, baseType: !733, size: 448)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !30, line: 340, size: 448, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !733, file: !30, line: 341, baseType: !28, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !733, file: !30, line: 341, baseType: !8, size: 8, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !733, file: !30, line: 341, baseType: !8, size: 8, offset: 72)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !733, file: !30, line: 341, baseType: !16, size: 16, offset: 80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !30, line: 341, baseType: !8, size: 8, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !733, file: !30, line: 341, baseType: !23, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !733, file: !30, line: 342, baseType: !23, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !733, file: !30, line: 343, baseType: !102, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !733, file: !30, line: 344, baseType: !74, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !733, file: !30, line: 345, baseType: !20, size: 32, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !30, line: 391, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !30, line: 350, size: 256, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !758}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !30, line: 351, baseType: !28, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !30, line: 351, baseType: !8, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !30, line: 351, baseType: !8, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !30, line: 351, baseType: !16, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !30, line: 351, baseType: !8, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !746, file: !30, line: 351, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !358, !102}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !746, file: !30, line: 352, baseType: !102, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !29, file: !30, line: 392, baseType: !760, size: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !30, line: 357, size: 192, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !30, line: 358, baseType: !28, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !30, line: 358, baseType: !8, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !30, line: 358, baseType: !8, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !30, line: 358, baseType: !16, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !30, line: 358, baseType: !8, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !30, line: 358, baseType: !28, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !29, file: !30, line: 399, baseType: !24, size: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !24, file: !25, line: 135, baseType: !8, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !25, line: 136, baseType: !8, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !25, line: 137, baseType: !16, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !25, line: 138, baseType: !773, size: 32, offset: 96)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !774, line: 327, size: 32, elements: !775)
!774 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !773, file: !774, line: 328, baseType: !20, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !773, file: !774, line: 329, baseType: !219, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !24, file: !25, line: 139, baseType: !23, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !24, file: !25, line: 140, baseType: !23, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !24, file: !25, line: 141, baseType: !23, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !24, file: !25, line: 142, baseType: !137, size: 16, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_walk_info", file: !25, line: 504, size: 192, elements: !784)
!784 = !{!785, !786, !787, !788, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !783, file: !25, line: 505, baseType: !23, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !783, file: !25, line: 506, baseType: !476, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !783, file: !25, line: 507, baseType: !16, size: 16, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !783, file: !25, line: 508, baseType: !137, size: 16, offset: 144)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "execute_by_owner_id", scope: !783, file: !25, line: 509, baseType: !8, size: 8, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!791 = !{!0}
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 80, elements: !794)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!794 = !{!795}
!795 = !DISubrange(count: 10)
!796 = !{i32 7, !"Dwarf Version", i32 4}
!797 = !{i32 2, !"Debug Info Version", i32 3}
!798 = !{i32 1, !"wchar_size", i32 2}
!799 = !{i32 1, !"Code Model", i32 2}
!800 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!801 = distinct !DISubprogram(name: "acpi_ev_gpe_initialize", scope: !3, file: !3, line: 56, type: !802, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!802 = !DISubroutineType(types: !803)
!803 = !{!19}
!804 = !DILocalVariable(name: "register_count0", scope: !801, file: !3, line: 58, type: !20)
!805 = !DILocation(line: 58, column: 6, scope: !801)
!806 = !DILocalVariable(name: "register_count1", scope: !801, file: !3, line: 59, type: !20)
!807 = !DILocation(line: 59, column: 6, scope: !801)
!808 = !DILocalVariable(name: "gpe_number_max", scope: !801, file: !3, line: 60, type: !20)
!809 = !DILocation(line: 60, column: 6, scope: !801)
!810 = !DILocalVariable(name: "status", scope: !801, file: !3, line: 61, type: !19)
!811 = !DILocation(line: 61, column: 14, scope: !801)
!812 = !DILocalVariable(name: "address", scope: !801, file: !3, line: 62, type: !13)
!813 = !DILocation(line: 62, column: 6, scope: !801)
!814 = !DILocation(line: 69, column: 11, scope: !801)
!815 = !DILocation(line: 69, column: 9, scope: !801)
!816 = !DILocation(line: 70, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !801, file: !3, line: 70, column: 6)
!818 = !DILocation(line: 70, column: 6, scope: !801)
!819 = !DILocation(line: 71, column: 3, scope: !820)
!820 = distinct !DILexicalBlock(scope: !817, file: !3, line: 70, column: 28)
!821 = !DILocation(line: 99, column: 12, scope: !801)
!822 = !DILocation(line: 99, column: 10, scope: !801)
!823 = !DILocation(line: 101, column: 20, scope: !824)
!824 = distinct !DILexicalBlock(scope: !801, file: !3, line: 101, column: 6)
!825 = !DILocation(line: 101, column: 6, scope: !824)
!826 = !DILocation(line: 101, column: 38, scope: !824)
!827 = !DILocation(line: 101, column: 41, scope: !824)
!828 = !DILocation(line: 101, column: 6, scope: !801)
!829 = !DILocation(line: 105, column: 41, scope: !830)
!830 = distinct !DILexicalBlock(scope: !824, file: !3, line: 101, column: 50)
!831 = !DILocation(line: 105, column: 27, scope: !830)
!832 = !DILocation(line: 105, column: 59, scope: !830)
!833 = !DILocation(line: 105, column: 21, scope: !830)
!834 = !DILocation(line: 105, column: 19, scope: !830)
!835 = !DILocation(line: 107, column: 8, scope: !830)
!836 = !DILocation(line: 107, column: 24, scope: !830)
!837 = !DILocation(line: 107, column: 51, scope: !830)
!838 = !DILocation(line: 106, column: 18, scope: !830)
!839 = !DILocation(line: 111, column: 37, scope: !830)
!840 = !DILocation(line: 112, column: 9, scope: !830)
!841 = !DILocation(line: 114, column: 9, scope: !830)
!842 = !DILocation(line: 114, column: 19, scope: !830)
!843 = !DILocation(line: 115, column: 23, scope: !830)
!844 = !DILocation(line: 115, column: 9, scope: !830)
!845 = !DILocation(line: 111, column: 12, scope: !830)
!846 = !DILocation(line: 111, column: 10, scope: !830)
!847 = !DILocation(line: 118, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !830, file: !3, line: 118, column: 7)
!849 = !DILocation(line: 118, column: 7, scope: !830)
!850 = !DILocation(line: 119, column: 4, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 118, column: 29)
!852 = !DILocation(line: 121, column: 3, scope: !851)
!853 = !DILocation(line: 122, column: 2, scope: !830)
!854 = !DILocation(line: 124, column: 12, scope: !801)
!855 = !DILocation(line: 124, column: 10, scope: !801)
!856 = !DILocation(line: 126, column: 20, scope: !857)
!857 = distinct !DILexicalBlock(scope: !801, file: !3, line: 126, column: 6)
!858 = !DILocation(line: 126, column: 6, scope: !857)
!859 = !DILocation(line: 126, column: 38, scope: !857)
!860 = !DILocation(line: 126, column: 41, scope: !857)
!861 = !DILocation(line: 126, column: 6, scope: !801)
!862 = !DILocation(line: 130, column: 41, scope: !863)
!863 = distinct !DILexicalBlock(scope: !857, file: !3, line: 126, column: 50)
!864 = !DILocation(line: 130, column: 27, scope: !863)
!865 = !DILocation(line: 130, column: 59, scope: !863)
!866 = !DILocation(line: 130, column: 21, scope: !863)
!867 = !DILocation(line: 130, column: 19, scope: !863)
!868 = !DILocation(line: 134, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 134, column: 7)
!870 = !DILocation(line: 134, column: 7, scope: !869)
!871 = !DILocation(line: 134, column: 25, scope: !869)
!872 = !DILocation(line: 135, column: 8, scope: !869)
!873 = !DILocation(line: 135, column: 40, scope: !869)
!874 = !DILocation(line: 135, column: 26, scope: !869)
!875 = !DILocation(line: 135, column: 23, scope: !869)
!876 = !DILocation(line: 134, column: 7, scope: !863)
!877 = !DILocation(line: 136, column: 4, scope: !878)
!878 = distinct !DILexicalBlock(scope: !869, file: !3, line: 135, column: 52)
!879 = !DILocation(line: 146, column: 20, scope: !878)
!880 = !DILocation(line: 147, column: 3, scope: !878)
!881 = !DILocation(line: 151, column: 33, scope: !882)
!882 = distinct !DILexicalBlock(scope: !869, file: !3, line: 147, column: 10)
!883 = !DILocation(line: 152, column: 12, scope: !882)
!884 = !DILocation(line: 154, column: 12, scope: !882)
!885 = !DILocation(line: 154, column: 22, scope: !882)
!886 = !DILocation(line: 155, column: 26, scope: !882)
!887 = !DILocation(line: 155, column: 12, scope: !882)
!888 = !DILocation(line: 157, column: 12, scope: !882)
!889 = !DILocation(line: 156, column: 12, scope: !882)
!890 = !DILocation(line: 151, column: 8, scope: !882)
!891 = !DILocation(line: 150, column: 11, scope: !882)
!892 = !DILocation(line: 161, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !882, file: !3, line: 161, column: 8)
!894 = !DILocation(line: 161, column: 8, scope: !882)
!895 = !DILocation(line: 162, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 161, column: 30)
!897 = !DILocation(line: 164, column: 4, scope: !896)
!898 = !DILocation(line: 171, column: 2, scope: !863)
!899 = !DILocation(line: 175, column: 7, scope: !900)
!900 = distinct !DILexicalBlock(scope: !801, file: !3, line: 175, column: 6)
!901 = !DILocation(line: 175, column: 25, scope: !900)
!902 = !DILocation(line: 175, column: 23, scope: !900)
!903 = !DILocation(line: 175, column: 42, scope: !900)
!904 = !DILocation(line: 175, column: 6, scope: !801)
!905 = !DILocation(line: 181, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !3, line: 175, column: 48)
!907 = !DILocation(line: 175, column: 45, scope: !900)
!908 = !DILabel(scope: !801, name: "cleanup", file: !3, line: 184)
!909 = !DILocation(line: 184, column: 1, scope: !801)
!910 = !DILocation(line: 185, column: 8, scope: !801)
!911 = !DILocation(line: 186, column: 2, scope: !801)
!912 = !DILocation(line: 187, column: 1, scope: !801)
!913 = distinct !DISubprogram(name: "acpi_ev_update_gpes", scope: !3, file: !3, line: 203, type: !914, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !137}
!916 = !DILocalVariable(name: "table_owner_id", arg: 1, scope: !913, file: !3, line: 203, type: !137)
!917 = !DILocation(line: 203, column: 40, scope: !913)
!918 = !DILocalVariable(name: "gpe_xrupt_info", scope: !913, file: !3, line: 205, type: !483)
!919 = !DILocation(line: 205, column: 30, scope: !913)
!920 = !DILocalVariable(name: "gpe_block", scope: !913, file: !3, line: 206, type: !476)
!921 = !DILocation(line: 206, column: 30, scope: !913)
!922 = !DILocalVariable(name: "walk_info", scope: !913, file: !3, line: 207, type: !783)
!923 = !DILocation(line: 207, column: 28, scope: !913)
!924 = !DILocalVariable(name: "status", scope: !913, file: !3, line: 208, type: !19)
!925 = !DILocation(line: 208, column: 14, scope: !913)
!926 = !DILocation(line: 219, column: 11, scope: !913)
!927 = !DILocation(line: 219, column: 9, scope: !913)
!928 = !DILocation(line: 220, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !913, file: !3, line: 220, column: 6)
!930 = !DILocation(line: 220, column: 6, scope: !913)
!931 = !DILocation(line: 221, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 220, column: 28)
!933 = !DILocation(line: 224, column: 12, scope: !913)
!934 = !DILocation(line: 224, column: 18, scope: !913)
!935 = !DILocation(line: 225, column: 23, scope: !913)
!936 = !DILocation(line: 225, column: 12, scope: !913)
!937 = !DILocation(line: 225, column: 21, scope: !913)
!938 = !DILocation(line: 226, column: 12, scope: !913)
!939 = !DILocation(line: 226, column: 32, scope: !913)
!940 = !DILocation(line: 230, column: 19, scope: !913)
!941 = !DILocation(line: 230, column: 17, scope: !913)
!942 = !DILocation(line: 231, column: 2, scope: !913)
!943 = !DILocation(line: 231, column: 9, scope: !913)
!944 = !DILocation(line: 235, column: 15, scope: !945)
!945 = distinct !DILexicalBlock(scope: !913, file: !3, line: 231, column: 25)
!946 = !DILocation(line: 235, column: 31, scope: !945)
!947 = !DILocation(line: 235, column: 13, scope: !945)
!948 = !DILocation(line: 236, column: 3, scope: !945)
!949 = !DILocation(line: 236, column: 10, scope: !945)
!950 = !DILocation(line: 237, column: 26, scope: !951)
!951 = distinct !DILexicalBlock(scope: !945, file: !3, line: 236, column: 21)
!952 = !DILocation(line: 237, column: 14, scope: !951)
!953 = !DILocation(line: 237, column: 24, scope: !951)
!954 = !DILocation(line: 238, column: 27, scope: !951)
!955 = !DILocation(line: 238, column: 38, scope: !951)
!956 = !DILocation(line: 238, column: 14, scope: !951)
!957 = !DILocation(line: 238, column: 25, scope: !951)
!958 = !DILocation(line: 241, column: 18, scope: !951)
!959 = !DILocation(line: 241, column: 8, scope: !951)
!960 = !DILocation(line: 245, column: 14, scope: !951)
!961 = !DILocation(line: 240, column: 13, scope: !951)
!962 = !DILocation(line: 240, column: 11, scope: !951)
!963 = !DILocation(line: 246, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !951, file: !3, line: 246, column: 8)
!965 = !DILocation(line: 246, column: 8, scope: !951)
!966 = !DILocation(line: 247, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 246, column: 30)
!968 = !DILocation(line: 249, column: 4, scope: !967)
!969 = !DILocation(line: 251, column: 16, scope: !951)
!970 = !DILocation(line: 251, column: 27, scope: !951)
!971 = !DILocation(line: 251, column: 14, scope: !951)
!972 = distinct !{!972, !948, !973}
!973 = !DILocation(line: 252, column: 3, scope: !945)
!974 = !DILocation(line: 254, column: 20, scope: !945)
!975 = !DILocation(line: 254, column: 36, scope: !945)
!976 = !DILocation(line: 254, column: 18, scope: !945)
!977 = distinct !{!977, !942, !978}
!978 = !DILocation(line: 255, column: 2, scope: !913)
!979 = !DILocation(line: 257, column: 16, scope: !980)
!980 = distinct !DILexicalBlock(scope: !913, file: !3, line: 257, column: 6)
!981 = !DILocation(line: 257, column: 6, scope: !980)
!982 = !DILocation(line: 257, column: 6, scope: !913)
!983 = !DILocation(line: 258, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 257, column: 23)
!985 = !DILocation(line: 259, column: 2, scope: !984)
!986 = !DILocation(line: 261, column: 8, scope: !913)
!987 = !DILocation(line: 262, column: 2, scope: !913)
!988 = !DILocation(line: 263, column: 1, scope: !913)
!989 = distinct !DISubprogram(name: "acpi_ev_match_gpe_method", scope: !3, file: !3, line: 292, type: !710, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!990 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !989, file: !3, line: 292, type: !358)
!991 = !DILocation(line: 292, column: 38, scope: !989)
!992 = !DILocalVariable(name: "level", arg: 2, scope: !989, file: !3, line: 293, type: !20)
!993 = !DILocation(line: 293, column: 9, scope: !989)
!994 = !DILocalVariable(name: "context", arg: 3, scope: !989, file: !3, line: 293, type: !102)
!995 = !DILocation(line: 293, column: 22, scope: !989)
!996 = !DILocalVariable(name: "return_value", arg: 4, scope: !989, file: !3, line: 293, type: !712)
!997 = !DILocation(line: 293, column: 38, scope: !989)
!998 = !DILocalVariable(name: "method_node", scope: !989, file: !3, line: 295, type: !23)
!999 = !DILocation(line: 295, column: 30, scope: !989)
!1000 = !DILocation(line: 296, column: 6, scope: !989)
!1001 = !DILocalVariable(name: "walk_info", scope: !989, file: !3, line: 297, type: !782)
!1002 = !DILocation(line: 297, column: 29, scope: !989)
!1003 = !DILocation(line: 298, column: 6, scope: !989)
!1004 = !DILocalVariable(name: "gpe_event_info", scope: !989, file: !3, line: 299, type: !506)
!1005 = !DILocation(line: 299, column: 30, scope: !989)
!1006 = !DILocalVariable(name: "status", scope: !989, file: !3, line: 300, type: !19)
!1007 = !DILocation(line: 300, column: 14, scope: !989)
!1008 = !DILocalVariable(name: "gpe_number", scope: !989, file: !3, line: 301, type: !20)
!1009 = !DILocation(line: 301, column: 6, scope: !989)
!1010 = !DILocalVariable(name: "temp_gpe_number", scope: !989, file: !3, line: 302, type: !8)
!1011 = !DILocation(line: 302, column: 5, scope: !989)
!1012 = !DILocalVariable(name: "name", scope: !989, file: !3, line: 303, type: !1013)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 40, elements: !1014)
!1014 = !{!1015}
!1015 = !DISubrange(count: 5)
!1016 = !DILocation(line: 303, column: 7, scope: !989)
!1017 = !DILocalVariable(name: "type", scope: !989, file: !3, line: 304, type: !8)
!1018 = !DILocation(line: 304, column: 5, scope: !989)
!1019 = !DILocation(line: 310, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !989, file: !3, line: 310, column: 6)
!1021 = !DILocation(line: 310, column: 18, scope: !1020)
!1022 = !DILocation(line: 310, column: 6, scope: !1020)
!1023 = !DILocation(line: 310, column: 39, scope: !1020)
!1024 = !DILocation(line: 311, column: 7, scope: !1020)
!1025 = !DILocation(line: 311, column: 20, scope: !1020)
!1026 = !DILocation(line: 311, column: 32, scope: !1020)
!1027 = !DILocation(line: 311, column: 43, scope: !1020)
!1028 = !DILocation(line: 311, column: 29, scope: !1020)
!1029 = !DILocation(line: 310, column: 6, scope: !989)
!1030 = !DILocation(line: 312, column: 3, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 311, column: 54)
!1032 = !DILocation(line: 320, column: 2, scope: !989)
!1033 = !DILocation(line: 321, column: 2, scope: !989)
!1034 = !DILocation(line: 321, column: 26, scope: !989)
!1035 = !DILocation(line: 325, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !989, file: !3, line: 325, column: 6)
!1037 = !DILocation(line: 325, column: 14, scope: !1036)
!1038 = !DILocation(line: 325, column: 6, scope: !989)
!1039 = !DILocation(line: 326, column: 3, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 325, column: 22)
!1041 = !DILocation(line: 333, column: 10, scope: !989)
!1042 = !DILocation(line: 333, column: 2, scope: !989)
!1043 = !DILocation(line: 336, column: 8, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !989, file: !3, line: 333, column: 19)
!1045 = !DILocation(line: 337, column: 3, scope: !1044)
!1046 = !DILocation(line: 341, column: 8, scope: !1044)
!1047 = !DILocation(line: 342, column: 3, scope: !1044)
!1048 = !DILocation(line: 351, column: 3, scope: !1044)
!1049 = !DILocation(line: 356, column: 38, scope: !989)
!1050 = !DILocation(line: 356, column: 11, scope: !989)
!1051 = !DILocation(line: 356, column: 9, scope: !989)
!1052 = !DILocation(line: 357, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !989, file: !3, line: 357, column: 6)
!1054 = !DILocation(line: 357, column: 6, scope: !989)
!1055 = !DILocation(line: 364, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 357, column: 28)
!1057 = !DILocation(line: 369, column: 20, scope: !989)
!1058 = !DILocation(line: 369, column: 15, scope: !989)
!1059 = !DILocation(line: 369, column: 13, scope: !989)
!1060 = !DILocation(line: 371, column: 31, scope: !989)
!1061 = !DILocation(line: 371, column: 43, scope: !989)
!1062 = !DILocation(line: 371, column: 54, scope: !989)
!1063 = !DILocation(line: 371, column: 6, scope: !989)
!1064 = !DILocation(line: 370, column: 17, scope: !989)
!1065 = !DILocation(line: 372, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !989, file: !3, line: 372, column: 6)
!1067 = !DILocation(line: 372, column: 6, scope: !989)
!1068 = !DILocation(line: 378, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 372, column: 23)
!1070 = !DILocation(line: 381, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !989, file: !3, line: 381, column: 6)
!1072 = !DILocation(line: 381, column: 53, scope: !1071)
!1073 = !DILocation(line: 382, column: 34, scope: !1071)
!1074 = !DILocation(line: 383, column: 7, scope: !1071)
!1075 = !DILocation(line: 383, column: 53, scope: !1071)
!1076 = !DILocation(line: 381, column: 6, scope: !989)
!1077 = !DILocation(line: 388, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 384, column: 39)
!1079 = !DILocation(line: 391, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !989, file: !3, line: 391, column: 6)
!1081 = !DILocation(line: 391, column: 52, scope: !1080)
!1082 = !DILocation(line: 391, column: 6, scope: !989)
!1083 = !DILocation(line: 397, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 397, column: 7)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 392, column: 32)
!1086 = !DILocation(line: 397, column: 16, scope: !1084)
!1087 = !DILocation(line: 397, column: 32, scope: !1084)
!1088 = !DILocation(line: 397, column: 38, scope: !1084)
!1089 = !DILocation(line: 397, column: 12, scope: !1084)
!1090 = !DILocation(line: 397, column: 7, scope: !1085)
!1091 = !DILocation(line: 398, column: 4, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 397, column: 67)
!1093 = !DILocation(line: 401, column: 3, scope: !1092)
!1094 = !DILocation(line: 402, column: 3, scope: !1085)
!1095 = !DILocation(line: 407, column: 28, scope: !989)
!1096 = !DILocation(line: 407, column: 8, scope: !989)
!1097 = !DILocation(line: 413, column: 2, scope: !989)
!1098 = !DILocation(line: 413, column: 18, scope: !989)
!1099 = !DILocation(line: 413, column: 24, scope: !989)
!1100 = !DILocation(line: 414, column: 32, scope: !989)
!1101 = !DILocation(line: 414, column: 37, scope: !989)
!1102 = !DILocation(line: 414, column: 27, scope: !989)
!1103 = !DILocation(line: 414, column: 2, scope: !989)
!1104 = !DILocation(line: 414, column: 18, scope: !989)
!1105 = !DILocation(line: 414, column: 24, scope: !989)
!1106 = !DILocation(line: 415, column: 41, scope: !989)
!1107 = !DILocation(line: 415, column: 2, scope: !989)
!1108 = !DILocation(line: 415, column: 18, scope: !989)
!1109 = !DILocation(line: 415, column: 27, scope: !989)
!1110 = !DILocation(line: 415, column: 39, scope: !989)
!1111 = !DILocation(line: 420, column: 2, scope: !989)
!1112 = !DILocation(line: 421, column: 1, scope: !989)
