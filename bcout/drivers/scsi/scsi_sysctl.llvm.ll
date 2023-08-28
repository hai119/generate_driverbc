; ModuleID = '../bcout/drivers/scsi/scsi_sysctl.llvm.bc'
source_filename = "drivers/scsi/scsi_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_header = type { %union.anon, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }

@scsi_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @scsi_dir_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 16, !dbg !0
@scsi_table_header = internal global %struct.ctl_table_header* null, align 8, !dbg !6
@.str = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@scsi_dir_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @scsi_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 16, !dbg !187
@.str.1 = private unnamed_addr constant [5 x i8] c"scsi\00", align 1
@scsi_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* bitcast (i32* @scsi_logging_level to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 16, !dbg !192
@.str.2 = private unnamed_addr constant [14 x i8] c"logging_level\00", align 1
@scsi_logging_level = external dso_local global i32, align 4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @scsi_init_sysctl() #0 section ".init.text" !dbg !199 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @scsi_root_table, i64 0, i64 0)) #3, !dbg !202
  store %struct.ctl_table_header* %call, %struct.ctl_table_header** @scsi_table_header, align 8, !dbg !203
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** @scsi_table_header, align 8, !dbg !204
  %tobool = icmp ne %struct.ctl_table_header* %0, null, !dbg !204
  br i1 %tobool, label %if.end, label %if.then, !dbg !206

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !207
  br label %return, !dbg !207

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !208
  br label %return, !dbg !208

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !209
  ret i32 %1, !dbg !209
}

; Function Attrs: noredzone
declare dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @scsi_exit_sysctl() #2 !dbg !210 {
entry:
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** @scsi_table_header, align 8, !dbg !213
  call void @unregister_sysctl_table(%struct.ctl_table_header* %0) #3, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: noredzone
declare dso_local void @unregister_sysctl_table(%struct.ctl_table_header*) #1

; Function Attrs: noredzone
declare dso_local i32 @proc_dointvec(%struct.ctl_table*, i32, i8*, i64*, i64*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "scsi_root_table", scope: !2, file: !3, line: 31, type: !189, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/scsi/scsi_sysctl.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !0, !187, !192}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "scsi_table_header", scope: !2, file: !3, line: 38, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !10, line: 131, size: 640, elements: !11)
!10 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !99, !113, !114, !168, !169, !171, !177}
!12 = !DIDerivedType(tag: DW_TAG_member, scope: !9, file: !10, line: 132, baseType: !13, size: 192)
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !9, file: !10, line: 132, size: 192, elements: !14)
!14 = !{!15, !90}
!15 = !DIDerivedType(tag: DW_TAG_member, scope: !13, file: !10, line: 133, baseType: !16, size: 192)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !10, line: 133, size: 192, elements: !17)
!17 = !{!18, !87, !88, !89}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !16, file: !10, line: 134, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !10, line: 112, size: 512, elements: !21)
!21 = !{!22, !26, !28, !30, !34, !35, !50, !85, !86}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !20, file: !10, line: 113, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !10, line: 114, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !20, file: !10, line: 115, baseType: !29, size: 32, offset: 128)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !20, file: !10, line: 116, baseType: !31, size: 16, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !32, line: 19, baseType: !33)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !20, file: !10, line: 117, baseType: !19, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !20, file: !10, line: 118, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !10, line: 47, baseType: !38)
!38 = !DISubroutineType(types: !39)
!39 = !{!29, !19, !29, !27, !40, !46}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 55, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !43, line: 72, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !43, line: 16, baseType: !45)
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !32, line: 46, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !43, line: 88, baseType: !49)
!49 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !20, file: !10, line: 119, baseType: !51, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !10, line: 94, size: 192, elements: !53)
!53 = !{!54, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !10, line: 95, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !32, line: 168, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 166, size: 32, elements: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !56, file: !32, line: 167, baseType: !29, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !52, file: !10, line: 96, baseType: !60, size: 128, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !61, line: 40, baseType: !62)
!61 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !61, line: 36, size: 128, elements: !63)
!63 = !{!64, !79}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !62, file: !61, line: 37, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !66, line: 83, baseType: !67)
!66 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !66, line: 71, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 72, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 72, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !70, file: !66, line: 73, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !66, line: 20, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !73, file: !66, line: 21, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !77, line: 25, baseType: !78)
!77 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 25, elements: !4)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !62, file: !61, line: 38, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !32, line: 178, size: 128, elements: !81)
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !32, line: 179, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !32, line: 179, baseType: !83, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !20, file: !10, line: 120, baseType: !27, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !20, file: !10, line: 121, baseType: !27, size: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !16, file: !10, line: 135, baseType: !29, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !16, file: !10, line: 136, baseType: !29, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !16, file: !10, line: 137, baseType: !29, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !13, file: !10, line: 139, baseType: !91, size: 128, align: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !32, line: 216, size: 128, align: 64, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !32, line: 217, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !91, file: !32, line: 218, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !94}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !9, file: !10, line: 141, baseType: !100, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !102, line: 26, size: 192, elements: !103)
!102 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !101, file: !102, line: 27, baseType: !105, size: 32)
!105 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !101, file: !102, line: 28, baseType: !107, size: 128, offset: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !108, line: 43, size: 128, elements: !109)
!108 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !112}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !107, file: !108, line: 44, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !66, line: 29, baseType: !73)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !107, file: !108, line: 45, baseType: !80, size: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !9, file: !10, line: 142, baseType: !19, size: 64, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !9, file: !10, line: 143, baseType: !115, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !10, line: 161, size: 960, elements: !117)
!117 = !{!118, !141, !145, !164}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !116, file: !10, line: 162, baseType: !119, size: 768)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !10, line: 156, size: 768, elements: !120)
!120 = !{!121, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !119, file: !10, line: 157, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!29, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !119, file: !10, line: 158, baseType: !127, size: 704, offset: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !10, line: 150, size: 704, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !127, file: !10, line: 152, baseType: !9, size: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !127, file: !10, line: 153, baseType: !131, size: 64, offset: 640)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !132, line: 31, size: 64, elements: !133)
!132 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !131, file: !132, line: 32, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !132, line: 24, size: 192, align: 64, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !136, file: !132, line: 25, baseType: !45, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !136, file: !132, line: 26, baseType: !135, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !136, file: !132, line: 27, baseType: !135, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !116, file: !10, line: 163, baseType: !142, size: 64, offset: 768)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!125, !115}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !116, file: !10, line: 164, baseType: !146, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !8, !19, !149, !157}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !151, line: 23, baseType: !152)
!151 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 21, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !151, line: 22, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 32, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !43, line: 49, baseType: !105)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !151, line: 28, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 26, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !159, file: !151, line: 27, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 33, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !43, line: 50, baseType: !105)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !116, file: !10, line: 167, baseType: !165, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!29, !8, !19}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !9, file: !10, line: 144, baseType: !125, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !9, file: !10, line: 145, baseType: !170, size: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !9, file: !10, line: 146, baseType: !172, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !10, line: 124, size: 256, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !10, line: 125, baseType: !136, size: 192, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !173, file: !10, line: 126, baseType: !8, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !9, file: !10, line: 147, baseType: !178, size: 64, offset: 576)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !32, line: 182, size: 64, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !178, file: !32, line: 183, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !32, line: 186, size: 128, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !32, line: 187, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !182, file: !32, line: 187, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "scsi_dir_table", scope: !2, file: !3, line: 24, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "scsi_table", scope: !2, file: !3, line: 15, type: !189, isLocal: true, isDefinition: true)
!194 = !{i32 7, !"Dwarf Version", i32 4}
!195 = !{i32 2, !"Debug Info Version", i32 3}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"Code Model", i32 2}
!198 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!199 = distinct !DISubprogram(name: "scsi_init_sysctl", scope: !3, file: !3, line: 40, type: !200, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!200 = !DISubroutineType(types: !201)
!201 = !{!29}
!202 = !DILocation(line: 42, column: 22, scope: !199)
!203 = !DILocation(line: 42, column: 20, scope: !199)
!204 = !DILocation(line: 43, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !199, file: !3, line: 43, column: 6)
!206 = !DILocation(line: 43, column: 6, scope: !199)
!207 = !DILocation(line: 44, column: 3, scope: !205)
!208 = !DILocation(line: 45, column: 2, scope: !199)
!209 = !DILocation(line: 46, column: 1, scope: !199)
!210 = distinct !DISubprogram(name: "scsi_exit_sysctl", scope: !3, file: !3, line: 48, type: !211, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!211 = !DISubroutineType(types: !212)
!212 = !{null}
!213 = !DILocation(line: 50, column: 26, scope: !210)
!214 = !DILocation(line: 50, column: 2, scope: !210)
!215 = !DILocation(line: 51, column: 1, scope: !210)
