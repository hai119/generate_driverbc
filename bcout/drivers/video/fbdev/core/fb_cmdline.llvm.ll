; ModuleID = '../bcout/drivers/video/fbdev/core/fb_cmdline.llvm.bc'
source_filename = "drivers/video/fbdev/core/fb_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }

@ofonly = internal global i32 0, section ".data..read_mostly", align 4, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"offb\00", align 1
@video_options = internal global [32 x i8*] zeroinitializer, section ".data..read_mostly", align 16, !dbg !27
@fb_mode_option = dso_local global i8* null, align 8, !dbg !32
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@__setup_str_video_setup = internal constant [7 x i8] c"video=\00", section ".init.rodata", align 1, !dbg !34
@__setup_video_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__setup_str_video_setup, i32 0, i32 0), i32 (i8*)* @video_setup, i32 0 }, section ".init.setup", align 8, !dbg !11
@.str.2 = private unnamed_addr constant [7 x i8] c"ofonly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_video_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_get_options(i8* %name, i8** %option) #0 !dbg !44 {
entry:
  %name.addr = alloca i8*, align 8
  %option.addr = alloca i8**, align 8
  %opt = alloca i8*, align 8
  %options = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %name_len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i8** %option, i8*** %option.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %option.addr, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i8** %opt, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i8** %options, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* null, i8** %options, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %retval1, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %name_len, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i8*, i8** %name.addr, align 8, !dbg !60
  %call = call i64 @strlen(i8* %0) #4, !dbg !61
  %conv = trunc i64 %call to i32, !dbg !61
  store i32 %conv, i32* %name_len, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !63
  %1 = load i32, i32* %name_len, align 4, !dbg !64
  %tobool = icmp ne i32 %1, 0, !dbg !64
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @ofonly, align 4, !dbg !67
  %tobool2 = icmp ne i32 %2, 0, !dbg !67
  br i1 %tobool2, label %land.lhs.true3, label %if.end, !dbg !68

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i8*, i8** %name.addr, align 8, !dbg !69
  %call4 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4) #4, !dbg !70
  %tobool5 = icmp ne i32 %call4, 0, !dbg !70
  br i1 %tobool5, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %land.lhs.true3
  store i32 1, i32* %retval1, align 4, !dbg !72
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %4 = load i32, i32* %name_len, align 4, !dbg !74
  %tobool6 = icmp ne i32 %4, 0, !dbg !74
  br i1 %tobool6, label %land.lhs.true7, label %if.end35, !dbg !76

land.lhs.true7:                                   ; preds = %if.end
  %5 = load i32, i32* %retval1, align 4, !dbg !77
  %tobool8 = icmp ne i32 %5, 0, !dbg !77
  br i1 %tobool8, label %if.end35, label %if.then9, !dbg !78

if.then9:                                         ; preds = %land.lhs.true7
  store i32 0, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !82

for.cond:                                         ; preds = %for.inc, %if.then9
  %6 = load i32, i32* %i, align 4, !dbg !83
  %cmp = icmp slt i32 %6, 32, !dbg !85
  br i1 %cmp, label %for.body, label %for.end, !dbg !86

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !87
  %idxprom = sext i32 %7 to i64, !dbg !90
  %arrayidx = getelementptr [32 x i8*], [32 x i8*]* @video_options, i64 0, i64 %idxprom, !dbg !90
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !90
  %cmp11 = icmp eq i8* %8, null, !dbg !91
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !92

if.then13:                                        ; preds = %for.body
  br label %for.inc, !dbg !93

if.end14:                                         ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !94
  %idxprom15 = sext i32 %9 to i64, !dbg !96
  %arrayidx16 = getelementptr [32 x i8*], [32 x i8*]* @video_options, i64 0, i64 %idxprom15, !dbg !96
  %10 = load i8*, i8** %arrayidx16, align 8, !dbg !96
  %arrayidx17 = getelementptr i8, i8* %10, i64 0, !dbg !96
  %11 = load i8, i8* %arrayidx17, align 1, !dbg !96
  %tobool18 = icmp ne i8 %11, 0, !dbg !96
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !97

if.then19:                                        ; preds = %if.end14
  br label %for.inc, !dbg !98

if.end20:                                         ; preds = %if.end14
  %12 = load i32, i32* %i, align 4, !dbg !99
  %idxprom21 = sext i32 %12 to i64, !dbg !100
  %arrayidx22 = getelementptr [32 x i8*], [32 x i8*]* @video_options, i64 0, i64 %idxprom21, !dbg !100
  %13 = load i8*, i8** %arrayidx22, align 8, !dbg !100
  store i8* %13, i8** %opt, align 8, !dbg !101
  %14 = load i8*, i8** %name.addr, align 8, !dbg !102
  %15 = load i8*, i8** %opt, align 8, !dbg !104
  %16 = load i32, i32* %name_len, align 4, !dbg !105
  %conv23 = sext i32 %16 to i64, !dbg !105
  %call24 = call i32 @strncmp(i8* %14, i8* %15, i64 %conv23) #4, !dbg !106
  %tobool25 = icmp ne i32 %call24, 0, !dbg !106
  br i1 %tobool25, label %if.end34, label %land.lhs.true26, !dbg !107

land.lhs.true26:                                  ; preds = %if.end20
  %17 = load i8*, i8** %opt, align 8, !dbg !108
  %18 = load i32, i32* %name_len, align 4, !dbg !109
  %idxprom27 = sext i32 %18 to i64, !dbg !108
  %arrayidx28 = getelementptr i8, i8* %17, i64 %idxprom27, !dbg !108
  %19 = load i8, i8* %arrayidx28, align 1, !dbg !108
  %conv29 = sext i8 %19 to i32, !dbg !108
  %cmp30 = icmp eq i32 %conv29, 58, !dbg !110
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !111

if.then32:                                        ; preds = %land.lhs.true26
  %20 = load i8*, i8** %opt, align 8, !dbg !112
  %21 = load i32, i32* %name_len, align 4, !dbg !113
  %idx.ext = sext i32 %21 to i64, !dbg !114
  %add.ptr = getelementptr i8, i8* %20, i64 %idx.ext, !dbg !114
  %add.ptr33 = getelementptr i8, i8* %add.ptr, i64 1, !dbg !115
  store i8* %add.ptr33, i8** %options, align 8, !dbg !116
  br label %if.end34, !dbg !117

if.end34:                                         ; preds = %if.then32, %land.lhs.true26, %if.end20
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %if.end34, %if.then19, %if.then13
  %22 = load i32, i32* %i, align 4, !dbg !119
  %inc = add i32 %22, 1, !dbg !119
  store i32 %inc, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond
  br label %if.end35, !dbg !123

if.end35:                                         ; preds = %for.end, %land.lhs.true7, %if.end
  %23 = load i8*, i8** %options, align 8, !dbg !124
  %tobool36 = icmp ne i8* %23, null, !dbg !124
  br i1 %tobool36, label %if.end43, label %land.lhs.true37, !dbg !126

land.lhs.true37:                                  ; preds = %if.end35
  %24 = load i8**, i8*** %option.addr, align 8, !dbg !127
  %tobool38 = icmp ne i8** %24, null, !dbg !127
  br i1 %tobool38, label %land.lhs.true39, label %if.end43, !dbg !128

land.lhs.true39:                                  ; preds = %land.lhs.true37
  %25 = load i8*, i8** @fb_mode_option, align 8, !dbg !129
  %tobool40 = icmp ne i8* %25, null, !dbg !129
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !130

if.then41:                                        ; preds = %land.lhs.true39
  %26 = load i8*, i8** @fb_mode_option, align 8, !dbg !131
  %call42 = call noalias i8* @kstrdup(i8* %26, i32 3264) #4, !dbg !132
  store i8* %call42, i8** %options, align 8, !dbg !133
  br label %if.end43, !dbg !134

if.end43:                                         ; preds = %if.then41, %land.lhs.true39, %land.lhs.true37, %if.end35
  %27 = load i8*, i8** %options, align 8, !dbg !135
  %tobool44 = icmp ne i8* %27, null, !dbg !135
  br i1 %tobool44, label %land.lhs.true45, label %if.end49, !dbg !137

land.lhs.true45:                                  ; preds = %if.end43
  %28 = load i8*, i8** %options, align 8, !dbg !138
  %call46 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 3) #4, !dbg !139
  %tobool47 = icmp ne i32 %call46, 0, !dbg !139
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !140

if.then48:                                        ; preds = %land.lhs.true45
  store i32 1, i32* %retval1, align 4, !dbg !141
  br label %if.end49, !dbg !142

if.end49:                                         ; preds = %if.then48, %land.lhs.true45, %if.end43
  %29 = load i8**, i8*** %option.addr, align 8, !dbg !143
  %tobool50 = icmp ne i8** %29, null, !dbg !143
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !145

if.then51:                                        ; preds = %if.end49
  %30 = load i8*, i8** %options, align 8, !dbg !146
  %31 = load i8**, i8*** %option.addr, align 8, !dbg !147
  store i8* %30, i8** %31, align 8, !dbg !148
  br label %if.end52, !dbg !149

if.end52:                                         ; preds = %if.then51, %if.end49
  %32 = load i32, i32* %retval1, align 4, !dbg !150
  ret i32 %32, !dbg !151
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @video_setup(i8* %options) #3 section ".init.text" !dbg !152 {
entry:
  %options.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %options, i8** %options.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %options.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i8*, i8** %options.addr, align 8, !dbg !155
  %tobool = icmp ne i8* %0, null, !dbg !155
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !157

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %options.addr, align 8, !dbg !158
  %2 = load i8, i8* %1, align 1, !dbg !159
  %tobool1 = icmp ne i8 %2, 0, !dbg !159
  br i1 %tobool1, label %if.end, label %if.then, !dbg !160

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out, !dbg !161

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %options.addr, align 8, !dbg !162
  %call = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 6) #4, !dbg !164
  %tobool2 = icmp ne i32 %call, 0, !dbg !164
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !165

if.then3:                                         ; preds = %if.end
  store i32 1, i32* @ofonly, align 4, !dbg !166
  br label %out, !dbg !168

if.end4:                                          ; preds = %if.end
  %4 = load i8*, i8** %options.addr, align 8, !dbg !169
  %call5 = call i8* @strchr(i8* %4, i32 58) #4, !dbg !171
  %tobool6 = icmp ne i8* %call5, null, !dbg !171
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !172

if.then7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !173, metadata !DIExpression()), !dbg !175
  store i32 0, i32* %i, align 4, !dbg !176
  br label %for.cond, !dbg !178

for.cond:                                         ; preds = %for.inc, %if.then7
  %5 = load i32, i32* %i, align 4, !dbg !179
  %cmp = icmp slt i32 %5, 32, !dbg !181
  br i1 %cmp, label %for.body, label %for.end, !dbg !182

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !183
  %idxprom = sext i32 %6 to i64, !dbg !186
  %arrayidx = getelementptr [32 x i8*], [32 x i8*]* @video_options, i64 0, i64 %idxprom, !dbg !186
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !186
  %cmp8 = icmp eq i8* %7, null, !dbg !187
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !188

if.then9:                                         ; preds = %for.body
  %8 = load i8*, i8** %options.addr, align 8, !dbg !189
  %9 = load i32, i32* %i, align 4, !dbg !191
  %idxprom10 = sext i32 %9 to i64, !dbg !192
  %arrayidx11 = getelementptr [32 x i8*], [32 x i8*]* @video_options, i64 0, i64 %idxprom10, !dbg !192
  store i8* %8, i8** %arrayidx11, align 8, !dbg !193
  br label %for.end, !dbg !194

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %if.end12
  %10 = load i32, i32* %i, align 4, !dbg !196
  %inc = add i32 %10, 1, !dbg !196
  store i32 %inc, i32* %i, align 4, !dbg !196
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %if.then9, %for.cond
  br label %if.end13, !dbg !200

if.else:                                          ; preds = %if.end4
  %11 = load i8*, i8** %options.addr, align 8, !dbg !201
  store i8* %11, i8** @fb_mode_option, align 8, !dbg !203
  br label %if.end13

if.end13:                                         ; preds = %if.else, %for.end
  br label %out, !dbg !204

out:                                              ; preds = %if.end13, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !205), !dbg !206
  ret i32 1, !dbg !207
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ofonly", scope: !2, file: !3, line: 21, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/core/fb_cmdline.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !8, line: 148, baseType: !9)
!8 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !27, !0, !32, !34}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__setup_video_setup", scope: !2, file: !3, line: 107, type: !13, isLocal: true, isDefinition: true, align: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !14, line: 241, size: 192, elements: !15)
!14 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !20, !26}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !13, file: !14, line: 242, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !13, file: !14, line: 243, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !13, file: !14, line: 244, baseType: !24, size: 32, offset: 128)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "video_options", scope: !2, file: !3, line: 20, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 32)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "fb_mode_option", scope: !2, file: !3, line: 23, type: !17, isLocal: false, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__setup_str_video_setup", scope: !2, file: !3, line: 107, type: !36, isLocal: true, isDefinition: true, align: 8)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 56, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 7)
!39 = !{i32 7, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!44 = distinct !DISubprogram(name: "fb_get_options", scope: !3, file: !3, line: 35, type: !45, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!24, !17, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!48 = !DILocalVariable(name: "name", arg: 1, scope: !44, file: !3, line: 35, type: !17)
!49 = !DILocation(line: 35, column: 32, scope: !44)
!50 = !DILocalVariable(name: "option", arg: 2, scope: !44, file: !3, line: 35, type: !47)
!51 = !DILocation(line: 35, column: 45, scope: !44)
!52 = !DILocalVariable(name: "opt", scope: !44, file: !3, line: 37, type: !25)
!53 = !DILocation(line: 37, column: 8, scope: !44)
!54 = !DILocalVariable(name: "options", scope: !44, file: !3, line: 37, type: !25)
!55 = !DILocation(line: 37, column: 14, scope: !44)
!56 = !DILocalVariable(name: "retval", scope: !44, file: !3, line: 38, type: !24)
!57 = !DILocation(line: 38, column: 6, scope: !44)
!58 = !DILocalVariable(name: "name_len", scope: !44, file: !3, line: 39, type: !24)
!59 = !DILocation(line: 39, column: 6, scope: !44)
!60 = !DILocation(line: 39, column: 24, scope: !44)
!61 = !DILocation(line: 39, column: 17, scope: !44)
!62 = !DILocalVariable(name: "i", scope: !44, file: !3, line: 39, type: !24)
!63 = !DILocation(line: 39, column: 31, scope: !44)
!64 = !DILocation(line: 41, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !44, file: !3, line: 41, column: 6)
!66 = !DILocation(line: 41, column: 15, scope: !65)
!67 = !DILocation(line: 41, column: 18, scope: !65)
!68 = !DILocation(line: 41, column: 25, scope: !65)
!69 = !DILocation(line: 41, column: 36, scope: !65)
!70 = !DILocation(line: 41, column: 28, scope: !65)
!71 = !DILocation(line: 41, column: 6, scope: !44)
!72 = !DILocation(line: 42, column: 10, scope: !65)
!73 = !DILocation(line: 42, column: 3, scope: !65)
!74 = !DILocation(line: 44, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !44, file: !3, line: 44, column: 6)
!76 = !DILocation(line: 44, column: 15, scope: !75)
!77 = !DILocation(line: 44, column: 19, scope: !75)
!78 = !DILocation(line: 44, column: 6, scope: !44)
!79 = !DILocation(line: 45, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 45, column: 3)
!81 = distinct !DILexicalBlock(scope: !75, file: !3, line: 44, column: 27)
!82 = !DILocation(line: 45, column: 8, scope: !80)
!83 = !DILocation(line: 45, column: 15, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 45, column: 3)
!85 = !DILocation(line: 45, column: 17, scope: !84)
!86 = !DILocation(line: 45, column: 3, scope: !80)
!87 = !DILocation(line: 46, column: 22, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 46, column: 8)
!89 = distinct !DILexicalBlock(scope: !84, file: !3, line: 45, column: 32)
!90 = !DILocation(line: 46, column: 8, scope: !88)
!91 = !DILocation(line: 46, column: 25, scope: !88)
!92 = !DILocation(line: 46, column: 8, scope: !89)
!93 = !DILocation(line: 47, column: 5, scope: !88)
!94 = !DILocation(line: 48, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !3, line: 48, column: 8)
!96 = !DILocation(line: 48, column: 9, scope: !95)
!97 = !DILocation(line: 48, column: 8, scope: !89)
!98 = !DILocation(line: 49, column: 5, scope: !95)
!99 = !DILocation(line: 50, column: 24, scope: !89)
!100 = !DILocation(line: 50, column: 10, scope: !89)
!101 = !DILocation(line: 50, column: 8, scope: !89)
!102 = !DILocation(line: 51, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !89, file: !3, line: 51, column: 8)
!104 = !DILocation(line: 51, column: 23, scope: !103)
!105 = !DILocation(line: 51, column: 28, scope: !103)
!106 = !DILocation(line: 51, column: 9, scope: !103)
!107 = !DILocation(line: 51, column: 38, scope: !103)
!108 = !DILocation(line: 52, column: 8, scope: !103)
!109 = !DILocation(line: 52, column: 12, scope: !103)
!110 = !DILocation(line: 52, column: 22, scope: !103)
!111 = !DILocation(line: 51, column: 8, scope: !89)
!112 = !DILocation(line: 53, column: 15, scope: !103)
!113 = !DILocation(line: 53, column: 21, scope: !103)
!114 = !DILocation(line: 53, column: 19, scope: !103)
!115 = !DILocation(line: 53, column: 30, scope: !103)
!116 = !DILocation(line: 53, column: 13, scope: !103)
!117 = !DILocation(line: 53, column: 5, scope: !103)
!118 = !DILocation(line: 54, column: 3, scope: !89)
!119 = !DILocation(line: 45, column: 28, scope: !84)
!120 = !DILocation(line: 45, column: 3, scope: !84)
!121 = distinct !{!121, !86, !122}
!122 = !DILocation(line: 54, column: 3, scope: !80)
!123 = !DILocation(line: 55, column: 2, scope: !81)
!124 = !DILocation(line: 57, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !44, file: !3, line: 57, column: 6)
!126 = !DILocation(line: 57, column: 15, scope: !125)
!127 = !DILocation(line: 57, column: 18, scope: !125)
!128 = !DILocation(line: 57, column: 25, scope: !125)
!129 = !DILocation(line: 57, column: 28, scope: !125)
!130 = !DILocation(line: 57, column: 6, scope: !44)
!131 = !DILocation(line: 58, column: 21, scope: !125)
!132 = !DILocation(line: 58, column: 13, scope: !125)
!133 = !DILocation(line: 58, column: 11, scope: !125)
!134 = !DILocation(line: 58, column: 3, scope: !125)
!135 = !DILocation(line: 59, column: 6, scope: !136)
!136 = distinct !DILexicalBlock(scope: !44, file: !3, line: 59, column: 6)
!137 = !DILocation(line: 59, column: 14, scope: !136)
!138 = !DILocation(line: 59, column: 26, scope: !136)
!139 = !DILocation(line: 59, column: 18, scope: !136)
!140 = !DILocation(line: 59, column: 6, scope: !44)
!141 = !DILocation(line: 60, column: 10, scope: !136)
!142 = !DILocation(line: 60, column: 3, scope: !136)
!143 = !DILocation(line: 62, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !44, file: !3, line: 62, column: 6)
!145 = !DILocation(line: 62, column: 6, scope: !44)
!146 = !DILocation(line: 63, column: 13, scope: !144)
!147 = !DILocation(line: 63, column: 4, scope: !144)
!148 = !DILocation(line: 63, column: 11, scope: !144)
!149 = !DILocation(line: 63, column: 3, scope: !144)
!150 = !DILocation(line: 65, column: 9, scope: !44)
!151 = !DILocation(line: 65, column: 2, scope: !44)
!152 = distinct !DISubprogram(name: "video_setup", scope: !3, file: !3, line: 79, type: !22, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!153 = !DILocalVariable(name: "options", arg: 1, scope: !152, file: !3, line: 79, type: !25)
!154 = !DILocation(line: 79, column: 37, scope: !152)
!155 = !DILocation(line: 81, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 81, column: 6)
!157 = !DILocation(line: 81, column: 15, scope: !156)
!158 = !DILocation(line: 81, column: 20, scope: !156)
!159 = !DILocation(line: 81, column: 19, scope: !156)
!160 = !DILocation(line: 81, column: 6, scope: !152)
!161 = !DILocation(line: 82, column: 3, scope: !156)
!162 = !DILocation(line: 84, column: 15, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !3, line: 84, column: 6)
!164 = !DILocation(line: 84, column: 7, scope: !163)
!165 = !DILocation(line: 84, column: 6, scope: !152)
!166 = !DILocation(line: 85, column: 10, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 84, column: 38)
!168 = !DILocation(line: 86, column: 3, scope: !167)
!169 = !DILocation(line: 89, column: 13, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !3, line: 89, column: 6)
!171 = !DILocation(line: 89, column: 6, scope: !170)
!172 = !DILocation(line: 89, column: 6, scope: !152)
!173 = !DILocalVariable(name: "i", scope: !174, file: !3, line: 91, type: !24)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 89, column: 28)
!175 = !DILocation(line: 91, column: 7, scope: !174)
!176 = !DILocation(line: 93, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 93, column: 3)
!178 = !DILocation(line: 93, column: 8, scope: !177)
!179 = !DILocation(line: 93, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 93, column: 3)
!181 = !DILocation(line: 93, column: 17, scope: !180)
!182 = !DILocation(line: 93, column: 3, scope: !177)
!183 = !DILocation(line: 94, column: 22, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 94, column: 8)
!185 = distinct !DILexicalBlock(scope: !180, file: !3, line: 93, column: 32)
!186 = !DILocation(line: 94, column: 8, scope: !184)
!187 = !DILocation(line: 94, column: 25, scope: !184)
!188 = !DILocation(line: 94, column: 8, scope: !185)
!189 = !DILocation(line: 95, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !3, line: 94, column: 34)
!191 = !DILocation(line: 95, column: 19, scope: !190)
!192 = !DILocation(line: 95, column: 5, scope: !190)
!193 = !DILocation(line: 95, column: 22, scope: !190)
!194 = !DILocation(line: 96, column: 5, scope: !190)
!195 = !DILocation(line: 98, column: 3, scope: !185)
!196 = !DILocation(line: 93, column: 28, scope: !180)
!197 = !DILocation(line: 93, column: 3, scope: !180)
!198 = distinct !{!198, !182, !199}
!199 = !DILocation(line: 98, column: 3, scope: !177)
!200 = !DILocation(line: 99, column: 2, scope: !174)
!201 = !DILocation(line: 101, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !170, file: !3, line: 99, column: 9)
!203 = !DILocation(line: 101, column: 18, scope: !202)
!204 = !DILocation(line: 89, column: 25, scope: !170)
!205 = !DILabel(scope: !152, name: "out", file: !3, line: 104)
!206 = !DILocation(line: 104, column: 1, scope: !152)
!207 = !DILocation(line: 105, column: 2, scope: !152)
