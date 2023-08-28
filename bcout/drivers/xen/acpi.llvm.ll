; ModuleID = '../bcout/drivers/xen/acpi.llvm.bc'
source_filename = "drivers/xen/acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.xen_platform_op = type { i32, i32, %union.anon }
%union.anon = type { %struct.xenpf_set_processor_pminfo, [16 x i8] }
%struct.xenpf_set_processor_pminfo = type { i32, i32, %union.anon.13 }
%union.anon.13 = type { %struct.xen_processor_performance }
%struct.xen_processor_performance = type { i32, i32, %struct.xen_pct_register, %struct.xen_pct_register, i32, %struct.xen_processor_px*, %struct.xen_psd_package, i32 }
%struct.xen_pct_register = type { i8, i16, i8, i8, i8, i8, i64 }
%struct.xen_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.xen_psd_package = type { i64, i64, i64, i64, i64 }
%struct.xenpf_enter_acpi_sleep = type { i16, i16, i32, i32 }

@.str = private unnamed_addr constant [100 x i8] c"Using more than %u bits of sleep control values %#x/%#x!Email xen-devel@lists.xen.org - Thank you.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"drivers/xen/acpi.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_acpi_notify_hypervisor_sleep(i8 zeroext %sleep_state, i32 %pm1a_cnt, i32 %pm1b_cnt) #0 !dbg !23 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %pm1a_cnt.addr = alloca i32, align 4
  %pm1b_cnt.addr = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 %pm1a_cnt, i32* %pm1a_cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pm1a_cnt.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 %pm1b_cnt, i32* %pm1b_cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pm1b_cnt.addr, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load i8, i8* %sleep_state.addr, align 1, !dbg !38
  %1 = load i32, i32* %pm1a_cnt.addr, align 4, !dbg !39
  %2 = load i32, i32* %pm1b_cnt.addr, align 4, !dbg !40
  %call = call i32 @xen_acpi_notify_hypervisor_state(i8 zeroext %0, i32 %1, i32 %2, i1 zeroext false) #6, !dbg !41
  ret i32 %call, !dbg !42
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_acpi_notify_hypervisor_state(i8 zeroext %sleep_state, i32 %val_a, i32 %val_b, i1 zeroext %extended) #0 !dbg !43 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %val_a.addr = alloca i32, align 4
  %val_b.addr = alloca i32, align 4
  %extended.addr = alloca i8, align 1
  %bits = alloca i32, align 4
  %op = alloca %struct.xen_platform_op, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 %val_a, i32* %val_a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val_a.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 %val_b, i32* %val_b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val_b.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %frombool = zext i1 %extended to i8
  store i8 %frombool, i8* %extended.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %extended.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %bits, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i8, i8* %extended.addr, align 1, !dbg !59
  %tobool = trunc i8 %0 to i1, !dbg !59
  %1 = zext i1 %tobool to i64, !dbg !59
  %cond = select i1 %tobool, i32 8, i32 16, !dbg !59
  store i32 %cond, i32* %bits, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op* %op, metadata !60, metadata !DIExpression()), !dbg !405
  %2 = bitcast %struct.xen_platform_op* %op to i8*, !dbg !405
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 136, i1 false), !dbg !405
  %cmd = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 0, !dbg !406
  store i32 51, i32* %cmd, align 8, !dbg !406
  %interface_version = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 1, !dbg !406
  store i32 50331649, i32* %interface_version, align 4, !dbg !406
  %u = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %op, i32 0, i32 2, !dbg !406
  %enter_acpi_sleep = bitcast %union.anon* %u to %struct.xenpf_enter_acpi_sleep*, !dbg !407
  %val_a1 = getelementptr inbounds %struct.xenpf_enter_acpi_sleep, %struct.xenpf_enter_acpi_sleep* %enter_acpi_sleep, i32 0, i32 0, !dbg !408
  %3 = load i32, i32* %val_a.addr, align 4, !dbg !409
  %conv = trunc i32 %3 to i16, !dbg !410
  store i16 %conv, i16* %val_a1, align 8, !dbg !408
  %val_b2 = getelementptr inbounds %struct.xenpf_enter_acpi_sleep, %struct.xenpf_enter_acpi_sleep* %enter_acpi_sleep, i32 0, i32 1, !dbg !408
  %4 = load i32, i32* %val_b.addr, align 4, !dbg !411
  %conv3 = trunc i32 %4 to i16, !dbg !412
  store i16 %conv3, i16* %val_b2, align 2, !dbg !408
  %sleep_state4 = getelementptr inbounds %struct.xenpf_enter_acpi_sleep, %struct.xenpf_enter_acpi_sleep* %enter_acpi_sleep, i32 0, i32 2, !dbg !408
  %5 = load i8, i8* %sleep_state.addr, align 1, !dbg !413
  %conv5 = zext i8 %5 to i32, !dbg !413
  store i32 %conv5, i32* %sleep_state4, align 4, !dbg !408
  %flags = getelementptr inbounds %struct.xenpf_enter_acpi_sleep, %struct.xenpf_enter_acpi_sleep* %enter_acpi_sleep, i32 0, i32 3, !dbg !408
  %6 = load i8, i8* %extended.addr, align 1, !dbg !414
  %tobool6 = trunc i8 %6 to i1, !dbg !414
  %7 = zext i1 %tobool6 to i64, !dbg !414
  %cond8 = select i1 %tobool6, i32 1, i32 0, !dbg !414
  store i32 %cond8, i32* %flags, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !415, metadata !DIExpression()), !dbg !418
  %8 = load i32, i32* %val_a.addr, align 4, !dbg !418
  %9 = load i32, i32* %bits, align 4, !dbg !418
  %shl = shl i32 -1, %9, !dbg !418
  %and = and i32 %8, %shl, !dbg !418
  %tobool9 = icmp ne i32 %and, 0, !dbg !418
  br i1 %tobool9, label %lor.end, label %lor.rhs, !dbg !418

lor.rhs:                                          ; preds = %entry
  %10 = load i32, i32* %val_b.addr, align 4, !dbg !418
  %11 = load i32, i32* %bits, align 4, !dbg !418
  %shl10 = shl i32 -1, %11, !dbg !418
  %and11 = and i32 %10, %shl10, !dbg !418
  %tobool12 = icmp ne i32 %and11, 0, !dbg !418
  br label %lor.end, !dbg !418

lor.end:                                          ; preds = %lor.rhs, %entry
  %12 = phi i1 [ true, %entry ], [ %tobool12, %lor.rhs ]
  %lnot = xor i1 %12, true, !dbg !418
  %lnot13 = xor i1 %lnot, true, !dbg !418
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !418
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !418
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !419
  %tobool14 = icmp ne i32 %13, 0, !dbg !419
  %lnot15 = xor i1 %tobool14, true, !dbg !419
  %lnot17 = xor i1 %lnot15, true, !dbg !419
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !419
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !419
  %tobool20 = icmp ne i64 %conv19, 0, !dbg !419
  br i1 %tobool20, label %if.then, label %if.end, !dbg !418

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !419

do.body:                                          ; preds = %if.then
  br label %do.body21, !dbg !421

do.body21:                                        ; preds = %do.body
  br label %do.end, !dbg !423

do.end:                                           ; preds = %do.body21
  %14 = load i32, i32* %bits, align 4, !dbg !421
  %15 = load i32, i32* %val_a.addr, align 4, !dbg !421
  %16 = load i32, i32* %val_b.addr, align 4, !dbg !421
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16) #6, !dbg !421
  br label %do.body22, !dbg !421

do.body22:                                        ; preds = %do.end
  br label %do.body23, !dbg !425

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !427

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !425

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 58, i32 2313, i64 12) #5, !dbg !429, !srcloc !431
  br label %do.end26, !dbg !429

do.end26:                                         ; preds = %do.body25
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 184) #5, !dbg !432, !srcloc !434
  br label %do.body27, !dbg !425

do.body27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !435

do.end28:                                         ; preds = %do.body27
  br label %do.end29, !dbg !425

do.end29:                                         ; preds = %do.end28
  br label %do.body30, !dbg !421

do.body30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !437

do.end31:                                         ; preds = %do.body30
  br label %do.end32, !dbg !421

do.end32:                                         ; preds = %do.end31
  br label %if.end, !dbg !421

if.end:                                           ; preds = %do.end32, %lor.end
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !418
  %tobool33 = icmp ne i32 %17, 0, !dbg !418
  %lnot34 = xor i1 %tobool33, true, !dbg !418
  %lnot36 = xor i1 %lnot34, true, !dbg !418
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !418
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !418
  store i64 %conv38, i64* %tmp, align 8, !dbg !419
  %18 = load i64, i64* %tmp, align 8, !dbg !418
  %tobool39 = icmp ne i64 %18, 0, !dbg !439
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !440

if.then40:                                        ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !441
  br label %return, !dbg !441

if.end41:                                         ; preds = %if.end
  %call = call i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #6, !dbg !442
  store i32 1, i32* %retval, align 4, !dbg !443
  br label %return, !dbg !443

return:                                           ; preds = %if.end41, %if.then40
  %19 = load i32, i32* %retval, align 4, !dbg !444
  ret i32 %19, !dbg !444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_acpi_notify_hypervisor_extended_sleep(i8 zeroext %sleep_state, i32 %val_a, i32 %val_b) #0 !dbg !445 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %val_a.addr = alloca i32, align 4
  %val_b.addr = alloca i32, align 4
  store i8 %sleep_state, i8* %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %sleep_state.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i32 %val_a, i32* %val_a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val_a.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i32 %val_b, i32* %val_b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val_b.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8, i8* %sleep_state.addr, align 1, !dbg !452
  %1 = load i32, i32* %val_a.addr, align 4, !dbg !453
  %2 = load i32, i32* %val_b.addr, align 4, !dbg !454
  %call = call i32 @xen_acpi_notify_hypervisor_state(i8 zeroext %0, i32 %1, i32 %2, i1 zeroext true) #6, !dbg !455
  ret i32 %call, !dbg !456
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_platform_op(%struct.xen_platform_op* %op) #0 !dbg !457 {
entry:
  %op.addr = alloca %struct.xen_platform_op*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.xen_platform_op* %op, %struct.xen_platform_op** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_platform_op** %op.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load %struct.xen_platform_op*, %struct.xen_platform_op** %op.addr, align 8, !dbg !464
  %interface_version = getelementptr inbounds %struct.xen_platform_op, %struct.xen_platform_op* %0, i32 0, i32 1, !dbg !465
  store i32 50331649, i32* %interface_version, align 4, !dbg !466
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !467, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !470, metadata !DIExpression()), !dbg !469
  %1 = load i64, i64* %__arg1, align 8, !dbg !469
  store i64 %1, i64* %__arg1, align 8, !dbg !469
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !471, metadata !DIExpression()), !dbg !469
  %2 = load i64, i64* %__arg2, align 8, !dbg !469
  store i64 %2, i64* %__arg2, align 8, !dbg !469
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !472, metadata !DIExpression()), !dbg !469
  %3 = load i64, i64* %__arg3, align 8, !dbg !469
  store i64 %3, i64* %__arg3, align 8, !dbg !469
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !473, metadata !DIExpression()), !dbg !469
  %4 = load i64, i64* %__arg4, align 8, !dbg !469
  store i64 %4, i64* %__arg4, align 8, !dbg !469
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !474, metadata !DIExpression()), !dbg !469
  %5 = load i64, i64* %__arg5, align 8, !dbg !469
  store i64 %5, i64* %__arg5, align 8, !dbg !469
  %6 = load %struct.xen_platform_op*, %struct.xen_platform_op** %op.addr, align 8, !dbg !469
  %7 = ptrtoint %struct.xen_platform_op* %6 to i64, !dbg !469
  store i64 %7, i64* %__arg1, align 8, !dbg !469
  %8 = call i64 @llvm.read_register.i64(metadata !17), !dbg !469
  %9 = load i64, i64* %__arg1, align 8, !dbg !469
  %10 = call { i64, i64, i64 } asm sideeffect "call hypercall_page+${3:c}", "={rax},={rsp},={rdi},i,1,2,~{memory},~{r8},~{r10},~{rdx},~{rsi},~{dirflag},~{fpsr},~{flags}"(i64 224, i64 %8, i64 %9) #5, !dbg !469, !srcloc !475
  %asmresult = extractvalue { i64, i64, i64 } %10, 0, !dbg !469
  %asmresult1 = extractvalue { i64, i64, i64 } %10, 1, !dbg !469
  %asmresult2 = extractvalue { i64, i64, i64 } %10, 2, !dbg !469
  store i64 %asmresult, i64* %__res, align 8, !dbg !469
  call void @llvm.write_register.i64(metadata !17, i64 %asmresult1), !dbg !469
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !469
  %11 = load i64, i64* %__res, align 8, !dbg !469
  %conv = trunc i64 %11 to i32, !dbg !469
  store i32 %conv, i32* %tmp, align 4, !dbg !469
  %12 = load i32, i32* %tmp, align 4, !dbg !469
  ret i32 %12, !dbg !476
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/xen/acpi.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!9 = !{!10, !15, !16}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !11, line: 19, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !13, line: 24, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!"rsp"}
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!23 = distinct !DISubprogram(name: "xen_acpi_notify_hypervisor_sleep", scope: !1, file: !1, line: 65, type: !24, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!24 = !DISubroutineType(types: !25)
!25 = !{!16, !26, !29, !29}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !5)
!31 = !{}
!32 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !23, file: !1, line: 65, type: !26)
!33 = !DILocation(line: 65, column: 41, scope: !23)
!34 = !DILocalVariable(name: "pm1a_cnt", arg: 2, scope: !23, file: !1, line: 66, type: !29)
!35 = !DILocation(line: 66, column: 14, scope: !23)
!36 = !DILocalVariable(name: "pm1b_cnt", arg: 3, scope: !23, file: !1, line: 66, type: !29)
!37 = !DILocation(line: 66, column: 28, scope: !23)
!38 = !DILocation(line: 68, column: 42, scope: !23)
!39 = !DILocation(line: 68, column: 55, scope: !23)
!40 = !DILocation(line: 69, column: 7, scope: !23)
!41 = !DILocation(line: 68, column: 9, scope: !23)
!42 = !DILocation(line: 68, column: 2, scope: !23)
!43 = distinct !DISubprogram(name: "xen_acpi_notify_hypervisor_state", scope: !1, file: !1, line: 38, type: !44, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !31)
!44 = !DISubroutineType(types: !45)
!45 = !{!16, !26, !29, !29, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !47, line: 30, baseType: !48)
!47 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!48 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!49 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !43, file: !1, line: 38, type: !26)
!50 = !DILocation(line: 38, column: 48, scope: !43)
!51 = !DILocalVariable(name: "val_a", arg: 2, scope: !43, file: !1, line: 39, type: !29)
!52 = !DILocation(line: 39, column: 14, scope: !43)
!53 = !DILocalVariable(name: "val_b", arg: 3, scope: !43, file: !1, line: 39, type: !29)
!54 = !DILocation(line: 39, column: 25, scope: !43)
!55 = !DILocalVariable(name: "extended", arg: 4, scope: !43, file: !1, line: 40, type: !46)
!56 = !DILocation(line: 40, column: 15, scope: !43)
!57 = !DILocalVariable(name: "bits", scope: !43, file: !1, line: 42, type: !5)
!58 = !DILocation(line: 42, column: 15, scope: !43)
!59 = !DILocation(line: 42, column: 22, scope: !43)
!60 = !DILocalVariable(name: "op", scope: !43, file: !1, line: 44, type: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_platform_op", file: !62, line: 503, size: 1088, elements: !63)
!62 = !DIFile(filename: "./include/xen/interface/platform.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !66, !67}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !61, file: !62, line: 504, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 104, baseType: !29)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "interface_version", scope: !61, file: !62, line: 505, baseType: !65, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !61, file: !62, line: 527, baseType: !68, size: 1024, offset: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !62, line: 506, size: 1024, elements: !69)
!69 = !{!70, !80, !87, !97, !102, !109, !116, !120, !199, !253, !260, !266, !275, !360, !368, !372, !378, !385, !390, !401}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "settime32", scope: !68, file: !62, line: 507, baseType: !71, size: 128)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_settime32", file: !62, line: 39, size: 128, elements: !72)
!72 = !{!73, !74, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "secs", scope: !71, file: !62, line: 41, baseType: !65, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nsecs", scope: !71, file: !62, line: 42, baseType: !65, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !71, file: !62, line: 43, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 107, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !11, line: 23, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !79)
!79 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !68, file: !62, line: 508, baseType: !81, size: 192)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_settime64", file: !62, line: 47, size: 192, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "secs", scope: !81, file: !62, line: 49, baseType: !76, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "nsecs", scope: !81, file: !62, line: 50, baseType: !65, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "mbz", scope: !81, file: !62, line: 51, baseType: !65, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !81, file: !62, line: 52, baseType: !76, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "add_memtype", scope: !68, file: !62, line: 509, baseType: !88, size: 256)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_add_memtype", file: !62, line: 64, size: 256, elements: !89)
!89 = !{!90, !93, !94, !95, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "mfn", scope: !88, file: !62, line: 66, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_pfn_t", file: !92, line: 79, baseType: !15)
!92 = !DIFile(filename: "./arch/x86/include/asm/xen/interface.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "nr_mfns", scope: !88, file: !62, line: 67, baseType: !76, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !62, line: 68, baseType: !65, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !88, file: !62, line: 70, baseType: !65, size: 32, offset: 160)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !88, file: !62, line: 71, baseType: !65, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "del_memtype", scope: !68, file: !62, line: 510, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_del_memtype", file: !62, line: 83, size: 64, elements: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !98, file: !62, line: 85, baseType: !65, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !98, file: !62, line: 86, baseType: !65, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "read_memtype", scope: !68, file: !62, line: 511, baseType: !103, size: 256)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_read_memtype", file: !62, line: 92, size: 256, elements: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !103, file: !62, line: 94, baseType: !65, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "mfn", scope: !103, file: !62, line: 96, baseType: !91, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_mfns", scope: !103, file: !62, line: 97, baseType: !76, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !62, line: 98, baseType: !65, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !68, file: !62, line: 512, baseType: !110, size: 128)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_microcode_update", file: !62, line: 103, size: 128, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !110, file: !62, line: 105, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_void", file: !92, line: 91, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !110, file: !62, line: 106, baseType: !65, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "platform_quirk", scope: !68, file: !62, line: 513, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_platform_quirk", file: !62, line: 114, size: 32, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_id", scope: !117, file: !62, line: 116, baseType: !65, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "efi_runtime_call", scope: !68, file: !62, line: 514, baseType: !121, size: 448)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_efi_runtime_call", file: !62, line: 133, size: 448, elements: !122)
!122 = !{!123, !124, !125, !127}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !121, file: !62, line: 134, baseType: !65, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !121, file: !62, line: 140, baseType: !65, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !121, file: !62, line: 141, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_ulong_t", file: !92, line: 81, baseType: !15)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !121, file: !62, line: 210, baseType: !128, size: 320, offset: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !62, line: 142, size: 320, elements: !129)
!129 = !{!130, !153, !154, !155, !156, !172, !173, !179, !186, !193}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !128, file: !62, line: 158, baseType: !131, size: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !62, line: 144, size: 192, elements: !132)
!132 = !{!133, !151, !152}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !131, file: !62, line: 155, baseType: !134, size: 128)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_efi_time", file: !62, line: 145, size: 128, elements: !135)
!135 = !{!136, !138, !140, !141, !142, !143, !144, !145, !150}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !134, file: !62, line: 146, baseType: !137, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !47, line: 103, baseType: !10)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !134, file: !62, line: 147, baseType: !139, size: 8, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 102, baseType: !26)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "day", scope: !134, file: !62, line: 148, baseType: !139, size: 8, offset: 24)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "hour", scope: !134, file: !62, line: 149, baseType: !139, size: 8, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !134, file: !62, line: 150, baseType: !139, size: 8, offset: 40)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !134, file: !62, line: 151, baseType: !139, size: 8, offset: 48)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !134, file: !62, line: 152, baseType: !65, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !134, file: !62, line: 153, baseType: !146, size: 16, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !47, line: 96, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !11, line: 18, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !13, line: 23, baseType: !149)
!149 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "daylight", scope: !134, file: !62, line: 154, baseType: !139, size: 8, offset: 112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !131, file: !62, line: 156, baseType: !65, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "accuracy", scope: !131, file: !62, line: 157, baseType: !65, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !128, file: !62, line: 160, baseType: !134, size: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "get_wakeup_time", scope: !128, file: !62, line: 164, baseType: !134, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup_time", scope: !128, file: !62, line: 168, baseType: !134, size: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "get_variable", scope: !128, file: !62, line: 183, baseType: !157, size: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !62, line: 173, size: 320, elements: !158)
!158 = !{!159, !160, !161, !162}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !62, line: 174, baseType: !113, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !157, file: !62, line: 175, baseType: !126, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !157, file: !62, line: 176, baseType: !113, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_guid", scope: !157, file: !62, line: 182, baseType: !163, size: 128, offset: 192)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_efi_guid", file: !62, line: 177, size: 128, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "data1", scope: !163, file: !62, line: 178, baseType: !65, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "data2", scope: !163, file: !62, line: 179, baseType: !137, size: 16, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "data3", scope: !163, file: !62, line: 180, baseType: !137, size: 16, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "data4", scope: !163, file: !62, line: 181, baseType: !169, size: 64, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "set_variable", scope: !128, file: !62, line: 183, baseType: !157, size: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_variable_name", scope: !128, file: !62, line: 189, baseType: !174, size: 256)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !62, line: 185, size: 256, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !62, line: 186, baseType: !126, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !62, line: 187, baseType: !113, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_guid", scope: !174, file: !62, line: 188, baseType: !163, size: 128, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "query_variable_info", scope: !128, file: !62, line: 196, baseType: !180, size: 256)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !62, line: 191, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !180, file: !62, line: 192, baseType: !65, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "max_store_size", scope: !180, file: !62, line: 193, baseType: !76, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "remain_store_size", scope: !180, file: !62, line: 194, baseType: !76, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !180, file: !62, line: 195, baseType: !76, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "query_capsule_capabilities", scope: !128, file: !62, line: 203, baseType: !187, size: 256)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !62, line: 198, size: 256, elements: !188)
!188 = !{!189, !190, !191, !192}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_header_array", scope: !187, file: !62, line: 199, baseType: !113, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_count", scope: !187, file: !62, line: 200, baseType: !126, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "max_capsule_size", scope: !187, file: !62, line: 201, baseType: !76, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reset_type", scope: !187, file: !62, line: 202, baseType: !65, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "update_capsule", scope: !128, file: !62, line: 209, baseType: !194, size: 192)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !62, line: 205, size: 192, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_header_array", scope: !194, file: !62, line: 206, baseType: !113, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "capsule_count", scope: !194, file: !62, line: 207, baseType: !126, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !194, file: !62, line: 208, baseType: !76, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_info", scope: !68, file: !62, line: 515, baseType: !200, size: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_firmware_info", file: !62, line: 227, size: 320, elements: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !62, line: 229, baseType: !65, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !200, file: !62, line: 230, baseType: !65, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !200, file: !62, line: 279, baseType: !205, size: 256, offset: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !62, line: 232, size: 256, elements: !206)
!206 = !{!207, !217, !222, !230, !252}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "disk_info", scope: !205, file: !62, line: 245, baseType: !208, size: 128)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !62, line: 233, size: 128, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !208, file: !62, line: 235, baseType: !139, size: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !208, file: !62, line: 236, baseType: !139, size: 8, offset: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "interface_support", scope: !208, file: !62, line: 237, baseType: !137, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_cylinder", scope: !208, file: !62, line: 239, baseType: !137, size: 16, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_max_head", scope: !208, file: !62, line: 240, baseType: !139, size: 8, offset: 48)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_sectors_per_track", scope: !208, file: !62, line: 241, baseType: !139, size: 8, offset: 56)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "edd_params", scope: !208, file: !62, line: 244, baseType: !113, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "disk_mbr_signature", scope: !205, file: !62, line: 249, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !62, line: 246, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !218, file: !62, line: 247, baseType: !139, size: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mbr_signature", scope: !218, file: !62, line: 248, baseType: !65, size: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vbeddc_info", scope: !205, file: !62, line: 256, baseType: !223, size: 128)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !205, file: !62, line: 250, size: 128, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !223, file: !62, line: 252, baseType: !139, size: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "edid_transfer_time", scope: !223, file: !62, line: 253, baseType: !139, size: 8, offset: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "edid", scope: !223, file: !62, line: 255, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_uchar", file: !92, line: 87, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "efi_info", scope: !205, file: !62, line: 276, baseType: !231, size: 256)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "xenpf_efi_info", file: !62, line: 258, size: 256, elements: !232)
!232 = !{!233, !234, !239, !245}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !231, file: !62, line: 259, baseType: !65, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !231, file: !62, line: 263, baseType: !235, size: 128)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !62, line: 260, size: 128, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !235, file: !62, line: 261, baseType: !76, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nent", scope: !235, file: !62, line: 262, baseType: !65, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !231, file: !62, line: 269, baseType: !240, size: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !62, line: 264, size: 128, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !240, file: !62, line: 265, baseType: !65, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bufsz", scope: !240, file: !62, line: 266, baseType: !65, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !62, line: 267, baseType: !113, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !231, file: !62, line: 275, baseType: !246, size: 256)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !231, file: !62, line: 270, size: 256, elements: !247)
!247 = !{!248, !249, !250, !251}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !246, file: !62, line: 271, baseType: !76, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !246, file: !62, line: 272, baseType: !76, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !246, file: !62, line: 273, baseType: !76, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !246, file: !62, line: 274, baseType: !65, size: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kbd_shift_flags", scope: !205, file: !62, line: 278, baseType: !139, size: 8)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "enter_acpi_sleep", scope: !68, file: !62, line: 516, baseType: !254, size: 96)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_enter_acpi_sleep", file: !62, line: 284, size: 96, elements: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "val_a", scope: !254, file: !62, line: 286, baseType: !137, size: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "val_b", scope: !254, file: !62, line: 287, baseType: !137, size: 16, offset: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !254, file: !62, line: 288, baseType: !65, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !62, line: 290, baseType: !65, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "change_freq", scope: !68, file: !62, line: 517, baseType: !261, size: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_change_freq", file: !62, line: 295, size: 128, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !62, line: 297, baseType: !65, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !261, file: !62, line: 298, baseType: !65, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !261, file: !62, line: 299, baseType: !76, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "getidletime", scope: !68, file: !62, line: 518, baseType: !267, size: 256)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_getidletime", file: !62, line: 312, size: 256, elements: !268)
!268 = !{!269, !270, !271, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cpumap_bitmap", scope: !267, file: !62, line: 315, baseType: !228, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cpumap_nr_cpus", scope: !267, file: !62, line: 318, baseType: !65, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "idletime", scope: !267, file: !62, line: 320, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_uint64_t", file: !92, line: 92, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !267, file: !62, line: 323, baseType: !76, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "set_pminfo", scope: !68, file: !62, line: 519, baseType: !276, size: 896)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_set_processor_pminfo", file: !62, line: 424, size: 896, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !276, file: !62, line: 426, baseType: !65, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !276, file: !62, line: 427, baseType: !65, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !62, line: 428, baseType: !281, size: 832, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !62, line: 428, size: 832, elements: !282)
!282 = !{!283, !320, !357}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !281, file: !62, line: 429, baseType: !284, size: 128)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_power", file: !62, line: 378, size: 128, elements: !285)
!285 = !{!286, !287, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !284, file: !62, line: 379, baseType: !65, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !62, line: 380, baseType: !288, size: 32, offset: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_flags", file: !62, line: 370, size: 32, elements: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !288, file: !62, line: 371, baseType: !65, size: 1, flags: DIFlagBitField, extraData: i64 0)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !288, file: !62, line: 372, baseType: !65, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !288, file: !62, line: 373, baseType: !65, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !288, file: !62, line: 374, baseType: !65, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !288, file: !62, line: 375, baseType: !65, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !284, file: !62, line: 381, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_processor_cx", file: !62, line: 368, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_cx", file: !62, line: 360, size: 384, elements: !299)
!299 = !{!300, !308, !309, !310, !311, !312}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !298, file: !62, line: 361, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_power_register", file: !62, line: 345, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !301, file: !62, line: 346, baseType: !65, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !301, file: !62, line: 347, baseType: !65, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !301, file: !62, line: 348, baseType: !65, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !301, file: !62, line: 349, baseType: !65, size: 32, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !301, file: !62, line: 350, baseType: !76, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !298, file: !62, line: 362, baseType: !139, size: 8, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !298, file: !62, line: 363, baseType: !65, size: 32, offset: 224)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !298, file: !62, line: 364, baseType: !65, size: 32, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dpcnt", scope: !298, file: !62, line: 365, baseType: !65, size: 32, offset: 288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !298, file: !62, line: 366, baseType: !313, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_processor_csd", file: !62, line: 358, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_csd", file: !62, line: 353, size: 96, elements: !316)
!316 = !{!317, !318, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !315, file: !62, line: 354, baseType: !65, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !315, file: !62, line: 355, baseType: !65, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !315, file: !62, line: 356, baseType: !65, size: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "perf", scope: !281, file: !62, line: 430, baseType: !321, size: 832)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_performance", file: !62, line: 412, size: 832, elements: !322)
!322 = !{!323, !324, !325, !335, !336, !337, !348, !356}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !62, line: 413, baseType: !65, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !321, file: !62, line: 414, baseType: !65, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !321, file: !62, line: 415, baseType: !326, size: 128, offset: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_pct_register", file: !62, line: 384, size: 128, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !334}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !326, file: !62, line: 385, baseType: !139, size: 8)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !326, file: !62, line: 386, baseType: !137, size: 16, offset: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !326, file: !62, line: 387, baseType: !139, size: 8, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !326, file: !62, line: 388, baseType: !139, size: 8, offset: 40)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !326, file: !62, line: 389, baseType: !139, size: 8, offset: 48)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !326, file: !62, line: 390, baseType: !139, size: 8, offset: 56)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !326, file: !62, line: 391, baseType: !76, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !321, file: !62, line: 416, baseType: !326, size: 128, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !321, file: !62, line: 417, baseType: !65, size: 32, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !321, file: !62, line: 418, baseType: !338, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_xen_processor_px", file: !62, line: 402, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_processor_px", file: !62, line: 394, size: 384, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !340, file: !62, line: 395, baseType: !76, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !340, file: !62, line: 396, baseType: !76, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !340, file: !62, line: 397, baseType: !76, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !340, file: !62, line: 398, baseType: !76, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !340, file: !62, line: 399, baseType: !76, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !340, file: !62, line: 400, baseType: !76, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !321, file: !62, line: 419, baseType: !349, size: 320, offset: 448)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_psd_package", file: !62, line: 404, size: 320, elements: !350)
!350 = !{!351, !352, !353, !354, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !349, file: !62, line: 405, baseType: !76, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !349, file: !62, line: 406, baseType: !76, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !349, file: !62, line: 407, baseType: !76, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !349, file: !62, line: 408, baseType: !76, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !349, file: !62, line: 409, baseType: !76, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !321, file: !62, line: 420, baseType: !65, size: 32, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pdc", scope: !281, file: !62, line: 431, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_uint32_t", file: !92, line: 93, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_info", scope: !68, file: !62, line: 520, baseType: !361, size: 160)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_pcpuinfo", file: !62, line: 437, size: 160, elements: !362)
!362 = !{!363, !364, !365, !366, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "xen_cpuid", scope: !361, file: !62, line: 439, baseType: !65, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "max_present", scope: !361, file: !62, line: 442, baseType: !65, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !62, line: 446, baseType: !65, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !361, file: !62, line: 447, baseType: !65, size: 32, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !361, file: !62, line: 448, baseType: !65, size: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_ol", scope: !68, file: !62, line: 521, baseType: !369, size: 32)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_cpu_ol", file: !62, line: 454, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !369, file: !62, line: 455, baseType: !65, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_add", scope: !68, file: !62, line: 522, baseType: !373, size: 96)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_cpu_hotadd", file: !62, line: 460, size: 96, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id", scope: !373, file: !62, line: 461, baseType: !65, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !373, file: !62, line: 462, baseType: !65, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pxm", scope: !373, file: !62, line: 463, baseType: !65, size: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mem_add", scope: !68, file: !62, line: 523, baseType: !379, size: 192)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_mem_hotadd", file: !62, line: 467, size: 192, elements: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "spfn", scope: !379, file: !62, line: 468, baseType: !76, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "epfn", scope: !379, file: !62, line: 469, baseType: !76, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pxm", scope: !379, file: !62, line: 470, baseType: !65, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !62, line: 471, baseType: !65, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "core_parking", scope: !68, file: !62, line: 524, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_core_parking", file: !62, line: 475, size: 64, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !62, line: 479, baseType: !65, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "idle_nums", scope: !386, file: !62, line: 482, baseType: !65, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "symdata", scope: !68, file: !62, line: 525, baseType: !391, size: 256)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenpf_symdata", file: !62, line: 487, size: 256, elements: !392)
!392 = !{!393, !394, !395, !399, !400}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !391, file: !62, line: 489, baseType: !65, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "symnum", scope: !391, file: !62, line: 492, baseType: !65, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !62, line: 497, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__guest_handle_char", file: !92, line: 89, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !391, file: !62, line: 498, baseType: !76, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !62, line: 499, baseType: !398, size: 8, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !68, file: !62, line: 526, baseType: !402, size: 1024)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 128)
!405 = !DILocation(line: 44, column: 25, scope: !43)
!406 = !DILocation(line: 44, column: 30, scope: !43)
!407 = !DILocation(line: 47, column: 5, scope: !43)
!408 = !DILocation(line: 47, column: 25, scope: !43)
!409 = !DILocation(line: 48, column: 18, scope: !43)
!410 = !DILocation(line: 48, column: 13, scope: !43)
!411 = !DILocation(line: 49, column: 18, scope: !43)
!412 = !DILocation(line: 49, column: 13, scope: !43)
!413 = !DILocation(line: 50, column: 19, scope: !43)
!414 = !DILocation(line: 51, column: 13, scope: !43)
!415 = !DILocalVariable(name: "__ret_warn_on", scope: !416, file: !1, line: 55, type: !16)
!416 = distinct !DILexicalBlock(scope: !417, file: !1, line: 55, column: 6)
!417 = distinct !DILexicalBlock(scope: !43, file: !1, line: 55, column: 6)
!418 = !DILocation(line: 55, column: 6, scope: !416)
!419 = !DILocation(line: 55, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !1, line: 55, column: 6)
!421 = !DILocation(line: 55, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !420, file: !1, line: 55, column: 6)
!423 = !DILocation(line: 55, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !422, file: !1, line: 55, column: 6)
!425 = !DILocation(line: 55, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !1, line: 55, column: 6)
!427 = !DILocation(line: 55, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !426, file: !1, line: 55, column: 6)
!429 = !DILocation(line: 55, column: 6, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !1, line: 55, column: 6)
!431 = !{i32 -2142039274, i32 -2142039245, i32 -2142039199, i32 -2142039141, i32 -2142039087, i32 -2142039033, i32 -2142038978, i32 -2142038947}
!432 = !DILocation(line: 55, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !1, line: 55, column: 6)
!434 = !{i32 -2142038537, i32 -2142038530, i32 -2142038478, i32 -2142038447, i32 -2142038417}
!435 = !DILocation(line: 55, column: 6, scope: !436)
!436 = distinct !DILexicalBlock(scope: !426, file: !1, line: 55, column: 6)
!437 = !DILocation(line: 55, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !422, file: !1, line: 55, column: 6)
!439 = !DILocation(line: 55, column: 6, scope: !417)
!440 = !DILocation(line: 55, column: 6, scope: !43)
!441 = !DILocation(line: 59, column: 3, scope: !417)
!442 = !DILocation(line: 61, column: 2, scope: !43)
!443 = !DILocation(line: 62, column: 2, scope: !43)
!444 = !DILocation(line: 63, column: 1, scope: !43)
!445 = distinct !DISubprogram(name: "xen_acpi_notify_hypervisor_extended_sleep", scope: !1, file: !1, line: 72, type: !24, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!446 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !445, file: !1, line: 72, type: !26)
!447 = !DILocation(line: 72, column: 50, scope: !445)
!448 = !DILocalVariable(name: "val_a", arg: 2, scope: !445, file: !1, line: 73, type: !29)
!449 = !DILocation(line: 73, column: 14, scope: !445)
!450 = !DILocalVariable(name: "val_b", arg: 3, scope: !445, file: !1, line: 73, type: !29)
!451 = !DILocation(line: 73, column: 25, scope: !445)
!452 = !DILocation(line: 75, column: 42, scope: !445)
!453 = !DILocation(line: 75, column: 55, scope: !445)
!454 = !DILocation(line: 76, column: 7, scope: !445)
!455 = !DILocation(line: 75, column: 9, scope: !445)
!456 = !DILocation(line: 75, column: 2, scope: !445)
!457 = distinct !DISubprogram(name: "HYPERVISOR_platform_op", scope: !458, file: !458, line: 305, type: !459, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !31)
!458 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!459 = !DISubroutineType(types: !460)
!460 = !{!16, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!462 = !DILocalVariable(name: "op", arg: 1, scope: !457, file: !458, line: 305, type: !461)
!463 = !DILocation(line: 305, column: 48, scope: !457)
!464 = !DILocation(line: 307, column: 2, scope: !457)
!465 = !DILocation(line: 307, column: 6, scope: !457)
!466 = !DILocation(line: 307, column: 24, scope: !457)
!467 = !DILocalVariable(name: "__res", scope: !468, file: !458, line: 308, type: !15)
!468 = distinct !DILexicalBlock(scope: !457, file: !458, line: 308, column: 9)
!469 = !DILocation(line: 308, column: 9, scope: !468)
!470 = !DILocalVariable(name: "__arg1", scope: !468, file: !458, line: 308, type: !15)
!471 = !DILocalVariable(name: "__arg2", scope: !468, file: !458, line: 308, type: !15)
!472 = !DILocalVariable(name: "__arg3", scope: !468, file: !458, line: 308, type: !15)
!473 = !DILocalVariable(name: "__arg4", scope: !468, file: !458, line: 308, type: !15)
!474 = !DILocalVariable(name: "__arg5", scope: !468, file: !458, line: 308, type: !15)
!475 = !{i32 -2142071460}
!476 = !DILocation(line: 308, column: 2, scope: !457)
