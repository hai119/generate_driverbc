; ModuleID = '../bcout/drivers/acpi/acpica/exmutex.llvm.bc'
source_filename = "drivers/acpi/acpica/exmutex.c"
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
%struct.acpi_object_integer = type { %union.acpi_operand_object*, i8, i8, i16, i8, [3 x i8], i64 }

@acpi_gbl_global_lock_mutex = external dso_local global %union.acpi_operand_object*, align 8
@_acpi_module_name = internal constant [8 x i8] c"exmutex\00", align 1, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"Cannot acquire Mutex [%4.4s], null thread info\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Cannot acquire Mutex [%4.4s], current SyncLevel is too large (%u)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot release Mutex [%4.4s], not acquired\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Cannot release Mutex [%4.4s], null thread info\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Thread %u cannot release Mutex [%4.4s] acquired by thread %u\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"Cannot release Mutex [%4.4s], SyncLevel mismatch: mutex %u current %u\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_unlink_mutex(%union.acpi_operand_object* %obj_desc) #0 !dbg !27 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %thread = alloca %struct.acpi_thread_state*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread, metadata !794, metadata !DIExpression()), !dbg !795
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !796
  %mutex = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_mutex*, !dbg !797
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 9, !dbg !798
  %1 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !798
  store %struct.acpi_thread_state* %1, %struct.acpi_thread_state** %thread, align 8, !dbg !795
  %2 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !799
  %tobool = icmp ne %struct.acpi_thread_state* %2, null, !dbg !799
  br i1 %tobool, label %if.end, label %if.then, !dbg !801

if.then:                                          ; preds = %entry
  br label %if.end27, !dbg !802

if.end:                                           ; preds = %entry
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !804
  %mutex1 = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_mutex*, !dbg !806
  %next = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex1, i32 0, i32 11, !dbg !807
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !807
  %tobool2 = icmp ne %union.acpi_operand_object* %4, null, !dbg !804
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !808

if.then3:                                         ; preds = %if.end
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !809
  %mutex4 = bitcast %union.acpi_operand_object* %5 to %struct.acpi_object_mutex*, !dbg !811
  %prev = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex4, i32 0, i32 10, !dbg !812
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev, align 8, !dbg !812
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !813
  %mutex5 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_mutex*, !dbg !814
  %next6 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex5, i32 0, i32 11, !dbg !815
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next6, align 8, !dbg !815
  %mutex7 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_mutex*, !dbg !816
  %prev8 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex7, i32 0, i32 10, !dbg !817
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %prev8, align 8, !dbg !818
  br label %if.end9, !dbg !819

if.end9:                                          ; preds = %if.then3, %if.end
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !820
  %mutex10 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_mutex*, !dbg !822
  %prev11 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex10, i32 0, i32 10, !dbg !823
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev11, align 8, !dbg !823
  %tobool12 = icmp ne %union.acpi_operand_object* %10, null, !dbg !820
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !824

if.then13:                                        ; preds = %if.end9
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !825
  %mutex14 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_mutex*, !dbg !827
  %next15 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex14, i32 0, i32 11, !dbg !828
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next15, align 8, !dbg !828
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !829
  %mutex16 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_mutex*, !dbg !830
  %prev17 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex16, i32 0, i32 10, !dbg !831
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev17, align 8, !dbg !831
  %mutex18 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_mutex*, !dbg !832
  %next19 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex18, i32 0, i32 11, !dbg !833
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %next19, align 8, !dbg !834
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !835
  %mutex20 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_mutex*, !dbg !836
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex20, i32 0, i32 13, !dbg !837
  %16 = load i8, i8* %original_sync_level, align 8, !dbg !837
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !838
  %mutex21 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_mutex*, !dbg !839
  %prev22 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex21, i32 0, i32 10, !dbg !840
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %prev22, align 8, !dbg !840
  %mutex23 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_mutex*, !dbg !841
  %original_sync_level24 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex23, i32 0, i32 13, !dbg !842
  store i8 %16, i8* %original_sync_level24, align 8, !dbg !843
  br label %if.end27, !dbg !844

if.else:                                          ; preds = %if.end9
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !845
  %mutex25 = bitcast %union.acpi_operand_object* %19 to %struct.acpi_object_mutex*, !dbg !847
  %next26 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex25, i32 0, i32 11, !dbg !848
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next26, align 8, !dbg !848
  %21 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !849
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %21, i32 0, i32 7, !dbg !850
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %acquired_mutex_list, align 8, !dbg !851
  br label %if.end27

if.end27:                                         ; preds = %if.then, %if.else, %if.then13
  ret void, !dbg !852
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_acquire_mutex_object(i16 zeroext %timeout, %union.acpi_operand_object* %obj_desc, i64 %thread_id) #0 !dbg !853 {
entry:
  %retval = alloca i32, align 4
  %timeout.addr = alloca i16, align 2
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %thread_id.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store i16 %timeout, i16* %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %timeout.addr, metadata !856, metadata !DIExpression()), !dbg !857
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !858, metadata !DIExpression()), !dbg !859
  store i64 %thread_id, i64* %thread_id.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %thread_id.addr, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata i32* %status, metadata !862, metadata !DIExpression()), !dbg !863
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !864
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !864
  br i1 %tobool, label %if.end, label %if.then, !dbg !866

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !867
  br label %return, !dbg !867

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !869
  %mutex = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_mutex*, !dbg !871
  %thread_id1 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 8, !dbg !872
  %2 = load i64, i64* %thread_id1, align 8, !dbg !872
  %3 = load i64, i64* %thread_id.addr, align 8, !dbg !873
  %cmp = icmp eq i64 %2, %3, !dbg !874
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !875

if.then2:                                         ; preds = %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !876
  %mutex3 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !878
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex3, i32 0, i32 6, !dbg !879
  %5 = load i16, i16* %acquisition_depth, align 2, !dbg !880
  %inc = add i16 %5, 1, !dbg !880
  store i16 %inc, i16* %acquisition_depth, align 2, !dbg !880
  store i32 0, i32* %retval, align 4, !dbg !881
  br label %return, !dbg !881

if.end4:                                          ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !882
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !884
  %cmp5 = icmp eq %union.acpi_operand_object* %6, %7, !dbg !885
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !886

if.then6:                                         ; preds = %if.end4
  %8 = load i16, i16* %timeout.addr, align 2, !dbg !887
  %call = call i32 @acpi_ev_acquire_global_lock(i16 zeroext %8) #3, !dbg !889
  store i32 %call, i32* %status, align 4, !dbg !890
  br label %if.end9, !dbg !891

if.else:                                          ; preds = %if.end4
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !892
  %mutex7 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_mutex*, !dbg !894
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex7, i32 0, i32 7, !dbg !895
  %10 = load i8*, i8** %os_mutex, align 8, !dbg !895
  %11 = load i16, i16* %timeout.addr, align 2, !dbg !896
  %call8 = call i32 @acpi_ex_system_wait_mutex(i8* %10, i16 zeroext %11) #3, !dbg !897
  store i32 %call8, i32* %status, align 4, !dbg !898
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %12 = load i32, i32* %status, align 4, !dbg !899
  %tobool10 = icmp ne i32 %12, 0, !dbg !899
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !901

if.then11:                                        ; preds = %if.end9
  %13 = load i32, i32* %status, align 4, !dbg !902
  store i32 %13, i32* %retval, align 4, !dbg !902
  br label %return, !dbg !902

if.end12:                                         ; preds = %if.end9
  %14 = load i64, i64* %thread_id.addr, align 8, !dbg !904
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !905
  %mutex13 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_mutex*, !dbg !906
  %thread_id14 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex13, i32 0, i32 8, !dbg !907
  store i64 %14, i64* %thread_id14, align 8, !dbg !908
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !909
  %mutex15 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_mutex*, !dbg !910
  %acquisition_depth16 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex15, i32 0, i32 6, !dbg !911
  store i16 1, i16* %acquisition_depth16, align 2, !dbg !912
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !913
  %mutex17 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_mutex*, !dbg !914
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex17, i32 0, i32 13, !dbg !915
  store i8 0, i8* %original_sync_level, align 8, !dbg !916
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !917
  %mutex18 = bitcast %union.acpi_operand_object* %18 to %struct.acpi_object_mutex*, !dbg !918
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex18, i32 0, i32 9, !dbg !919
  store %struct.acpi_thread_state* null, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !920
  store i32 0, i32* %retval, align 4, !dbg !921
  br label %return, !dbg !921

return:                                           ; preds = %if.end12, %if.then11, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !922
  ret i32 %19, !dbg !922
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_acquire_global_lock(i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ex_system_wait_mutex(i8*, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object* %time_desc, %union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !923 {
entry:
  %retval = alloca i32, align 4
  %time_desc.addr = alloca %union.acpi_operand_object*, align 8
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %time_desc, %union.acpi_operand_object** %time_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %time_desc.addr, metadata !926, metadata !DIExpression()), !dbg !927
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !928, metadata !DIExpression()), !dbg !929
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata i32* %status, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !934
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !934
  br i1 %tobool, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !937
  br label %return, !dbg !937

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !939
  %thread = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %1, i32 0, i32 49, !dbg !941
  %2 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !941
  %tobool1 = icmp ne %struct.acpi_thread_state* %2, null, !dbg !939
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !942

if.then2:                                         ; preds = %if.end
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !943
  %mutex = bitcast %union.acpi_operand_object* %3 to %struct.acpi_object_mutex*, !dbg !943
  %node = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 12, !dbg !943
  %4 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !943
  %5 = bitcast %struct.acpi_namespace_node* %4 to i8*, !dbg !943
  %call = call i8* @acpi_ut_get_node_name(i8* %5) #3, !dbg !943
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %call) #3, !dbg !943
  store i32 12303, i32* %retval, align 4, !dbg !945
  br label %return, !dbg !945

if.end3:                                          ; preds = %if.end
  %6 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !946
  %thread4 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %6, i32 0, i32 49, !dbg !948
  %7 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread4, align 8, !dbg !948
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %7, i32 0, i32 5, !dbg !949
  %8 = load i8, i8* %current_sync_level, align 2, !dbg !949
  %conv = zext i8 %8 to i32, !dbg !946
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !950
  %mutex5 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_mutex*, !dbg !951
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex5, i32 0, i32 5, !dbg !952
  %10 = load i8, i8* %sync_level, align 1, !dbg !952
  %conv6 = zext i8 %10 to i32, !dbg !950
  %cmp = icmp sgt i32 %conv, %conv6, !dbg !953
  br i1 %cmp, label %if.then8, label %if.end15, !dbg !954

if.then8:                                         ; preds = %if.end3
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !955
  %mutex9 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_mutex*, !dbg !955
  %node10 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex9, i32 0, i32 12, !dbg !955
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node10, align 8, !dbg !955
  %13 = bitcast %struct.acpi_namespace_node* %12 to i8*, !dbg !955
  %call11 = call i8* @acpi_ut_get_node_name(i8* %13) #3, !dbg !955
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !955
  %thread12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 49, !dbg !955
  %15 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread12, align 8, !dbg !955
  %current_sync_level13 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %15, i32 0, i32 5, !dbg !955
  %16 = load i8, i8* %current_sync_level13, align 2, !dbg !955
  %conv14 = zext i8 %16 to i32, !dbg !955
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %call11, i32 %conv14) #3, !dbg !955
  store i32 12309, i32* %retval, align 4, !dbg !957
  br label %return, !dbg !957

if.end15:                                         ; preds = %if.end3
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %time_desc.addr, align 8, !dbg !958
  %integer = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_integer*, !dbg !959
  %value = getelementptr inbounds %struct.acpi_object_integer, %struct.acpi_object_integer* %integer, i32 0, i32 6, !dbg !960
  %18 = load i64, i64* %value, align 8, !dbg !960
  %conv16 = trunc i64 %18 to i16, !dbg !961
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !962
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !963
  %thread17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 49, !dbg !964
  %21 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread17, align 8, !dbg !964
  %thread_id = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %21, i32 0, i32 8, !dbg !965
  %22 = load i64, i64* %thread_id, align 8, !dbg !965
  %call18 = call i32 @acpi_ex_acquire_mutex_object(i16 zeroext %conv16, %union.acpi_operand_object* %19, i64 %22) #3, !dbg !966
  store i32 %call18, i32* %status, align 4, !dbg !967
  %23 = load i32, i32* %status, align 4, !dbg !968
  %tobool19 = icmp ne i32 %23, 0, !dbg !968
  br i1 %tobool19, label %if.end35, label %land.lhs.true, !dbg !970

land.lhs.true:                                    ; preds = %if.end15
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !971
  %mutex20 = bitcast %union.acpi_operand_object* %24 to %struct.acpi_object_mutex*, !dbg !972
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex20, i32 0, i32 6, !dbg !973
  %25 = load i16, i16* %acquisition_depth, align 2, !dbg !973
  %conv21 = zext i16 %25 to i32, !dbg !971
  %cmp22 = icmp eq i32 %conv21, 1, !dbg !974
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !975

if.then24:                                        ; preds = %land.lhs.true
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !976
  %thread25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 49, !dbg !978
  %27 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread25, align 8, !dbg !978
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !979
  %mutex26 = bitcast %union.acpi_operand_object* %28 to %struct.acpi_object_mutex*, !dbg !980
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex26, i32 0, i32 9, !dbg !981
  store %struct.acpi_thread_state* %27, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !982
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !983
  %thread27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 49, !dbg !984
  %30 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread27, align 8, !dbg !984
  %current_sync_level28 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %30, i32 0, i32 5, !dbg !985
  %31 = load i8, i8* %current_sync_level28, align 2, !dbg !985
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !986
  %mutex29 = bitcast %union.acpi_operand_object* %32 to %struct.acpi_object_mutex*, !dbg !987
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex29, i32 0, i32 13, !dbg !988
  store i8 %31, i8* %original_sync_level, align 8, !dbg !989
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !990
  %mutex30 = bitcast %union.acpi_operand_object* %33 to %struct.acpi_object_mutex*, !dbg !991
  %sync_level31 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex30, i32 0, i32 5, !dbg !992
  %34 = load i8, i8* %sync_level31, align 1, !dbg !992
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !993
  %thread32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 49, !dbg !994
  %36 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread32, align 8, !dbg !994
  %current_sync_level33 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %36, i32 0, i32 5, !dbg !995
  store i8 %34, i8* %current_sync_level33, align 2, !dbg !996
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !997
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !998
  %thread34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 49, !dbg !999
  %39 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread34, align 8, !dbg !999
  call void @acpi_ex_link_mutex(%union.acpi_operand_object* %37, %struct.acpi_thread_state* %39) #3, !dbg !1000
  br label %if.end35, !dbg !1001

if.end35:                                         ; preds = %if.then24, %land.lhs.true, %if.end15
  %40 = load i32, i32* %status, align 4, !dbg !1002
  store i32 %40, i32* %retval, align 4, !dbg !1002
  br label %return, !dbg !1002

return:                                           ; preds = %if.end35, %if.then8, %if.then2, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !1003
  ret i32 %41, !dbg !1003
}

; Function Attrs: noredzone
declare dso_local void @acpi_error(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_node_name(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_ex_link_mutex(%union.acpi_operand_object* %obj_desc, %struct.acpi_thread_state* %thread) #0 !dbg !1004 {
entry:
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  %list_head = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1007, metadata !DIExpression()), !dbg !1008
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %list_head, metadata !1011, metadata !DIExpression()), !dbg !1012
  %0 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1013
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %0, i32 0, i32 7, !dbg !1014
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %acquired_mutex_list, align 8, !dbg !1014
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %list_head, align 8, !dbg !1015
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1016
  %mutex = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_mutex*, !dbg !1017
  %prev = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 10, !dbg !1018
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %prev, align 8, !dbg !1019
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %list_head, align 8, !dbg !1020
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1021
  %mutex1 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !1022
  %next = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex1, i32 0, i32 11, !dbg !1023
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %next, align 8, !dbg !1024
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %list_head, align 8, !dbg !1025
  %tobool = icmp ne %union.acpi_operand_object* %5, null, !dbg !1025
  br i1 %tobool, label %if.then, label %if.end, !dbg !1027

if.then:                                          ; preds = %entry
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1028
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %list_head, align 8, !dbg !1030
  %mutex2 = bitcast %union.acpi_operand_object* %7 to %struct.acpi_object_mutex*, !dbg !1031
  %prev3 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex2, i32 0, i32 10, !dbg !1032
  store %union.acpi_operand_object* %6, %union.acpi_operand_object** %prev3, align 8, !dbg !1033
  br label %if.end, !dbg !1034

if.end:                                           ; preds = %if.then, %entry
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1035
  %9 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1036
  %acquired_mutex_list4 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %9, i32 0, i32 7, !dbg !1037
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %acquired_mutex_list4, align 8, !dbg !1038
  ret void, !dbg !1039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object* %obj_desc) #0 !dbg !1040 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i32 0, i32* %status, align 4, !dbg !1046
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1047
  %mutex = bitcast %union.acpi_operand_object* %0 to %struct.acpi_object_mutex*, !dbg !1049
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 6, !dbg !1050
  %1 = load i16, i16* %acquisition_depth, align 2, !dbg !1050
  %conv = zext i16 %1 to i32, !dbg !1047
  %cmp = icmp eq i32 %conv, 0, !dbg !1051
  br i1 %cmp, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %entry
  store i32 20, i32* %retval, align 4, !dbg !1053
  br label %return, !dbg !1053

if.end:                                           ; preds = %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1055
  %mutex2 = bitcast %union.acpi_operand_object* %2 to %struct.acpi_object_mutex*, !dbg !1056
  %acquisition_depth3 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex2, i32 0, i32 6, !dbg !1057
  %3 = load i16, i16* %acquisition_depth3, align 2, !dbg !1058
  %dec = add i16 %3, -1, !dbg !1058
  store i16 %dec, i16* %acquisition_depth3, align 2, !dbg !1058
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1059
  %mutex4 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !1061
  %acquisition_depth5 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex4, i32 0, i32 6, !dbg !1062
  %5 = load i16, i16* %acquisition_depth5, align 2, !dbg !1062
  %conv6 = zext i16 %5 to i32, !dbg !1059
  %cmp7 = icmp ne i32 %conv6, 0, !dbg !1063
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1064

if.then9:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1065
  br label %return, !dbg !1065

if.end10:                                         ; preds = %if.end
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1067
  %mutex11 = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_mutex*, !dbg !1069
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex11, i32 0, i32 9, !dbg !1070
  %7 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1070
  %tobool = icmp ne %struct.acpi_thread_state* %7, null, !dbg !1067
  br i1 %tobool, label %if.then12, label %if.end15, !dbg !1071

if.then12:                                        ; preds = %if.end10
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1072
  call void @acpi_ex_unlink_mutex(%union.acpi_operand_object* %8) #3, !dbg !1074
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1075
  %mutex13 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_mutex*, !dbg !1076
  %owner_thread14 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex13, i32 0, i32 9, !dbg !1077
  store %struct.acpi_thread_state* null, %struct.acpi_thread_state** %owner_thread14, align 8, !dbg !1078
  br label %if.end15, !dbg !1079

if.end15:                                         ; preds = %if.then12, %if.end10
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1080
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !1082
  %cmp16 = icmp eq %union.acpi_operand_object* %10, %11, !dbg !1083
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !1084

if.then18:                                        ; preds = %if.end15
  %call = call i32 @acpi_ev_release_global_lock() #3, !dbg !1085
  store i32 %call, i32* %status, align 4, !dbg !1087
  br label %if.end21, !dbg !1088

if.else:                                          ; preds = %if.end15
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1089
  %mutex19 = bitcast %union.acpi_operand_object* %12 to %struct.acpi_object_mutex*, !dbg !1089
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex19, i32 0, i32 7, !dbg !1089
  %13 = load i8*, i8** %os_mutex, align 8, !dbg !1089
  %call20 = call i32 @acpi_os_signal_semaphore(i8* %13, i32 1) #3, !dbg !1089
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1091
  %mutex22 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_mutex*, !dbg !1092
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex22, i32 0, i32 8, !dbg !1093
  store i64 0, i64* %thread_id, align 8, !dbg !1094
  %15 = load i32, i32* %status, align 4, !dbg !1095
  store i32 %15, i32* %retval, align 4, !dbg !1095
  br label %return, !dbg !1095

return:                                           ; preds = %if.end21, %if.then9, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !1096
  ret i32 %16, !dbg !1096
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ev_release_global_lock() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_signal_semaphore(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ex_release_mutex(%union.acpi_operand_object* %obj_desc, %struct.acpi_walk_state* %walk_state) #0 !dbg !1097 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca %union.acpi_operand_object*, align 8
  %walk_state.addr = alloca %struct.acpi_walk_state*, align 8
  %previous_sync_level = alloca i8, align 1
  %owner_thread = alloca %struct.acpi_thread_state*, align 8
  %status = alloca i32, align 4
  store %union.acpi_operand_object* %obj_desc, %union.acpi_operand_object** %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc.addr, metadata !1100, metadata !DIExpression()), !dbg !1101
  store %struct.acpi_walk_state* %walk_state, %struct.acpi_walk_state** %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_walk_state** %walk_state.addr, metadata !1102, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.declare(metadata i8* %previous_sync_level, metadata !1104, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %owner_thread, metadata !1106, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1108, metadata !DIExpression()), !dbg !1109
  store i32 0, i32* %status, align 4, !dbg !1109
  %0 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1110
  %tobool = icmp ne %union.acpi_operand_object* %0, null, !dbg !1110
  br i1 %tobool, label %if.end, label %if.then, !dbg !1112

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !1113
  br label %return, !dbg !1113

if.end:                                           ; preds = %entry
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1115
  %mutex = bitcast %union.acpi_operand_object* %1 to %struct.acpi_object_mutex*, !dbg !1116
  %owner_thread1 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 9, !dbg !1117
  %2 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread1, align 8, !dbg !1117
  store %struct.acpi_thread_state* %2, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1118
  %3 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1119
  %tobool2 = icmp ne %struct.acpi_thread_state* %3, null, !dbg !1119
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !1121

if.then3:                                         ; preds = %if.end
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1122
  %mutex4 = bitcast %union.acpi_operand_object* %4 to %struct.acpi_object_mutex*, !dbg !1122
  %node = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex4, i32 0, i32 12, !dbg !1122
  %5 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node, align 8, !dbg !1122
  %6 = bitcast %struct.acpi_namespace_node* %5 to i8*, !dbg !1122
  %call = call i8* @acpi_ut_get_node_name(i8* %6) #3, !dbg !1122
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 357, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %call) #3, !dbg !1122
  store i32 12310, i32* %retval, align 4, !dbg !1124
  br label %return, !dbg !1124

if.end5:                                          ; preds = %if.end
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1125
  %thread = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 49, !dbg !1127
  %8 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread, align 8, !dbg !1127
  %tobool6 = icmp ne %struct.acpi_thread_state* %8, null, !dbg !1125
  br i1 %tobool6, label %if.end11, label %if.then7, !dbg !1128

if.then7:                                         ; preds = %if.end5
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1129
  %mutex8 = bitcast %union.acpi_operand_object* %9 to %struct.acpi_object_mutex*, !dbg !1129
  %node9 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex8, i32 0, i32 12, !dbg !1129
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node9, align 8, !dbg !1129
  %11 = bitcast %struct.acpi_namespace_node* %10 to i8*, !dbg !1129
  %call10 = call i8* @acpi_ut_get_node_name(i8* %11) #3, !dbg !1129
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 366, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %call10) #3, !dbg !1129
  store i32 12303, i32* %retval, align 4, !dbg !1131
  br label %return, !dbg !1131

if.end11:                                         ; preds = %if.end5
  %12 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1132
  %thread_id = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %12, i32 0, i32 8, !dbg !1134
  %13 = load i64, i64* %thread_id, align 8, !dbg !1134
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1135
  %thread12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 49, !dbg !1136
  %15 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread12, align 8, !dbg !1136
  %thread_id13 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %15, i32 0, i32 8, !dbg !1137
  %16 = load i64, i64* %thread_id13, align 8, !dbg !1137
  %cmp = icmp ne i64 %13, %16, !dbg !1138
  br i1 %cmp, label %land.lhs.true, label %if.end23, !dbg !1139

land.lhs.true:                                    ; preds = %if.end11
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1140
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !1141
  %cmp14 = icmp ne %union.acpi_operand_object* %17, %18, !dbg !1142
  br i1 %cmp14, label %if.then15, label %if.end23, !dbg !1143

if.then15:                                        ; preds = %land.lhs.true
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1144
  %thread16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 49, !dbg !1144
  %20 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread16, align 8, !dbg !1144
  %thread_id17 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %20, i32 0, i32 8, !dbg !1144
  %21 = load i64, i64* %thread_id17, align 8, !dbg !1144
  %conv = trunc i64 %21 to i32, !dbg !1144
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1144
  %mutex18 = bitcast %union.acpi_operand_object* %22 to %struct.acpi_object_mutex*, !dbg !1144
  %node19 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex18, i32 0, i32 12, !dbg !1144
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node19, align 8, !dbg !1144
  %24 = bitcast %struct.acpi_namespace_node* %23 to i8*, !dbg !1144
  %call20 = call i8* @acpi_ut_get_node_name(i8* %24) #3, !dbg !1144
  %25 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1144
  %thread_id21 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %25, i32 0, i32 8, !dbg !1144
  %26 = load i64, i64* %thread_id21, align 8, !dbg !1144
  %conv22 = trunc i64 %26 to i32, !dbg !1144
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %conv, i8* %call20, i32 %conv22) #3, !dbg !1144
  store i32 12308, i32* %retval, align 4, !dbg !1146
  br label %return, !dbg !1146

if.end23:                                         ; preds = %land.lhs.true, %if.end11
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1147
  %mutex24 = bitcast %union.acpi_operand_object* %27 to %struct.acpi_object_mutex*, !dbg !1149
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex24, i32 0, i32 5, !dbg !1150
  %28 = load i8, i8* %sync_level, align 1, !dbg !1150
  %conv25 = zext i8 %28 to i32, !dbg !1147
  %29 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1151
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %29, i32 0, i32 5, !dbg !1152
  %30 = load i8, i8* %current_sync_level, align 2, !dbg !1152
  %conv26 = zext i8 %30 to i32, !dbg !1151
  %cmp27 = icmp ne i32 %conv25, %conv26, !dbg !1153
  br i1 %cmp27, label %if.then29, label %if.end39, !dbg !1154

if.then29:                                        ; preds = %if.end23
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1155
  %mutex30 = bitcast %union.acpi_operand_object* %31 to %struct.acpi_object_mutex*, !dbg !1155
  %node31 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex30, i32 0, i32 12, !dbg !1155
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %node31, align 8, !dbg !1155
  %33 = bitcast %struct.acpi_namespace_node* %32 to i8*, !dbg !1155
  %call32 = call i8* @acpi_ut_get_node_name(i8* %33) #3, !dbg !1155
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1155
  %mutex33 = bitcast %union.acpi_operand_object* %34 to %struct.acpi_object_mutex*, !dbg !1155
  %sync_level34 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex33, i32 0, i32 5, !dbg !1155
  %35 = load i8, i8* %sync_level34, align 1, !dbg !1155
  %conv35 = zext i8 %35 to i32, !dbg !1155
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %walk_state.addr, align 8, !dbg !1155
  %thread36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 49, !dbg !1155
  %37 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread36, align 8, !dbg !1155
  %current_sync_level37 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %37, i32 0, i32 5, !dbg !1155
  %38 = load i8, i8* %current_sync_level37, align 2, !dbg !1155
  %conv38 = zext i8 %38 to i32, !dbg !1155
  call void (i8*, i32, i8*, ...) @acpi_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_acpi_module_name, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* %call32, i32 %conv35, i32 %conv38) #3, !dbg !1155
  store i32 12309, i32* %retval, align 4, !dbg !1157
  br label %return, !dbg !1157

if.end39:                                         ; preds = %if.end23
  %39 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1158
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %39, i32 0, i32 7, !dbg !1159
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %acquired_mutex_list, align 8, !dbg !1159
  %mutex40 = bitcast %union.acpi_operand_object* %40 to %struct.acpi_object_mutex*, !dbg !1160
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex40, i32 0, i32 13, !dbg !1161
  %41 = load i8, i8* %original_sync_level, align 8, !dbg !1161
  store i8 %41, i8* %previous_sync_level, align 1, !dbg !1162
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1163
  %call41 = call i32 @acpi_ex_release_mutex_object(%union.acpi_operand_object* %42) #3, !dbg !1164
  store i32 %call41, i32* %status, align 4, !dbg !1165
  %43 = load i32, i32* %status, align 4, !dbg !1166
  %tobool42 = icmp ne i32 %43, 0, !dbg !1166
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1168

if.then43:                                        ; preds = %if.end39
  %44 = load i32, i32* %status, align 4, !dbg !1169
  store i32 %44, i32* %retval, align 4, !dbg !1169
  br label %return, !dbg !1169

if.end44:                                         ; preds = %if.end39
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc.addr, align 8, !dbg !1171
  %mutex45 = bitcast %union.acpi_operand_object* %45 to %struct.acpi_object_mutex*, !dbg !1173
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex45, i32 0, i32 6, !dbg !1174
  %46 = load i16, i16* %acquisition_depth, align 2, !dbg !1174
  %conv46 = zext i16 %46 to i32, !dbg !1171
  %cmp47 = icmp eq i32 %conv46, 0, !dbg !1175
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !1176

if.then49:                                        ; preds = %if.end44
  %47 = load i8, i8* %previous_sync_level, align 1, !dbg !1177
  %48 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1179
  %current_sync_level50 = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %48, i32 0, i32 5, !dbg !1180
  store i8 %47, i8* %current_sync_level50, align 2, !dbg !1181
  br label %if.end51, !dbg !1182

if.end51:                                         ; preds = %if.then49, %if.end44
  %49 = load i32, i32* %status, align 4, !dbg !1183
  store i32 %49, i32* %retval, align 4, !dbg !1183
  br label %return, !dbg !1183

return:                                           ; preds = %if.end51, %if.then43, %if.then29, %if.then15, %if.then7, %if.then3, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !1184
  ret i32 %50, !dbg !1184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ex_release_all_mutexes(%struct.acpi_thread_state* %thread) #0 !dbg !1185 {
entry:
  %thread.addr = alloca %struct.acpi_thread_state*, align 8
  %next = alloca %union.acpi_operand_object*, align 8
  %obj_desc = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_thread_state* %thread, %struct.acpi_thread_state** %thread.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_thread_state** %thread.addr, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %next, metadata !1190, metadata !DIExpression()), !dbg !1191
  %0 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1192
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %0, i32 0, i32 7, !dbg !1193
  %1 = load %union.acpi_operand_object*, %union.acpi_operand_object** %acquired_mutex_list, align 8, !dbg !1193
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %next, align 8, !dbg !1191
  call void @llvm.dbg.declare(metadata %union.acpi_operand_object** %obj_desc, metadata !1194, metadata !DIExpression()), !dbg !1195
  br label %while.cond, !dbg !1196

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !1197
  %tobool = icmp ne %union.acpi_operand_object* %2, null, !dbg !1196
  br i1 %tobool, label %while.body, label %while.end, !dbg !1196

while.body:                                       ; preds = %while.cond
  %3 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next, align 8, !dbg !1198
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1200
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1201
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8, !dbg !1203
  %cmp = icmp eq %union.acpi_operand_object* %4, %5, !dbg !1204
  br i1 %cmp, label %if.then, label %if.else, !dbg !1205

if.then:                                          ; preds = %while.body
  %call = call i32 @acpi_ev_release_global_lock() #3, !dbg !1206
  br label %if.end, !dbg !1208

if.else:                                          ; preds = %while.body
  %6 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1209
  %mutex = bitcast %union.acpi_operand_object* %6 to %struct.acpi_object_mutex*, !dbg !1209
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex, i32 0, i32 7, !dbg !1209
  %7 = load i8*, i8** %os_mutex, align 8, !dbg !1209
  %call1 = call i32 @acpi_os_signal_semaphore(i8* %7, i32 1) #3, !dbg !1209
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1211
  %mutex2 = bitcast %union.acpi_operand_object* %8 to %struct.acpi_object_mutex*, !dbg !1212
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex2, i32 0, i32 13, !dbg !1213
  %9 = load i8, i8* %original_sync_level, align 8, !dbg !1213
  %10 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %thread.addr, align 8, !dbg !1214
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, %struct.acpi_thread_state* %10, i32 0, i32 5, !dbg !1215
  store i8 %9, i8* %current_sync_level, align 2, !dbg !1216
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1217
  %mutex3 = bitcast %union.acpi_operand_object* %11 to %struct.acpi_object_mutex*, !dbg !1218
  %next4 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex3, i32 0, i32 11, !dbg !1219
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %next4, align 8, !dbg !1219
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %next, align 8, !dbg !1220
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1221
  %mutex5 = bitcast %union.acpi_operand_object* %13 to %struct.acpi_object_mutex*, !dbg !1222
  %prev = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex5, i32 0, i32 10, !dbg !1223
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %prev, align 8, !dbg !1224
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1225
  %mutex6 = bitcast %union.acpi_operand_object* %14 to %struct.acpi_object_mutex*, !dbg !1226
  %next7 = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex6, i32 0, i32 11, !dbg !1227
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %next7, align 8, !dbg !1228
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1229
  %mutex8 = bitcast %union.acpi_operand_object* %15 to %struct.acpi_object_mutex*, !dbg !1230
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex8, i32 0, i32 6, !dbg !1231
  store i16 0, i16* %acquisition_depth, align 2, !dbg !1232
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1233
  %mutex9 = bitcast %union.acpi_operand_object* %16 to %struct.acpi_object_mutex*, !dbg !1234
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex9, i32 0, i32 9, !dbg !1235
  store %struct.acpi_thread_state* null, %struct.acpi_thread_state** %owner_thread, align 8, !dbg !1236
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %obj_desc, align 8, !dbg !1237
  %mutex10 = bitcast %union.acpi_operand_object* %17 to %struct.acpi_object_mutex*, !dbg !1238
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, %struct.acpi_object_mutex* %mutex10, i32 0, i32 8, !dbg !1239
  store i64 0, i64* %thread_id, align 8, !dbg !1240
  br label %while.cond, !dbg !1196, !llvm.loop !1241

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1243
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exmutex.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !13, !8}
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
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !20)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!27 = distinct !DISubprogram(name: "acpi_ex_unlink_mutex", scope: !3, file: !3, line: 35, type: !28, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !32, line: 367, size: 576, elements: !33)
!32 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !45, !61, !72, !108, !122, !132, !443, !460, !475, !488, !566, !578, !592, !602, !620, !642, !661, !680, !699, !712, !738, !755, !768, !782, !791}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !31, file: !32, line: 368, baseType: !35, size: 128)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !32, line: 73, size: 128, elements: !36)
!36 = !{!37, !38, !42, !43, !44}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !35, file: !32, line: 74, baseType: !30, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !9, line: 17, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !11, line: 21, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !35, file: !32, line: 74, baseType: !13, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !32, line: 74, baseType: !39, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !31, file: !32, line: 369, baseType: !46, size: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !32, line: 76, size: 192, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !57}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !46, file: !32, line: 77, baseType: !30, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !32, line: 77, baseType: !39, size: 8, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !32, line: 77, baseType: !39, size: 8, offset: 72)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !46, file: !32, line: 77, baseType: !13, size: 16, offset: 80)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !32, line: 77, baseType: !39, size: 8, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !46, file: !32, line: 77, baseType: !54, size: 24, offset: 104)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 3)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !46, file: !32, line: 78, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !9, line: 23, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !11, line: 31, baseType: !60)
!60 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !31, file: !32, line: 370, baseType: !62, size: 256)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !32, line: 93, size: 256, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !71}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !32, line: 94, baseType: !30, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !32, line: 94, baseType: !39, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !32, line: 94, baseType: !39, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !32, line: 94, baseType: !13, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !32, line: 94, baseType: !39, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !62, file: !32, line: 94, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !32, line: 94, baseType: !8, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !31, file: !32, line: 371, baseType: !73, size: 384)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !32, line: 97, size: 384, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !82, !83, !84, !85}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !73, file: !32, line: 98, baseType: !30, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !32, line: 98, baseType: !39, size: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !32, line: 98, baseType: !39, size: 8, offset: 72)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !73, file: !32, line: 98, baseType: !13, size: 16, offset: 80)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !32, line: 98, baseType: !39, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !73, file: !32, line: 98, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !73, file: !32, line: 98, baseType: !8, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !73, file: !32, line: 99, baseType: !8, size: 32, offset: 224)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !73, file: !32, line: 100, baseType: !81, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !73, file: !32, line: 101, baseType: !86, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !88, line: 133, size: 384, elements: !89)
!88 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93, !94, !103, !104, !105, !106}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !87, file: !88, line: 134, baseType: !30, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !88, line: 135, baseType: !39, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !88, line: 136, baseType: !39, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 137, baseType: !13, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 138, baseType: !95, size: 32, offset: 96)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !96, line: 327, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !95, file: !96, line: 328, baseType: !8, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !95, file: !96, line: 329, baseType: !100, size: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !88, line: 139, baseType: !86, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !87, file: !88, line: 140, baseType: !86, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !87, file: !88, line: 141, baseType: !86, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !87, file: !88, line: 142, baseType: !107, size: 16, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !7, line: 445, baseType: !13)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !31, file: !32, line: 372, baseType: !109, size: 384)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !32, line: 104, size: 384, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !119, !120, !121}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !109, file: !32, line: 105, baseType: !30, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !109, file: !32, line: 105, baseType: !39, size: 8, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !32, line: 105, baseType: !39, size: 8, offset: 72)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !109, file: !32, line: 105, baseType: !13, size: 16, offset: 80)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !32, line: 105, baseType: !39, size: 8, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !109, file: !32, line: 105, baseType: !86, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !109, file: !32, line: 106, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !109, file: !32, line: 107, baseType: !81, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !109, file: !32, line: 108, baseType: !8, size: 32, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !109, file: !32, line: 109, baseType: !8, size: 32, offset: 352)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !31, file: !32, line: 373, baseType: !123, size: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !32, line: 118, size: 192, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !32, line: 119, baseType: !30, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !32, line: 119, baseType: !39, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !32, line: 119, baseType: !39, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !32, line: 119, baseType: !13, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !32, line: 119, baseType: !39, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !123, file: !32, line: 119, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !31, file: !32, line: 374, baseType: !133, size: 448)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !32, line: 143, size: 448, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !440, !441, !442}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !32, line: 144, baseType: !30, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !32, line: 144, baseType: !39, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !32, line: 144, baseType: !39, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !32, line: 144, baseType: !13, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !32, line: 144, baseType: !39, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !133, file: !32, line: 144, baseType: !39, size: 8, offset: 104)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !133, file: !32, line: 145, baseType: !39, size: 8, offset: 112)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !133, file: !32, line: 146, baseType: !39, size: 8, offset: 120)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !133, file: !32, line: 147, baseType: !30, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !32, line: 148, baseType: !30, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !133, file: !32, line: 149, baseType: !81, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !133, file: !32, line: 153, baseType: !147, size: 64, offset: 320)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !32, line: 150, size: 64, elements: !148)
!148 = !{!149, !439}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !147, file: !32, line: 151, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !88, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!6, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !156, line: 37, size: 9024, elements: !157)
!156 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !385, !386, !387, !388, !389, !393, !395, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !422, !423, !424, !425, !426, !427, !428, !429, !431, !437}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !156, line: 38, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !156, line: 39, baseType: !39, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !155, file: !156, line: 40, baseType: !39, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !155, file: !156, line: 41, baseType: !13, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !155, file: !156, line: 42, baseType: !39, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !155, file: !156, line: 43, baseType: !39, size: 8, offset: 104)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !155, file: !156, line: 44, baseType: !39, size: 8, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !155, file: !156, line: 45, baseType: !107, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !155, file: !156, line: 46, baseType: !39, size: 8, offset: 144)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !155, file: !156, line: 47, baseType: !39, size: 8, offset: 152)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !155, file: !156, line: 48, baseType: !39, size: 8, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !155, file: !156, line: 49, baseType: !39, size: 8, offset: 168)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !155, file: !156, line: 50, baseType: !39, size: 8, offset: 176)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !155, file: !156, line: 51, baseType: !39, size: 8, offset: 184)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !155, file: !156, line: 52, baseType: !39, size: 8, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !155, file: !156, line: 53, baseType: !39, size: 8, offset: 200)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !155, file: !156, line: 54, baseType: !81, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !155, file: !156, line: 55, baseType: !8, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !155, file: !156, line: 56, baseType: !8, size: 32, offset: 352)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !155, file: !156, line: 57, baseType: !8, size: 32, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !155, file: !156, line: 58, baseType: !8, size: 32, offset: 416)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !155, file: !156, line: 60, baseType: !180, size: 640, offset: 448)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !88, line: 893, size: 640, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !268, !269, !383, !384}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !180, file: !88, line: 894, baseType: !81, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !180, file: !88, line: 895, baseType: !81, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !180, file: !88, line: 896, baseType: !81, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !180, file: !88, line: 897, baseType: !81, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !180, file: !88, line: 898, baseType: !81, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !180, file: !88, line: 899, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !88, line: 875, size: 1600, elements: !190)
!190 = !{!191, !211, !227}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !189, file: !88, line: 876, baseType: !192, size: 448)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !88, line: 828, size: 448, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !210}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !192, file: !88, line: 829, baseType: !188, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !88, line: 829, baseType: !39, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !88, line: 829, baseType: !39, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !192, file: !88, line: 829, baseType: !13, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !192, file: !88, line: 829, baseType: !81, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !88, line: 829, baseType: !188, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !88, line: 829, baseType: !86, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !192, file: !88, line: 829, baseType: !202, size: 64, offset: 320)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !88, line: 716, size: 64, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !202, file: !88, line: 717, baseType: !58, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !202, file: !88, line: 718, baseType: !8, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !202, file: !88, line: 719, baseType: !70, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !202, file: !88, line: 720, baseType: !81, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !88, line: 721, baseType: !70, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !202, file: !88, line: 722, baseType: !188, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !192, file: !88, line: 829, baseType: !39, size: 8, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !189, file: !88, line: 877, baseType: !212, size: 640)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !88, line: 835, size: 640, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !212, file: !88, line: 836, baseType: !188, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !88, line: 836, baseType: !39, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !88, line: 836, baseType: !39, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !212, file: !88, line: 836, baseType: !13, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !212, file: !88, line: 836, baseType: !81, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !88, line: 836, baseType: !188, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !212, file: !88, line: 836, baseType: !86, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !212, file: !88, line: 836, baseType: !202, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !212, file: !88, line: 836, baseType: !39, size: 8, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !212, file: !88, line: 836, baseType: !70, size: 64, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !212, file: !88, line: 837, baseType: !81, size: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !212, file: !88, line: 838, baseType: !8, size: 32, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !88, line: 839, baseType: !8, size: 32, offset: 608)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !189, file: !88, line: 878, baseType: !228, size: 1600)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !88, line: 846, size: 1600, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !88, line: 847, baseType: !188, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !88, line: 847, baseType: !39, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !88, line: 847, baseType: !39, size: 8, offset: 72)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !228, file: !88, line: 847, baseType: !13, size: 16, offset: 80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !228, file: !88, line: 847, baseType: !81, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !88, line: 847, baseType: !188, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !228, file: !88, line: 847, baseType: !86, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !228, file: !88, line: 847, baseType: !202, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !228, file: !88, line: 847, baseType: !39, size: 8, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !228, file: !88, line: 847, baseType: !188, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !228, file: !88, line: 848, baseType: !188, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !228, file: !88, line: 849, baseType: !70, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !228, file: !88, line: 850, baseType: !39, size: 8, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !228, file: !88, line: 851, baseType: !70, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !228, file: !88, line: 852, baseType: !70, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !228, file: !88, line: 853, baseType: !70, size: 64, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !228, file: !88, line: 854, baseType: !100, size: 32, offset: 896)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !228, file: !88, line: 855, baseType: !8, size: 32, offset: 928)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !228, file: !88, line: 856, baseType: !8, size: 32, offset: 960)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !228, file: !88, line: 857, baseType: !8, size: 32, offset: 992)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !228, file: !88, line: 858, baseType: !8, size: 32, offset: 1024)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !228, file: !88, line: 859, baseType: !8, size: 32, offset: 1056)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !228, file: !88, line: 860, baseType: !8, size: 32, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !228, file: !88, line: 861, baseType: !8, size: 32, offset: 1120)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !228, file: !88, line: 862, baseType: !8, size: 32, offset: 1152)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !228, file: !88, line: 863, baseType: !8, size: 32, offset: 1184)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !228, file: !88, line: 864, baseType: !8, size: 32, offset: 1216)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !228, file: !88, line: 865, baseType: !8, size: 32, offset: 1248)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !228, file: !88, line: 866, baseType: !8, size: 32, offset: 1280)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !228, file: !88, line: 867, baseType: !8, size: 32, offset: 1312)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !228, file: !88, line: 868, baseType: !13, size: 16, offset: 1344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !228, file: !88, line: 869, baseType: !39, size: 8, offset: 1360)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !228, file: !88, line: 870, baseType: !39, size: 8, offset: 1368)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !228, file: !88, line: 871, baseType: !39, size: 8, offset: 1376)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !228, file: !88, line: 872, baseType: !265, size: 160, offset: 1384)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 20)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !180, file: !88, line: 900, baseType: !86, size: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !180, file: !88, line: 901, baseType: !270, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !88, line: 663, size: 640, elements: !272)
!272 = !{!273, !281, !294, !303, !312, !325, !339, !351, !361}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !271, file: !88, line: 664, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !88, line: 567, size: 128, elements: !275)
!275 = !{!276, !277, !278, !279, !280}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !88, line: 568, baseType: !131, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !88, line: 568, baseType: !39, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !88, line: 568, baseType: !39, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !88, line: 568, baseType: !13, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !88, line: 568, baseType: !13, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !271, file: !88, line: 665, baseType: !282, size: 384)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !88, line: 593, size: 384, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !88, line: 594, baseType: !131, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !282, file: !88, line: 594, baseType: !39, size: 8, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !88, line: 594, baseType: !39, size: 8, offset: 72)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !282, file: !88, line: 594, baseType: !13, size: 16, offset: 80)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !88, line: 594, baseType: !13, size: 16, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !282, file: !88, line: 594, baseType: !13, size: 16, offset: 112)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !282, file: !88, line: 595, baseType: !188, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !282, file: !88, line: 596, baseType: !81, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !282, file: !88, line: 597, baseType: !81, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !282, file: !88, line: 598, baseType: !58, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !271, file: !88, line: 666, baseType: !295, size: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !88, line: 573, size: 192, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !88, line: 574, baseType: !131, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !295, file: !88, line: 574, baseType: !39, size: 8, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !88, line: 574, baseType: !39, size: 8, offset: 72)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !295, file: !88, line: 574, baseType: !13, size: 16, offset: 80)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !295, file: !88, line: 574, baseType: !13, size: 16, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !295, file: !88, line: 574, baseType: !30, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !271, file: !88, line: 667, baseType: !304, size: 192)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !88, line: 604, size: 192, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !88, line: 605, baseType: !131, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !88, line: 605, baseType: !39, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !88, line: 605, baseType: !39, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !88, line: 605, baseType: !13, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !88, line: 605, baseType: !13, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !304, file: !88, line: 605, baseType: !86, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !271, file: !88, line: 668, baseType: !313, size: 448)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !88, line: 608, size: 448, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !88, line: 609, baseType: !131, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !313, file: !88, line: 609, baseType: !39, size: 8, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !88, line: 609, baseType: !39, size: 8, offset: 72)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !88, line: 609, baseType: !13, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !313, file: !88, line: 609, baseType: !13, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !313, file: !88, line: 609, baseType: !8, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !313, file: !88, line: 610, baseType: !188, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !313, file: !88, line: 611, baseType: !81, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !313, file: !88, line: 612, baseType: !81, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !313, file: !88, line: 613, baseType: !8, size: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !271, file: !88, line: 669, baseType: !326, size: 512)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !88, line: 580, size: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !88, line: 581, baseType: !131, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !88, line: 581, baseType: !39, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !88, line: 581, baseType: !39, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !88, line: 581, baseType: !13, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !88, line: 581, baseType: !13, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !326, file: !88, line: 581, baseType: !8, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !326, file: !88, line: 582, baseType: !30, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !326, file: !88, line: 583, baseType: !30, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !326, file: !88, line: 584, baseType: !154, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !326, file: !88, line: 585, baseType: !131, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !326, file: !88, line: 586, baseType: !8, size: 32, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !271, file: !88, line: 670, baseType: !340, size: 320)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !88, line: 620, size: 320, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !88, line: 621, baseType: !131, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !88, line: 621, baseType: !39, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !88, line: 621, baseType: !39, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !88, line: 621, baseType: !13, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !88, line: 621, baseType: !13, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !340, file: !88, line: 621, baseType: !39, size: 8, offset: 112)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !340, file: !88, line: 622, baseType: !154, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !340, file: !88, line: 623, baseType: !30, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !340, file: !88, line: 624, baseType: !58, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !271, file: !88, line: 671, baseType: !352, size: 640)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !88, line: 631, size: 640, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !88, line: 632, baseType: !131, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !88, line: 632, baseType: !39, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !88, line: 632, baseType: !39, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !88, line: 632, baseType: !13, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !88, line: 632, baseType: !13, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !352, file: !88, line: 633, baseType: !360, size: 512, offset: 128)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !20)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !271, file: !88, line: 672, baseType: !362, size: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !88, line: 654, size: 320, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !88, line: 655, baseType: !131, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !88, line: 655, baseType: !39, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !88, line: 655, baseType: !39, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !88, line: 655, baseType: !13, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !88, line: 655, baseType: !13, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !362, file: !88, line: 655, baseType: !39, size: 8, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !362, file: !88, line: 656, baseType: !86, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !362, file: !88, line: 657, baseType: !30, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !362, file: !88, line: 658, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !88, line: 645, size: 128, elements: !375)
!375 = !{!376, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !374, file: !88, line: 646, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !7, line: 1052, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381, !8, !131}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !7, line: 424, baseType: !131)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !374, file: !88, line: 647, baseType: !131, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !180, file: !88, line: 902, baseType: !188, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !180, file: !88, line: 903, baseType: !8, size: 32, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !155, file: !156, line: 61, baseType: !8, size: 32, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !155, file: !156, line: 62, baseType: !8, size: 32, offset: 1120)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !155, file: !156, line: 63, baseType: !13, size: 16, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !155, file: !156, line: 64, baseType: !39, size: 8, offset: 1168)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !155, file: !156, line: 66, baseType: !390, size: 2688, offset: 1216)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2688, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !155, file: !156, line: 67, baseType: !394, size: 3072, offset: 3904)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 3072, elements: !20)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !155, file: !156, line: 68, baseType: !396, size: 576, offset: 6976)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 576, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 9)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !155, file: !156, line: 69, baseType: !118, size: 64, offset: 7552)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !155, file: !156, line: 71, baseType: !81, size: 64, offset: 7616)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !155, file: !156, line: 72, baseType: !118, size: 64, offset: 7680)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !155, file: !156, line: 73, baseType: !270, size: 64, offset: 7744)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !155, file: !156, line: 74, baseType: !86, size: 64, offset: 7808)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !155, file: !156, line: 75, baseType: !30, size: 64, offset: 7872)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !155, file: !156, line: 76, baseType: !86, size: 64, offset: 7936)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !155, file: !156, line: 77, baseType: !188, size: 64, offset: 8000)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !155, file: !156, line: 78, baseType: !30, size: 64, offset: 8064)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !155, file: !156, line: 79, baseType: !86, size: 64, offset: 8128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !155, file: !156, line: 80, baseType: !70, size: 64, offset: 8192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !155, file: !156, line: 81, baseType: !188, size: 64, offset: 8256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !155, file: !156, line: 82, baseType: !412, size: 64, offset: 8320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !88, line: 702, size: 128, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !414, file: !88, line: 706, baseType: !8, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !414, file: !88, line: 707, baseType: !8, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !88, line: 708, baseType: !13, size: 16, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !414, file: !88, line: 709, baseType: !39, size: 8, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !414, file: !88, line: 710, baseType: !39, size: 8, offset: 88)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !88, line: 711, baseType: !39, size: 8, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !155, file: !156, line: 83, baseType: !188, size: 64, offset: 8384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !155, file: !156, line: 84, baseType: !30, size: 64, offset: 8448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !155, file: !156, line: 85, baseType: !270, size: 64, offset: 8512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !155, file: !156, line: 86, baseType: !30, size: 64, offset: 8576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !155, file: !156, line: 87, baseType: !270, size: 64, offset: 8640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !155, file: !156, line: 88, baseType: !188, size: 64, offset: 8704)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !155, file: !156, line: 89, baseType: !188, size: 64, offset: 8768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !155, file: !156, line: 90, baseType: !430, size: 64, offset: 8832)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !155, file: !156, line: 91, baseType: !432, size: 64, offset: 8896)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !88, line: 637, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!6, !154, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !155, file: !156, line: 92, baseType: !438, size: 64, offset: 8960)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !88, line: 641, baseType: !151)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !147, file: !32, line: 152, baseType: !30, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !133, file: !32, line: 155, baseType: !8, size: 32, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !133, file: !32, line: 156, baseType: !107, size: 16, offset: 416)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !133, file: !32, line: 157, baseType: !39, size: 8, offset: 432)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !31, file: !32, line: 375, baseType: !444, size: 576)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !32, line: 122, size: 576, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !444, file: !32, line: 123, baseType: !30, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !32, line: 123, baseType: !39, size: 8, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !32, line: 123, baseType: !39, size: 8, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !444, file: !32, line: 123, baseType: !13, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !32, line: 123, baseType: !39, size: 8, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !444, file: !32, line: 123, baseType: !39, size: 8, offset: 104)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !444, file: !32, line: 124, baseType: !13, size: 16, offset: 112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !444, file: !32, line: 125, baseType: !131, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !444, file: !32, line: 126, baseType: !58, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !444, file: !32, line: 127, baseType: !430, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !444, file: !32, line: 128, baseType: !30, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !32, line: 129, baseType: !30, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !32, line: 130, baseType: !86, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !444, file: !32, line: 131, baseType: !39, size: 8, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !31, file: !32, line: 376, baseType: !461, size: 448)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !32, line: 134, size: 448, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !474}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !461, file: !32, line: 135, baseType: !30, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !461, file: !32, line: 135, baseType: !39, size: 8, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !32, line: 135, baseType: !39, size: 8, offset: 72)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !461, file: !32, line: 135, baseType: !13, size: 16, offset: 80)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !32, line: 135, baseType: !39, size: 8, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !461, file: !32, line: 135, baseType: !39, size: 8, offset: 104)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !461, file: !32, line: 136, baseType: !86, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !461, file: !32, line: 137, baseType: !30, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !32, line: 138, baseType: !30, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !461, file: !32, line: 139, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !7, line: 129, baseType: !58)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !461, file: !32, line: 140, baseType: !8, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !31, file: !32, line: 377, baseType: !476, size: 320)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !32, line: 184, size: 320, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !487}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !32, line: 185, baseType: !30, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !32, line: 185, baseType: !39, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !32, line: 185, baseType: !39, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !32, line: 185, baseType: !13, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !32, line: 185, baseType: !39, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !476, file: !32, line: 185, baseType: !484, size: 128, offset: 128)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 2)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !32, line: 185, baseType: !30, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !31, file: !32, line: 378, baseType: !489, size: 384)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !32, line: 187, size: 384, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !32, line: 188, baseType: !30, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !32, line: 188, baseType: !39, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !32, line: 188, baseType: !39, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !32, line: 188, baseType: !13, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !32, line: 188, baseType: !39, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !489, file: !32, line: 189, baseType: !484, size: 128, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !489, file: !32, line: 189, baseType: !30, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !489, file: !32, line: 189, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !88, line: 480, size: 576, elements: !501)
!501 = !{!502, !503, !504, !505, !513, !528, !560, !561, !562, !563, !564, !565}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !500, file: !88, line: 481, baseType: !86, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !500, file: !88, line: 482, baseType: !499, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !88, line: 483, baseType: !499, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !500, file: !88, line: 484, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !88, line: 497, size: 256, elements: !508)
!508 = !{!509, !510, !511, !512}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !507, file: !88, line: 498, baseType: !506, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !88, line: 499, baseType: !506, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !507, file: !88, line: 500, baseType: !499, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !507, file: !88, line: 501, baseType: !8, size: 32, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !500, file: !88, line: 485, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !88, line: 466, size: 320, elements: !516)
!516 = !{!517, !522, !523, !524, !525, !526, !527}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !515, file: !88, line: 467, baseType: !518, size: 128)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !88, line: 459, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !518, file: !88, line: 460, baseType: !39, size: 8)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !518, file: !88, line: 461, baseType: !58, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !515, file: !88, line: 468, baseType: !518, size: 128, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !515, file: !88, line: 469, baseType: !13, size: 16, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !515, file: !88, line: 470, baseType: !39, size: 8, offset: 272)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !515, file: !88, line: 471, baseType: !39, size: 8, offset: 280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !515, file: !88, line: 472, baseType: !39, size: 8, offset: 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !515, file: !88, line: 473, baseType: !39, size: 8, offset: 296)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !500, file: !88, line: 486, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !88, line: 448, size: 192, elements: !531)
!531 = !{!532, !555, !556, !557, !558, !559}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !530, file: !88, line: 449, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !88, line: 438, size: 64, elements: !534)
!534 = !{!535, !536, !549}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !533, file: !88, line: 439, baseType: !86, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !533, file: !88, line: 440, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !88, line: 419, size: 256, elements: !539)
!539 = !{!540, !545, !546, !547, !548}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !538, file: !88, line: 420, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !7, line: 1049, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!8, !381, !8, !131}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !538, file: !88, line: 421, baseType: !131, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !538, file: !88, line: 422, baseType: !86, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !538, file: !88, line: 423, baseType: !39, size: 8, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !538, file: !88, line: 424, baseType: !39, size: 8, offset: 200)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !533, file: !88, line: 441, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !88, line: 429, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !551, file: !88, line: 430, baseType: !86, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !88, line: 431, baseType: !550, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !530, file: !88, line: 450, baseType: !514, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !88, line: 451, baseType: !39, size: 8, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !530, file: !88, line: 452, baseType: !39, size: 8, offset: 136)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !530, file: !88, line: 453, baseType: !39, size: 8, offset: 144)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !530, file: !88, line: 454, baseType: !39, size: 8, offset: 152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !500, file: !88, line: 487, baseType: !58, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !500, file: !88, line: 488, baseType: !8, size: 32, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !500, file: !88, line: 489, baseType: !13, size: 16, offset: 480)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !500, file: !88, line: 490, baseType: !13, size: 16, offset: 496)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !500, file: !88, line: 491, baseType: !39, size: 8, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !500, file: !88, line: 492, baseType: !39, size: 8, offset: 520)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !31, file: !32, line: 379, baseType: !567, size: 384)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !32, line: 192, size: 384, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !567, file: !32, line: 193, baseType: !30, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !567, file: !32, line: 193, baseType: !39, size: 8, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !567, file: !32, line: 193, baseType: !39, size: 8, offset: 72)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !567, file: !32, line: 193, baseType: !13, size: 16, offset: 80)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !567, file: !32, line: 193, baseType: !39, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !567, file: !32, line: 193, baseType: !484, size: 128, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !567, file: !32, line: 193, baseType: !30, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !567, file: !32, line: 193, baseType: !8, size: 32, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !567, file: !32, line: 194, baseType: !8, size: 32, offset: 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !31, file: !32, line: 380, baseType: !579, size: 384)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !32, line: 197, size: 384, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !579, file: !32, line: 198, baseType: !30, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !579, file: !32, line: 198, baseType: !39, size: 8, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !579, file: !32, line: 198, baseType: !39, size: 8, offset: 72)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !579, file: !32, line: 198, baseType: !13, size: 16, offset: 80)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !32, line: 198, baseType: !39, size: 8, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !579, file: !32, line: 200, baseType: !39, size: 8, offset: 104)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !579, file: !32, line: 201, baseType: !39, size: 8, offset: 112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !579, file: !32, line: 202, baseType: !484, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !579, file: !32, line: 202, baseType: !30, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !579, file: !32, line: 202, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !7, line: 128, baseType: !58)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !31, file: !32, line: 381, baseType: !593, size: 320)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !32, line: 205, size: 320, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !32, line: 206, baseType: !30, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !32, line: 206, baseType: !39, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !32, line: 206, baseType: !39, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !32, line: 206, baseType: !13, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !32, line: 206, baseType: !39, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !593, file: !32, line: 206, baseType: !484, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !593, file: !32, line: 206, baseType: !30, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !31, file: !32, line: 382, baseType: !603, size: 384)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !32, line: 233, size: 384, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !32, line: 234, baseType: !30, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !32, line: 234, baseType: !13, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 104)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 120)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !32, line: 234, baseType: !86, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !603, file: !32, line: 234, baseType: !8, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !603, file: !32, line: 234, baseType: !8, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !603, file: !32, line: 234, baseType: !8, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 288)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !603, file: !32, line: 234, baseType: !39, size: 8, offset: 296)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !603, file: !32, line: 234, baseType: !30, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !31, file: !32, line: 383, baseType: !621, size: 576)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !32, line: 237, size: 576, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !32, line: 238, baseType: !30, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !32, line: 238, baseType: !13, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 120)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !32, line: 238, baseType: !86, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !621, file: !32, line: 238, baseType: !8, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !621, file: !32, line: 238, baseType: !8, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !32, line: 238, baseType: !8, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !621, file: !32, line: 238, baseType: !39, size: 8, offset: 296)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !621, file: !32, line: 238, baseType: !13, size: 16, offset: 304)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !621, file: !32, line: 239, baseType: !30, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !621, file: !32, line: 240, baseType: !81, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !621, file: !32, line: 241, baseType: !13, size: 16, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !621, file: !32, line: 242, baseType: !81, size: 64, offset: 512)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !31, file: !32, line: 384, baseType: !643, size: 384)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !32, line: 262, size: 384, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !643, file: !32, line: 263, baseType: !30, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 72)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !643, file: !32, line: 263, baseType: !13, size: 16, offset: 80)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 104)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 112)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 120)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !643, file: !32, line: 263, baseType: !86, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !643, file: !32, line: 263, baseType: !8, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !643, file: !32, line: 263, baseType: !8, size: 32, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !643, file: !32, line: 263, baseType: !8, size: 32, offset: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 288)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 296)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !643, file: !32, line: 263, baseType: !39, size: 8, offset: 304)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !643, file: !32, line: 264, baseType: !30, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !31, file: !32, line: 385, baseType: !662, size: 448)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !32, line: 245, size: 448, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !662, file: !32, line: 246, baseType: !30, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !662, file: !32, line: 246, baseType: !13, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 120)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !662, file: !32, line: 246, baseType: !86, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !662, file: !32, line: 246, baseType: !8, size: 32, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !662, file: !32, line: 246, baseType: !8, size: 32, offset: 224)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !662, file: !32, line: 246, baseType: !8, size: 32, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !662, file: !32, line: 246, baseType: !39, size: 8, offset: 296)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !662, file: !32, line: 246, baseType: !30, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !662, file: !32, line: 247, baseType: !30, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !31, file: !32, line: 386, baseType: !681, size: 448)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !32, line: 250, size: 448, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !681, file: !32, line: 251, baseType: !30, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 72)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !681, file: !32, line: 251, baseType: !13, size: 16, offset: 80)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 104)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 112)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 120)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !681, file: !32, line: 251, baseType: !86, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !681, file: !32, line: 251, baseType: !8, size: 32, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !681, file: !32, line: 251, baseType: !8, size: 32, offset: 224)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !681, file: !32, line: 251, baseType: !8, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !681, file: !32, line: 251, baseType: !39, size: 8, offset: 296)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !681, file: !32, line: 256, baseType: !30, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !681, file: !32, line: 257, baseType: !30, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !31, file: !32, line: 387, baseType: !700, size: 512)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !32, line: 273, size: 512, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !32, line: 274, baseType: !30, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !32, line: 274, baseType: !39, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !32, line: 274, baseType: !39, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !32, line: 274, baseType: !13, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !32, line: 274, baseType: !39, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !32, line: 274, baseType: !86, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !700, file: !32, line: 275, baseType: !8, size: 32, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !700, file: !32, line: 276, baseType: !377, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !32, line: 277, baseType: !131, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !32, line: 278, baseType: !484, size: 128, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !31, file: !32, line: 388, baseType: !713, size: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !32, line: 281, size: 512, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !728, !729, !730, !736, !737}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !32, line: 282, baseType: !30, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !32, line: 282, baseType: !39, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !32, line: 282, baseType: !39, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !32, line: 282, baseType: !13, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !32, line: 282, baseType: !39, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !713, file: !32, line: 282, baseType: !39, size: 8, offset: 104)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !713, file: !32, line: 283, baseType: !39, size: 8, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !713, file: !32, line: 284, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !7, line: 1084, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!6, !8, !473, !8, !727, !131, !131}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !32, line: 285, baseType: !86, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !713, file: !32, line: 286, baseType: !131, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !713, file: !32, line: 287, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !7, line: 1102, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!6, !381, !8, !131, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !713, file: !32, line: 288, baseType: !30, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !713, file: !32, line: 289, baseType: !30, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !31, file: !32, line: 389, baseType: !739, size: 512)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !32, line: 307, size: 512, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !32, line: 308, baseType: !30, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !32, line: 308, baseType: !39, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !32, line: 308, baseType: !39, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !32, line: 308, baseType: !13, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !32, line: 308, baseType: !39, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !739, file: !32, line: 308, baseType: !39, size: 8, offset: 104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !739, file: !32, line: 309, baseType: !39, size: 8, offset: 112)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !739, file: !32, line: 310, baseType: !39, size: 8, offset: 120)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !739, file: !32, line: 311, baseType: !131, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !739, file: !32, line: 312, baseType: !86, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !739, file: !32, line: 313, baseType: !118, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !739, file: !32, line: 314, baseType: !81, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !739, file: !32, line: 315, baseType: !81, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !32, line: 316, baseType: !8, size: 32, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !31, file: !32, line: 390, baseType: !756, size: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !32, line: 340, size: 448, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !756, file: !32, line: 341, baseType: !30, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !32, line: 341, baseType: !39, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !32, line: 341, baseType: !39, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !756, file: !32, line: 341, baseType: !13, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !32, line: 341, baseType: !39, size: 8, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !756, file: !32, line: 341, baseType: !86, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !756, file: !32, line: 342, baseType: !86, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !756, file: !32, line: 343, baseType: !131, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !756, file: !32, line: 344, baseType: !81, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !756, file: !32, line: 345, baseType: !8, size: 32, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !32, line: 391, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !32, line: 350, size: 256, elements: !770)
!770 = !{!771, !772, !773, !774, !775, !776, !781}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !769, file: !32, line: 351, baseType: !30, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !769, file: !32, line: 351, baseType: !39, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !769, file: !32, line: 351, baseType: !39, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !769, file: !32, line: 351, baseType: !13, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !769, file: !32, line: 351, baseType: !39, size: 8, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !769, file: !32, line: 351, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !7, line: 1055, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !381, !131}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !769, file: !32, line: 352, baseType: !131, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !31, file: !32, line: 392, baseType: !783, size: 192)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !32, line: 357, size: 192, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !32, line: 358, baseType: !30, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !32, line: 358, baseType: !39, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !32, line: 358, baseType: !39, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !32, line: 358, baseType: !13, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !32, line: 358, baseType: !39, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !32, line: 358, baseType: !30, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !31, file: !32, line: 399, baseType: !87, size: 384)
!792 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !27, file: !3, line: 35, type: !30)
!793 = !DILocation(line: 35, column: 54, scope: !27)
!794 = !DILocalVariable(name: "thread", scope: !27, file: !3, line: 37, type: !430)
!795 = !DILocation(line: 37, column: 28, scope: !27)
!796 = !DILocation(line: 37, column: 37, scope: !27)
!797 = !DILocation(line: 37, column: 47, scope: !27)
!798 = !DILocation(line: 37, column: 53, scope: !27)
!799 = !DILocation(line: 39, column: 7, scope: !800)
!800 = distinct !DILexicalBlock(scope: !27, file: !3, line: 39, column: 6)
!801 = !DILocation(line: 39, column: 6, scope: !27)
!802 = !DILocation(line: 40, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 39, column: 15)
!804 = !DILocation(line: 45, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !27, file: !3, line: 45, column: 6)
!806 = !DILocation(line: 45, column: 16, scope: !805)
!807 = !DILocation(line: 45, column: 22, scope: !805)
!808 = !DILocation(line: 45, column: 6, scope: !27)
!809 = !DILocation(line: 46, column: 40, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !3, line: 45, column: 28)
!811 = !DILocation(line: 46, column: 50, scope: !810)
!812 = !DILocation(line: 46, column: 56, scope: !810)
!813 = !DILocation(line: 46, column: 4, scope: !810)
!814 = !DILocation(line: 46, column: 14, scope: !810)
!815 = !DILocation(line: 46, column: 20, scope: !810)
!816 = !DILocation(line: 46, column: 27, scope: !810)
!817 = !DILocation(line: 46, column: 33, scope: !810)
!818 = !DILocation(line: 46, column: 38, scope: !810)
!819 = !DILocation(line: 47, column: 2, scope: !810)
!820 = !DILocation(line: 49, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !27, file: !3, line: 49, column: 6)
!822 = !DILocation(line: 49, column: 16, scope: !821)
!823 = !DILocation(line: 49, column: 22, scope: !821)
!824 = !DILocation(line: 49, column: 6, scope: !27)
!825 = !DILocation(line: 50, column: 40, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !3, line: 49, column: 28)
!827 = !DILocation(line: 50, column: 50, scope: !826)
!828 = !DILocation(line: 50, column: 56, scope: !826)
!829 = !DILocation(line: 50, column: 4, scope: !826)
!830 = !DILocation(line: 50, column: 14, scope: !826)
!831 = !DILocation(line: 50, column: 20, scope: !826)
!832 = !DILocation(line: 50, column: 27, scope: !826)
!833 = !DILocation(line: 50, column: 33, scope: !826)
!834 = !DILocation(line: 50, column: 38, scope: !826)
!835 = !DILocation(line: 59, column: 7, scope: !826)
!836 = !DILocation(line: 59, column: 17, scope: !826)
!837 = !DILocation(line: 59, column: 23, scope: !826)
!838 = !DILocation(line: 58, column: 4, scope: !826)
!839 = !DILocation(line: 58, column: 14, scope: !826)
!840 = !DILocation(line: 58, column: 20, scope: !826)
!841 = !DILocation(line: 58, column: 27, scope: !826)
!842 = !DILocation(line: 58, column: 33, scope: !826)
!843 = !DILocation(line: 58, column: 53, scope: !826)
!844 = !DILocation(line: 60, column: 2, scope: !826)
!845 = !DILocation(line: 61, column: 33, scope: !846)
!846 = distinct !DILexicalBlock(scope: !821, file: !3, line: 60, column: 9)
!847 = !DILocation(line: 61, column: 43, scope: !846)
!848 = !DILocation(line: 61, column: 49, scope: !846)
!849 = !DILocation(line: 61, column: 3, scope: !846)
!850 = !DILocation(line: 61, column: 11, scope: !846)
!851 = !DILocation(line: 61, column: 31, scope: !846)
!852 = !DILocation(line: 63, column: 1, scope: !27)
!853 = distinct !DISubprogram(name: "acpi_ex_acquire_mutex_object", scope: !3, file: !3, line: 126, type: !854, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!854 = !DISubroutineType(types: !855)
!855 = !{!6, !13, !30, !58}
!856 = !DILocalVariable(name: "timeout", arg: 1, scope: !853, file: !3, line: 126, type: !13)
!857 = !DILocation(line: 126, column: 34, scope: !853)
!858 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !853, file: !3, line: 127, type: !30)
!859 = !DILocation(line: 127, column: 36, scope: !853)
!860 = !DILocalVariable(name: "thread_id", arg: 3, scope: !853, file: !3, line: 128, type: !58)
!861 = !DILocation(line: 128, column: 24, scope: !853)
!862 = !DILocalVariable(name: "status", scope: !853, file: !3, line: 130, type: !6)
!863 = !DILocation(line: 130, column: 14, scope: !853)
!864 = !DILocation(line: 134, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !853, file: !3, line: 134, column: 6)
!866 = !DILocation(line: 134, column: 6, scope: !853)
!867 = !DILocation(line: 135, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !3, line: 134, column: 17)
!869 = !DILocation(line: 140, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !853, file: !3, line: 140, column: 6)
!871 = !DILocation(line: 140, column: 16, scope: !870)
!872 = !DILocation(line: 140, column: 22, scope: !870)
!873 = !DILocation(line: 140, column: 35, scope: !870)
!874 = !DILocation(line: 140, column: 32, scope: !870)
!875 = !DILocation(line: 140, column: 6, scope: !853)
!876 = !DILocation(line: 145, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !870, file: !3, line: 140, column: 46)
!878 = !DILocation(line: 145, column: 13, scope: !877)
!879 = !DILocation(line: 145, column: 19, scope: !877)
!880 = !DILocation(line: 145, column: 36, scope: !877)
!881 = !DILocation(line: 146, column: 3, scope: !877)
!882 = !DILocation(line: 151, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !853, file: !3, line: 151, column: 6)
!884 = !DILocation(line: 151, column: 18, scope: !883)
!885 = !DILocation(line: 151, column: 15, scope: !883)
!886 = !DILocation(line: 151, column: 6, scope: !853)
!887 = !DILocation(line: 152, column: 40, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 151, column: 46)
!889 = !DILocation(line: 152, column: 12, scope: !888)
!890 = !DILocation(line: 152, column: 10, scope: !888)
!891 = !DILocation(line: 153, column: 2, scope: !888)
!892 = !DILocation(line: 155, column: 33, scope: !893)
!893 = distinct !DILexicalBlock(scope: !883, file: !3, line: 153, column: 9)
!894 = !DILocation(line: 155, column: 43, scope: !893)
!895 = !DILocation(line: 155, column: 49, scope: !893)
!896 = !DILocation(line: 156, column: 12, scope: !893)
!897 = !DILocation(line: 155, column: 7, scope: !893)
!898 = !DILocation(line: 154, column: 10, scope: !893)
!899 = !DILocation(line: 159, column: 6, scope: !900)
!900 = distinct !DILexicalBlock(scope: !853, file: !3, line: 159, column: 6)
!901 = !DILocation(line: 159, column: 6, scope: !853)
!902 = !DILocation(line: 163, column: 3, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 159, column: 28)
!904 = !DILocation(line: 168, column: 30, scope: !853)
!905 = !DILocation(line: 168, column: 2, scope: !853)
!906 = !DILocation(line: 168, column: 12, scope: !853)
!907 = !DILocation(line: 168, column: 18, scope: !853)
!908 = !DILocation(line: 168, column: 28, scope: !853)
!909 = !DILocation(line: 169, column: 2, scope: !853)
!910 = !DILocation(line: 169, column: 12, scope: !853)
!911 = !DILocation(line: 169, column: 18, scope: !853)
!912 = !DILocation(line: 169, column: 36, scope: !853)
!913 = !DILocation(line: 170, column: 2, scope: !853)
!914 = !DILocation(line: 170, column: 12, scope: !853)
!915 = !DILocation(line: 170, column: 18, scope: !853)
!916 = !DILocation(line: 170, column: 38, scope: !853)
!917 = !DILocation(line: 171, column: 2, scope: !853)
!918 = !DILocation(line: 171, column: 12, scope: !853)
!919 = !DILocation(line: 171, column: 18, scope: !853)
!920 = !DILocation(line: 171, column: 31, scope: !853)
!921 = !DILocation(line: 173, column: 2, scope: !853)
!922 = !DILocation(line: 174, column: 1, scope: !853)
!923 = distinct !DISubprogram(name: "acpi_ex_acquire_mutex", scope: !3, file: !3, line: 191, type: !924, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!924 = !DISubroutineType(types: !925)
!925 = !{!6, !30, !30, !154}
!926 = !DILocalVariable(name: "time_desc", arg: 1, scope: !923, file: !3, line: 191, type: !30)
!927 = !DILocation(line: 191, column: 50, scope: !923)
!928 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !923, file: !3, line: 192, type: !30)
!929 = !DILocation(line: 192, column: 36, scope: !923)
!930 = !DILocalVariable(name: "walk_state", arg: 3, scope: !923, file: !3, line: 193, type: !154)
!931 = !DILocation(line: 193, column: 33, scope: !923)
!932 = !DILocalVariable(name: "status", scope: !923, file: !3, line: 195, type: !6)
!933 = !DILocation(line: 195, column: 14, scope: !923)
!934 = !DILocation(line: 199, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !923, file: !3, line: 199, column: 6)
!936 = !DILocation(line: 199, column: 6, scope: !923)
!937 = !DILocation(line: 200, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 199, column: 17)
!939 = !DILocation(line: 205, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !923, file: !3, line: 205, column: 6)
!941 = !DILocation(line: 205, column: 19, scope: !940)
!942 = !DILocation(line: 205, column: 6, scope: !923)
!943 = !DILocation(line: 206, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 205, column: 27)
!945 = !DILocation(line: 209, column: 3, scope: !944)
!946 = !DILocation(line: 216, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !923, file: !3, line: 216, column: 6)
!948 = !DILocation(line: 216, column: 18, scope: !947)
!949 = !DILocation(line: 216, column: 26, scope: !947)
!950 = !DILocation(line: 216, column: 47, scope: !947)
!951 = !DILocation(line: 216, column: 57, scope: !947)
!952 = !DILocation(line: 216, column: 63, scope: !947)
!953 = !DILocation(line: 216, column: 45, scope: !947)
!954 = !DILocation(line: 216, column: 6, scope: !923)
!955 = !DILocation(line: 217, column: 3, scope: !956)
!956 = distinct !DILexicalBlock(scope: !947, file: !3, line: 216, column: 75)
!957 = !DILocation(line: 222, column: 3, scope: !956)
!958 = !DILocation(line: 233, column: 45, scope: !923)
!959 = !DILocation(line: 233, column: 56, scope: !923)
!960 = !DILocation(line: 233, column: 64, scope: !923)
!961 = !DILocation(line: 233, column: 40, scope: !923)
!962 = !DILocation(line: 234, column: 12, scope: !923)
!963 = !DILocation(line: 235, column: 12, scope: !923)
!964 = !DILocation(line: 235, column: 24, scope: !923)
!965 = !DILocation(line: 235, column: 32, scope: !923)
!966 = !DILocation(line: 233, column: 11, scope: !923)
!967 = !DILocation(line: 233, column: 9, scope: !923)
!968 = !DILocation(line: 237, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !923, file: !3, line: 237, column: 6)
!970 = !DILocation(line: 237, column: 27, scope: !969)
!971 = !DILocation(line: 237, column: 30, scope: !969)
!972 = !DILocation(line: 237, column: 40, scope: !969)
!973 = !DILocation(line: 237, column: 46, scope: !969)
!974 = !DILocation(line: 237, column: 64, scope: !969)
!975 = !DILocation(line: 237, column: 6, scope: !923)
!976 = !DILocation(line: 241, column: 34, scope: !977)
!977 = distinct !DILexicalBlock(scope: !969, file: !3, line: 237, column: 70)
!978 = !DILocation(line: 241, column: 46, scope: !977)
!979 = !DILocation(line: 241, column: 3, scope: !977)
!980 = !DILocation(line: 241, column: 13, scope: !977)
!981 = !DILocation(line: 241, column: 19, scope: !977)
!982 = !DILocation(line: 241, column: 32, scope: !977)
!983 = !DILocation(line: 243, column: 7, scope: !977)
!984 = !DILocation(line: 243, column: 19, scope: !977)
!985 = !DILocation(line: 243, column: 27, scope: !977)
!986 = !DILocation(line: 242, column: 3, scope: !977)
!987 = !DILocation(line: 242, column: 13, scope: !977)
!988 = !DILocation(line: 242, column: 19, scope: !977)
!989 = !DILocation(line: 242, column: 39, scope: !977)
!990 = !DILocation(line: 245, column: 7, scope: !977)
!991 = !DILocation(line: 245, column: 17, scope: !977)
!992 = !DILocation(line: 245, column: 23, scope: !977)
!993 = !DILocation(line: 244, column: 3, scope: !977)
!994 = !DILocation(line: 244, column: 15, scope: !977)
!995 = !DILocation(line: 244, column: 23, scope: !977)
!996 = !DILocation(line: 244, column: 42, scope: !977)
!997 = !DILocation(line: 249, column: 22, scope: !977)
!998 = !DILocation(line: 249, column: 32, scope: !977)
!999 = !DILocation(line: 249, column: 44, scope: !977)
!1000 = !DILocation(line: 249, column: 3, scope: !977)
!1001 = !DILocation(line: 250, column: 2, scope: !977)
!1002 = !DILocation(line: 258, column: 2, scope: !923)
!1003 = !DILocation(line: 259, column: 1, scope: !923)
!1004 = distinct !DISubprogram(name: "acpi_ex_link_mutex", scope: !3, file: !3, line: 79, type: !1005, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !30, !430}
!1007 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1004, file: !3, line: 79, type: !30)
!1008 = !DILocation(line: 79, column: 47, scope: !1004)
!1009 = !DILocalVariable(name: "thread", arg: 2, scope: !1004, file: !3, line: 80, type: !430)
!1010 = !DILocation(line: 80, column: 32, scope: !1004)
!1011 = !DILocalVariable(name: "list_head", scope: !1004, file: !3, line: 82, type: !30)
!1012 = !DILocation(line: 82, column: 29, scope: !1004)
!1013 = !DILocation(line: 84, column: 14, scope: !1004)
!1014 = !DILocation(line: 84, column: 22, scope: !1004)
!1015 = !DILocation(line: 84, column: 12, scope: !1004)
!1016 = !DILocation(line: 88, column: 2, scope: !1004)
!1017 = !DILocation(line: 88, column: 12, scope: !1004)
!1018 = !DILocation(line: 88, column: 18, scope: !1004)
!1019 = !DILocation(line: 88, column: 23, scope: !1004)
!1020 = !DILocation(line: 89, column: 25, scope: !1004)
!1021 = !DILocation(line: 89, column: 2, scope: !1004)
!1022 = !DILocation(line: 89, column: 12, scope: !1004)
!1023 = !DILocation(line: 89, column: 18, scope: !1004)
!1024 = !DILocation(line: 89, column: 23, scope: !1004)
!1025 = !DILocation(line: 93, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 93, column: 6)
!1027 = !DILocation(line: 93, column: 6, scope: !1004)
!1028 = !DILocation(line: 94, column: 27, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 93, column: 17)
!1030 = !DILocation(line: 94, column: 3, scope: !1029)
!1031 = !DILocation(line: 94, column: 14, scope: !1029)
!1032 = !DILocation(line: 94, column: 20, scope: !1029)
!1033 = !DILocation(line: 94, column: 25, scope: !1029)
!1034 = !DILocation(line: 95, column: 2, scope: !1029)
!1035 = !DILocation(line: 99, column: 32, scope: !1004)
!1036 = !DILocation(line: 99, column: 2, scope: !1004)
!1037 = !DILocation(line: 99, column: 10, scope: !1004)
!1038 = !DILocation(line: 99, column: 30, scope: !1004)
!1039 = !DILocation(line: 100, column: 1, scope: !1004)
!1040 = distinct !DISubprogram(name: "acpi_ex_release_mutex_object", scope: !3, file: !3, line: 283, type: !1041, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!6, !30}
!1043 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1040, file: !3, line: 283, type: !30)
!1044 = !DILocation(line: 283, column: 69, scope: !1040)
!1045 = !DILocalVariable(name: "status", scope: !1040, file: !3, line: 285, type: !6)
!1046 = !DILocation(line: 285, column: 14, scope: !1040)
!1047 = !DILocation(line: 289, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 289, column: 6)
!1049 = !DILocation(line: 289, column: 16, scope: !1048)
!1050 = !DILocation(line: 289, column: 22, scope: !1048)
!1051 = !DILocation(line: 289, column: 40, scope: !1048)
!1052 = !DILocation(line: 289, column: 6, scope: !1040)
!1053 = !DILocation(line: 290, column: 3, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 289, column: 46)
!1055 = !DILocation(line: 295, column: 2, scope: !1040)
!1056 = !DILocation(line: 295, column: 12, scope: !1040)
!1057 = !DILocation(line: 295, column: 18, scope: !1040)
!1058 = !DILocation(line: 295, column: 35, scope: !1040)
!1059 = !DILocation(line: 296, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 296, column: 6)
!1061 = !DILocation(line: 296, column: 16, scope: !1060)
!1062 = !DILocation(line: 296, column: 22, scope: !1060)
!1063 = !DILocation(line: 296, column: 40, scope: !1060)
!1064 = !DILocation(line: 296, column: 6, scope: !1040)
!1065 = !DILocation(line: 300, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 296, column: 46)
!1067 = !DILocation(line: 303, column: 6, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 303, column: 6)
!1069 = !DILocation(line: 303, column: 16, scope: !1068)
!1070 = !DILocation(line: 303, column: 22, scope: !1068)
!1071 = !DILocation(line: 303, column: 6, scope: !1040)
!1072 = !DILocation(line: 307, column: 24, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 303, column: 36)
!1074 = !DILocation(line: 307, column: 3, scope: !1073)
!1075 = !DILocation(line: 308, column: 3, scope: !1073)
!1076 = !DILocation(line: 308, column: 13, scope: !1073)
!1077 = !DILocation(line: 308, column: 19, scope: !1073)
!1078 = !DILocation(line: 308, column: 32, scope: !1073)
!1079 = !DILocation(line: 309, column: 2, scope: !1073)
!1080 = !DILocation(line: 313, column: 6, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 313, column: 6)
!1082 = !DILocation(line: 313, column: 18, scope: !1081)
!1083 = !DILocation(line: 313, column: 15, scope: !1081)
!1084 = !DILocation(line: 313, column: 6, scope: !1040)
!1085 = !DILocation(line: 314, column: 12, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 313, column: 46)
!1087 = !DILocation(line: 314, column: 10, scope: !1086)
!1088 = !DILocation(line: 315, column: 2, scope: !1086)
!1089 = !DILocation(line: 316, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 315, column: 9)
!1091 = !DILocation(line: 321, column: 2, scope: !1040)
!1092 = !DILocation(line: 321, column: 12, scope: !1040)
!1093 = !DILocation(line: 321, column: 18, scope: !1040)
!1094 = !DILocation(line: 321, column: 28, scope: !1040)
!1095 = !DILocation(line: 322, column: 2, scope: !1040)
!1096 = !DILocation(line: 323, column: 1, scope: !1040)
!1097 = distinct !DISubprogram(name: "acpi_ex_release_mutex", scope: !3, file: !3, line: 339, type: !1098, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!6, !30, !154}
!1100 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1097, file: !3, line: 339, type: !30)
!1101 = !DILocation(line: 339, column: 50, scope: !1097)
!1102 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1097, file: !3, line: 340, type: !154)
!1103 = !DILocation(line: 340, column: 33, scope: !1097)
!1104 = !DILocalVariable(name: "previous_sync_level", scope: !1097, file: !3, line: 342, type: !39)
!1105 = !DILocation(line: 342, column: 5, scope: !1097)
!1106 = !DILocalVariable(name: "owner_thread", scope: !1097, file: !3, line: 343, type: !430)
!1107 = !DILocation(line: 343, column: 28, scope: !1097)
!1108 = !DILocalVariable(name: "status", scope: !1097, file: !3, line: 344, type: !6)
!1109 = !DILocation(line: 344, column: 14, scope: !1097)
!1110 = !DILocation(line: 348, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 348, column: 6)
!1112 = !DILocation(line: 348, column: 6, scope: !1097)
!1113 = !DILocation(line: 349, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 348, column: 17)
!1115 = !DILocation(line: 352, column: 17, scope: !1097)
!1116 = !DILocation(line: 352, column: 27, scope: !1097)
!1117 = !DILocation(line: 352, column: 33, scope: !1097)
!1118 = !DILocation(line: 352, column: 15, scope: !1097)
!1119 = !DILocation(line: 356, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 356, column: 6)
!1121 = !DILocation(line: 356, column: 6, scope: !1097)
!1122 = !DILocation(line: 357, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 356, column: 21)
!1124 = !DILocation(line: 360, column: 3, scope: !1123)
!1125 = !DILocation(line: 365, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 365, column: 6)
!1127 = !DILocation(line: 365, column: 19, scope: !1126)
!1128 = !DILocation(line: 365, column: 6, scope: !1097)
!1129 = !DILocation(line: 366, column: 3, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 365, column: 27)
!1131 = !DILocation(line: 369, column: 3, scope: !1130)
!1132 = !DILocation(line: 376, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 376, column: 6)
!1134 = !DILocation(line: 376, column: 21, scope: !1133)
!1135 = !DILocation(line: 376, column: 34, scope: !1133)
!1136 = !DILocation(line: 376, column: 46, scope: !1133)
!1137 = !DILocation(line: 376, column: 54, scope: !1133)
!1138 = !DILocation(line: 376, column: 31, scope: !1133)
!1139 = !DILocation(line: 376, column: 65, scope: !1133)
!1140 = !DILocation(line: 377, column: 7, scope: !1133)
!1141 = !DILocation(line: 377, column: 19, scope: !1133)
!1142 = !DILocation(line: 377, column: 16, scope: !1133)
!1143 = !DILocation(line: 376, column: 6, scope: !1097)
!1144 = !DILocation(line: 378, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 377, column: 48)
!1146 = !DILocation(line: 383, column: 3, scope: !1145)
!1147 = !DILocation(line: 393, column: 6, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 393, column: 6)
!1149 = !DILocation(line: 393, column: 16, scope: !1148)
!1150 = !DILocation(line: 393, column: 22, scope: !1148)
!1151 = !DILocation(line: 393, column: 36, scope: !1148)
!1152 = !DILocation(line: 393, column: 50, scope: !1148)
!1153 = !DILocation(line: 393, column: 33, scope: !1148)
!1154 = !DILocation(line: 393, column: 6, scope: !1097)
!1155 = !DILocation(line: 394, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 393, column: 70)
!1157 = !DILocation(line: 400, column: 3, scope: !1156)
!1158 = !DILocation(line: 409, column: 6, scope: !1097)
!1159 = !DILocation(line: 409, column: 20, scope: !1097)
!1160 = !DILocation(line: 409, column: 41, scope: !1097)
!1161 = !DILocation(line: 409, column: 47, scope: !1097)
!1162 = !DILocation(line: 408, column: 22, scope: !1097)
!1163 = !DILocation(line: 420, column: 40, scope: !1097)
!1164 = !DILocation(line: 420, column: 11, scope: !1097)
!1165 = !DILocation(line: 420, column: 9, scope: !1097)
!1166 = !DILocation(line: 421, column: 6, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 421, column: 6)
!1168 = !DILocation(line: 421, column: 6, scope: !1097)
!1169 = !DILocation(line: 422, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 421, column: 28)
!1171 = !DILocation(line: 425, column: 6, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 425, column: 6)
!1173 = !DILocation(line: 425, column: 16, scope: !1172)
!1174 = !DILocation(line: 425, column: 22, scope: !1172)
!1175 = !DILocation(line: 425, column: 40, scope: !1172)
!1176 = !DILocation(line: 425, column: 6, scope: !1097)
!1177 = !DILocation(line: 429, column: 38, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 425, column: 46)
!1179 = !DILocation(line: 429, column: 3, scope: !1178)
!1180 = !DILocation(line: 429, column: 17, scope: !1178)
!1181 = !DILocation(line: 429, column: 36, scope: !1178)
!1182 = !DILocation(line: 430, column: 2, scope: !1178)
!1183 = !DILocation(line: 440, column: 2, scope: !1097)
!1184 = !DILocation(line: 441, column: 1, scope: !1097)
!1185 = distinct !DISubprogram(name: "acpi_ex_release_all_mutexes", scope: !3, file: !3, line: 461, type: !1186, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !430}
!1188 = !DILocalVariable(name: "thread", arg: 1, scope: !1185, file: !3, line: 461, type: !430)
!1189 = !DILocation(line: 461, column: 60, scope: !1185)
!1190 = !DILocalVariable(name: "next", scope: !1185, file: !3, line: 463, type: !30)
!1191 = !DILocation(line: 463, column: 29, scope: !1185)
!1192 = !DILocation(line: 463, column: 36, scope: !1185)
!1193 = !DILocation(line: 463, column: 44, scope: !1185)
!1194 = !DILocalVariable(name: "obj_desc", scope: !1185, file: !3, line: 464, type: !30)
!1195 = !DILocation(line: 464, column: 29, scope: !1185)
!1196 = !DILocation(line: 470, column: 2, scope: !1185)
!1197 = !DILocation(line: 470, column: 9, scope: !1185)
!1198 = !DILocation(line: 471, column: 14, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 470, column: 15)
!1200 = !DILocation(line: 471, column: 12, scope: !1199)
!1201 = !DILocation(line: 480, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 480, column: 7)
!1203 = !DILocation(line: 480, column: 19, scope: !1202)
!1204 = !DILocation(line: 480, column: 16, scope: !1202)
!1205 = !DILocation(line: 480, column: 7, scope: !1199)
!1206 = !DILocation(line: 484, column: 10, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 480, column: 47)
!1208 = !DILocation(line: 485, column: 3, scope: !1207)
!1209 = !DILocation(line: 486, column: 4, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 485, column: 10)
!1211 = !DILocation(line: 492, column: 7, scope: !1199)
!1212 = !DILocation(line: 492, column: 17, scope: !1199)
!1213 = !DILocation(line: 492, column: 23, scope: !1199)
!1214 = !DILocation(line: 491, column: 3, scope: !1199)
!1215 = !DILocation(line: 491, column: 11, scope: !1199)
!1216 = !DILocation(line: 491, column: 30, scope: !1199)
!1217 = !DILocation(line: 496, column: 10, scope: !1199)
!1218 = !DILocation(line: 496, column: 20, scope: !1199)
!1219 = !DILocation(line: 496, column: 26, scope: !1199)
!1220 = !DILocation(line: 496, column: 8, scope: !1199)
!1221 = !DILocation(line: 498, column: 3, scope: !1199)
!1222 = !DILocation(line: 498, column: 13, scope: !1199)
!1223 = !DILocation(line: 498, column: 19, scope: !1199)
!1224 = !DILocation(line: 498, column: 24, scope: !1199)
!1225 = !DILocation(line: 499, column: 3, scope: !1199)
!1226 = !DILocation(line: 499, column: 13, scope: !1199)
!1227 = !DILocation(line: 499, column: 19, scope: !1199)
!1228 = !DILocation(line: 499, column: 24, scope: !1199)
!1229 = !DILocation(line: 500, column: 3, scope: !1199)
!1230 = !DILocation(line: 500, column: 13, scope: !1199)
!1231 = !DILocation(line: 500, column: 19, scope: !1199)
!1232 = !DILocation(line: 500, column: 37, scope: !1199)
!1233 = !DILocation(line: 501, column: 3, scope: !1199)
!1234 = !DILocation(line: 501, column: 13, scope: !1199)
!1235 = !DILocation(line: 501, column: 19, scope: !1199)
!1236 = !DILocation(line: 501, column: 32, scope: !1199)
!1237 = !DILocation(line: 502, column: 3, scope: !1199)
!1238 = !DILocation(line: 502, column: 13, scope: !1199)
!1239 = !DILocation(line: 502, column: 19, scope: !1199)
!1240 = !DILocation(line: 502, column: 29, scope: !1199)
!1241 = distinct !{!1241, !1196, !1242}
!1242 = !DILocation(line: 503, column: 2, scope: !1185)
!1243 = !DILocation(line: 505, column: 2, scope: !1185)
