; ModuleID = '../bcout/drivers/acpi/acpica/dsopcode.llvm.bc'
source_filename = "drivers/acpi/acpica/dsopcode.c"
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
%struct.acpi_parse_obj_common = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8 }
%struct.acpi_object_common = type { %union.acpi_operand_object*, i8, i8, i16, i8 }
%union.acpi_descriptor = type { %union.acpi_parse_object }
%struct.acpi_common_descriptor = type { i8*, i8 }
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32, i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_object_buffer_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, i8, %union.acpi_operand_object* }
%struct.acpi_object_region = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_object_string = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8*, i32 }
%struct.acpi_object_bank_field = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i8, i8, %struct.acpi_namespace_node*, i32, i32, i32, i8, i8, %union.acpi_operand_object*, %union.acpi_operand_object* }

@_acpi_module_name = internal constant [9 x i8] c"dsopcode\00", align 1, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"(%s) bad operand(s), status 0x%X\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Operation Region [%4.4s] has zero length (SpaceId %X)\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ACPI Table [%4.4s] OEM:(%s, %s) not found in RSDT/XSDT\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Missing child while evaluating opcode %4.4X, Op %p\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Target of Create Field is not a Buffer object - %s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"(%s) destination not a NS Node [%s]\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Attempt to CreateField of length zero\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Unknown field creation opcode 0x%02X\00", align 1
@.str.8 = private unnamed_addr constant [81 x i8] c"Field [%4.4s] at bit offset/length %u/%u exceeds size of target Buffer (%u bits)\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_initialize_region(i8* %obj_handle) #0 !dbg !811 {
entry:
  %obj_handle.addr = alloca i8*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store i8* %obj_handle, i8** %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj_handle.addr, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata i32* %status, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load i8*, i8** %obj_handle.addr, align 8, !dbg !821
  %1 = bitcast i8* %0 to %struct.acpi_namespace_node*, !dbg !821
  %call = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %1) #3, !dbg !822
  store %union.acpi_operand_object* %call, %union.acpi_operand_object** %obj_desc, align 8, !dbg !823
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !824
  %call1 = call i32 @acpi_ev_initialize_region(%union.acpi_operand_object* %2) #3, !dbg !825
  store i32 %call1, i32* %status, align 4, !dbg !826
  %3 = load i32, i32* %status, align 4, !dbg !827
  ret i32 %3, !dbg !828
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_initialize_region(%union.acpi_operand_object*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_eval_buffer_field_operands(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !829 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %next_op = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !832, metadata !DIExpression()), !dbg !833
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata i32* %status, metadata !836, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next_op, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !844
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !845
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !846
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !846
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !847
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !848
  %common2 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !849
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !850
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !851
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !851
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %next_op, align 8, !dbg !852
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !853
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !854
  %call = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %4, %union.acpi_parse_object* %5) #3, !dbg !855
  store i32 %call, i32* %status, align 4, !dbg !856
  %6 = load i32, i32* %status, align 4, !dbg !857
  %tobool = icmp ne i32 %6, 0, !dbg !857
  br i1 %tobool, label %if.then, label %if.end, !dbg !859

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4, !dbg !860
  store i32 %7, i32* %retval, align 4, !dbg !860
  br label %return, !dbg !860

if.end:                                           ; preds = %entry
  %8 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !862
  %call3 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %8) #3, !dbg !863
  store %union.acpi_operand_object* %call3, %union.acpi_operand_object** %obj_desc, align 8, !dbg !864
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !865
  %tobool4 = icmp ne %union.acpi_operand_object* %9, null, !dbg !865
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !867

if.then5:                                         ; preds = %if.end
  store i32 6, i32* %retval, align 4, !dbg !868
  br label %return, !dbg !868

if.end6:                                          ; preds = %if.end
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !870
  %common7 = bitcast %union.acpi_parse_object* %10 to %struct.acpi_parse_obj_common*, !dbg !871
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common7, i32 0, i32 3, !dbg !872
  %11 = load i16, i16* %aml_opcode, align 2, !dbg !872
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !873
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 28, !dbg !873
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !873
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 5, !dbg !873
  %14 = load i8, i8* %num_operands, align 1, !dbg !873
  %conv = zext i8 %14 to i32, !dbg !873
  %sub = sub i32 %conv, 1, !dbg !873
  %idxprom = sext i32 %sub to i64, !dbg !873
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !873
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !874
  %call8 = call i32 @acpi_ex_resolve_operands(i16 zeroext %11, %union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %15) #3, !dbg !875
  store i32 %call8, i32* %status, align 4, !dbg !876
  %16 = load i32, i32* %status, align 4, !dbg !877
  %tobool9 = icmp ne i32 %16, 0, !dbg !877
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !879

if.then10:                                        ; preds = %if.end6
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !880
  %common11 = bitcast %union.acpi_parse_object* %17 to %struct.acpi_parse_obj_common*, !dbg !880
  %aml_opcode12 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common11, i32 0, i32 3, !dbg !880
  %18 = load i16, i16* %aml_opcode12, align 2, !dbg !880
  %call13 = call i8* @acpi_ps_get_opcode_name(i16 zeroext %18) #3, !dbg !880
  %19 = load i32, i32* %status, align 4, !dbg !880
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 306, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %call13, i32 %19) #3, !dbg !880
  %20 = load i32, i32* %status, align 4, !dbg !882
  store i32 %20, i32* %retval, align 4, !dbg !882
  br label %return, !dbg !882

if.end14:                                         ; preds = %if.end6
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !883
  %common15 = bitcast %union.acpi_parse_object* %21 to %struct.acpi_parse_obj_common*, !dbg !885
  %aml_opcode16 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common15, i32 0, i32 3, !dbg !886
  %22 = load i16, i16* %aml_opcode16, align 2, !dbg !886
  %conv17 = zext i16 %22 to i32, !dbg !883
  %cmp = icmp eq i32 %conv17, 23315, !dbg !887
  br i1 %cmp, label %if.then19, label %if.else, !dbg !888

if.then19:                                        ; preds = %if.end14
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !889
  %common20 = bitcast %union.acpi_parse_object* %23 to %struct.acpi_parse_obj_common*, !dbg !891
  %aml_opcode21 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common20, i32 0, i32 3, !dbg !892
  %24 = load i16, i16* %aml_opcode21, align 2, !dbg !892
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !893
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !894
  %operands22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 28, !dbg !895
  %arrayidx23 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands22, i64 0, i64 0, !dbg !894
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx23, align 8, !dbg !894
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !896
  %operands24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 28, !dbg !897
  %arrayidx25 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands24, i64 0, i64 1, !dbg !896
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx25, align 8, !dbg !896
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !898
  %operands26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 28, !dbg !899
  %arrayidx27 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands26, i64 0, i64 2, !dbg !898
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx27, align 8, !dbg !898
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !900
  %operands28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 28, !dbg !901
  %arrayidx29 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands28, i64 0, i64 3, !dbg !900
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx29, align 8, !dbg !900
  %call30 = call i32 @acpi_ds_init_buffer_field(i16 zeroext %24, %union.acpi_operand_object* %25, %union.acpi_operand_object* %27, %union.acpi_operand_object* %29, %union.acpi_operand_object* %31, %union.acpi_operand_object* %33) #3, !dbg !902
  store i32 %call30, i32* %status, align 4, !dbg !903
  br label %if.end40, !dbg !904

if.else:                                          ; preds = %if.end14
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !905
  %common31 = bitcast %union.acpi_parse_object* %34 to %struct.acpi_parse_obj_common*, !dbg !907
  %aml_opcode32 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common31, i32 0, i32 3, !dbg !908
  %35 = load i16, i16* %aml_opcode32, align 2, !dbg !908
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !909
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !910
  %operands33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 28, !dbg !911
  %arrayidx34 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands33, i64 0, i64 0, !dbg !910
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx34, align 8, !dbg !910
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !912
  %operands35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 28, !dbg !913
  %arrayidx36 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands35, i64 0, i64 1, !dbg !912
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx36, align 8, !dbg !912
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !914
  %operands37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 28, !dbg !915
  %arrayidx38 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands37, i64 0, i64 2, !dbg !914
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx38, align 8, !dbg !914
  %call39 = call i32 @acpi_ds_init_buffer_field(i16 zeroext %35, %union.acpi_operand_object* %36, %union.acpi_operand_object* %38, %union.acpi_operand_object* %40, %union.acpi_operand_object* null, %union.acpi_operand_object* %42) #3, !dbg !916
  store i32 %call39, i32* %status, align 4, !dbg !917
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then19
  %43 = load i32, i32* %status, align 4, !dbg !918
  store i32 %43, i32* %retval, align 4, !dbg !918
  br label %return, !dbg !918

return:                                           ; preds = %if.end40, %if.then10, %if.then5, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !919
  ret i32 %44, !dbg !919
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_operands(i16 zeroext, %union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ps_get_opcode_name(i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_ds_init_buffer_field(i16 zeroext %aml_opcode, %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object* %buffer_desc, %union.acpi_operand_object* %offset_desc, %union.acpi_operand_object* %length_desc, %union.acpi_operand_object* %result_desc) #0 !dbg !920 {
entry:
  %aml_opcode.addr = alloca i16, align 2
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %buffer_desc.addr = alloca %union.acpi_operand_object*, align 8
  %offset_desc.addr = alloca %union.acpi_operand_object*, align 8
  %length_desc.addr = alloca %union.acpi_operand_object*, align 8
  %result_desc.addr = alloca %union.acpi_operand_object*, align 8
  %offset = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %field_flags = alloca i8, align 1
  %status = alloca i32, align 4
  store i16 %aml_opcode, i16* %aml_opcode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %aml_opcode.addr, metadata !923, metadata !DIExpression()), !dbg !924
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !925, metadata !DIExpression()), !dbg !926
  store %union.acpi_operand_object* %buffer_desc, %union.acpi_operand_object** %buffer_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %buffer_desc.addr, metadata !927, metadata !DIExpression()), !dbg !928
  store %union.acpi_operand_object* %offset_desc, %union.acpi_operand_object** %offset_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %offset_desc.addr, metadata !929, metadata !DIExpression()), !dbg !930
  store %union.acpi_operand_object* %length_desc, %union.acpi_operand_object** %length_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %length_desc.addr, metadata !931, metadata !DIExpression()), !dbg !932
  store %union.acpi_operand_object* %result_desc, %union.acpi_operand_object** %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %result_desc.addr, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !935, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata i32* %bit_offset, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata i32* %bit_count, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata i8* %field_flags, metadata !941, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %status, metadata !943, metadata !DIExpression()), !dbg !944
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !945
  %common = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_common*, !dbg !947
  %type = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common, i32 0, i32 2, !dbg !948
  %1 = load i8, i8* %type, align 1, !dbg !948
  %conv = zext i8 %1 to i32, !dbg !945
  %cmp = icmp ne i32 %conv, 3, !dbg !949
  br i1 %cmp, label %if.then, label %if.end, !dbg !950

if.then:                                          ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !951
  %call = call i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object* %2) #3, !dbg !951
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %call) #3, !dbg !951
  store i32 12291, i32* %status, align 4, !dbg !953
  br label %cleanup, !dbg !954

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_desc.addr, align 8, !dbg !955
  %4 = bitcast %union.acpi_operand_object* %3 to i8*, !dbg !955
  %5 = bitcast i8* %4 to %union.acpi_descriptor*, !dbg !955
  %common2 = bitcast %union.acpi_descriptor* %5 to %struct.acpi_common_descriptor*, !dbg !955
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, %struct.acpi_common_descriptor* %common2, i32 0, i32 1, !dbg !955
  %6 = load i8, i8* %descriptor_type, align 8, !dbg !955
  %conv3 = zext i8 %6 to i32, !dbg !955
  %cmp4 = icmp ne i32 %conv3, 15, !dbg !957
  br i1 %cmp4, label %if.then6, label %if.end9, !dbg !958

if.then6:                                         ; preds = %if.end
  %7 = load i16, i16* %aml_opcode.addr, align 2, !dbg !959
  %call7 = call i8* @acpi_ps_get_opcode_name(i16 zeroext %7) #3, !dbg !959
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_desc.addr, align 8, !dbg !959
  %9 = bitcast %union.acpi_operand_object* %8 to i8*, !dbg !959
  %call8 = call i8* @acpi_ut_get_descriptor_name(i8* %9) #3, !dbg !959
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 107, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %call7, i8* %call8) #3, !dbg !959
  store i32 12291, i32* %status, align 4, !dbg !961
  br label %cleanup, !dbg !962

if.end9:                                          ; preds = %if.end
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %offset_desc.addr, align 8, !dbg !963
  %integer = bitcast %union.acpi_operand_object* %10 to %struct.acpi_object_integer*, !dbg !964
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !965
  %11 = load i64, i64* %value, align 8, !dbg !965
  %conv10 = trunc i64 %11 to i32, !dbg !966
  store i32 %conv10, i32* %offset, align 4, !dbg !967
  %12 = load i16, i16* %aml_opcode.addr, align 2, !dbg !968
  %conv11 = zext i16 %12 to i32, !dbg !968
  switch i32 %conv11, label %sw.default [
    i32 23315, label %sw.bb
    i32 141, label %sw.bb19
    i32 140, label %sw.bb20
    i32 139, label %sw.bb21
    i32 138, label %sw.bb23
    i32 143, label %sw.bb25
  ], !dbg !969

sw.bb:                                            ; preds = %if.end9
  store i8 1, i8* %field_flags, align 1, !dbg !970
  %13 = load i32, i32* %offset, align 4, !dbg !972
  store i32 %13, i32* %bit_offset, align 4, !dbg !973
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %length_desc.addr, align 8, !dbg !974
  %integer12 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_integer*, !dbg !975
  %value13 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer12, i32 0, i32 6, !dbg !976
  %15 = load i64, i64* %value13, align 8, !dbg !976
  %conv14 = trunc i64 %15 to i32, !dbg !977
  store i32 %conv14, i32* %bit_count, align 4, !dbg !978
  %16 = load i32, i32* %bit_count, align 4, !dbg !979
  %cmp15 = icmp eq i32 %16, 0, !dbg !981
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !982

if.then17:                                        ; preds = %sw.bb
  call void (i8*, i32, i8*, ...) @acpi_bios_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !983
  store i32 12292, i32* %status, align 4, !dbg !985
  br label %cleanup, !dbg !986

if.end18:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !987

sw.bb19:                                          ; preds = %if.end9
  %17 = load i32, i32* %offset, align 4, !dbg !988
  store i32 %17, i32* %bit_offset, align 4, !dbg !989
  store i32 1, i32* %bit_count, align 4, !dbg !990
  store i8 1, i8* %field_flags, align 1, !dbg !991
  br label %sw.epilog, !dbg !992

sw.bb20:                                          ; preds = %if.end9
  %18 = load i32, i32* %offset, align 4, !dbg !993
  %mul = mul i32 8, %18, !dbg !994
  store i32 %mul, i32* %bit_offset, align 4, !dbg !995
  store i32 8, i32* %bit_count, align 4, !dbg !996
  store i8 1, i8* %field_flags, align 1, !dbg !997
  br label %sw.epilog, !dbg !998

sw.bb21:                                          ; preds = %if.end9
  %19 = load i32, i32* %offset, align 4, !dbg !999
  %mul22 = mul i32 8, %19, !dbg !1000
  store i32 %mul22, i32* %bit_offset, align 4, !dbg !1001
  store i32 16, i32* %bit_count, align 4, !dbg !1002
  store i8 2, i8* %field_flags, align 1, !dbg !1003
  br label %sw.epilog, !dbg !1004

sw.bb23:                                          ; preds = %if.end9
  %20 = load i32, i32* %offset, align 4, !dbg !1005
  %mul24 = mul i32 8, %20, !dbg !1006
  store i32 %mul24, i32* %bit_offset, align 4, !dbg !1007
  store i32 32, i32* %bit_count, align 4, !dbg !1008
  store i8 3, i8* %field_flags, align 1, !dbg !1009
  br label %sw.epilog, !dbg !1010

sw.bb25:                                          ; preds = %if.end9
  %21 = load i32, i32* %offset, align 4, !dbg !1011
  %mul26 = mul i32 8, %21, !dbg !1012
  store i32 %mul26, i32* %bit_offset, align 4, !dbg !1013
  store i32 64, i32* %bit_count, align 4, !dbg !1014
  store i8 4, i8* %field_flags, align 1, !dbg !1015
  br label %sw.epilog, !dbg !1016

sw.default:                                       ; preds = %if.end9
  %22 = load i16, i16* %aml_opcode.addr, align 2, !dbg !1017
  %conv27 = zext i16 %22 to i32, !dbg !1017
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %conv27) #3, !dbg !1017
  store i32 12289, i32* %status, align 4, !dbg !1018
  br label %cleanup, !dbg !1019

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb20, %sw.bb19, %if.end18
  %23 = load i32, i32* %bit_offset, align 4, !dbg !1020
  %24 = load i32, i32* %bit_count, align 4, !dbg !1022
  %add = add i32 %23, %24, !dbg !1023
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !1024
  %buffer = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_buffer*, !dbg !1025
  %length = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer, i32 0, i32 6, !dbg !1026
  %26 = load i32, i32* %length, align 8, !dbg !1026
  %mul28 = mul i32 8, %26, !dbg !1027
  %cmp29 = icmp ugt i32 %add, %mul28, !dbg !1028
  br i1 %cmp29, label %if.then31, label %if.end36, !dbg !1029

if.then31:                                        ; preds = %sw.epilog
  store i32 12298, i32* %status, align 4, !dbg !1030
  %27 = load i32, i32* %status, align 4, !dbg !1032
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_desc.addr, align 8, !dbg !1032
  %29 = bitcast %union.acpi_operand_object* %28 to i8*, !dbg !1032
  %call32 = call i8* @acpi_ut_get_node_name(i8* %29) #3, !dbg !1032
  %30 = load i32, i32* %bit_offset, align 4, !dbg !1032
  %31 = load i32, i32* %bit_count, align 4, !dbg !1032
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !1032
  %buffer33 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_buffer*, !dbg !1032
  %length34 = getelementptr inbounds %struct.acpi_object_buffer, %struct.acpi_object_buffer* %buffer33, i32 0, i32 6, !dbg !1032
  %33 = load i32, i32* %length34, align 8, !dbg !1032
  %mul35 = mul i32 8, %33, !dbg !1032
  call void (i8*, i32, i32, i8*, ...) @acpi_bios_exception(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 198, i32 %27, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0), i8* %call32, i32 %30, i32 %31, i32 %mul35) #3, !dbg !1032
  br label %cleanup, !dbg !1033

if.end36:                                         ; preds = %sw.epilog
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1034
  %35 = load i8, i8* %field_flags, align 1, !dbg !1035
  %36 = load i32, i32* %bit_offset, align 4, !dbg !1036
  %37 = load i32, i32* %bit_count, align 4, !dbg !1037
  %call37 = call i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object* %34, i8 zeroext %35, i8 zeroext 0, i32 %36, i32 %37) #3, !dbg !1038
  store i32 %call37, i32* %status, align 4, !dbg !1039
  %38 = load i32, i32* %status, align 4, !dbg !1040
  %tobool = icmp ne i32 %38, 0, !dbg !1040
  br i1 %tobool, label %if.then38, label %if.end39, !dbg !1042

if.then38:                                        ; preds = %if.end36
  br label %cleanup, !dbg !1043

if.end39:                                         ; preds = %if.end36
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !1045
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1046
  %buffer_field = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_buffer_field*, !dbg !1047
  %buffer_obj = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field, i32 0, i32 15, !dbg !1048
  store %union.acpi_operand_object* %39, %union.acpi_operand_object** %buffer_obj, align 8, !dbg !1049
  %41 = load i16, i16* %aml_opcode.addr, align 2, !dbg !1050
  %conv40 = zext i16 %41 to i32, !dbg !1050
  %cmp41 = icmp eq i32 %conv40, 23315, !dbg !1051
  %conv42 = zext i1 %cmp41 to i32, !dbg !1051
  %conv43 = trunc i32 %conv42 to i8, !dbg !1050
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1052
  %buffer_field44 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_buffer_field*, !dbg !1053
  %is_create_field = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field44, i32 0, i32 14, !dbg !1054
  store i8 %conv43, i8* %is_create_field, align 2, !dbg !1055
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !1056
  %common45 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_common*, !dbg !1057
  %reference_count = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common45, i32 0, i32 3, !dbg !1058
  %44 = load i16, i16* %reference_count, align 2, !dbg !1058
  %conv46 = zext i16 %44 to i32, !dbg !1056
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1059
  %common47 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_common*, !dbg !1060
  %reference_count48 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common47, i32 0, i32 3, !dbg !1061
  %46 = load i16, i16* %reference_count48, align 2, !dbg !1061
  %conv49 = zext i16 %46 to i32, !dbg !1059
  %add50 = add i32 %conv46, %conv49, !dbg !1062
  %conv51 = trunc i32 %add50 to i16, !dbg !1063
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !1064
  %common52 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_common*, !dbg !1065
  %reference_count53 = getelementptr inbounds %struct.acpi_object_common, %struct.acpi_object_common* %common52, i32 0, i32 3, !dbg !1066
  store i16 %conv51, i16* %reference_count53, align 2, !dbg !1067
  br label %cleanup, !dbg !1064

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then31, %sw.default, %if.then17, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !1068), !dbg !1069
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %offset_desc.addr, align 8, !dbg !1070
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %48) #3, !dbg !1071
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %buffer_desc.addr, align 8, !dbg !1072
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %49) #3, !dbg !1073
  %50 = load i16, i16* %aml_opcode.addr, align 2, !dbg !1074
  %conv54 = zext i16 %50 to i32, !dbg !1074
  %cmp55 = icmp eq i32 %conv54, 23315, !dbg !1076
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !1077

if.then57:                                        ; preds = %cleanup
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %length_desc.addr, align 8, !dbg !1078
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %51) #3, !dbg !1080
  br label %if.end58, !dbg !1081

if.end58:                                         ; preds = %if.then57, %cleanup
  %52 = load i32, i32* %status, align 4, !dbg !1082
  %tobool59 = icmp ne i32 %52, 0, !dbg !1082
  br i1 %tobool59, label %if.then60, label %if.else, !dbg !1084

if.then60:                                        ; preds = %if.end58
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %result_desc.addr, align 8, !dbg !1085
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %53) #3, !dbg !1087
  br label %if.end64, !dbg !1088

if.else:                                          ; preds = %if.end58
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1089
  %buffer_field61 = bitcast %union.acpi_operand_object* %54 to %struct.acpi_object_buffer_field*, !dbg !1091
  %flags = getelementptr inbounds %struct.acpi_object_buffer_field, %struct.acpi_object_buffer_field* %buffer_field61, i32 0, i32 4, !dbg !1092
  %55 = load i8, i8* %flags, align 4, !dbg !1093
  %conv62 = zext i8 %55 to i32, !dbg !1093
  %or = or i32 %conv62, 4, !dbg !1093
  %conv63 = trunc i32 %or to i8, !dbg !1093
  store i8 %conv63, i8* %flags, align 4, !dbg !1093
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then60
  %56 = load i32, i32* %status, align 4, !dbg !1094
  ret i32 %56, !dbg !1094
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_eval_region_operands(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !1095 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %operand_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %next_op = alloca %union.acpi_parse_object*, align 8
  %space_id = alloca i8, align 1
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1096, metadata !DIExpression()), !dbg !1097
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1098, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1100, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1102, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand_desc, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next_op, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata i8* %space_id, metadata !1110, metadata !DIExpression()), !dbg !1111
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1112
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1113
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !1114
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !1114
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !1115
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1116
  %common2 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !1117
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1118
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1119
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1119
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %next_op, align 8, !dbg !1120
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1121
  %common3 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !1122
  %value4 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 7, !dbg !1123
  %integer = bitcast %union.acpi_parse_value* %value4 to i64*, !dbg !1124
  %5 = load i64, i64* %integer, align 8, !dbg !1124
  %conv = trunc i64 %5 to i8, !dbg !1125
  store i8 %conv, i8* %space_id, align 1, !dbg !1126
  %6 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1127
  %common5 = bitcast %union.acpi_parse_object* %6 to %struct.acpi_parse_obj_common*, !dbg !1128
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common5, i32 0, i32 5, !dbg !1129
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1129
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %next_op, align 8, !dbg !1130
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1131
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1132
  %call = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %8, %union.acpi_parse_object* %9) #3, !dbg !1133
  store i32 %call, i32* %status, align 4, !dbg !1134
  %10 = load i32, i32* %status, align 4, !dbg !1135
  %tobool = icmp ne i32 %10, 0, !dbg !1135
  br i1 %tobool, label %if.then, label %if.end, !dbg !1137

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %status, align 4, !dbg !1138
  store i32 %11, i32* %retval, align 4, !dbg !1138
  br label %return, !dbg !1138

if.end:                                           ; preds = %entry
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1140
  %common6 = bitcast %union.acpi_parse_object* %12 to %struct.acpi_parse_obj_common*, !dbg !1141
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common6, i32 0, i32 3, !dbg !1142
  %13 = load i16, i16* %aml_opcode, align 2, !dbg !1142
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1143
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 28, !dbg !1143
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1143
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 5, !dbg !1143
  %16 = load i8, i8* %num_operands, align 1, !dbg !1143
  %conv7 = zext i8 %16 to i32, !dbg !1143
  %sub = sub i32 %conv7, 1, !dbg !1143
  %idxprom = sext i32 %sub to i64, !dbg !1143
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1143
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1144
  %call8 = call i32 @acpi_ex_resolve_operands(i16 zeroext %13, %union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %17) #3, !dbg !1145
  store i32 %call8, i32* %status, align 4, !dbg !1146
  %18 = load i32, i32* %status, align 4, !dbg !1147
  %tobool9 = icmp ne i32 %18, 0, !dbg !1147
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1149

if.then10:                                        ; preds = %if.end
  %19 = load i32, i32* %status, align 4, !dbg !1150
  store i32 %19, i32* %retval, align 4, !dbg !1150
  br label %return, !dbg !1150

if.end11:                                         ; preds = %if.end
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1152
  %call12 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %20) #3, !dbg !1153
  store %union.acpi_operand_object* %call12, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1154
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1155
  %tobool13 = icmp ne %union.acpi_operand_object* %21, null, !dbg !1155
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1157

if.then14:                                        ; preds = %if.end11
  store i32 6, i32* %retval, align 4, !dbg !1158
  br label %return, !dbg !1158

if.end15:                                         ; preds = %if.end11
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1160
  %operands16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 28, !dbg !1161
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1162
  %num_operands17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 5, !dbg !1163
  %24 = load i8, i8* %num_operands17, align 1, !dbg !1163
  %conv18 = zext i8 %24 to i32, !dbg !1162
  %sub19 = sub i32 %conv18, 1, !dbg !1164
  %idxprom20 = sext i32 %sub19 to i64, !dbg !1160
  %arrayidx21 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands16, i64 0, i64 %idxprom20, !dbg !1160
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx21, align 8, !dbg !1160
  store %union.acpi_operand_object* %25, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1165
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1166
  %integer22 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_object_integer*, !dbg !1167
  %value23 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer22, i32 0, i32 6, !dbg !1168
  %27 = load i64, i64* %value23, align 8, !dbg !1168
  %conv24 = trunc i64 %27 to i32, !dbg !1169
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1170
  %region = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_region*, !dbg !1171
  %length = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 10, !dbg !1172
  store i32 %conv24, i32* %length, align 8, !dbg !1173
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1174
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %29) #3, !dbg !1175
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1176
  %region25 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_object_region*, !dbg !1178
  %length26 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region25, i32 0, i32 10, !dbg !1179
  %31 = load i32, i32* %length26, align 8, !dbg !1179
  %tobool27 = icmp ne i32 %31, 0, !dbg !1176
  br i1 %tobool27, label %if.end32, label %land.lhs.true, !dbg !1180

land.lhs.true:                                    ; preds = %if.end15
  %32 = load i8, i8* %space_id, align 1, !dbg !1181
  %conv28 = zext i8 %32 to i32, !dbg !1181
  %cmp = icmp slt i32 %conv28, 12, !dbg !1182
  br i1 %cmp, label %if.then30, label %if.end32, !dbg !1183

if.then30:                                        ; preds = %land.lhs.true
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1184
  %name = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %33, i32 0, i32 4, !dbg !1184
  %ascii = bitcast %union.acpi_name_union* %name to [4 x i8]*, !dbg !1184
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %ascii, i64 0, i64 0, !dbg !1184
  %34 = load i8, i8* %space_id, align 1, !dbg !1184
  %conv31 = zext i8 %34 to i32, !dbg !1184
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay, i32 %conv31) #3, !dbg !1184
  br label %if.end32, !dbg !1186

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %if.end15
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1187
  %operands33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 28, !dbg !1188
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1189
  %num_operands34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 5, !dbg !1190
  %37 = load i8, i8* %num_operands34, align 1, !dbg !1190
  %conv35 = zext i8 %37 to i32, !dbg !1189
  %sub36 = sub i32 %conv35, 2, !dbg !1191
  %idxprom37 = sext i32 %sub36 to i64, !dbg !1187
  %arrayidx38 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands33, i64 0, i64 %idxprom37, !dbg !1187
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx38, align 8, !dbg !1187
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1192
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1193
  %integer39 = bitcast %union.acpi_operand_object* %39 to %struct.acpi_object_integer*, !dbg !1194
  %value40 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer39, i32 0, i32 6, !dbg !1195
  %40 = load i64, i64* %value40, align 8, !dbg !1195
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1196
  %region41 = bitcast %union.acpi_operand_object* %41 to %struct.acpi_object_region*, !dbg !1197
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region41, i32 0, i32 9, !dbg !1198
  store i64 %40, i64* %address, align 8, !dbg !1199
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1200
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %42) #3, !dbg !1201
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1202
  %region42 = bitcast %union.acpi_operand_object* %43 to %struct.acpi_object_region*, !dbg !1203
  %space_id43 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region42, i32 0, i32 5, !dbg !1204
  %44 = load i8, i8* %space_id43, align 1, !dbg !1204
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1205
  %region44 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_region*, !dbg !1206
  %address45 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region44, i32 0, i32 9, !dbg !1207
  %46 = load i64, i64* %address45, align 8, !dbg !1207
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1208
  %region46 = bitcast %union.acpi_operand_object* %47 to %struct.acpi_object_region*, !dbg !1209
  %length47 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region46, i32 0, i32 10, !dbg !1210
  %48 = load i32, i32* %length47, align 8, !dbg !1210
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1211
  %call48 = call i32 @acpi_ut_add_address_range(i8 zeroext %44, i64 %46, i32 %48, %struct.acpi_namespace_node* %49) #3, !dbg !1212
  store i32 %call48, i32* %status, align 4, !dbg !1213
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1214
  %region49 = bitcast %union.acpi_operand_object* %50 to %struct.acpi_object_region*, !dbg !1215
  %flags = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region49, i32 0, i32 4, !dbg !1216
  %51 = load i8, i8* %flags, align 4, !dbg !1217
  %conv50 = zext i8 %51 to i32, !dbg !1217
  %or = or i32 %conv50, 4, !dbg !1217
  %conv51 = trunc i32 %or to i8, !dbg !1217
  store i8 %conv51, i8* %flags, align 4, !dbg !1217
  %52 = load i32, i32* %status, align 4, !dbg !1218
  store i32 %52, i32* %retval, align 4, !dbg !1218
  br label %return, !dbg !1218

return:                                           ; preds = %if.end32, %if.then14, %if.then10, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !1219
  ret i32 %53, !dbg !1219
}

; Function Attrs: noredzone
declare dso_local void @acpi_ut_remove_reference(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_add_address_range(i8 zeroext, i64, i32, %struct.acpi_namespace_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_eval_table_region_operands(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !1220 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %operand = alloca %union.acpi_operand_object**, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %next_op = alloca %union.acpi_parse_object*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %table_index = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1223, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1227, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object*** %operand, metadata !1229, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1231, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next_op, metadata !1233, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1235, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata i32* %table_index, metadata !1253, metadata !DIExpression()), !dbg !1254
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1255
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1256
  %node1 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 6, !dbg !1257
  %1 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node1, align 8, !dbg !1257
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %node, align 8, !dbg !1258
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1259
  %common2 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !1260
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1261
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1262
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1262
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %next_op, align 8, !dbg !1263
  %4 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1264
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1265
  %call = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %4, %union.acpi_parse_object* %5) #3, !dbg !1266
  store i32 %call, i32* %status, align 4, !dbg !1267
  %6 = load i32, i32* %status, align 4, !dbg !1268
  %tobool = icmp ne i32 %6, 0, !dbg !1268
  br i1 %tobool, label %if.then, label %if.end, !dbg !1270

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %status, align 4, !dbg !1271
  store i32 %7, i32* %retval, align 4, !dbg !1271
  br label %return, !dbg !1271

if.end:                                           ; preds = %entry
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1273
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 28, !dbg !1274
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1273
  store %union.acpi_operand_object** %arrayidx, %union.acpi_operand_object*** %operand, align 8, !dbg !1275
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1276
  %common3 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !1277
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 3, !dbg !1278
  %10 = load i16, i16* %aml_opcode, align 2, !dbg !1278
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1279
  %operands4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 28, !dbg !1279
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1279
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %12, i32 0, i32 5, !dbg !1279
  %13 = load i8, i8* %num_operands, align 1, !dbg !1279
  %conv = zext i8 %13 to i32, !dbg !1279
  %sub = sub i32 %conv, 1, !dbg !1279
  %idxprom = sext i32 %sub to i64, !dbg !1279
  %arrayidx5 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands4, i64 0, i64 %idxprom, !dbg !1279
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1280
  %call6 = call i32 @acpi_ex_resolve_operands(i16 zeroext %10, %union.acpi_operand_object** %arrayidx5, %struct.acpi_walk_state* %14) #3, !dbg !1281
  store i32 %call6, i32* %status, align 4, !dbg !1282
  %15 = load i32, i32* %status, align 4, !dbg !1283
  %tobool7 = icmp ne i32 %15, 0, !dbg !1283
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1285

if.then8:                                         ; preds = %if.end
  br label %cleanup, !dbg !1286

if.end9:                                          ; preds = %if.end
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1288
  %arrayidx10 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %16, i64 0, !dbg !1288
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx10, align 8, !dbg !1288
  %string = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_string*, !dbg !1289
  %pointer = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string, i32 0, i32 5, !dbg !1290
  %18 = load i8*, i8** %pointer, align 8, !dbg !1290
  %19 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1291
  %arrayidx11 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %19, i64 1, !dbg !1291
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx11, align 8, !dbg !1291
  %string12 = bitcast %union.acpi_operand_object* %20 to %struct.acpi_object_string*, !dbg !1292
  %pointer13 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string12, i32 0, i32 5, !dbg !1293
  %21 = load i8*, i8** %pointer13, align 8, !dbg !1293
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1294
  %arrayidx14 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %22, i64 2, !dbg !1294
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx14, align 8, !dbg !1294
  %string15 = bitcast %union.acpi_operand_object* %23 to %struct.acpi_object_string*, !dbg !1295
  %pointer16 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string15, i32 0, i32 5, !dbg !1296
  %24 = load i8*, i8** %pointer16, align 8, !dbg !1296
  %call17 = call i32 @acpi_tb_find_table(i8* %18, i8* %21, i8* %24, i32* %table_index) #3, !dbg !1297
  store i32 %call17, i32* %status, align 4, !dbg !1298
  %25 = load i32, i32* %status, align 4, !dbg !1299
  %tobool18 = icmp ne i32 %25, 0, !dbg !1299
  br i1 %tobool18, label %if.then19, label %if.end32, !dbg !1301

if.then19:                                        ; preds = %if.end9
  %26 = load i32, i32* %status, align 4, !dbg !1302
  %cmp = icmp eq i32 %26, 5, !dbg !1305
  br i1 %cmp, label %if.then21, label %if.end31, !dbg !1306

if.then21:                                        ; preds = %if.then19
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1307
  %arrayidx22 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %27, i64 0, !dbg !1307
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx22, align 8, !dbg !1307
  %string23 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_string*, !dbg !1307
  %pointer24 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string23, i32 0, i32 5, !dbg !1307
  %29 = load i8*, i8** %pointer24, align 8, !dbg !1307
  %30 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1307
  %arrayidx25 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %30, i64 1, !dbg !1307
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx25, align 8, !dbg !1307
  %string26 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_string*, !dbg !1307
  %pointer27 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string26, i32 0, i32 5, !dbg !1307
  %32 = load i8*, i8** %pointer27, align 8, !dbg !1307
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1307
  %arrayidx28 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %33, i64 2, !dbg !1307
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx28, align 8, !dbg !1307
  %string29 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_string*, !dbg !1307
  %pointer30 = getelementptr inbounds %struct.acpi_object_string, %struct.acpi_object_string* %string29, i32 0, i32 5, !dbg !1307
  %35 = load i8*, i8** %pointer30, align 8, !dbg !1307
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 512, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %32, i8* %35) #3, !dbg !1307
  br label %if.end31, !dbg !1309

if.end31:                                         ; preds = %if.then21, %if.then19
  br label %cleanup, !dbg !1310

if.end32:                                         ; preds = %if.end9
  %36 = load i32, i32* %table_index, align 4, !dbg !1311
  %call33 = call i32 @acpi_get_table_by_index(i32 %36, %struct.acpi_table_header** %table) #3, !dbg !1312
  store i32 %call33, i32* %status, align 4, !dbg !1313
  %37 = load i32, i32* %status, align 4, !dbg !1314
  %tobool34 = icmp ne i32 %37, 0, !dbg !1314
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1316

if.then35:                                        ; preds = %if.end32
  br label %cleanup, !dbg !1317

if.end36:                                         ; preds = %if.end32
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1319
  %call37 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %38) #3, !dbg !1320
  store %union.acpi_operand_object* %call37, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1321
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1322
  %tobool38 = icmp ne %union.acpi_operand_object* %39, null, !dbg !1322
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !1324

if.then39:                                        ; preds = %if.end36
  store i32 6, i32* %status, align 4, !dbg !1325
  br label %cleanup, !dbg !1327

if.end40:                                         ; preds = %if.end36
  %40 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1328
  %41 = bitcast %struct.acpi_table_header* %40 to i8*, !dbg !1328
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64, !dbg !1328
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0, !dbg !1328
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1329
  %region = bitcast %union.acpi_operand_object* %42 to %struct.acpi_object_region*, !dbg !1330
  %address = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region, i32 0, i32 9, !dbg !1331
  store i64 %sub.ptr.sub, i64* %address, align 8, !dbg !1332
  %43 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1333
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %43, i32 0, i32 1, !dbg !1334
  %44 = load i32, i32* %length, align 1, !dbg !1334
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1335
  %region41 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_region*, !dbg !1336
  %length42 = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region41, i32 0, i32 10, !dbg !1337
  store i32 %44, i32* %length42, align 8, !dbg !1338
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1339
  %region43 = bitcast %union.acpi_operand_object* %46 to %struct.acpi_object_region*, !dbg !1340
  %flags = getelementptr inbounds %struct.acpi_object_region, %struct.acpi_object_region* %region43, i32 0, i32 4, !dbg !1341
  %47 = load i8, i8* %flags, align 4, !dbg !1342
  %conv44 = zext i8 %47 to i32, !dbg !1342
  %or = or i32 %conv44, 4, !dbg !1342
  %conv45 = trunc i32 %or to i8, !dbg !1342
  store i8 %conv45, i8* %flags, align 4, !dbg !1342
  br label %cleanup, !dbg !1339

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then35, %if.end31, %if.then8
  call void @llvm.dbg.label(metadata !1343), !dbg !1344
  %48 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1345
  %arrayidx46 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %48, i64 0, !dbg !1345
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx46, align 8, !dbg !1345
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %49) #3, !dbg !1346
  %50 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1347
  %arrayidx47 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %50, i64 1, !dbg !1347
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx47, align 8, !dbg !1347
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %51) #3, !dbg !1348
  %52 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %operand, align 8, !dbg !1349
  %arrayidx48 = getelementptr %union.acpi_operand_object*, %union.acpi_operand_object** %52, i64 2, !dbg !1349
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx48, align 8, !dbg !1349
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %53) #3, !dbg !1350
  %54 = load i32, i32* %status, align 4, !dbg !1351
  store i32 %54, i32* %retval, align 4, !dbg !1351
  br label %return, !dbg !1351

return:                                           ; preds = %cleanup, %if.then
  %55 = load i32, i32* %retval, align 4, !dbg !1352
  ret i32 %55, !dbg !1352
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_tb_find_table(i8*, i8*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_eval_data_object_operands(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op, %union.acpi_operand_object* %obj_desc) #0 !dbg !1353 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  %arg_desc = alloca %union.acpi_operand_object*, align 8
  %length = alloca i32, align 4
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1356, metadata !DIExpression()), !dbg !1357
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1358, metadata !DIExpression()), !dbg !1359
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1360, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %arg_desc, metadata !1364, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1366, metadata !DIExpression()), !dbg !1367
  %0 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1368
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %0, i32 0, i32 5, !dbg !1369
  %1 = load i8, i8* %num_operands, align 1, !dbg !1369
  %2 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1370
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %2, i32 0, i32 6, !dbg !1371
  store i8 %1, i8* %operand_index, align 2, !dbg !1372
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1373
  %common = bitcast %union.acpi_parse_object* %3 to %struct.acpi_parse_obj_common*, !dbg !1375
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1376
  %arg = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1377
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1377
  %tobool = icmp ne %union.acpi_parse_object* %4, null, !dbg !1373
  br i1 %tobool, label %if.end, label %if.then, !dbg !1378

if.then:                                          ; preds = %entry
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1379
  %common1 = bitcast %union.acpi_parse_object* %5 to %struct.acpi_parse_obj_common*, !dbg !1379
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common1, i32 0, i32 3, !dbg !1379
  %6 = load i16, i16* %aml_opcode, align 2, !dbg !1379
  %conv = zext i16 %6 to i32, !dbg !1379
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1379
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_acpi_module_name, i64 0, i64 0), i32 589, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %conv, %union.acpi_parse_object* %7) #3, !dbg !1379
  store i32 0, i32* %retval, align 4, !dbg !1381
  br label %return, !dbg !1381

if.end:                                           ; preds = %entry
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1382
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1383
  %common2 = bitcast %union.acpi_parse_object* %9 to %struct.acpi_parse_obj_common*, !dbg !1384
  %value3 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 7, !dbg !1385
  %arg4 = bitcast %union.acpi_parse_value* %value3 to %union.acpi_parse_object**, !dbg !1386
  %10 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg4, align 8, !dbg !1386
  %call = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %8, %union.acpi_parse_object* %10, i32 1) #3, !dbg !1387
  store i32 %call, i32* %status, align 4, !dbg !1388
  %11 = load i32, i32* %status, align 4, !dbg !1389
  %tobool5 = icmp ne i32 %11, 0, !dbg !1389
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1391

if.then6:                                         ; preds = %if.end
  %12 = load i32, i32* %status, align 4, !dbg !1392
  store i32 %12, i32* %retval, align 4, !dbg !1392
  br label %return, !dbg !1392

if.end7:                                          ; preds = %if.end
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1394
  %opcode = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 3, !dbg !1395
  %14 = load i16, i16* %opcode, align 2, !dbg !1395
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1396
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 28, !dbg !1397
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1398
  %num_operands8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 5, !dbg !1399
  %17 = load i8, i8* %num_operands8, align 1, !dbg !1399
  %conv9 = zext i8 %17 to i32, !dbg !1398
  %sub = sub i32 %conv9, 1, !dbg !1400
  %idxprom = sext i32 %sub to i64, !dbg !1396
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 %idxprom, !dbg !1396
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1401
  %call10 = call i32 @acpi_ex_resolve_operands(i16 zeroext %14, %union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %18) #3, !dbg !1402
  store i32 %call10, i32* %status, align 4, !dbg !1403
  %19 = load i32, i32* %status, align 4, !dbg !1404
  %tobool11 = icmp ne i32 %19, 0, !dbg !1404
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1406

if.then12:                                        ; preds = %if.end7
  %20 = load i32, i32* %status, align 4, !dbg !1407
  store i32 %20, i32* %retval, align 4, !dbg !1407
  br label %return, !dbg !1407

if.end13:                                         ; preds = %if.end7
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1409
  %operands14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 28, !dbg !1410
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1411
  %num_operands15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 5, !dbg !1412
  %23 = load i8, i8* %num_operands15, align 1, !dbg !1412
  %conv16 = zext i8 %23 to i32, !dbg !1411
  %sub17 = sub i32 %conv16, 1, !dbg !1413
  %idxprom18 = sext i32 %sub17 to i64, !dbg !1409
  %arrayidx19 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands14, i64 0, i64 %idxprom18, !dbg !1409
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx19, align 8, !dbg !1409
  store %union.acpi_operand_object* %24, %union.acpi_operand_object** %arg_desc, align 8, !dbg !1414
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arg_desc, align 8, !dbg !1415
  %integer = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_integer*, !dbg !1416
  %value20 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1417
  %26 = load i64, i64* %value20, align 8, !dbg !1417
  %conv21 = trunc i64 %26 to i32, !dbg !1418
  store i32 %conv21, i32* %length, align 4, !dbg !1419
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1420
  %call22 = call i32 @acpi_ds_obj_stack_pop(i32 1, %struct.acpi_walk_state* %27) #3, !dbg !1421
  store i32 %call22, i32* %status, align 4, !dbg !1422
  %28 = load i32, i32* %status, align 4, !dbg !1423
  %tobool23 = icmp ne i32 %28, 0, !dbg !1423
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1425

if.then24:                                        ; preds = %if.end13
  %29 = load i32, i32* %status, align 4, !dbg !1426
  store i32 %29, i32* %retval, align 4, !dbg !1426
  br label %return, !dbg !1426

if.end25:                                         ; preds = %if.end13
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arg_desc, align 8, !dbg !1428
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %30) #3, !dbg !1429
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1430
  %common26 = bitcast %union.acpi_parse_object* %31 to %struct.acpi_parse_obj_common*, !dbg !1431
  %aml_opcode27 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 3, !dbg !1432
  %32 = load i16, i16* %aml_opcode27, align 2, !dbg !1432
  %conv28 = zext i16 %32 to i32, !dbg !1430
  switch i32 %conv28, label %sw.default [
    i32 17, label %sw.bb
    i32 18, label %sw.bb30
    i32 19, label %sw.bb30
  ], !dbg !1433

sw.bb:                                            ; preds = %if.end25
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1434
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1436
  %35 = load i32, i32* %length, align 4, !dbg !1437
  %call29 = call i32 @acpi_ds_build_internal_buffer_obj(%struct.acpi_walk_state* %33, %union.acpi_parse_object* %34, i32 %35, %union.acpi_operand_object** %obj_desc.addr) #3, !dbg !1438
  store i32 %call29, i32* %status, align 4, !dbg !1439
  br label %sw.epilog, !dbg !1440

sw.bb30:                                          ; preds = %if.end25, %if.end25
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1441
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1442
  %38 = load i32, i32* %length, align 4, !dbg !1443
  %call31 = call i32 @acpi_ds_build_internal_package_obj(%struct.acpi_walk_state* %36, %union.acpi_parse_object* %37, i32 %38, %union.acpi_operand_object** %obj_desc.addr) #3, !dbg !1444
  store i32 %call31, i32* %status, align 4, !dbg !1445
  br label %sw.epilog, !dbg !1446

sw.default:                                       ; preds = %if.end25
  store i32 12289, i32* %retval, align 4, !dbg !1447
  br label %return, !dbg !1447

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb
  %39 = load i32, i32* %status, align 4, !dbg !1448
  %tobool32 = icmp ne i32 %39, 0, !dbg !1448
  br i1 %tobool32, label %if.end59, label %if.then33, !dbg !1450

if.then33:                                        ; preds = %sw.epilog
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1451
  %common34 = bitcast %union.acpi_parse_object* %40 to %struct.acpi_parse_obj_common*, !dbg !1454
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common34, i32 0, i32 0, !dbg !1455
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent, align 8, !dbg !1455
  %tobool35 = icmp ne %union.acpi_parse_object* %41, null, !dbg !1451
  br i1 %tobool35, label %lor.lhs.false, label %if.then57, !dbg !1456

lor.lhs.false:                                    ; preds = %if.then33
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1457
  %common36 = bitcast %union.acpi_parse_object* %42 to %struct.acpi_parse_obj_common*, !dbg !1458
  %parent37 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common36, i32 0, i32 0, !dbg !1459
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent37, align 8, !dbg !1459
  %common38 = bitcast %union.acpi_parse_object* %43 to %struct.acpi_parse_obj_common*, !dbg !1460
  %aml_opcode39 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common38, i32 0, i32 3, !dbg !1461
  %44 = load i16, i16* %aml_opcode39, align 2, !dbg !1461
  %conv40 = zext i16 %44 to i32, !dbg !1457
  %cmp = icmp ne i32 %conv40, 18, !dbg !1462
  br i1 %cmp, label %land.lhs.true, label %if.end58, !dbg !1463

land.lhs.true:                                    ; preds = %lor.lhs.false
  %45 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1464
  %common42 = bitcast %union.acpi_parse_object* %45 to %struct.acpi_parse_obj_common*, !dbg !1465
  %parent43 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common42, i32 0, i32 0, !dbg !1466
  %46 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent43, align 8, !dbg !1466
  %common44 = bitcast %union.acpi_parse_object* %46 to %struct.acpi_parse_obj_common*, !dbg !1467
  %aml_opcode45 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common44, i32 0, i32 3, !dbg !1468
  %47 = load i16, i16* %aml_opcode45, align 2, !dbg !1468
  %conv46 = zext i16 %47 to i32, !dbg !1464
  %cmp47 = icmp ne i32 %conv46, 19, !dbg !1469
  br i1 %cmp47, label %land.lhs.true49, label %if.end58, !dbg !1470

land.lhs.true49:                                  ; preds = %land.lhs.true
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1471
  %common50 = bitcast %union.acpi_parse_object* %48 to %struct.acpi_parse_obj_common*, !dbg !1472
  %parent51 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common50, i32 0, i32 0, !dbg !1473
  %49 = load %union.acpi_parse_object*, %union.acpi_parse_object** %parent51, align 8, !dbg !1473
  %common52 = bitcast %union.acpi_parse_object* %49 to %struct.acpi_parse_obj_common*, !dbg !1474
  %aml_opcode53 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common52, i32 0, i32 3, !dbg !1475
  %50 = load i16, i16* %aml_opcode53, align 2, !dbg !1475
  %conv54 = zext i16 %50 to i32, !dbg !1471
  %cmp55 = icmp ne i32 %conv54, 8, !dbg !1476
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !1477

if.then57:                                        ; preds = %land.lhs.true49, %if.then33
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1478
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1480
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 43, !dbg !1481
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %result_obj, align 8, !dbg !1482
  br label %if.end58, !dbg !1483

if.end58:                                         ; preds = %if.then57, %land.lhs.true49, %land.lhs.true, %lor.lhs.false
  br label %if.end59, !dbg !1484

if.end59:                                         ; preds = %if.end58, %sw.epilog
  %53 = load i32, i32* %status, align 4, !dbg !1485
  store i32 %53, i32* %retval, align 4, !dbg !1485
  br label %return, !dbg !1485

return:                                           ; preds = %if.end59, %sw.default, %if.then24, %if.then12, %if.then6, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !1486
  ret i32 %54, !dbg !1486
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_create_operand(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_obj_stack_pop(i32, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_build_internal_buffer_obj(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32, %union.acpi_operand_object**) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ds_build_internal_package_obj(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32, %union.acpi_operand_object**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ds_eval_bank_field_operands(%struct.acpi_walk_state* %walk_state, %union.acpi_parse_object* %op) #0 !dbg !1487 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %op.addr = alloca %union.acpi_parse_object*, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  %operand_desc = alloca %union.acpi_operand_object*, align 8
  %node = alloca %struct.acpi_namespace_node*, align 8
  %next_op = alloca %union.acpi_parse_object*, align 8
  %arg = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1488, metadata !DIExpression()), !dbg !1489
  store %union.acpi_parse_object* %op, %union.acpi_parse_object** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %op.addr, metadata !1490, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1492, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1494, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %operand_desc, metadata !1496, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %node, metadata !1498, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %next_op, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata %union.acpi_parse_object** %arg, metadata !1502, metadata !DIExpression()), !dbg !1503
  %0 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1504
  %common = bitcast %union.acpi_parse_object* %0 to %struct.acpi_parse_obj_common*, !dbg !1505
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common, i32 0, i32 7, !dbg !1506
  %arg1 = bitcast %union.acpi_parse_value* %value to %union.acpi_parse_object**, !dbg !1507
  %1 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg1, align 8, !dbg !1507
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %next_op, align 8, !dbg !1508
  %2 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1509
  %common2 = bitcast %union.acpi_parse_object* %2 to %struct.acpi_parse_obj_common*, !dbg !1510
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common2, i32 0, i32 5, !dbg !1511
  %3 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next, align 8, !dbg !1511
  store %union.acpi_parse_object* %3, %union.acpi_parse_object** %next_op, align 8, !dbg !1512
  %4 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1513
  %common3 = bitcast %union.acpi_parse_object* %4 to %struct.acpi_parse_obj_common*, !dbg !1514
  %next4 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common3, i32 0, i32 5, !dbg !1515
  %5 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next4, align 8, !dbg !1515
  store %union.acpi_parse_object* %5, %union.acpi_parse_object** %next_op, align 8, !dbg !1516
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1517
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 6, !dbg !1518
  store i8 0, i8* %operand_index, align 2, !dbg !1519
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1520
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next_op, align 8, !dbg !1521
  %call = call i32 @acpi_ds_create_operand(%struct.acpi_walk_state* %7, %union.acpi_parse_object* %8, i32 0) #3, !dbg !1522
  store i32 %call, i32* %status, align 4, !dbg !1523
  %9 = load i32, i32* %status, align 4, !dbg !1524
  %tobool = icmp ne i32 %9, 0, !dbg !1524
  br i1 %tobool, label %if.then, label %if.end, !dbg !1526

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %status, align 4, !dbg !1527
  store i32 %10, i32* %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end:                                           ; preds = %entry
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1529
  %operands = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 28, !dbg !1530
  %arrayidx = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands, i64 0, i64 0, !dbg !1529
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1531
  %call5 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %arrayidx, %struct.acpi_walk_state* %12) #3, !dbg !1532
  store i32 %call5, i32* %status, align 4, !dbg !1533
  %13 = load i32, i32* %status, align 4, !dbg !1534
  %tobool6 = icmp ne i32 %13, 0, !dbg !1534
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1536

if.then7:                                         ; preds = %if.end
  %14 = load i32, i32* %status, align 4, !dbg !1537
  store i32 %14, i32* %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

if.end8:                                          ; preds = %if.end
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1539
  %operands9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 28, !dbg !1540
  %arrayidx10 = getelementptr [9 x %union.acpi_operand_object*], [9 x %union.acpi_operand_object*]* %operands9, i64 0, i64 0, !dbg !1539
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %arrayidx10, align 8, !dbg !1539
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1541
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %op.addr, align 8, !dbg !1542
  %call11 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %17, i32 4) #3, !dbg !1543
  store %union.acpi_parse_object* %call11, %union.acpi_parse_object** %arg, align 8, !dbg !1544
  br label %while.cond, !dbg !1545

while.cond:                                       ; preds = %if.end25, %if.end8
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1546
  %tobool12 = icmp ne %union.acpi_parse_object* %18, null, !dbg !1545
  br i1 %tobool12, label %while.body, label %while.end, !dbg !1545

while.body:                                       ; preds = %while.cond
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1547
  %common13 = bitcast %union.acpi_parse_object* %19 to %struct.acpi_parse_obj_common*, !dbg !1550
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common13, i32 0, i32 3, !dbg !1551
  %20 = load i16, i16* %aml_opcode, align 2, !dbg !1551
  %conv = zext i16 %20 to i32, !dbg !1547
  %cmp = icmp eq i32 %conv, 48, !dbg !1552
  br i1 %cmp, label %if.then15, label %if.end25, !dbg !1553

if.then15:                                        ; preds = %while.body
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1554
  %common16 = bitcast %union.acpi_parse_object* %21 to %struct.acpi_parse_obj_common*, !dbg !1556
  %node17 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common16, i32 0, i32 6, !dbg !1557
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node17, align 8, !dbg !1557
  store %struct.acpi_namespace_node* %22, %struct.acpi_namespace_node** %node, align 8, !dbg !1558
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1559
  %call18 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %23) #3, !dbg !1560
  store %union.acpi_operand_object* %call18, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1561
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1562
  %tobool19 = icmp ne %union.acpi_operand_object* %24, null, !dbg !1562
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1564

if.then20:                                        ; preds = %if.then15
  store i32 6, i32* %retval, align 4, !dbg !1565
  br label %return, !dbg !1565

if.end21:                                         ; preds = %if.then15
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1567
  %integer = bitcast %union.acpi_operand_object* %25 to %struct.acpi_object_integer*, !dbg !1568
  %value22 = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !1569
  %26 = load i64, i64* %value22, align 8, !dbg !1569
  %conv23 = trunc i64 %26 to i32, !dbg !1570
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1571
  %bank_field = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_bank_field*, !dbg !1572
  %value24 = getelementptr inbounds %struct.acpi_object_bank_field, %struct.acpi_object_bank_field* %bank_field, i32 0, i32 11, !dbg !1573
  store i32 %conv23, i32* %value24, align 8, !dbg !1574
  br label %if.end25, !dbg !1575

if.end25:                                         ; preds = %if.end21, %while.body
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %arg, align 8, !dbg !1576
  %common26 = bitcast %union.acpi_parse_object* %28 to %struct.acpi_parse_obj_common*, !dbg !1577
  %next27 = getelementptr inbounds %struct.acpi_parse_obj_common, %struct.acpi_parse_obj_common* %common26, i32 0, i32 5, !dbg !1578
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %next27, align 8, !dbg !1578
  store %union.acpi_parse_object* %29, %union.acpi_parse_object** %arg, align 8, !dbg !1579
  br label %while.cond, !dbg !1545, !llvm.loop !1580

while.end:                                        ; preds = %while.cond
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %operand_desc, align 8, !dbg !1582
  call void @acpi_ut_remove_reference(%union.acpi_operand_object* %30) #3, !dbg !1583
  %31 = load i32, i32* %status, align 4, !dbg !1584
  store i32 %31, i32* %retval, align 4, !dbg !1584
  br label %return, !dbg !1584

return:                                           ; preds = %while.end, %if.then20, %if.then7, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !1585
  ret i32 %32, !dbg !1585
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #2

; Function Attrs: noredzone
declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_descriptor_name(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_bios_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_bios_exception(i8*, i32, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object*, i8 zeroext, i8 zeroext, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!806, !807, !808, !809}
!llvm.ident = !{!810}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 21, type: !804, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !803, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dsopcode.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 404, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "AML_FIELD_ACCESS_ANY", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "AML_FIELD_ACCESS_BYTE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "AML_FIELD_ACCESS_WORD", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "AML_FIELD_ACCESS_DWORD", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "AML_FIELD_ACCESS_QWORD", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "AML_FIELD_ACCESS_BUFFER", value: 5, isUnsigned: true)
!15 = !{!16, !22, !25, !18, !29, !33, !34, !35, !36}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !17, line: 421, baseType: !18)
!17 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !24)
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !17, line: 805, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !17, line: 129, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !32)
!32 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !17, line: 127, baseType: !30)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !38, line: 432, size: 1600, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !45, !801, !802}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !38, line: 433, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !38, line: 427, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !41, file: !38, line: 428, baseType: !35, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !38, line: 429, baseType: !26, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !37, file: !38, line: 434, baseType: !46, size: 576)
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !38, line: 367, size: 576, elements: !47)
!47 = !{!48, !57, !70, !82, !117, !131, !140, !453, !470, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !747, !764, !777, !791, !800}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !46, file: !38, line: 368, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !38, line: 73, size: 128, elements: !50)
!50 = !{!51, !53, !54, !55, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !38, line: 74, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !38, line: 74, baseType: !26, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !38, line: 74, baseType: !26, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !38, line: 74, baseType: !22, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !38, line: 74, baseType: !26, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !46, file: !38, line: 369, baseType: !58, size: 192)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !38, line: 76, size: 192, elements: !59)
!59 = !{!60, !61, !62, !63, !64, !65, !69}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !38, line: 77, baseType: !52, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !38, line: 77, baseType: !26, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !38, line: 77, baseType: !26, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !38, line: 77, baseType: !22, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !38, line: 77, baseType: !26, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !58, file: !38, line: 77, baseType: !66, size: 24, offset: 104)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !58, file: !38, line: 78, baseType: !30, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !46, file: !38, line: 370, baseType: !71, size: 256)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !38, line: 93, size: 256, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !81}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !71, file: !38, line: 94, baseType: !52, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !71, file: !38, line: 94, baseType: !26, size: 8, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !38, line: 94, baseType: !26, size: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !71, file: !38, line: 94, baseType: !22, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !38, line: 94, baseType: !26, size: 8, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !71, file: !38, line: 94, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !71, file: !38, line: 94, baseType: !18, size: 32, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !46, file: !38, line: 371, baseType: !83, size: 384)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !38, line: 97, size: 384, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !38, line: 98, baseType: !52, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !38, line: 98, baseType: !26, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !38, line: 98, baseType: !26, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !38, line: 98, baseType: !22, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !38, line: 98, baseType: !26, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !83, file: !38, line: 98, baseType: !34, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !38, line: 98, baseType: !18, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !83, file: !38, line: 99, baseType: !18, size: 32, offset: 224)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !83, file: !38, line: 100, baseType: !34, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !38, line: 101, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !97, line: 133, size: 384, elements: !98)
!97 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!98 = !{!99, !100, !101, !102, !103, !112, !113, !114, !115}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !96, file: !97, line: 134, baseType: !52, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !97, line: 135, baseType: !26, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !97, line: 136, baseType: !26, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !97, line: 137, baseType: !22, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !96, file: !97, line: 138, baseType: !104, size: 32, offset: 96)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !105, line: 327, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !104, file: !105, line: 328, baseType: !18, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !104, file: !105, line: 329, baseType: !109, size: 32)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 4)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !96, file: !97, line: 139, baseType: !95, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !96, file: !97, line: 140, baseType: !95, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !96, file: !97, line: 141, baseType: !95, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !96, file: !97, line: 142, baseType: !116, size: 16, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !17, line: 445, baseType: !22)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !46, file: !38, line: 372, baseType: !118, size: 384)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !38, line: 104, size: 384, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !128, !129, !130}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !38, line: 105, baseType: !52, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !38, line: 105, baseType: !26, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !38, line: 105, baseType: !26, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !38, line: 105, baseType: !22, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !38, line: 105, baseType: !26, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !38, line: 105, baseType: !95, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !118, file: !38, line: 106, baseType: !127, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !118, file: !38, line: 107, baseType: !34, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !118, file: !38, line: 108, baseType: !18, size: 32, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !118, file: !38, line: 109, baseType: !18, size: 32, offset: 352)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !38, line: 373, baseType: !132, size: 192)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !38, line: 118, size: 192, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !132, file: !38, line: 119, baseType: !52, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !132, file: !38, line: 119, baseType: !26, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !38, line: 119, baseType: !26, size: 8, offset: 72)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !132, file: !38, line: 119, baseType: !22, size: 16, offset: 80)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !38, line: 119, baseType: !26, size: 8, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !132, file: !38, line: 119, baseType: !35, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !46, file: !38, line: 374, baseType: !141, size: 448)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !38, line: 143, size: 448, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !450, !451, !452}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !141, file: !38, line: 144, baseType: !52, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !141, file: !38, line: 144, baseType: !26, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !38, line: 144, baseType: !26, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !141, file: !38, line: 144, baseType: !22, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !38, line: 144, baseType: !26, size: 8, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !141, file: !38, line: 144, baseType: !26, size: 8, offset: 104)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !141, file: !38, line: 145, baseType: !26, size: 8, offset: 112)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !141, file: !38, line: 146, baseType: !26, size: 8, offset: 120)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !141, file: !38, line: 147, baseType: !52, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !141, file: !38, line: 148, baseType: !52, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !141, file: !38, line: 149, baseType: !34, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !141, file: !38, line: 153, baseType: !155, size: 64, offset: 320)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !38, line: 150, size: 64, elements: !156)
!156 = !{!157, !449}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !155, file: !38, line: 151, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !97, line: 248, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!16, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !164, line: 37, size: 9024, elements: !165)
!164 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !395, !396, !397, !398, !399, !403, !405, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !432, !433, !434, !435, !436, !437, !438, !439, !441, !447}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 38, baseType: !162, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !164, line: 39, baseType: !26, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !163, file: !164, line: 40, baseType: !26, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !163, file: !164, line: 41, baseType: !22, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !163, file: !164, line: 42, baseType: !26, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !163, file: !164, line: 43, baseType: !26, size: 8, offset: 104)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !163, file: !164, line: 44, baseType: !26, size: 8, offset: 112)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !164, line: 45, baseType: !116, size: 16, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !163, file: !164, line: 46, baseType: !26, size: 8, offset: 144)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !163, file: !164, line: 47, baseType: !26, size: 8, offset: 152)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !163, file: !164, line: 48, baseType: !26, size: 8, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !163, file: !164, line: 49, baseType: !26, size: 8, offset: 168)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !163, file: !164, line: 50, baseType: !26, size: 8, offset: 176)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !163, file: !164, line: 51, baseType: !26, size: 8, offset: 184)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !163, file: !164, line: 52, baseType: !26, size: 8, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !163, file: !164, line: 53, baseType: !26, size: 8, offset: 200)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !163, file: !164, line: 54, baseType: !34, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !163, file: !164, line: 55, baseType: !18, size: 32, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !163, file: !164, line: 56, baseType: !18, size: 32, offset: 352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !163, file: !164, line: 57, baseType: !18, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !163, file: !164, line: 58, baseType: !18, size: 32, offset: 416)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !163, file: !164, line: 60, baseType: !188, size: 640, offset: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !97, line: 893, size: 640, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !276, !277, !393, !394}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !188, file: !97, line: 894, baseType: !34, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !97, line: 895, baseType: !34, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !188, file: !97, line: 896, baseType: !34, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !188, file: !97, line: 897, baseType: !34, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !188, file: !97, line: 898, baseType: !34, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !188, file: !97, line: 899, baseType: !196, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !97, line: 875, size: 1600, elements: !198)
!198 = !{!199, !219, !235}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !197, file: !97, line: 876, baseType: !200, size: 448)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !97, line: 828, size: 448, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !218}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !97, line: 829, baseType: !196, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !97, line: 829, baseType: !26, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !97, line: 829, baseType: !26, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !200, file: !97, line: 829, baseType: !22, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !200, file: !97, line: 829, baseType: !34, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !97, line: 829, baseType: !196, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !97, line: 829, baseType: !95, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !200, file: !97, line: 829, baseType: !210, size: 64, offset: 320)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !97, line: 716, size: 64, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !210, file: !97, line: 717, baseType: !30, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !210, file: !97, line: 718, baseType: !18, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !210, file: !97, line: 719, baseType: !79, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !210, file: !97, line: 720, baseType: !34, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !97, line: 721, baseType: !79, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !210, file: !97, line: 722, baseType: !196, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !200, file: !97, line: 829, baseType: !26, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !197, file: !97, line: 877, baseType: !220, size: 640)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !97, line: 835, size: 640, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !220, file: !97, line: 836, baseType: !196, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !220, file: !97, line: 836, baseType: !26, size: 8, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !97, line: 836, baseType: !26, size: 8, offset: 72)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !220, file: !97, line: 836, baseType: !22, size: 16, offset: 80)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !220, file: !97, line: 836, baseType: !34, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !220, file: !97, line: 836, baseType: !196, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !220, file: !97, line: 836, baseType: !95, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !220, file: !97, line: 836, baseType: !210, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !220, file: !97, line: 836, baseType: !26, size: 8, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !220, file: !97, line: 836, baseType: !79, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !220, file: !97, line: 837, baseType: !34, size: 64, offset: 512)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !220, file: !97, line: 838, baseType: !18, size: 32, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !97, line: 839, baseType: !18, size: 32, offset: 608)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !197, file: !97, line: 878, baseType: !236, size: 1600)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !97, line: 846, size: 1600, elements: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !97, line: 847, baseType: !196, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !236, file: !97, line: 847, baseType: !26, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !97, line: 847, baseType: !26, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !236, file: !97, line: 847, baseType: !22, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !236, file: !97, line: 847, baseType: !34, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !236, file: !97, line: 847, baseType: !196, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !236, file: !97, line: 847, baseType: !95, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !236, file: !97, line: 847, baseType: !210, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !236, file: !97, line: 847, baseType: !26, size: 8, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !236, file: !97, line: 847, baseType: !196, size: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !236, file: !97, line: 848, baseType: !196, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !236, file: !97, line: 849, baseType: !79, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !236, file: !97, line: 850, baseType: !26, size: 8, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !236, file: !97, line: 851, baseType: !79, size: 64, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !236, file: !97, line: 852, baseType: !79, size: 64, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !236, file: !97, line: 853, baseType: !79, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !236, file: !97, line: 854, baseType: !109, size: 32, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !236, file: !97, line: 855, baseType: !18, size: 32, offset: 928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !236, file: !97, line: 856, baseType: !18, size: 32, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !236, file: !97, line: 857, baseType: !18, size: 32, offset: 992)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !236, file: !97, line: 858, baseType: !18, size: 32, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !236, file: !97, line: 859, baseType: !18, size: 32, offset: 1056)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !236, file: !97, line: 860, baseType: !18, size: 32, offset: 1088)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !236, file: !97, line: 861, baseType: !18, size: 32, offset: 1120)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !236, file: !97, line: 862, baseType: !18, size: 32, offset: 1152)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !236, file: !97, line: 863, baseType: !18, size: 32, offset: 1184)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !236, file: !97, line: 864, baseType: !18, size: 32, offset: 1216)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !236, file: !97, line: 865, baseType: !18, size: 32, offset: 1248)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !236, file: !97, line: 866, baseType: !18, size: 32, offset: 1280)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !236, file: !97, line: 867, baseType: !18, size: 32, offset: 1312)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !236, file: !97, line: 868, baseType: !22, size: 16, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !236, file: !97, line: 869, baseType: !26, size: 8, offset: 1360)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !236, file: !97, line: 870, baseType: !26, size: 8, offset: 1368)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !236, file: !97, line: 871, baseType: !26, size: 8, offset: 1376)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !236, file: !97, line: 872, baseType: !273, size: 160, offset: 1384)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 20)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !188, file: !97, line: 900, baseType: !95, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !188, file: !97, line: 901, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !97, line: 663, size: 640, elements: !280)
!280 = !{!281, !289, !302, !311, !320, !333, !347, !359, !371}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !279, file: !97, line: 664, baseType: !282, size: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !97, line: 567, size: 128, elements: !283)
!283 = !{!284, !285, !286, !287, !288}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !97, line: 568, baseType: !35, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !282, file: !97, line: 568, baseType: !26, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !97, line: 568, baseType: !26, size: 8, offset: 72)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !282, file: !97, line: 568, baseType: !22, size: 16, offset: 80)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !97, line: 568, baseType: !22, size: 16, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !279, file: !97, line: 665, baseType: !290, size: 384)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !97, line: 593, size: 384, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !97, line: 594, baseType: !35, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !290, file: !97, line: 594, baseType: !26, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !97, line: 594, baseType: !26, size: 8, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !97, line: 594, baseType: !22, size: 16, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !97, line: 594, baseType: !22, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !290, file: !97, line: 594, baseType: !22, size: 16, offset: 112)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !290, file: !97, line: 595, baseType: !196, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !290, file: !97, line: 596, baseType: !34, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !290, file: !97, line: 597, baseType: !34, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !290, file: !97, line: 598, baseType: !30, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !279, file: !97, line: 666, baseType: !303, size: 192)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !97, line: 573, size: 192, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !97, line: 574, baseType: !35, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !97, line: 574, baseType: !26, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !97, line: 574, baseType: !26, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !97, line: 574, baseType: !22, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !97, line: 574, baseType: !22, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !303, file: !97, line: 574, baseType: !52, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !279, file: !97, line: 667, baseType: !312, size: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !97, line: 604, size: 192, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !97, line: 605, baseType: !35, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !97, line: 605, baseType: !26, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !97, line: 605, baseType: !26, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !97, line: 605, baseType: !22, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !97, line: 605, baseType: !22, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !312, file: !97, line: 605, baseType: !95, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !279, file: !97, line: 668, baseType: !321, size: 448)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !97, line: 608, size: 448, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !97, line: 609, baseType: !35, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !97, line: 609, baseType: !26, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !97, line: 609, baseType: !26, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !97, line: 609, baseType: !22, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !97, line: 609, baseType: !22, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !321, file: !97, line: 609, baseType: !18, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !321, file: !97, line: 610, baseType: !196, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !321, file: !97, line: 611, baseType: !34, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !321, file: !97, line: 612, baseType: !34, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !321, file: !97, line: 613, baseType: !18, size: 32, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !279, file: !97, line: 669, baseType: !334, size: 512)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !97, line: 580, size: 512, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !97, line: 581, baseType: !35, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !97, line: 581, baseType: !26, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !97, line: 581, baseType: !26, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !97, line: 581, baseType: !22, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !97, line: 581, baseType: !22, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !334, file: !97, line: 581, baseType: !18, size: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !334, file: !97, line: 582, baseType: !52, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !334, file: !97, line: 583, baseType: !52, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !334, file: !97, line: 584, baseType: !162, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !334, file: !97, line: 585, baseType: !35, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !334, file: !97, line: 586, baseType: !18, size: 32, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !279, file: !97, line: 670, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !97, line: 620, size: 320, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !97, line: 621, baseType: !35, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !97, line: 621, baseType: !26, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !97, line: 621, baseType: !26, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !97, line: 621, baseType: !22, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !97, line: 621, baseType: !22, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !348, file: !97, line: 621, baseType: !26, size: 8, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !348, file: !97, line: 622, baseType: !162, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !348, file: !97, line: 623, baseType: !52, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !348, file: !97, line: 624, baseType: !30, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !279, file: !97, line: 671, baseType: !360, size: 640)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !97, line: 631, size: 640, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !97, line: 632, baseType: !35, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !97, line: 632, baseType: !26, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !97, line: 632, baseType: !26, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !97, line: 632, baseType: !22, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !97, line: 632, baseType: !22, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !360, file: !97, line: 633, baseType: !368, size: 512, offset: 128)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !279, file: !97, line: 672, baseType: !372, size: 320)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !97, line: 654, size: 320, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !97, line: 655, baseType: !35, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !372, file: !97, line: 655, baseType: !26, size: 8, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !97, line: 655, baseType: !26, size: 8, offset: 72)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !372, file: !97, line: 655, baseType: !22, size: 16, offset: 80)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !372, file: !97, line: 655, baseType: !22, size: 16, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !372, file: !97, line: 655, baseType: !26, size: 8, offset: 112)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !372, file: !97, line: 656, baseType: !95, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !372, file: !97, line: 657, baseType: !52, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !372, file: !97, line: 658, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !97, line: 645, size: 128, elements: !385)
!385 = !{!386, !392}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !384, file: !97, line: 646, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !17, line: 1052, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !391, !18, !35}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !17, line: 424, baseType: !35)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !384, file: !97, line: 647, baseType: !35, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !188, file: !97, line: 902, baseType: !196, size: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !188, file: !97, line: 903, baseType: !18, size: 32, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !163, file: !164, line: 61, baseType: !18, size: 32, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !163, file: !164, line: 62, baseType: !18, size: 32, offset: 1120)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !163, file: !164, line: 63, baseType: !22, size: 16, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !163, file: !164, line: 64, baseType: !26, size: 8, offset: 1168)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !163, file: !164, line: 66, baseType: !400, size: 2688, offset: 1216)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2688, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !163, file: !164, line: 67, baseType: !404, size: 3072, offset: 3904)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 3072, elements: !369)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !163, file: !164, line: 68, baseType: !406, size: 576, offset: 6976)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 576, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 9)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !163, file: !164, line: 69, baseType: !127, size: 64, offset: 7552)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !163, file: !164, line: 71, baseType: !34, size: 64, offset: 7616)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !163, file: !164, line: 72, baseType: !127, size: 64, offset: 7680)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !163, file: !164, line: 73, baseType: !278, size: 64, offset: 7744)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !163, file: !164, line: 74, baseType: !95, size: 64, offset: 7808)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !163, file: !164, line: 75, baseType: !52, size: 64, offset: 7872)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !163, file: !164, line: 76, baseType: !95, size: 64, offset: 7936)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !163, file: !164, line: 77, baseType: !196, size: 64, offset: 8000)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !163, file: !164, line: 78, baseType: !52, size: 64, offset: 8064)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !163, file: !164, line: 79, baseType: !95, size: 64, offset: 8128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !163, file: !164, line: 80, baseType: !79, size: 64, offset: 8192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !163, file: !164, line: 81, baseType: !196, size: 64, offset: 8256)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !163, file: !164, line: 82, baseType: !422, size: 64, offset: 8320)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !97, line: 702, size: 128, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !424, file: !97, line: 706, baseType: !18, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !424, file: !97, line: 707, baseType: !18, size: 32, offset: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !97, line: 708, baseType: !22, size: 16, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !424, file: !97, line: 709, baseType: !26, size: 8, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !424, file: !97, line: 710, baseType: !26, size: 8, offset: 88)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !97, line: 711, baseType: !26, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !163, file: !164, line: 83, baseType: !196, size: 64, offset: 8384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !163, file: !164, line: 84, baseType: !52, size: 64, offset: 8448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !163, file: !164, line: 85, baseType: !278, size: 64, offset: 8512)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !163, file: !164, line: 86, baseType: !52, size: 64, offset: 8576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !163, file: !164, line: 87, baseType: !278, size: 64, offset: 8640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !163, file: !164, line: 88, baseType: !196, size: 64, offset: 8704)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !163, file: !164, line: 89, baseType: !196, size: 64, offset: 8768)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !163, file: !164, line: 90, baseType: !440, size: 64, offset: 8832)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !163, file: !164, line: 91, baseType: !442, size: 64, offset: 8896)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !97, line: 637, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!16, !162, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !163, file: !164, line: 92, baseType: !448, size: 64, offset: 8960)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !97, line: 641, baseType: !159)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !155, file: !38, line: 152, baseType: !52, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !141, file: !38, line: 155, baseType: !18, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !141, file: !38, line: 156, baseType: !116, size: 16, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !141, file: !38, line: 157, baseType: !26, size: 8, offset: 432)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !46, file: !38, line: 375, baseType: !454, size: 576)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !38, line: 122, size: 576, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !38, line: 123, baseType: !52, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !38, line: 123, baseType: !26, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !38, line: 123, baseType: !26, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !38, line: 123, baseType: !22, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !38, line: 123, baseType: !26, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !454, file: !38, line: 123, baseType: !26, size: 8, offset: 104)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !454, file: !38, line: 124, baseType: !22, size: 16, offset: 112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !454, file: !38, line: 125, baseType: !35, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !454, file: !38, line: 126, baseType: !30, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !454, file: !38, line: 127, baseType: !440, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !454, file: !38, line: 128, baseType: !52, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !38, line: 129, baseType: !52, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !38, line: 130, baseType: !95, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !454, file: !38, line: 131, baseType: !26, size: 8, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !46, file: !38, line: 376, baseType: !471, size: 448)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !38, line: 134, size: 448, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !38, line: 135, baseType: !52, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !38, line: 135, baseType: !26, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !38, line: 135, baseType: !26, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !38, line: 135, baseType: !22, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !38, line: 135, baseType: !26, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !471, file: !38, line: 135, baseType: !26, size: 8, offset: 104)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !471, file: !38, line: 136, baseType: !95, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !471, file: !38, line: 137, baseType: !52, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !38, line: 138, baseType: !52, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !471, file: !38, line: 139, baseType: !29, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !471, file: !38, line: 140, baseType: !18, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !46, file: !38, line: 377, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !38, line: 184, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !38, line: 185, baseType: !52, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !38, line: 185, baseType: !26, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !38, line: 185, baseType: !26, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !38, line: 185, baseType: !22, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !38, line: 185, baseType: !26, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !38, line: 185, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !38, line: 185, baseType: !52, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !46, file: !38, line: 378, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !38, line: 187, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !38, line: 188, baseType: !52, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !38, line: 188, baseType: !26, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !38, line: 188, baseType: !26, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !38, line: 188, baseType: !22, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !38, line: 188, baseType: !26, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !38, line: 189, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !38, line: 189, baseType: !52, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !38, line: 189, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !97, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !97, line: 481, baseType: !95, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !97, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !97, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !97, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !97, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !97, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !97, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !97, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !97, line: 501, baseType: !18, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !97, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !97, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !97, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !97, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !97, line: 460, baseType: !26, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !97, line: 461, baseType: !30, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !97, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !97, line: 469, baseType: !22, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !97, line: 470, baseType: !26, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !97, line: 471, baseType: !26, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !97, line: 472, baseType: !26, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !97, line: 473, baseType: !26, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !97, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !97, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !97, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !97, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !97, line: 439, baseType: !95, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !97, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !97, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !97, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !17, line: 1049, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!18, !391, !18, !35}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !97, line: 421, baseType: !35, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !97, line: 422, baseType: !95, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !97, line: 423, baseType: !26, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !97, line: 424, baseType: !26, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !97, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !97, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !97, line: 430, baseType: !95, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !97, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !97, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !97, line: 451, baseType: !26, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !97, line: 452, baseType: !26, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !97, line: 453, baseType: !26, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !97, line: 454, baseType: !26, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !97, line: 487, baseType: !30, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !97, line: 488, baseType: !18, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !97, line: 489, baseType: !22, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !97, line: 490, baseType: !22, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !97, line: 491, baseType: !26, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !97, line: 492, baseType: !26, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !46, file: !38, line: 379, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !38, line: 192, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !38, line: 193, baseType: !52, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !38, line: 193, baseType: !26, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !38, line: 193, baseType: !26, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !38, line: 193, baseType: !22, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !38, line: 193, baseType: !26, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !38, line: 193, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !38, line: 193, baseType: !52, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !38, line: 193, baseType: !18, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !38, line: 194, baseType: !18, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !46, file: !38, line: 380, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !38, line: 197, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !38, line: 198, baseType: !52, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !38, line: 198, baseType: !26, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !38, line: 198, baseType: !26, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !38, line: 198, baseType: !22, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !38, line: 198, baseType: !26, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !38, line: 200, baseType: !26, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !38, line: 201, baseType: !26, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !38, line: 202, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !38, line: 202, baseType: !52, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !38, line: 202, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !17, line: 128, baseType: !30)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !46, file: !38, line: 381, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !38, line: 205, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !38, line: 206, baseType: !52, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !38, line: 206, baseType: !26, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !38, line: 206, baseType: !26, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !38, line: 206, baseType: !22, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !38, line: 206, baseType: !26, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !38, line: 206, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !38, line: 206, baseType: !52, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !46, file: !38, line: 382, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !38, line: 233, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !38, line: 234, baseType: !52, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !38, line: 234, baseType: !22, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !38, line: 234, baseType: !95, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !38, line: 234, baseType: !18, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !38, line: 234, baseType: !18, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !38, line: 234, baseType: !18, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !38, line: 234, baseType: !26, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !38, line: 234, baseType: !52, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !46, file: !38, line: 383, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !38, line: 237, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !38, line: 238, baseType: !52, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !38, line: 238, baseType: !22, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !38, line: 238, baseType: !95, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !38, line: 238, baseType: !18, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !38, line: 238, baseType: !18, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !38, line: 238, baseType: !18, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !38, line: 238, baseType: !26, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !38, line: 238, baseType: !22, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !38, line: 239, baseType: !52, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !38, line: 240, baseType: !34, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !38, line: 241, baseType: !22, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !38, line: 242, baseType: !34, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !46, file: !38, line: 384, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !38, line: 262, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !38, line: 263, baseType: !52, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !38, line: 263, baseType: !22, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !38, line: 263, baseType: !95, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !38, line: 263, baseType: !18, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !38, line: 263, baseType: !18, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !38, line: 263, baseType: !18, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !38, line: 263, baseType: !26, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !38, line: 264, baseType: !52, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !46, file: !38, line: 385, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !38, line: 245, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !38, line: 246, baseType: !52, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !38, line: 246, baseType: !22, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !38, line: 246, baseType: !95, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !38, line: 246, baseType: !18, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !38, line: 246, baseType: !18, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !38, line: 246, baseType: !18, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !38, line: 246, baseType: !26, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !38, line: 246, baseType: !52, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !38, line: 247, baseType: !52, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !46, file: !38, line: 386, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !38, line: 250, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !38, line: 251, baseType: !52, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !38, line: 251, baseType: !22, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !38, line: 251, baseType: !95, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !38, line: 251, baseType: !18, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !38, line: 251, baseType: !18, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !38, line: 251, baseType: !18, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !38, line: 251, baseType: !26, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !38, line: 256, baseType: !52, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !38, line: 257, baseType: !52, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !46, file: !38, line: 387, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !38, line: 273, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !38, line: 274, baseType: !52, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !38, line: 274, baseType: !26, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !38, line: 274, baseType: !26, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !38, line: 274, baseType: !22, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !38, line: 274, baseType: !26, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !38, line: 274, baseType: !95, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !38, line: 275, baseType: !18, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !38, line: 276, baseType: !387, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !38, line: 277, baseType: !35, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !38, line: 278, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !46, file: !38, line: 388, baseType: !722, size: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !38, line: 281, size: 512, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !745, !746}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !38, line: 282, baseType: !52, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !38, line: 282, baseType: !26, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !38, line: 282, baseType: !26, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !38, line: 282, baseType: !22, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !38, line: 282, baseType: !26, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !38, line: 282, baseType: !26, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !38, line: 283, baseType: !26, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !38, line: 284, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !17, line: 1084, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!16, !18, !29, !18, !736, !35, !35}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !38, line: 285, baseType: !95, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !38, line: 286, baseType: !35, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !38, line: 287, baseType: !740, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !17, line: 1102, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!16, !391, !18, !35, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !38, line: 288, baseType: !52, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !38, line: 289, baseType: !52, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !46, file: !38, line: 389, baseType: !748, size: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !38, line: 307, size: 512, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !38, line: 308, baseType: !52, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !38, line: 308, baseType: !26, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !38, line: 308, baseType: !26, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !38, line: 308, baseType: !22, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !38, line: 308, baseType: !26, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !748, file: !38, line: 308, baseType: !26, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !748, file: !38, line: 309, baseType: !26, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !748, file: !38, line: 310, baseType: !26, size: 8, offset: 120)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !748, file: !38, line: 311, baseType: !35, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !748, file: !38, line: 312, baseType: !95, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !748, file: !38, line: 313, baseType: !127, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !748, file: !38, line: 314, baseType: !34, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !748, file: !38, line: 315, baseType: !34, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !748, file: !38, line: 316, baseType: !18, size: 32, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !46, file: !38, line: 390, baseType: !765, size: 448)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !38, line: 340, size: 448, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !38, line: 341, baseType: !52, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !38, line: 341, baseType: !26, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !38, line: 341, baseType: !26, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !38, line: 341, baseType: !22, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !38, line: 341, baseType: !26, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !765, file: !38, line: 341, baseType: !95, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !765, file: !38, line: 342, baseType: !95, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !765, file: !38, line: 343, baseType: !35, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !765, file: !38, line: 344, baseType: !34, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !765, file: !38, line: 345, baseType: !18, size: 32, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !38, line: 391, baseType: !778, size: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !38, line: 350, size: 256, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !778, file: !38, line: 351, baseType: !52, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !778, file: !38, line: 351, baseType: !26, size: 8, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !778, file: !38, line: 351, baseType: !26, size: 8, offset: 72)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !778, file: !38, line: 351, baseType: !22, size: 16, offset: 80)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !38, line: 351, baseType: !26, size: 8, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !778, file: !38, line: 351, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !17, line: 1055, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !391, !35}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !778, file: !38, line: 352, baseType: !35, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !46, file: !38, line: 392, baseType: !792, size: 192)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !38, line: 357, size: 192, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !38, line: 358, baseType: !52, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !38, line: 358, baseType: !26, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !38, line: 358, baseType: !26, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !38, line: 358, baseType: !22, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !38, line: 358, baseType: !26, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !792, file: !38, line: 358, baseType: !52, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !46, file: !38, line: 399, baseType: !96, size: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !38, line: 435, baseType: !96, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !37, file: !38, line: 436, baseType: !197, size: 1600)
!803 = !{!0}
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 72, elements: !407)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!806 = !{i32 7, !"Dwarf Version", i32 4}
!807 = !{i32 2, !"Debug Info Version", i32 3}
!808 = !{i32 1, !"wchar_size", i32 2}
!809 = !{i32 1, !"Code Model", i32 2}
!810 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!811 = distinct !DISubprogram(name: "acpi_ds_initialize_region", scope: !3, file: !3, line: 44, type: !812, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!16, !391}
!814 = !{}
!815 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !811, file: !3, line: 44, type: !391)
!816 = !DILocation(line: 44, column: 51, scope: !811)
!817 = !DILocalVariable(name: "obj_desc", scope: !811, file: !3, line: 46, type: !52)
!818 = !DILocation(line: 46, column: 29, scope: !811)
!819 = !DILocalVariable(name: "status", scope: !811, file: !3, line: 47, type: !16)
!820 = !DILocation(line: 47, column: 14, scope: !811)
!821 = !DILocation(line: 49, column: 41, scope: !811)
!822 = !DILocation(line: 49, column: 13, scope: !811)
!823 = !DILocation(line: 49, column: 11, scope: !811)
!824 = !DILocation(line: 53, column: 37, scope: !811)
!825 = !DILocation(line: 53, column: 11, scope: !811)
!826 = !DILocation(line: 53, column: 9, scope: !811)
!827 = !DILocation(line: 54, column: 10, scope: !811)
!828 = !DILocation(line: 54, column: 2, scope: !811)
!829 = distinct !DISubprogram(name: "acpi_ds_eval_buffer_field_operands", scope: !3, file: !3, line: 268, type: !830, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!830 = !DISubroutineType(types: !831)
!831 = !{!16, !162, !196}
!832 = !DILocalVariable(name: "walk_state", arg: 1, scope: !829, file: !3, line: 268, type: !162)
!833 = !DILocation(line: 268, column: 60, scope: !829)
!834 = !DILocalVariable(name: "op", arg: 2, scope: !829, file: !3, line: 269, type: !196)
!835 = !DILocation(line: 269, column: 33, scope: !829)
!836 = !DILocalVariable(name: "status", scope: !829, file: !3, line: 271, type: !16)
!837 = !DILocation(line: 271, column: 14, scope: !829)
!838 = !DILocalVariable(name: "obj_desc", scope: !829, file: !3, line: 272, type: !52)
!839 = !DILocation(line: 272, column: 29, scope: !829)
!840 = !DILocalVariable(name: "node", scope: !829, file: !3, line: 273, type: !95)
!841 = !DILocation(line: 273, column: 30, scope: !829)
!842 = !DILocalVariable(name: "next_op", scope: !829, file: !3, line: 274, type: !196)
!843 = !DILocation(line: 274, column: 27, scope: !829)
!844 = !DILocation(line: 282, column: 9, scope: !829)
!845 = !DILocation(line: 282, column: 13, scope: !829)
!846 = !DILocation(line: 282, column: 20, scope: !829)
!847 = !DILocation(line: 282, column: 7, scope: !829)
!848 = !DILocation(line: 286, column: 12, scope: !829)
!849 = !DILocation(line: 286, column: 16, scope: !829)
!850 = !DILocation(line: 286, column: 23, scope: !829)
!851 = !DILocation(line: 286, column: 29, scope: !829)
!852 = !DILocation(line: 286, column: 10, scope: !829)
!853 = !DILocation(line: 290, column: 35, scope: !829)
!854 = !DILocation(line: 290, column: 47, scope: !829)
!855 = !DILocation(line: 290, column: 11, scope: !829)
!856 = !DILocation(line: 290, column: 9, scope: !829)
!857 = !DILocation(line: 291, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !829, file: !3, line: 291, column: 6)
!859 = !DILocation(line: 291, column: 6, scope: !829)
!860 = !DILocation(line: 292, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 291, column: 28)
!862 = !DILocation(line: 295, column: 41, scope: !829)
!863 = !DILocation(line: 295, column: 13, scope: !829)
!864 = !DILocation(line: 295, column: 11, scope: !829)
!865 = !DILocation(line: 296, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !829, file: !3, line: 296, column: 6)
!867 = !DILocation(line: 296, column: 6, scope: !829)
!868 = !DILocation(line: 297, column: 3, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 296, column: 17)
!870 = !DILocation(line: 303, column: 31, scope: !829)
!871 = !DILocation(line: 303, column: 35, scope: !829)
!872 = !DILocation(line: 303, column: 42, scope: !829)
!873 = !DILocation(line: 303, column: 54, scope: !829)
!874 = !DILocation(line: 304, column: 10, scope: !829)
!875 = !DILocation(line: 303, column: 6, scope: !829)
!876 = !DILocation(line: 302, column: 9, scope: !829)
!877 = !DILocation(line: 305, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !829, file: !3, line: 305, column: 6)
!879 = !DILocation(line: 305, column: 6, scope: !829)
!880 = !DILocation(line: 306, column: 3, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 305, column: 28)
!882 = !DILocation(line: 310, column: 3, scope: !881)
!883 = !DILocation(line: 315, column: 6, scope: !884)
!884 = distinct !DILexicalBlock(scope: !829, file: !3, line: 315, column: 6)
!885 = !DILocation(line: 315, column: 10, scope: !884)
!886 = !DILocation(line: 315, column: 17, scope: !884)
!887 = !DILocation(line: 315, column: 28, scope: !884)
!888 = !DILocation(line: 315, column: 6, scope: !829)
!889 = !DILocation(line: 320, column: 33, scope: !890)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 315, column: 52)
!891 = !DILocation(line: 320, column: 37, scope: !890)
!892 = !DILocation(line: 320, column: 44, scope: !890)
!893 = !DILocation(line: 320, column: 56, scope: !890)
!894 = !DILocation(line: 321, column: 12, scope: !890)
!895 = !DILocation(line: 321, column: 24, scope: !890)
!896 = !DILocation(line: 322, column: 12, scope: !890)
!897 = !DILocation(line: 322, column: 24, scope: !890)
!898 = !DILocation(line: 323, column: 12, scope: !890)
!899 = !DILocation(line: 323, column: 24, scope: !890)
!900 = !DILocation(line: 324, column: 12, scope: !890)
!901 = !DILocation(line: 324, column: 24, scope: !890)
!902 = !DILocation(line: 320, column: 7, scope: !890)
!903 = !DILocation(line: 319, column: 10, scope: !890)
!904 = !DILocation(line: 325, column: 2, scope: !890)
!905 = !DILocation(line: 329, column: 33, scope: !906)
!906 = distinct !DILexicalBlock(scope: !884, file: !3, line: 325, column: 9)
!907 = !DILocation(line: 329, column: 37, scope: !906)
!908 = !DILocation(line: 329, column: 44, scope: !906)
!909 = !DILocation(line: 329, column: 56, scope: !906)
!910 = !DILocation(line: 330, column: 12, scope: !906)
!911 = !DILocation(line: 330, column: 24, scope: !906)
!912 = !DILocation(line: 331, column: 12, scope: !906)
!913 = !DILocation(line: 331, column: 24, scope: !906)
!914 = !DILocation(line: 332, column: 12, scope: !906)
!915 = !DILocation(line: 332, column: 24, scope: !906)
!916 = !DILocation(line: 329, column: 7, scope: !906)
!917 = !DILocation(line: 328, column: 10, scope: !906)
!918 = !DILocation(line: 335, column: 2, scope: !829)
!919 = !DILocation(line: 336, column: 1, scope: !829)
!920 = distinct !DISubprogram(name: "acpi_ds_init_buffer_field", scope: !3, file: !3, line: 75, type: !921, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !814)
!921 = !DISubroutineType(types: !922)
!922 = !{!16, !22, !52, !52, !52, !52, !52}
!923 = !DILocalVariable(name: "aml_opcode", arg: 1, scope: !920, file: !3, line: 75, type: !22)
!924 = !DILocation(line: 75, column: 31, scope: !920)
!925 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !920, file: !3, line: 76, type: !52)
!926 = !DILocation(line: 76, column: 33, scope: !920)
!927 = !DILocalVariable(name: "buffer_desc", arg: 3, scope: !920, file: !3, line: 77, type: !52)
!928 = !DILocation(line: 77, column: 33, scope: !920)
!929 = !DILocalVariable(name: "offset_desc", arg: 4, scope: !920, file: !3, line: 78, type: !52)
!930 = !DILocation(line: 78, column: 33, scope: !920)
!931 = !DILocalVariable(name: "length_desc", arg: 5, scope: !920, file: !3, line: 79, type: !52)
!932 = !DILocation(line: 79, column: 33, scope: !920)
!933 = !DILocalVariable(name: "result_desc", arg: 6, scope: !920, file: !3, line: 80, type: !52)
!934 = !DILocation(line: 80, column: 33, scope: !920)
!935 = !DILocalVariable(name: "offset", scope: !920, file: !3, line: 82, type: !18)
!936 = !DILocation(line: 82, column: 6, scope: !920)
!937 = !DILocalVariable(name: "bit_offset", scope: !920, file: !3, line: 83, type: !18)
!938 = !DILocation(line: 83, column: 6, scope: !920)
!939 = !DILocalVariable(name: "bit_count", scope: !920, file: !3, line: 84, type: !18)
!940 = !DILocation(line: 84, column: 6, scope: !920)
!941 = !DILocalVariable(name: "field_flags", scope: !920, file: !3, line: 85, type: !26)
!942 = !DILocation(line: 85, column: 5, scope: !920)
!943 = !DILocalVariable(name: "status", scope: !920, file: !3, line: 86, type: !16)
!944 = !DILocation(line: 86, column: 14, scope: !920)
!945 = !DILocation(line: 92, column: 6, scope: !946)
!946 = distinct !DILexicalBlock(scope: !920, file: !3, line: 92, column: 6)
!947 = !DILocation(line: 92, column: 19, scope: !946)
!948 = !DILocation(line: 92, column: 26, scope: !946)
!949 = !DILocation(line: 92, column: 31, scope: !946)
!950 = !DILocation(line: 92, column: 6, scope: !920)
!951 = !DILocation(line: 93, column: 3, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !3, line: 92, column: 52)
!953 = !DILocation(line: 97, column: 10, scope: !952)
!954 = !DILocation(line: 98, column: 3, scope: !952)
!955 = !DILocation(line: 106, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !920, file: !3, line: 106, column: 6)
!957 = !DILocation(line: 106, column: 44, scope: !956)
!958 = !DILocation(line: 106, column: 6, scope: !920)
!959 = !DILocation(line: 107, column: 3, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 106, column: 69)
!961 = !DILocation(line: 112, column: 10, scope: !960)
!962 = !DILocation(line: 113, column: 3, scope: !960)
!963 = !DILocation(line: 116, column: 17, scope: !920)
!964 = !DILocation(line: 116, column: 30, scope: !920)
!965 = !DILocation(line: 116, column: 38, scope: !920)
!966 = !DILocation(line: 116, column: 11, scope: !920)
!967 = !DILocation(line: 116, column: 9, scope: !920)
!968 = !DILocation(line: 121, column: 10, scope: !920)
!969 = !DILocation(line: 121, column: 2, scope: !920)
!970 = !DILocation(line: 126, column: 15, scope: !971)
!971 = distinct !DILexicalBlock(scope: !920, file: !3, line: 121, column: 22)
!972 = !DILocation(line: 127, column: 16, scope: !971)
!973 = !DILocation(line: 127, column: 14, scope: !971)
!974 = !DILocation(line: 128, column: 21, scope: !971)
!975 = !DILocation(line: 128, column: 34, scope: !971)
!976 = !DILocation(line: 128, column: 42, scope: !971)
!977 = !DILocation(line: 128, column: 15, scope: !971)
!978 = !DILocation(line: 128, column: 13, scope: !971)
!979 = !DILocation(line: 132, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !3, line: 132, column: 7)
!981 = !DILocation(line: 132, column: 17, scope: !980)
!982 = !DILocation(line: 132, column: 7, scope: !971)
!983 = !DILocation(line: 133, column: 4, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 132, column: 23)
!985 = !DILocation(line: 135, column: 11, scope: !984)
!986 = !DILocation(line: 136, column: 4, scope: !984)
!987 = !DILocation(line: 138, column: 3, scope: !971)
!988 = !DILocation(line: 144, column: 16, scope: !971)
!989 = !DILocation(line: 144, column: 14, scope: !971)
!990 = !DILocation(line: 145, column: 13, scope: !971)
!991 = !DILocation(line: 146, column: 15, scope: !971)
!992 = !DILocation(line: 147, column: 3, scope: !971)
!993 = !DILocation(line: 153, column: 20, scope: !971)
!994 = !DILocation(line: 153, column: 18, scope: !971)
!995 = !DILocation(line: 153, column: 14, scope: !971)
!996 = !DILocation(line: 154, column: 13, scope: !971)
!997 = !DILocation(line: 155, column: 15, scope: !971)
!998 = !DILocation(line: 156, column: 3, scope: !971)
!999 = !DILocation(line: 162, column: 20, scope: !971)
!1000 = !DILocation(line: 162, column: 18, scope: !971)
!1001 = !DILocation(line: 162, column: 14, scope: !971)
!1002 = !DILocation(line: 163, column: 13, scope: !971)
!1003 = !DILocation(line: 164, column: 15, scope: !971)
!1004 = !DILocation(line: 165, column: 3, scope: !971)
!1005 = !DILocation(line: 171, column: 20, scope: !971)
!1006 = !DILocation(line: 171, column: 18, scope: !971)
!1007 = !DILocation(line: 171, column: 14, scope: !971)
!1008 = !DILocation(line: 172, column: 13, scope: !971)
!1009 = !DILocation(line: 173, column: 15, scope: !971)
!1010 = !DILocation(line: 174, column: 3, scope: !971)
!1011 = !DILocation(line: 180, column: 20, scope: !971)
!1012 = !DILocation(line: 180, column: 18, scope: !971)
!1013 = !DILocation(line: 180, column: 14, scope: !971)
!1014 = !DILocation(line: 181, column: 13, scope: !971)
!1015 = !DILocation(line: 182, column: 15, scope: !971)
!1016 = !DILocation(line: 183, column: 3, scope: !971)
!1017 = !DILocation(line: 187, column: 3, scope: !971)
!1018 = !DILocation(line: 190, column: 10, scope: !971)
!1019 = !DILocation(line: 191, column: 3, scope: !971)
!1020 = !DILocation(line: 196, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !920, file: !3, line: 196, column: 6)
!1022 = !DILocation(line: 196, column: 20, scope: !1021)
!1023 = !DILocation(line: 196, column: 18, scope: !1021)
!1024 = !DILocation(line: 196, column: 43, scope: !1021)
!1025 = !DILocation(line: 196, column: 56, scope: !1021)
!1026 = !DILocation(line: 196, column: 63, scope: !1021)
!1027 = !DILocation(line: 196, column: 36, scope: !1021)
!1028 = !DILocation(line: 196, column: 31, scope: !1021)
!1029 = !DILocation(line: 196, column: 6, scope: !920)
!1030 = !DILocation(line: 197, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 196, column: 72)
!1032 = !DILocation(line: 198, column: 3, scope: !1031)
!1033 = !DILocation(line: 204, column: 3, scope: !1031)
!1034 = !DILocation(line: 213, column: 39, scope: !920)
!1035 = !DILocation(line: 213, column: 49, scope: !920)
!1036 = !DILocation(line: 214, column: 11, scope: !920)
!1037 = !DILocation(line: 214, column: 23, scope: !920)
!1038 = !DILocation(line: 213, column: 6, scope: !920)
!1039 = !DILocation(line: 212, column: 9, scope: !920)
!1040 = !DILocation(line: 215, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !920, file: !3, line: 215, column: 6)
!1042 = !DILocation(line: 215, column: 6, scope: !920)
!1043 = !DILocation(line: 216, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 215, column: 28)
!1045 = !DILocation(line: 219, column: 38, scope: !920)
!1046 = !DILocation(line: 219, column: 2, scope: !920)
!1047 = !DILocation(line: 219, column: 12, scope: !920)
!1048 = !DILocation(line: 219, column: 25, scope: !920)
!1049 = !DILocation(line: 219, column: 36, scope: !920)
!1050 = !DILocation(line: 221, column: 6, scope: !920)
!1051 = !DILocation(line: 221, column: 17, scope: !920)
!1052 = !DILocation(line: 220, column: 2, scope: !920)
!1053 = !DILocation(line: 220, column: 12, scope: !920)
!1054 = !DILocation(line: 220, column: 25, scope: !920)
!1055 = !DILocation(line: 220, column: 41, scope: !920)
!1056 = !DILocation(line: 226, column: 7, scope: !920)
!1057 = !DILocation(line: 226, column: 20, scope: !920)
!1058 = !DILocation(line: 226, column: 27, scope: !920)
!1059 = !DILocation(line: 227, column: 7, scope: !920)
!1060 = !DILocation(line: 227, column: 17, scope: !920)
!1061 = !DILocation(line: 227, column: 24, scope: !920)
!1062 = !DILocation(line: 226, column: 43, scope: !920)
!1063 = !DILocation(line: 225, column: 40, scope: !920)
!1064 = !DILocation(line: 225, column: 2, scope: !920)
!1065 = !DILocation(line: 225, column: 15, scope: !920)
!1066 = !DILocation(line: 225, column: 22, scope: !920)
!1067 = !DILocation(line: 225, column: 38, scope: !920)
!1068 = !DILabel(scope: !920, name: "cleanup", file: !3, line: 229)
!1069 = !DILocation(line: 229, column: 1, scope: !920)
!1070 = !DILocation(line: 233, column: 27, scope: !920)
!1071 = !DILocation(line: 233, column: 2, scope: !920)
!1072 = !DILocation(line: 234, column: 27, scope: !920)
!1073 = !DILocation(line: 234, column: 2, scope: !920)
!1074 = !DILocation(line: 236, column: 6, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !920, file: !3, line: 236, column: 6)
!1076 = !DILocation(line: 236, column: 17, scope: !1075)
!1077 = !DILocation(line: 236, column: 6, scope: !920)
!1078 = !DILocation(line: 237, column: 28, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 236, column: 41)
!1080 = !DILocation(line: 237, column: 3, scope: !1079)
!1081 = !DILocation(line: 238, column: 2, scope: !1079)
!1082 = !DILocation(line: 242, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !920, file: !3, line: 242, column: 6)
!1084 = !DILocation(line: 242, column: 6, scope: !920)
!1085 = !DILocation(line: 243, column: 28, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 242, column: 28)
!1087 = !DILocation(line: 243, column: 3, scope: !1086)
!1088 = !DILocation(line: 244, column: 2, scope: !1086)
!1089 = !DILocation(line: 247, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 244, column: 9)
!1091 = !DILocation(line: 247, column: 13, scope: !1090)
!1092 = !DILocation(line: 247, column: 26, scope: !1090)
!1093 = !DILocation(line: 247, column: 32, scope: !1090)
!1094 = !DILocation(line: 250, column: 2, scope: !920)
!1095 = distinct !DISubprogram(name: "acpi_ds_eval_region_operands", scope: !3, file: !3, line: 353, type: !830, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1096 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1095, file: !3, line: 353, type: !162)
!1097 = !DILocation(line: 353, column: 54, scope: !1095)
!1098 = !DILocalVariable(name: "op", arg: 2, scope: !1095, file: !3, line: 354, type: !196)
!1099 = !DILocation(line: 354, column: 34, scope: !1095)
!1100 = !DILocalVariable(name: "status", scope: !1095, file: !3, line: 356, type: !16)
!1101 = !DILocation(line: 356, column: 14, scope: !1095)
!1102 = !DILocalVariable(name: "obj_desc", scope: !1095, file: !3, line: 357, type: !52)
!1103 = !DILocation(line: 357, column: 29, scope: !1095)
!1104 = !DILocalVariable(name: "operand_desc", scope: !1095, file: !3, line: 358, type: !52)
!1105 = !DILocation(line: 358, column: 29, scope: !1095)
!1106 = !DILocalVariable(name: "node", scope: !1095, file: !3, line: 359, type: !95)
!1107 = !DILocation(line: 359, column: 30, scope: !1095)
!1108 = !DILocalVariable(name: "next_op", scope: !1095, file: !3, line: 360, type: !196)
!1109 = !DILocation(line: 360, column: 27, scope: !1095)
!1110 = !DILocalVariable(name: "space_id", scope: !1095, file: !3, line: 361, type: !25)
!1111 = !DILocation(line: 361, column: 22, scope: !1095)
!1112 = !DILocation(line: 369, column: 9, scope: !1095)
!1113 = !DILocation(line: 369, column: 13, scope: !1095)
!1114 = !DILocation(line: 369, column: 20, scope: !1095)
!1115 = !DILocation(line: 369, column: 7, scope: !1095)
!1116 = !DILocation(line: 373, column: 12, scope: !1095)
!1117 = !DILocation(line: 373, column: 16, scope: !1095)
!1118 = !DILocation(line: 373, column: 23, scope: !1095)
!1119 = !DILocation(line: 373, column: 29, scope: !1095)
!1120 = !DILocation(line: 373, column: 10, scope: !1095)
!1121 = !DILocation(line: 374, column: 34, scope: !1095)
!1122 = !DILocation(line: 374, column: 43, scope: !1095)
!1123 = !DILocation(line: 374, column: 50, scope: !1095)
!1124 = !DILocation(line: 374, column: 56, scope: !1095)
!1125 = !DILocation(line: 374, column: 13, scope: !1095)
!1126 = !DILocation(line: 374, column: 11, scope: !1095)
!1127 = !DILocation(line: 378, column: 12, scope: !1095)
!1128 = !DILocation(line: 378, column: 21, scope: !1095)
!1129 = !DILocation(line: 378, column: 28, scope: !1095)
!1130 = !DILocation(line: 378, column: 10, scope: !1095)
!1131 = !DILocation(line: 382, column: 35, scope: !1095)
!1132 = !DILocation(line: 382, column: 47, scope: !1095)
!1133 = !DILocation(line: 382, column: 11, scope: !1095)
!1134 = !DILocation(line: 382, column: 9, scope: !1095)
!1135 = !DILocation(line: 383, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 383, column: 6)
!1137 = !DILocation(line: 383, column: 6, scope: !1095)
!1138 = !DILocation(line: 384, column: 3, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 383, column: 28)
!1140 = !DILocation(line: 390, column: 31, scope: !1095)
!1141 = !DILocation(line: 390, column: 35, scope: !1095)
!1142 = !DILocation(line: 390, column: 42, scope: !1095)
!1143 = !DILocation(line: 390, column: 54, scope: !1095)
!1144 = !DILocation(line: 391, column: 10, scope: !1095)
!1145 = !DILocation(line: 390, column: 6, scope: !1095)
!1146 = !DILocation(line: 389, column: 9, scope: !1095)
!1147 = !DILocation(line: 392, column: 6, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 392, column: 6)
!1149 = !DILocation(line: 392, column: 6, scope: !1095)
!1150 = !DILocation(line: 393, column: 3, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 392, column: 28)
!1152 = !DILocation(line: 396, column: 41, scope: !1095)
!1153 = !DILocation(line: 396, column: 13, scope: !1095)
!1154 = !DILocation(line: 396, column: 11, scope: !1095)
!1155 = !DILocation(line: 397, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 397, column: 6)
!1157 = !DILocation(line: 397, column: 6, scope: !1095)
!1158 = !DILocation(line: 398, column: 3, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 397, column: 17)
!1160 = !DILocation(line: 405, column: 17, scope: !1095)
!1161 = !DILocation(line: 405, column: 29, scope: !1095)
!1162 = !DILocation(line: 405, column: 38, scope: !1095)
!1163 = !DILocation(line: 405, column: 50, scope: !1095)
!1164 = !DILocation(line: 405, column: 63, scope: !1095)
!1165 = !DILocation(line: 405, column: 15, scope: !1095)
!1166 = !DILocation(line: 407, column: 34, scope: !1095)
!1167 = !DILocation(line: 407, column: 48, scope: !1095)
!1168 = !DILocation(line: 407, column: 56, scope: !1095)
!1169 = !DILocation(line: 407, column: 28, scope: !1095)
!1170 = !DILocation(line: 407, column: 2, scope: !1095)
!1171 = !DILocation(line: 407, column: 12, scope: !1095)
!1172 = !DILocation(line: 407, column: 19, scope: !1095)
!1173 = !DILocation(line: 407, column: 26, scope: !1095)
!1174 = !DILocation(line: 408, column: 27, scope: !1095)
!1175 = !DILocation(line: 408, column: 2, scope: !1095)
!1176 = !DILocation(line: 412, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 412, column: 6)
!1178 = !DILocation(line: 412, column: 17, scope: !1177)
!1179 = !DILocation(line: 412, column: 24, scope: !1177)
!1180 = !DILocation(line: 413, column: 6, scope: !1177)
!1181 = !DILocation(line: 413, column: 10, scope: !1177)
!1182 = !DILocation(line: 413, column: 19, scope: !1177)
!1183 = !DILocation(line: 412, column: 6, scope: !1095)
!1184 = !DILocation(line: 414, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 413, column: 51)
!1186 = !DILocation(line: 417, column: 2, scope: !1185)
!1187 = !DILocation(line: 423, column: 17, scope: !1095)
!1188 = !DILocation(line: 423, column: 29, scope: !1095)
!1189 = !DILocation(line: 423, column: 38, scope: !1095)
!1190 = !DILocation(line: 423, column: 50, scope: !1095)
!1191 = !DILocation(line: 423, column: 63, scope: !1095)
!1192 = !DILocation(line: 423, column: 15, scope: !1095)
!1193 = !DILocation(line: 426, column: 6, scope: !1095)
!1194 = !DILocation(line: 426, column: 20, scope: !1095)
!1195 = !DILocation(line: 426, column: 28, scope: !1095)
!1196 = !DILocation(line: 425, column: 2, scope: !1095)
!1197 = !DILocation(line: 425, column: 12, scope: !1095)
!1198 = !DILocation(line: 425, column: 19, scope: !1095)
!1199 = !DILocation(line: 425, column: 27, scope: !1095)
!1200 = !DILocation(line: 427, column: 27, scope: !1095)
!1201 = !DILocation(line: 427, column: 2, scope: !1095)
!1202 = !DILocation(line: 434, column: 37, scope: !1095)
!1203 = !DILocation(line: 434, column: 47, scope: !1095)
!1204 = !DILocation(line: 434, column: 54, scope: !1095)
!1205 = !DILocation(line: 435, column: 9, scope: !1095)
!1206 = !DILocation(line: 435, column: 19, scope: !1095)
!1207 = !DILocation(line: 435, column: 26, scope: !1095)
!1208 = !DILocation(line: 436, column: 9, scope: !1095)
!1209 = !DILocation(line: 436, column: 19, scope: !1095)
!1210 = !DILocation(line: 436, column: 26, scope: !1095)
!1211 = !DILocation(line: 436, column: 34, scope: !1095)
!1212 = !DILocation(line: 434, column: 11, scope: !1095)
!1213 = !DILocation(line: 434, column: 9, scope: !1095)
!1214 = !DILocation(line: 440, column: 2, scope: !1095)
!1215 = !DILocation(line: 440, column: 12, scope: !1095)
!1216 = !DILocation(line: 440, column: 19, scope: !1095)
!1217 = !DILocation(line: 440, column: 25, scope: !1095)
!1218 = !DILocation(line: 441, column: 2, scope: !1095)
!1219 = !DILocation(line: 442, column: 1, scope: !1095)
!1220 = distinct !DISubprogram(name: "acpi_ds_eval_table_region_operands", scope: !3, file: !3, line: 460, type: !830, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1221 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1220, file: !3, line: 460, type: !162)
!1222 = !DILocation(line: 460, column: 60, scope: !1220)
!1223 = !DILocalVariable(name: "op", arg: 2, scope: !1220, file: !3, line: 461, type: !196)
!1224 = !DILocation(line: 461, column: 33, scope: !1220)
!1225 = !DILocalVariable(name: "status", scope: !1220, file: !3, line: 463, type: !16)
!1226 = !DILocation(line: 463, column: 14, scope: !1220)
!1227 = !DILocalVariable(name: "obj_desc", scope: !1220, file: !3, line: 464, type: !52)
!1228 = !DILocation(line: 464, column: 29, scope: !1220)
!1229 = !DILocalVariable(name: "operand", scope: !1220, file: !3, line: 465, type: !127)
!1230 = !DILocation(line: 465, column: 30, scope: !1220)
!1231 = !DILocalVariable(name: "node", scope: !1220, file: !3, line: 466, type: !95)
!1232 = !DILocation(line: 466, column: 30, scope: !1220)
!1233 = !DILocalVariable(name: "next_op", scope: !1220, file: !3, line: 467, type: !196)
!1234 = !DILocation(line: 467, column: 27, scope: !1220)
!1235 = !DILocalVariable(name: "table", scope: !1220, file: !3, line: 468, type: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !105, line: 68, size: 288, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1247, !1249, !1250, !1251}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1237, file: !105, line: 69, baseType: !109, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1237, file: !105, line: 70, baseType: !18, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1237, file: !105, line: 71, baseType: !26, size: 8, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1237, file: !105, line: 72, baseType: !26, size: 8, offset: 72)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !1237, file: !105, line: 73, baseType: !1244, size: 48, offset: 80)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 48, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 6)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !1237, file: !105, line: 74, baseType: !1248, size: 64, offset: 128)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 64, elements: !369)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !1237, file: !105, line: 75, baseType: !18, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !1237, file: !105, line: 76, baseType: !109, size: 32, offset: 224)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !1237, file: !105, line: 77, baseType: !18, size: 32, offset: 256)
!1252 = !DILocation(line: 468, column: 28, scope: !1220)
!1253 = !DILocalVariable(name: "table_index", scope: !1220, file: !3, line: 469, type: !18)
!1254 = !DILocation(line: 469, column: 6, scope: !1220)
!1255 = !DILocation(line: 477, column: 9, scope: !1220)
!1256 = !DILocation(line: 477, column: 13, scope: !1220)
!1257 = !DILocation(line: 477, column: 20, scope: !1220)
!1258 = !DILocation(line: 477, column: 7, scope: !1220)
!1259 = !DILocation(line: 481, column: 12, scope: !1220)
!1260 = !DILocation(line: 481, column: 16, scope: !1220)
!1261 = !DILocation(line: 481, column: 23, scope: !1220)
!1262 = !DILocation(line: 481, column: 29, scope: !1220)
!1263 = !DILocation(line: 481, column: 10, scope: !1220)
!1264 = !DILocation(line: 487, column: 35, scope: !1220)
!1265 = !DILocation(line: 487, column: 47, scope: !1220)
!1266 = !DILocation(line: 487, column: 11, scope: !1220)
!1267 = !DILocation(line: 487, column: 9, scope: !1220)
!1268 = !DILocation(line: 488, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 488, column: 6)
!1270 = !DILocation(line: 488, column: 6, scope: !1220)
!1271 = !DILocation(line: 489, column: 3, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 488, column: 28)
!1273 = !DILocation(line: 492, column: 13, scope: !1220)
!1274 = !DILocation(line: 492, column: 25, scope: !1220)
!1275 = !DILocation(line: 492, column: 10, scope: !1220)
!1276 = !DILocation(line: 499, column: 31, scope: !1220)
!1277 = !DILocation(line: 499, column: 35, scope: !1220)
!1278 = !DILocation(line: 499, column: 42, scope: !1220)
!1279 = !DILocation(line: 499, column: 54, scope: !1220)
!1280 = !DILocation(line: 500, column: 10, scope: !1220)
!1281 = !DILocation(line: 499, column: 6, scope: !1220)
!1282 = !DILocation(line: 498, column: 9, scope: !1220)
!1283 = !DILocation(line: 501, column: 6, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 501, column: 6)
!1285 = !DILocation(line: 501, column: 6, scope: !1220)
!1286 = !DILocation(line: 502, column: 3, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 501, column: 28)
!1288 = !DILocation(line: 507, column: 30, scope: !1220)
!1289 = !DILocation(line: 507, column: 42, scope: !1220)
!1290 = !DILocation(line: 507, column: 49, scope: !1220)
!1291 = !DILocation(line: 508, column: 9, scope: !1220)
!1292 = !DILocation(line: 508, column: 21, scope: !1220)
!1293 = !DILocation(line: 508, column: 28, scope: !1220)
!1294 = !DILocation(line: 509, column: 9, scope: !1220)
!1295 = !DILocation(line: 509, column: 21, scope: !1220)
!1296 = !DILocation(line: 509, column: 28, scope: !1220)
!1297 = !DILocation(line: 507, column: 11, scope: !1220)
!1298 = !DILocation(line: 507, column: 9, scope: !1220)
!1299 = !DILocation(line: 510, column: 6, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 510, column: 6)
!1301 = !DILocation(line: 510, column: 6, scope: !1220)
!1302 = !DILocation(line: 511, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 511, column: 7)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 510, column: 28)
!1305 = !DILocation(line: 511, column: 14, scope: !1303)
!1306 = !DILocation(line: 511, column: 7, scope: !1304)
!1307 = !DILocation(line: 512, column: 4, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 511, column: 31)
!1309 = !DILocation(line: 517, column: 3, scope: !1308)
!1310 = !DILocation(line: 518, column: 3, scope: !1304)
!1311 = !DILocation(line: 521, column: 35, scope: !1220)
!1312 = !DILocation(line: 521, column: 11, scope: !1220)
!1313 = !DILocation(line: 521, column: 9, scope: !1220)
!1314 = !DILocation(line: 522, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 522, column: 6)
!1316 = !DILocation(line: 522, column: 6, scope: !1220)
!1317 = !DILocation(line: 523, column: 3, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 522, column: 28)
!1319 = !DILocation(line: 526, column: 41, scope: !1220)
!1320 = !DILocation(line: 526, column: 13, scope: !1220)
!1321 = !DILocation(line: 526, column: 11, scope: !1220)
!1322 = !DILocation(line: 527, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 527, column: 6)
!1324 = !DILocation(line: 527, column: 6, scope: !1220)
!1325 = !DILocation(line: 528, column: 10, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 527, column: 17)
!1327 = !DILocation(line: 529, column: 3, scope: !1326)
!1328 = !DILocation(line: 532, column: 29, scope: !1220)
!1329 = !DILocation(line: 532, column: 2, scope: !1220)
!1330 = !DILocation(line: 532, column: 12, scope: !1220)
!1331 = !DILocation(line: 532, column: 19, scope: !1220)
!1332 = !DILocation(line: 532, column: 27, scope: !1220)
!1333 = !DILocation(line: 533, column: 28, scope: !1220)
!1334 = !DILocation(line: 533, column: 35, scope: !1220)
!1335 = !DILocation(line: 533, column: 2, scope: !1220)
!1336 = !DILocation(line: 533, column: 12, scope: !1220)
!1337 = !DILocation(line: 533, column: 19, scope: !1220)
!1338 = !DILocation(line: 533, column: 26, scope: !1220)
!1339 = !DILocation(line: 542, column: 2, scope: !1220)
!1340 = !DILocation(line: 542, column: 12, scope: !1220)
!1341 = !DILocation(line: 542, column: 19, scope: !1220)
!1342 = !DILocation(line: 542, column: 25, scope: !1220)
!1343 = !DILabel(scope: !1220, name: "cleanup", file: !3, line: 544)
!1344 = !DILocation(line: 544, column: 1, scope: !1220)
!1345 = !DILocation(line: 545, column: 27, scope: !1220)
!1346 = !DILocation(line: 545, column: 2, scope: !1220)
!1347 = !DILocation(line: 546, column: 27, scope: !1220)
!1348 = !DILocation(line: 546, column: 2, scope: !1220)
!1349 = !DILocation(line: 547, column: 27, scope: !1220)
!1350 = !DILocation(line: 547, column: 2, scope: !1220)
!1351 = !DILocation(line: 549, column: 2, scope: !1220)
!1352 = !DILocation(line: 550, column: 1, scope: !1220)
!1353 = distinct !DISubprogram(name: "acpi_ds_eval_data_object_operands", scope: !3, file: !3, line: 568, type: !1354, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!16, !162, !196, !52}
!1356 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1353, file: !3, line: 568, type: !162)
!1357 = !DILocation(line: 568, column: 59, scope: !1353)
!1358 = !DILocalVariable(name: "op", arg: 2, scope: !1353, file: !3, line: 569, type: !196)
!1359 = !DILocation(line: 569, column: 32, scope: !1353)
!1360 = !DILocalVariable(name: "obj_desc", arg: 3, scope: !1353, file: !3, line: 570, type: !52)
!1361 = !DILocation(line: 570, column: 34, scope: !1353)
!1362 = !DILocalVariable(name: "status", scope: !1353, file: !3, line: 572, type: !16)
!1363 = !DILocation(line: 572, column: 14, scope: !1353)
!1364 = !DILocalVariable(name: "arg_desc", scope: !1353, file: !3, line: 573, type: !52)
!1365 = !DILocation(line: 573, column: 29, scope: !1353)
!1366 = !DILocalVariable(name: "length", scope: !1353, file: !3, line: 574, type: !18)
!1367 = !DILocation(line: 574, column: 6, scope: !1353)
!1368 = !DILocation(line: 584, column: 30, scope: !1353)
!1369 = !DILocation(line: 584, column: 42, scope: !1353)
!1370 = !DILocation(line: 584, column: 2, scope: !1353)
!1371 = !DILocation(line: 584, column: 14, scope: !1353)
!1372 = !DILocation(line: 584, column: 28, scope: !1353)
!1373 = !DILocation(line: 588, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 588, column: 6)
!1375 = !DILocation(line: 588, column: 11, scope: !1374)
!1376 = !DILocation(line: 588, column: 18, scope: !1374)
!1377 = !DILocation(line: 588, column: 24, scope: !1374)
!1378 = !DILocation(line: 588, column: 6, scope: !1353)
!1379 = !DILocation(line: 589, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 588, column: 29)
!1381 = !DILocation(line: 592, column: 3, scope: !1380)
!1382 = !DILocation(line: 595, column: 34, scope: !1353)
!1383 = !DILocation(line: 595, column: 46, scope: !1353)
!1384 = !DILocation(line: 595, column: 50, scope: !1353)
!1385 = !DILocation(line: 595, column: 57, scope: !1353)
!1386 = !DILocation(line: 595, column: 63, scope: !1353)
!1387 = !DILocation(line: 595, column: 11, scope: !1353)
!1388 = !DILocation(line: 595, column: 9, scope: !1353)
!1389 = !DILocation(line: 596, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 596, column: 6)
!1391 = !DILocation(line: 596, column: 6, scope: !1353)
!1392 = !DILocation(line: 597, column: 3, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 596, column: 28)
!1394 = !DILocation(line: 600, column: 36, scope: !1353)
!1395 = !DILocation(line: 600, column: 48, scope: !1353)
!1396 = !DILocation(line: 601, column: 10, scope: !1353)
!1397 = !DILocation(line: 602, column: 10, scope: !1353)
!1398 = !DILocation(line: 602, column: 19, scope: !1353)
!1399 = !DILocation(line: 602, column: 31, scope: !1353)
!1400 = !DILocation(line: 602, column: 44, scope: !1353)
!1401 = !DILocation(line: 603, column: 17, scope: !1353)
!1402 = !DILocation(line: 600, column: 11, scope: !1353)
!1403 = !DILocation(line: 600, column: 9, scope: !1353)
!1404 = !DILocation(line: 604, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 604, column: 6)
!1406 = !DILocation(line: 604, column: 6, scope: !1353)
!1407 = !DILocation(line: 605, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 604, column: 28)
!1409 = !DILocation(line: 610, column: 13, scope: !1353)
!1410 = !DILocation(line: 610, column: 25, scope: !1353)
!1411 = !DILocation(line: 610, column: 34, scope: !1353)
!1412 = !DILocation(line: 610, column: 46, scope: !1353)
!1413 = !DILocation(line: 610, column: 59, scope: !1353)
!1414 = !DILocation(line: 610, column: 11, scope: !1353)
!1415 = !DILocation(line: 611, column: 17, scope: !1353)
!1416 = !DILocation(line: 611, column: 27, scope: !1353)
!1417 = !DILocation(line: 611, column: 35, scope: !1353)
!1418 = !DILocation(line: 611, column: 11, scope: !1353)
!1419 = !DILocation(line: 611, column: 9, scope: !1353)
!1420 = !DILocation(line: 615, column: 36, scope: !1353)
!1421 = !DILocation(line: 615, column: 11, scope: !1353)
!1422 = !DILocation(line: 615, column: 9, scope: !1353)
!1423 = !DILocation(line: 616, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 616, column: 6)
!1425 = !DILocation(line: 616, column: 6, scope: !1353)
!1426 = !DILocation(line: 617, column: 3, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 616, column: 28)
!1428 = !DILocation(line: 620, column: 27, scope: !1353)
!1429 = !DILocation(line: 620, column: 2, scope: !1353)
!1430 = !DILocation(line: 625, column: 10, scope: !1353)
!1431 = !DILocation(line: 625, column: 14, scope: !1353)
!1432 = !DILocation(line: 625, column: 21, scope: !1353)
!1433 = !DILocation(line: 625, column: 2, scope: !1353)
!1434 = !DILocation(line: 629, column: 41, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 625, column: 33)
!1436 = !DILocation(line: 629, column: 53, scope: !1435)
!1437 = !DILocation(line: 629, column: 57, scope: !1435)
!1438 = !DILocation(line: 629, column: 7, scope: !1435)
!1439 = !DILocation(line: 628, column: 10, scope: !1435)
!1440 = !DILocation(line: 631, column: 3, scope: !1435)
!1441 = !DILocation(line: 637, column: 42, scope: !1435)
!1442 = !DILocation(line: 637, column: 54, scope: !1435)
!1443 = !DILocation(line: 637, column: 58, scope: !1435)
!1444 = !DILocation(line: 637, column: 7, scope: !1435)
!1445 = !DILocation(line: 636, column: 10, scope: !1435)
!1446 = !DILocation(line: 639, column: 3, scope: !1435)
!1447 = !DILocation(line: 643, column: 3, scope: !1435)
!1448 = !DILocation(line: 646, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 646, column: 6)
!1450 = !DILocation(line: 646, column: 6, scope: !1353)
!1451 = !DILocation(line: 652, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 652, column: 7)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 646, column: 28)
!1454 = !DILocation(line: 652, column: 13, scope: !1452)
!1455 = !DILocation(line: 652, column: 20, scope: !1452)
!1456 = !DILocation(line: 652, column: 28, scope: !1452)
!1457 = !DILocation(line: 653, column: 9, scope: !1452)
!1458 = !DILocation(line: 653, column: 13, scope: !1452)
!1459 = !DILocation(line: 653, column: 20, scope: !1452)
!1460 = !DILocation(line: 653, column: 28, scope: !1452)
!1461 = !DILocation(line: 653, column: 35, scope: !1452)
!1462 = !DILocation(line: 653, column: 46, scope: !1452)
!1463 = !DILocation(line: 653, column: 65, scope: !1452)
!1464 = !DILocation(line: 654, column: 9, scope: !1452)
!1465 = !DILocation(line: 654, column: 13, scope: !1452)
!1466 = !DILocation(line: 654, column: 20, scope: !1452)
!1467 = !DILocation(line: 654, column: 28, scope: !1452)
!1468 = !DILocation(line: 654, column: 35, scope: !1452)
!1469 = !DILocation(line: 654, column: 46, scope: !1452)
!1470 = !DILocation(line: 656, column: 8, scope: !1452)
!1471 = !DILocation(line: 656, column: 12, scope: !1452)
!1472 = !DILocation(line: 656, column: 16, scope: !1452)
!1473 = !DILocation(line: 656, column: 23, scope: !1452)
!1474 = !DILocation(line: 656, column: 31, scope: !1452)
!1475 = !DILocation(line: 656, column: 38, scope: !1452)
!1476 = !DILocation(line: 656, column: 49, scope: !1452)
!1477 = !DILocation(line: 652, column: 7, scope: !1453)
!1478 = !DILocation(line: 658, column: 29, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 657, column: 20)
!1480 = !DILocation(line: 658, column: 4, scope: !1479)
!1481 = !DILocation(line: 658, column: 16, scope: !1479)
!1482 = !DILocation(line: 658, column: 27, scope: !1479)
!1483 = !DILocation(line: 659, column: 3, scope: !1479)
!1484 = !DILocation(line: 660, column: 2, scope: !1453)
!1485 = !DILocation(line: 662, column: 2, scope: !1353)
!1486 = !DILocation(line: 663, column: 1, scope: !1353)
!1487 = distinct !DISubprogram(name: "acpi_ds_eval_bank_field_operands", scope: !3, file: !3, line: 680, type: !830, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !814)
!1488 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1487, file: !3, line: 680, type: !162)
!1489 = !DILocation(line: 680, column: 58, scope: !1487)
!1490 = !DILocalVariable(name: "op", arg: 2, scope: !1487, file: !3, line: 681, type: !196)
!1491 = !DILocation(line: 681, column: 31, scope: !1487)
!1492 = !DILocalVariable(name: "status", scope: !1487, file: !3, line: 683, type: !16)
!1493 = !DILocation(line: 683, column: 14, scope: !1487)
!1494 = !DILocalVariable(name: "obj_desc", scope: !1487, file: !3, line: 684, type: !52)
!1495 = !DILocation(line: 684, column: 29, scope: !1487)
!1496 = !DILocalVariable(name: "operand_desc", scope: !1487, file: !3, line: 685, type: !52)
!1497 = !DILocation(line: 685, column: 29, scope: !1487)
!1498 = !DILocalVariable(name: "node", scope: !1487, file: !3, line: 686, type: !95)
!1499 = !DILocation(line: 686, column: 30, scope: !1487)
!1500 = !DILocalVariable(name: "next_op", scope: !1487, file: !3, line: 687, type: !196)
!1501 = !DILocation(line: 687, column: 27, scope: !1487)
!1502 = !DILocalVariable(name: "arg", scope: !1487, file: !3, line: 688, type: !196)
!1503 = !DILocation(line: 688, column: 27, scope: !1487)
!1504 = !DILocation(line: 699, column: 12, scope: !1487)
!1505 = !DILocation(line: 699, column: 16, scope: !1487)
!1506 = !DILocation(line: 699, column: 23, scope: !1487)
!1507 = !DILocation(line: 699, column: 29, scope: !1487)
!1508 = !DILocation(line: 699, column: 10, scope: !1487)
!1509 = !DILocation(line: 703, column: 12, scope: !1487)
!1510 = !DILocation(line: 703, column: 21, scope: !1487)
!1511 = !DILocation(line: 703, column: 28, scope: !1487)
!1512 = !DILocation(line: 703, column: 10, scope: !1487)
!1513 = !DILocation(line: 707, column: 12, scope: !1487)
!1514 = !DILocation(line: 707, column: 21, scope: !1487)
!1515 = !DILocation(line: 707, column: 28, scope: !1487)
!1516 = !DILocation(line: 707, column: 10, scope: !1487)
!1517 = !DILocation(line: 715, column: 2, scope: !1487)
!1518 = !DILocation(line: 715, column: 14, scope: !1487)
!1519 = !DILocation(line: 715, column: 28, scope: !1487)
!1520 = !DILocation(line: 717, column: 34, scope: !1487)
!1521 = !DILocation(line: 717, column: 46, scope: !1487)
!1522 = !DILocation(line: 717, column: 11, scope: !1487)
!1523 = !DILocation(line: 717, column: 9, scope: !1487)
!1524 = !DILocation(line: 718, column: 6, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 718, column: 6)
!1526 = !DILocation(line: 718, column: 6, scope: !1487)
!1527 = !DILocation(line: 719, column: 3, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 718, column: 28)
!1529 = !DILocation(line: 722, column: 37, scope: !1487)
!1530 = !DILocation(line: 722, column: 49, scope: !1487)
!1531 = !DILocation(line: 722, column: 62, scope: !1487)
!1532 = !DILocation(line: 722, column: 11, scope: !1487)
!1533 = !DILocation(line: 722, column: 9, scope: !1487)
!1534 = !DILocation(line: 723, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 723, column: 6)
!1536 = !DILocation(line: 723, column: 6, scope: !1487)
!1537 = !DILocation(line: 724, column: 3, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 723, column: 28)
!1539 = !DILocation(line: 733, column: 17, scope: !1487)
!1540 = !DILocation(line: 733, column: 29, scope: !1487)
!1541 = !DILocation(line: 733, column: 15, scope: !1487)
!1542 = !DILocation(line: 737, column: 24, scope: !1487)
!1543 = !DILocation(line: 737, column: 8, scope: !1487)
!1544 = !DILocation(line: 737, column: 6, scope: !1487)
!1545 = !DILocation(line: 738, column: 2, scope: !1487)
!1546 = !DILocation(line: 738, column: 9, scope: !1487)
!1547 = !DILocation(line: 742, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 742, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 738, column: 14)
!1550 = !DILocation(line: 742, column: 12, scope: !1548)
!1551 = !DILocation(line: 742, column: 19, scope: !1548)
!1552 = !DILocation(line: 742, column: 30, scope: !1548)
!1553 = !DILocation(line: 742, column: 7, scope: !1549)
!1554 = !DILocation(line: 743, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 742, column: 56)
!1556 = !DILocation(line: 743, column: 16, scope: !1555)
!1557 = !DILocation(line: 743, column: 23, scope: !1555)
!1558 = !DILocation(line: 743, column: 9, scope: !1555)
!1559 = !DILocation(line: 745, column: 43, scope: !1555)
!1560 = !DILocation(line: 745, column: 15, scope: !1555)
!1561 = !DILocation(line: 745, column: 13, scope: !1555)
!1562 = !DILocation(line: 746, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 746, column: 8)
!1564 = !DILocation(line: 746, column: 8, scope: !1555)
!1565 = !DILocation(line: 747, column: 5, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 746, column: 19)
!1567 = !DILocation(line: 751, column: 14, scope: !1555)
!1568 = !DILocation(line: 751, column: 28, scope: !1555)
!1569 = !DILocation(line: 751, column: 36, scope: !1555)
!1570 = !DILocation(line: 751, column: 8, scope: !1555)
!1571 = !DILocation(line: 750, column: 4, scope: !1555)
!1572 = !DILocation(line: 750, column: 14, scope: !1555)
!1573 = !DILocation(line: 750, column: 25, scope: !1555)
!1574 = !DILocation(line: 750, column: 31, scope: !1555)
!1575 = !DILocation(line: 752, column: 3, scope: !1555)
!1576 = !DILocation(line: 756, column: 9, scope: !1549)
!1577 = !DILocation(line: 756, column: 14, scope: !1549)
!1578 = !DILocation(line: 756, column: 21, scope: !1549)
!1579 = !DILocation(line: 756, column: 7, scope: !1549)
!1580 = distinct !{!1580, !1545, !1581}
!1581 = !DILocation(line: 757, column: 2, scope: !1487)
!1582 = !DILocation(line: 759, column: 27, scope: !1487)
!1583 = !DILocation(line: 759, column: 2, scope: !1487)
!1584 = !DILocation(line: 760, column: 2, scope: !1487)
!1585 = !DILocation(line: 761, column: 1, scope: !1487)
