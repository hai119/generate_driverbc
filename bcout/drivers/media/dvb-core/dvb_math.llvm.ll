; ModuleID = '../bcout/drivers/media/dvb-core/dvb_math.llvm.bc'
source_filename = "drivers/media/dvb-core/dvb_math.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@.str = private unnamed_addr constant [34 x i8] c"drivers/media/dvb-core/dvb_math.c\00", align 1
@logtable = internal constant [256 x i16] [i16 0, i16 369, i16 736, i16 1102, i16 1466, i16 1829, i16 2190, i16 2551, i16 2909, i16 3267, i16 3623, i16 3978, i16 4331, i16 4683, i16 5034, i16 5384, i16 5732, i16 6079, i16 6425, i16 6769, i16 7112, i16 7454, i16 7795, i16 8134, i16 8473, i16 8810, i16 9146, i16 9480, i16 9814, i16 10146, i16 10477, i16 10807, i16 11136, i16 11464, i16 11791, i16 12116, i16 12440, i16 12764, i16 13086, i16 13407, i16 13727, i16 14046, i16 14363, i16 14680, i16 14996, i16 15310, i16 15624, i16 15937, i16 16248, i16 16559, i16 16868, i16 17177, i16 17484, i16 17791, i16 18096, i16 18401, i16 18704, i16 19007, i16 19308, i16 19609, i16 19909, i16 20207, i16 20505, i16 20802, i16 21098, i16 21393, i16 21687, i16 21980, i16 22272, i16 22564, i16 22854, i16 23144, i16 23433, i16 23720, i16 24007, i16 24293, i16 24579, i16 24863, i16 25146, i16 25429, i16 25711, i16 25992, i16 26272, i16 26551, i16 26830, i16 27108, i16 27384, i16 27660, i16 27936, i16 28210, i16 28484, i16 28757, i16 29029, i16 29300, i16 29571, i16 29840, i16 30109, i16 30378, i16 30645, i16 30912, i16 31178, i16 31443, i16 31707, i16 31971, i16 32234, i16 32496, i16 32758, i16 -32517, i16 -32257, i16 -31998, i16 -31739, i16 -31481, i16 -31224, i16 -30967, i16 -30711, i16 -30456, i16 -30202, i16 -29948, i16 -29695, i16 -29442, i16 -29190, i16 -28939, i16 -28689, i16 -28439, i16 -28190, i16 -27941, i16 -27694, i16 -27446, i16 -27200, i16 -26954, i16 -26709, i16 -26464, i16 -26220, i16 -25977, i16 -25734, i16 -25492, i16 -25250, i16 -25009, i16 -24769, i16 -24530, i16 -24290, i16 -24052, i16 -23814, i16 -23577, i16 -23340, i16 -23104, i16 -22869, i16 -22634, i16 -22399, i16 -22166, i16 -21933, i16 -21700, i16 -21468, i16 -21236, i16 -21006, i16 -20775, i16 -20546, i16 -20316, i16 -20088, i16 -19860, i16 -19632, i16 -19405, i16 -19179, i16 -18953, i16 -18727, i16 -18502, i16 -18278, i16 -18054, i16 -17831, i16 -17608, i16 -17386, i16 -17164, i16 -16943, i16 -16723, i16 -16502, i16 -16283, i16 -16064, i16 -15845, i16 -15627, i16 -15409, i16 -15192, i16 -14976, i16 -14760, i16 -14544, i16 -14329, i16 -14114, i16 -13900, i16 -13686, i16 -13473, i16 -13260, i16 -13048, i16 -12836, i16 -12625, i16 -12414, i16 -12204, i16 -11994, i16 -11785, i16 -11576, i16 -11367, i16 -11159, i16 -10952, i16 -10745, i16 -10538, i16 -10332, i16 -10126, i16 -9921, i16 -9716, i16 -9511, i16 -9307, i16 -9104, i16 -8901, i16 -8698, i16 -8496, i16 -8294, i16 -8093, i16 -7892, i16 -7691, i16 -7491, i16 -7291, i16 -7092, i16 -6893, i16 -6695, i16 -6497, i16 -6299, i16 -6102, i16 -5905, i16 -5709, i16 -5513, i16 -5317, i16 -5122, i16 -4927, i16 -4733, i16 -4539, i16 -4346, i16 -4152, i16 -3960, i16 -3767, i16 -3575, i16 -3384, i16 -3193, i16 -3002, i16 -2811, i16 -2621, i16 -2432, i16 -2242, i16 -2053, i16 -1865, i16 -1677, i16 -1489, i16 -1302, i16 -1115, i16 -928, i16 -742, i16 -556, i16 -370, i16 -185], align 16, !dbg !0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intlog2(i32 %value) #0 !dbg !16 {
entry:
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !24, metadata !DIExpression()), !dbg !30
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !32, metadata !DIExpression()), !dbg !33
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %msb = alloca i32, align 4
  %logentry = alloca i32, align 4
  %significand = alloca i32, align 4
  %interpolation = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %msb, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %logentry, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %significand, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %interpolation, metadata !42, metadata !DIExpression()), !dbg !43
  %0 = load i32, i32* %value.addr, align 4, !dbg !44
  %cmp = icmp eq i32 %0, 0, !dbg !44
  %lnot = xor i1 %cmp, true, !dbg !44
  %lnot1 = xor i1 %lnot, true, !dbg !44
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !44
  %conv = sext i32 %lnot.ext to i64, !dbg !44
  %tobool = icmp ne i64 %conv, 0, !dbg !44
  br i1 %tobool, label %if.then, label %if.end22, !dbg !46

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !47, metadata !DIExpression()), !dbg !50
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !50
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !51
  %tobool2 = icmp ne i32 %1, 0, !dbg !51
  %lnot3 = xor i1 %tobool2, true, !dbg !51
  %lnot5 = xor i1 %lnot3, true, !dbg !51
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !51
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !51
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !51
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !50

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !51

do.body:                                          ; preds = %if.then9
  br label %do.body10, !dbg !53

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !55

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !53

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 71, i32 2305, i64 12) #2, !dbg !57, !srcloc !59
  br label %do.end12, !dbg !57

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 104) #2, !dbg !60, !srcloc !62
  br label %do.body13, !dbg !53

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !63

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !53

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !53

if.end:                                           ; preds = %do.end15, %if.then
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !50
  %tobool16 = icmp ne i32 %2, 0, !dbg !50
  %lnot17 = xor i1 %tobool16, true, !dbg !50
  %lnot19 = xor i1 %lnot17, true, !dbg !50
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !50
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !50
  store i64 %conv21, i64* %tmp, align 8, !dbg !51
  %3 = load i64, i64* %tmp, align 8, !dbg !50
  store i32 0, i32* %retval, align 4, !dbg !65
  br label %return, !dbg !65

if.end22:                                         ; preds = %entry
  %4 = load i32, i32* %value.addr, align 4, !dbg !66
  store i32 %4, i32* %x.addr.i, align 4
  %5 = load i32, i32* %x.addr.i, align 4, !dbg !67
  %6 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 -1) #3, !dbg !68, !srcloc !69
  store i32 %6, i32* %r.i, align 4, !dbg !68
  %7 = load i32, i32* %r.i, align 4, !dbg !70
  %add.i = add i32 %7, 1, !dbg !71
  %sub = sub i32 %add.i, 1, !dbg !72
  store i32 %sub, i32* %msb, align 4, !dbg !73
  %8 = load i32, i32* %value.addr, align 4, !dbg !74
  %9 = load i32, i32* %msb, align 4, !dbg !75
  %sub23 = sub i32 31, %9, !dbg !76
  %shl = shl i32 %8, %sub23, !dbg !77
  store i32 %shl, i32* %significand, align 4, !dbg !78
  %10 = load i32, i32* %significand, align 4, !dbg !79
  %shr = lshr i32 %10, 23, !dbg !80
  %and = and i32 %shr, 255, !dbg !81
  store i32 %and, i32* %logentry, align 4, !dbg !82
  %11 = load i32, i32* %significand, align 4, !dbg !83
  %and24 = and i32 %11, 8388607, !dbg !84
  %12 = load i32, i32* %logentry, align 4, !dbg !85
  %add = add i32 %12, 1, !dbg !86
  %and25 = and i32 %add, 255, !dbg !87
  %idxprom = zext i32 %and25 to i64, !dbg !88
  %arrayidx = getelementptr [256 x i16], [256 x i16]* @logtable, i64 0, i64 %idxprom, !dbg !88
  %13 = load i16, i16* %arrayidx, align 2, !dbg !88
  %conv26 = zext i16 %13 to i32, !dbg !88
  %14 = load i32, i32* %logentry, align 4, !dbg !89
  %idxprom27 = zext i32 %14 to i64, !dbg !90
  %arrayidx28 = getelementptr [256 x i16], [256 x i16]* @logtable, i64 0, i64 %idxprom27, !dbg !90
  %15 = load i16, i16* %arrayidx28, align 2, !dbg !90
  %conv29 = zext i16 %15 to i32, !dbg !90
  %sub30 = sub i32 %conv26, %conv29, !dbg !91
  %and31 = and i32 %sub30, 65535, !dbg !92
  %mul = mul i32 %and24, %and31, !dbg !93
  %shr32 = lshr i32 %mul, 15, !dbg !94
  store i32 %shr32, i32* %interpolation, align 4, !dbg !95
  %16 = load i32, i32* %msb, align 4, !dbg !96
  %shl33 = shl i32 %16, 24, !dbg !97
  %17 = load i32, i32* %logentry, align 4, !dbg !98
  %idxprom34 = zext i32 %17 to i64, !dbg !99
  %arrayidx35 = getelementptr [256 x i16], [256 x i16]* @logtable, i64 0, i64 %idxprom34, !dbg !99
  %18 = load i16, i16* %arrayidx35, align 2, !dbg !99
  %conv36 = zext i16 %18 to i32, !dbg !99
  %shl37 = shl i32 %conv36, 8, !dbg !100
  %add38 = add i32 %shl33, %shl37, !dbg !101
  %19 = load i32, i32* %interpolation, align 4, !dbg !102
  %add39 = add i32 %add38, %19, !dbg !103
  store i32 %add39, i32* %retval, align 4, !dbg !104
  br label %return, !dbg !104

return:                                           ; preds = %if.end22, %if.end
  %20 = load i32, i32* %retval, align 4, !dbg !105
  ret i32 %20, !dbg !105
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intlog10(i32 %value) #0 !dbg !106 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %log = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i64* %log, metadata !109, metadata !DIExpression()), !dbg !113
  %0 = load i32, i32* %value.addr, align 4, !dbg !114
  %cmp = icmp eq i32 %0, 0, !dbg !114
  %lnot = xor i1 %cmp, true, !dbg !114
  %lnot1 = xor i1 %lnot, true, !dbg !114
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !114
  %conv = sext i32 %lnot.ext to i64, !dbg !114
  %tobool = icmp ne i64 %conv, 0, !dbg !114
  br i1 %tobool, label %if.then, label %if.end22, !dbg !116

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !117, metadata !DIExpression()), !dbg !120
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !120
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !121
  %tobool2 = icmp ne i32 %1, 0, !dbg !121
  %lnot3 = xor i1 %tobool2, true, !dbg !121
  %lnot5 = xor i1 %lnot3, true, !dbg !121
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !121
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !121
  %tobool8 = icmp ne i64 %conv7, 0, !dbg !121
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !120

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !121

do.body:                                          ; preds = %if.then9
  br label %do.body10, !dbg !123

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !125

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !123

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 128, i32 2305, i64 12) #2, !dbg !127, !srcloc !129
  br label %do.end12, !dbg !127

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #2, !dbg !130, !srcloc !132
  br label %do.body13, !dbg !123

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !133

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !123

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !123

if.end:                                           ; preds = %do.end15, %if.then
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !120
  %tobool16 = icmp ne i32 %2, 0, !dbg !120
  %lnot17 = xor i1 %tobool16, true, !dbg !120
  %lnot19 = xor i1 %lnot17, true, !dbg !120
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !120
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !120
  store i64 %conv21, i64* %tmp, align 8, !dbg !121
  %3 = load i64, i64* %tmp, align 8, !dbg !120
  store i32 0, i32* %retval, align 4, !dbg !135
  br label %return, !dbg !135

if.end22:                                         ; preds = %entry
  %4 = load i32, i32* %value.addr, align 4, !dbg !136
  %call = call i32 @intlog2(i32 %4) #4, !dbg !137
  %conv23 = zext i32 %call to i64, !dbg !137
  store i64 %conv23, i64* %log, align 8, !dbg !138
  %5 = load i64, i64* %log, align 8, !dbg !139
  %mul = mul i64 %5, 646456993, !dbg !140
  %shr = lshr i64 %mul, 31, !dbg !141
  %conv24 = trunc i64 %shr to i32, !dbg !142
  store i32 %conv24, i32* %retval, align 4, !dbg !143
  br label %return, !dbg !143

return:                                           ; preds = %if.end22, %if.end
  %6 = load i32, i32* %retval, align 4, !dbg !144
  ret i32 %6, !dbg !144
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "logtable", scope: !2, file: !3, line: 24, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-core/dvb_math.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4096, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!9 = !{!10}
!10 = !DISubrange(count: 256)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "intlog2", scope: !3, file: !3, line: 59, type: !17, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20}
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !19)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DILocalVariable(name: "x", arg: 1, scope: !25, file: !26, line: 324, type: !19)
!25 = distinct !DISubprogram(name: "fls", scope: !26, file: !26, line: 324, type: !27, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !19}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocation(line: 324, column: 45, scope: !25, inlinedAt: !31)
!31 = distinct !DILocation(line: 76, column: 8, scope: !16)
!32 = !DILocalVariable(name: "r", scope: !25, file: !26, line: 326, type: !29)
!33 = !DILocation(line: 326, column: 6, scope: !25, inlinedAt: !31)
!34 = !DILocalVariable(name: "value", arg: 1, scope: !16, file: !3, line: 59, type: !20)
!35 = !DILocation(line: 59, column: 26, scope: !16)
!36 = !DILocalVariable(name: "msb", scope: !16, file: !3, line: 65, type: !19)
!37 = !DILocation(line: 65, column: 15, scope: !16)
!38 = !DILocalVariable(name: "logentry", scope: !16, file: !3, line: 66, type: !19)
!39 = !DILocation(line: 66, column: 15, scope: !16)
!40 = !DILocalVariable(name: "significand", scope: !16, file: !3, line: 67, type: !19)
!41 = !DILocation(line: 67, column: 15, scope: !16)
!42 = !DILocalVariable(name: "interpolation", scope: !16, file: !3, line: 68, type: !19)
!43 = !DILocation(line: 68, column: 15, scope: !16)
!44 = !DILocation(line: 70, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !16, file: !3, line: 70, column: 6)
!46 = !DILocation(line: 70, column: 6, scope: !16)
!47 = !DILocalVariable(name: "__ret_warn_on", scope: !48, file: !3, line: 71, type: !29)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 71, column: 3)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 70, column: 28)
!50 = !DILocation(line: 71, column: 3, scope: !48)
!51 = !DILocation(line: 71, column: 3, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 71, column: 3)
!53 = !DILocation(line: 71, column: 3, scope: !54)
!54 = distinct !DILexicalBlock(scope: !52, file: !3, line: 71, column: 3)
!55 = !DILocation(line: 71, column: 3, scope: !56)
!56 = distinct !DILexicalBlock(scope: !54, file: !3, line: 71, column: 3)
!57 = !DILocation(line: 71, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !3, line: 71, column: 3)
!59 = !{i32 -2144339607, i32 -2144339578, i32 -2144339532, i32 -2144339474, i32 -2144339420, i32 -2144339366, i32 -2144339311, i32 -2144339280}
!60 = !DILocation(line: 71, column: 3, scope: !61)
!61 = distinct !DILexicalBlock(scope: !54, file: !3, line: 71, column: 3)
!62 = !{i32 -2144338866, i32 -2144338859, i32 -2144338807, i32 -2144338776, i32 -2144338746}
!63 = !DILocation(line: 71, column: 3, scope: !64)
!64 = distinct !DILexicalBlock(scope: !54, file: !3, line: 71, column: 3)
!65 = !DILocation(line: 72, column: 3, scope: !49)
!66 = !DILocation(line: 76, column: 12, scope: !16)
!67 = !DILocation(line: 340, column: 14, scope: !25, inlinedAt: !31)
!68 = !DILocation(line: 338, column: 2, scope: !25, inlinedAt: !31)
!69 = !{i32 189901}
!70 = !DILocation(line: 351, column: 9, scope: !25, inlinedAt: !31)
!71 = !DILocation(line: 351, column: 11, scope: !25, inlinedAt: !31)
!72 = !DILocation(line: 76, column: 19, scope: !16)
!73 = !DILocation(line: 76, column: 6, scope: !16)
!74 = !DILocation(line: 92, column: 16, scope: !16)
!75 = !DILocation(line: 92, column: 31, scope: !16)
!76 = !DILocation(line: 92, column: 29, scope: !16)
!77 = !DILocation(line: 92, column: 22, scope: !16)
!78 = !DILocation(line: 92, column: 14, scope: !16)
!79 = !DILocation(line: 93, column: 14, scope: !16)
!80 = !DILocation(line: 93, column: 26, scope: !16)
!81 = !DILocation(line: 93, column: 33, scope: !16)
!82 = !DILocation(line: 93, column: 11, scope: !16)
!83 = !DILocation(line: 110, column: 20, scope: !16)
!84 = !DILocation(line: 110, column: 32, scope: !16)
!85 = !DILocation(line: 111, column: 16, scope: !16)
!86 = !DILocation(line: 111, column: 25, scope: !16)
!87 = !DILocation(line: 111, column: 30, scope: !16)
!88 = !DILocation(line: 111, column: 6, scope: !16)
!89 = !DILocation(line: 112, column: 15, scope: !16)
!90 = !DILocation(line: 112, column: 6, scope: !16)
!91 = !DILocation(line: 111, column: 38, scope: !16)
!92 = !DILocation(line: 112, column: 26, scope: !16)
!93 = !DILocation(line: 110, column: 44, scope: !16)
!94 = !DILocation(line: 112, column: 37, scope: !16)
!95 = !DILocation(line: 110, column: 16, scope: !16)
!96 = !DILocation(line: 115, column: 11, scope: !16)
!97 = !DILocation(line: 115, column: 15, scope: !16)
!98 = !DILocation(line: 115, column: 34, scope: !16)
!99 = !DILocation(line: 115, column: 25, scope: !16)
!100 = !DILocation(line: 115, column: 44, scope: !16)
!101 = !DILocation(line: 115, column: 22, scope: !16)
!102 = !DILocation(line: 115, column: 52, scope: !16)
!103 = !DILocation(line: 115, column: 50, scope: !16)
!104 = !DILocation(line: 115, column: 2, scope: !16)
!105 = !DILocation(line: 116, column: 1, scope: !16)
!106 = distinct !DISubprogram(name: "intlog10", scope: !3, file: !3, line: 119, type: !17, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DILocalVariable(name: "value", arg: 1, scope: !106, file: !3, line: 119, type: !20)
!108 = !DILocation(line: 119, column: 27, scope: !106)
!109 = !DILocalVariable(name: "log", scope: !106, file: !3, line: 125, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !112)
!112 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DILocation(line: 125, column: 6, scope: !106)
!114 = !DILocation(line: 127, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !106, file: !3, line: 127, column: 6)
!116 = !DILocation(line: 127, column: 6, scope: !106)
!117 = !DILocalVariable(name: "__ret_warn_on", scope: !118, file: !3, line: 128, type: !29)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 128, column: 3)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 127, column: 28)
!120 = !DILocation(line: 128, column: 3, scope: !118)
!121 = !DILocation(line: 128, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !3, line: 128, column: 3)
!123 = !DILocation(line: 128, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !122, file: !3, line: 128, column: 3)
!125 = !DILocation(line: 128, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !3, line: 128, column: 3)
!127 = !DILocation(line: 128, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !3, line: 128, column: 3)
!129 = !{i32 -2144338062, i32 -2144338033, i32 -2144337987, i32 -2144337929, i32 -2144337875, i32 -2144337821, i32 -2144337766, i32 -2144337735}
!130 = !DILocation(line: 128, column: 3, scope: !131)
!131 = distinct !DILexicalBlock(scope: !124, file: !3, line: 128, column: 3)
!132 = !{i32 -2144337320, i32 -2144337313, i32 -2144337261, i32 -2144337230, i32 -2144337200}
!133 = !DILocation(line: 128, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !124, file: !3, line: 128, column: 3)
!135 = !DILocation(line: 129, column: 3, scope: !119)
!136 = !DILocation(line: 132, column: 16, scope: !106)
!137 = !DILocation(line: 132, column: 8, scope: !106)
!138 = !DILocation(line: 132, column: 6, scope: !106)
!139 = !DILocation(line: 139, column: 10, scope: !106)
!140 = !DILocation(line: 139, column: 14, scope: !106)
!141 = !DILocation(line: 139, column: 27, scope: !106)
!142 = !DILocation(line: 139, column: 9, scope: !106)
!143 = !DILocation(line: 139, column: 2, scope: !106)
!144 = !DILocation(line: 140, column: 1, scope: !106)
