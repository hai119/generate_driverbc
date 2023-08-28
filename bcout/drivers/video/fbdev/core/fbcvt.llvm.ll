; ModuleID = '../bcout/drivers/video/fbdev/core/fbcvt.llvm.bc'
source_filename = "drivers/video/fbdev/core/fbcvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_cvt_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\016fbcvt: Invalid input parameters\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\016fbcvt: Refresh rate not CVT standard\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\016fbcvt: 60Hz refresh rate advised for reduced blanking\0A\00", align 1
@fb_cvt_vbi_tab = internal constant [8 x i8] c"\04\05\06\07\07\08\09\0A", align 1, !dbg !0
@.str.3 = private unnamed_addr constant [40 x i8] c"\016fbcvt: Aspect ratio not CVT standard\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"fbcvt: %dx%d@%d: CVT Name - \00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Not a CVT standard - %d.%03d Mega Pixel Image\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".%03dM\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\016%s\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fb_find_mode_cvt(%struct.fb_videomode* %mode, i32 %margins, i32 %rb) #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca %struct.fb_videomode*, align 8
  %margins.addr = alloca i32, align 4
  %rb.addr = alloca i32, align 4
  %cvt = alloca %struct.fb_cvt_data, align 4
  store %struct.fb_videomode* %mode, %struct.fb_videomode** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_videomode** %mode.addr, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %margins, i32* %margins.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %margins.addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %rb, i32* %rb.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rb.addr, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data* %cvt, metadata !64, metadata !DIExpression()), !dbg !90
  %0 = bitcast %struct.fb_cvt_data* %cvt to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 92, i1 false), !dbg !91
  %1 = load i32, i32* %margins.addr, align 4, !dbg !92
  %tobool = icmp ne i32 %1, 0, !dbg !92
  br i1 %tobool, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 21, !dbg !95
  %2 = load i32, i32* %flags, align 4, !dbg !96
  %or = or i32 %2, 2, !dbg !96
  store i32 %or, i32* %flags, align 4, !dbg !96
  br label %if.end, !dbg !97

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %rb.addr, align 4, !dbg !98
  %tobool1 = icmp ne i32 %3, 0, !dbg !98
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !100

if.then2:                                         ; preds = %if.end
  %flags3 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 21, !dbg !101
  %4 = load i32, i32* %flags3, align 4, !dbg !102
  %or4 = or i32 %4, 1, !dbg !102
  store i32 %or4, i32* %flags3, align 4, !dbg !102
  br label %if.end5, !dbg !103

if.end5:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !104
  %vmode = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %5, i32 0, i32 12, !dbg !106
  %6 = load i32, i32* %vmode, align 4, !dbg !106
  %and = and i32 %6, 1, !dbg !107
  %tobool6 = icmp ne i32 %and, 0, !dbg !107
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !108

if.then7:                                         ; preds = %if.end5
  %flags8 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 21, !dbg !109
  %7 = load i32, i32* %flags8, align 4, !dbg !110
  %or9 = or i32 %7, 4, !dbg !110
  store i32 %or9, i32* %flags8, align 4, !dbg !110
  br label %if.end10, !dbg !111

if.end10:                                         ; preds = %if.then7, %if.end5
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !112
  %xres = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 2, !dbg !113
  %9 = load i32, i32* %xres, align 4, !dbg !113
  %xres11 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 0, !dbg !114
  store i32 %9, i32* %xres11, align 4, !dbg !115
  %10 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !116
  %yres = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %10, i32 0, i32 3, !dbg !117
  %11 = load i32, i32* %yres, align 8, !dbg !117
  %yres12 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 1, !dbg !118
  store i32 %11, i32* %yres12, align 4, !dbg !119
  %12 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !120
  %refresh = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %12, i32 0, i32 1, !dbg !121
  %13 = load i32, i32* %refresh, align 8, !dbg !121
  %refresh13 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !122
  store i32 %13, i32* %refresh13, align 4, !dbg !123
  %refresh14 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !124
  %14 = load i32, i32* %refresh14, align 4, !dbg !124
  %f_refresh = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 3, !dbg !125
  store i32 %14, i32* %f_refresh, align 4, !dbg !126
  %interlace = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 18, !dbg !127
  store i32 1, i32* %interlace, align 4, !dbg !128
  %xres15 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 0, !dbg !129
  %15 = load i32, i32* %xres15, align 4, !dbg !129
  %tobool16 = icmp ne i32 %15, 0, !dbg !131
  br i1 %tobool16, label %lor.lhs.false, label %if.then22, !dbg !132

lor.lhs.false:                                    ; preds = %if.end10
  %yres17 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 1, !dbg !133
  %16 = load i32, i32* %yres17, align 4, !dbg !133
  %tobool18 = icmp ne i32 %16, 0, !dbg !134
  br i1 %tobool18, label %lor.lhs.false19, label %if.then22, !dbg !135

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %refresh20 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !136
  %17 = load i32, i32* %refresh20, align 4, !dbg !136
  %tobool21 = icmp ne i32 %17, 0, !dbg !137
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !138

if.then22:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %if.end10
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #8, !dbg !139
  store i32 1, i32* %retval, align 4, !dbg !141
  br label %return, !dbg !141

if.end23:                                         ; preds = %lor.lhs.false19
  %refresh24 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !142
  %18 = load i32, i32* %refresh24, align 4, !dbg !142
  %cmp = icmp eq i32 %18, 50, !dbg !144
  br i1 %cmp, label %if.end36, label %lor.lhs.false25, !dbg !145

lor.lhs.false25:                                  ; preds = %if.end23
  %refresh26 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !146
  %19 = load i32, i32* %refresh26, align 4, !dbg !146
  %cmp27 = icmp eq i32 %19, 60, !dbg !147
  br i1 %cmp27, label %if.end36, label %lor.lhs.false28, !dbg !148

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %refresh29 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !149
  %20 = load i32, i32* %refresh29, align 4, !dbg !149
  %cmp30 = icmp eq i32 %20, 70, !dbg !150
  br i1 %cmp30, label %if.end36, label %lor.lhs.false31, !dbg !151

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %refresh32 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !152
  %21 = load i32, i32* %refresh32, align 4, !dbg !152
  %cmp33 = icmp eq i32 %21, 85, !dbg !153
  br i1 %cmp33, label %if.end36, label %if.then34, !dbg !154

if.then34:                                        ; preds = %lor.lhs.false31
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !155
  %status = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 22, !dbg !157
  store i32 1, i32* %status, align 4, !dbg !158
  br label %if.end36, !dbg !159

if.end36:                                         ; preds = %if.then34, %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false25, %if.end23
  %xres37 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 0, !dbg !160
  %22 = load i32, i32* %xres37, align 4, !dbg !161
  %and38 = and i32 %22, -8, !dbg !161
  store i32 %and38, i32* %xres37, align 4, !dbg !161
  %flags39 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 21, !dbg !162
  %23 = load i32, i32* %flags39, align 4, !dbg !162
  %and40 = and i32 %23, 4, !dbg !164
  %tobool41 = icmp ne i32 %and40, 0, !dbg !164
  br i1 %tobool41, label %if.then42, label %if.end45, !dbg !165

if.then42:                                        ; preds = %if.end36
  %interlace43 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 18, !dbg !166
  store i32 2, i32* %interlace43, align 4, !dbg !168
  %f_refresh44 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 3, !dbg !169
  %24 = load i32, i32* %f_refresh44, align 4, !dbg !170
  %mul = mul i32 %24, 2, !dbg !170
  store i32 %mul, i32* %f_refresh44, align 4, !dbg !170
  br label %if.end45, !dbg !171

if.end45:                                         ; preds = %if.then42, %if.end36
  %flags46 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 21, !dbg !172
  %25 = load i32, i32* %flags46, align 4, !dbg !172
  %and47 = and i32 %25, 1, !dbg !174
  %tobool48 = icmp ne i32 %and47, 0, !dbg !174
  br i1 %tobool48, label %if.then49, label %if.end56, !dbg !175

if.then49:                                        ; preds = %if.end45
  %refresh50 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 2, !dbg !176
  %26 = load i32, i32* %refresh50, align 4, !dbg !176
  %cmp51 = icmp ne i32 %26, 60, !dbg !179
  br i1 %cmp51, label %if.then52, label %if.end55, !dbg !180

if.then52:                                        ; preds = %if.then49
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !181
  %status54 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 22, !dbg !183
  store i32 1, i32* %status54, align 4, !dbg !184
  br label %if.end55, !dbg !185

if.end55:                                         ; preds = %if.then52, %if.then49
  br label %if.end56, !dbg !186

if.end56:                                         ; preds = %if.end55, %if.end45
  %flags57 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 21, !dbg !187
  %27 = load i32, i32* %flags57, align 4, !dbg !187
  %and58 = and i32 %27, 2, !dbg !189
  %tobool59 = icmp ne i32 %and58, 0, !dbg !189
  br i1 %tobool59, label %if.then60, label %if.end70, !dbg !190

if.then60:                                        ; preds = %if.end56
  %xres61 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 0, !dbg !191
  %28 = load i32, i32* %xres61, align 4, !dbg !191
  %mul62 = mul i32 %28, 18, !dbg !193
  %div = udiv i32 %mul62, 1000, !dbg !194
  %h_margin = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 16, !dbg !195
  store i32 %div, i32* %h_margin, align 4, !dbg !196
  %h_margin63 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 16, !dbg !197
  %29 = load i32, i32* %h_margin63, align 4, !dbg !198
  %and64 = and i32 %29, -8, !dbg !198
  store i32 %and64, i32* %h_margin63, align 4, !dbg !198
  %yres65 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 1, !dbg !199
  %30 = load i32, i32* %yres65, align 4, !dbg !199
  %interlace66 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 18, !dbg !200
  %31 = load i32, i32* %interlace66, align 4, !dbg !200
  %div67 = udiv i32 %30, %31, !dbg !201
  %mul68 = mul i32 %div67, 18, !dbg !202
  %div69 = udiv i32 %mul68, 1000, !dbg !203
  %v_margin = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 17, !dbg !204
  store i32 %div69, i32* %v_margin, align 4, !dbg !205
  br label %if.end70, !dbg !206

if.end70:                                         ; preds = %if.then60, %if.end56
  %call71 = call i32 @fb_cvt_aspect_ratio(%struct.fb_cvt_data* %cvt) #9, !dbg !207
  %aspect_ratio = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 19, !dbg !208
  store i32 %call71, i32* %aspect_ratio, align 4, !dbg !209
  %xres72 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 0, !dbg !210
  %32 = load i32, i32* %xres72, align 4, !dbg !210
  %h_margin73 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 16, !dbg !211
  %33 = load i32, i32* %h_margin73, align 4, !dbg !211
  %mul74 = mul i32 2, %33, !dbg !212
  %add = add i32 %32, %mul74, !dbg !213
  %active_pixels = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 20, !dbg !214
  store i32 %add, i32* %active_pixels, align 4, !dbg !215
  %call75 = call i32 @fb_cvt_hperiod(%struct.fb_cvt_data* %cvt) #9, !dbg !216
  %hperiod = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 5, !dbg !217
  store i32 %call75, i32* %hperiod, align 4, !dbg !218
  %aspect_ratio76 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 19, !dbg !219
  %34 = load i32, i32* %aspect_ratio76, align 4, !dbg !219
  %idxprom = zext i32 %34 to i64, !dbg !220
  %arrayidx = getelementptr [8 x i8], [8 x i8]* @fb_cvt_vbi_tab, i64 0, i64 %idxprom, !dbg !220
  %35 = load i8, i8* %arrayidx, align 1, !dbg !220
  %conv = zext i8 %35 to i32, !dbg !220
  %vsync = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 10, !dbg !221
  store i32 %conv, i32* %vsync, align 4, !dbg !222
  %call77 = call i32 @fb_cvt_vtotal(%struct.fb_cvt_data* %cvt) #9, !dbg !223
  %vtotal = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 9, !dbg !224
  store i32 %call77, i32* %vtotal, align 4, !dbg !225
  %call78 = call i32 @fb_cvt_hblank(%struct.fb_cvt_data* %cvt) #9, !dbg !226
  %hblank = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 6, !dbg !227
  store i32 %call78, i32* %hblank, align 4, !dbg !228
  %active_pixels79 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 20, !dbg !229
  %36 = load i32, i32* %active_pixels79, align 4, !dbg !229
  %hblank80 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 6, !dbg !230
  %37 = load i32, i32* %hblank80, align 4, !dbg !230
  %add81 = add i32 %36, %37, !dbg !231
  %htotal = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 8, !dbg !232
  store i32 %add81, i32* %htotal, align 4, !dbg !233
  %call82 = call i32 @fb_cvt_hsync(%struct.fb_cvt_data* %cvt) #9, !dbg !234
  %hsync = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 11, !dbg !235
  store i32 %call82, i32* %hsync, align 4, !dbg !236
  %call83 = call i32 @fb_cvt_pixclock(%struct.fb_cvt_data* %cvt) #9, !dbg !237
  %pixclock = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 4, !dbg !238
  store i32 %call83, i32* %pixclock, align 4, !dbg !239
  %pixclock84 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 4, !dbg !240
  %38 = load i32, i32* %pixclock84, align 4, !dbg !240
  %htotal85 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 8, !dbg !241
  %39 = load i32, i32* %htotal85, align 4, !dbg !241
  %div86 = udiv i32 %38, %39, !dbg !242
  %hfreq = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 7, !dbg !243
  store i32 %div86, i32* %hfreq, align 4, !dbg !244
  %hblank87 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 6, !dbg !245
  %40 = load i32, i32* %hblank87, align 4, !dbg !245
  %div88 = udiv i32 %40, 2, !dbg !246
  %h_margin89 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 16, !dbg !247
  %41 = load i32, i32* %h_margin89, align 4, !dbg !247
  %add90 = add i32 %div88, %41, !dbg !248
  %h_back_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 13, !dbg !249
  store i32 %add90, i32* %h_back_porch, align 4, !dbg !250
  %hblank91 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 6, !dbg !251
  %42 = load i32, i32* %hblank91, align 4, !dbg !251
  %hsync92 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 11, !dbg !252
  %43 = load i32, i32* %hsync92, align 4, !dbg !252
  %sub = sub i32 %42, %43, !dbg !253
  %h_back_porch93 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 13, !dbg !254
  %44 = load i32, i32* %h_back_porch93, align 4, !dbg !254
  %sub94 = sub i32 %sub, %44, !dbg !255
  %h_margin95 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 16, !dbg !256
  %45 = load i32, i32* %h_margin95, align 4, !dbg !256
  %mul96 = mul i32 2, %45, !dbg !257
  %add97 = add i32 %sub94, %mul96, !dbg !258
  %h_front_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 12, !dbg !259
  store i32 %add97, i32* %h_front_porch, align 4, !dbg !260
  %v_margin98 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 17, !dbg !261
  %46 = load i32, i32* %v_margin98, align 4, !dbg !261
  %add99 = add i32 3, %46, !dbg !262
  %v_front_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 14, !dbg !263
  store i32 %add99, i32* %v_front_porch, align 4, !dbg !264
  %vtotal100 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 9, !dbg !265
  %47 = load i32, i32* %vtotal100, align 4, !dbg !265
  %yres101 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 1, !dbg !266
  %48 = load i32, i32* %yres101, align 4, !dbg !266
  %interlace102 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 18, !dbg !267
  %49 = load i32, i32* %interlace102, align 4, !dbg !267
  %div103 = udiv i32 %48, %49, !dbg !268
  %sub104 = sub i32 %47, %div103, !dbg !269
  %v_front_porch105 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 14, !dbg !270
  %50 = load i32, i32* %v_front_porch105, align 4, !dbg !270
  %sub106 = sub i32 %sub104, %50, !dbg !271
  %vsync107 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 10, !dbg !272
  %51 = load i32, i32* %vsync107, align 4, !dbg !272
  %sub108 = sub i32 %sub106, %51, !dbg !273
  %v_back_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %cvt, i32 0, i32 15, !dbg !274
  store i32 %sub108, i32* %v_back_porch, align 4, !dbg !275
  call void @fb_cvt_print_name(%struct.fb_cvt_data* %cvt) #9, !dbg !276
  %52 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !277
  call void @fb_cvt_convert_to_mode(%struct.fb_cvt_data* %cvt, %struct.fb_videomode* %52) #9, !dbg !278
  store i32 0, i32* %retval, align 4, !dbg !279
  br label %return, !dbg !279

return:                                           ; preds = %if.end70, %if.then22
  %53 = load i32, i32* %retval, align 4, !dbg !280
  ret i32 %53, !dbg !280
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_aspect_ratio(%struct.fb_cvt_data* %cvt) #0 !dbg !281 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %aspect = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %xres, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !289
  %xres1 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 0, !dbg !290
  %1 = load i32, i32* %xres1, align 4, !dbg !290
  store i32 %1, i32* %xres, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata i32* %yres, metadata !291, metadata !DIExpression()), !dbg !292
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !293
  %yres2 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %2, i32 0, i32 1, !dbg !294
  %3 = load i32, i32* %yres2, align 4, !dbg !294
  store i32 %3, i32* %yres, align 4, !dbg !292
  call void @llvm.dbg.declare(metadata i32* %aspect, metadata !295, metadata !DIExpression()), !dbg !296
  store i32 -1, i32* %aspect, align 4, !dbg !296
  %4 = load i32, i32* %xres, align 4, !dbg !297
  %5 = load i32, i32* %yres, align 4, !dbg !299
  %mul = mul i32 %5, 4, !dbg !300
  %div = udiv i32 %mul, 3, !dbg !301
  %cmp = icmp eq i32 %4, %div, !dbg !302
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !303

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %yres, align 4, !dbg !304
  %mul3 = mul i32 %6, 4, !dbg !305
  %rem = urem i32 %mul3, 3, !dbg !306
  %tobool = icmp ne i32 %rem, 0, !dbg !306
  br i1 %tobool, label %if.else, label %if.then, !dbg !307

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %aspect, align 4, !dbg !308
  br label %if.end43, !dbg !309

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %xres, align 4, !dbg !310
  %8 = load i32, i32* %yres, align 4, !dbg !312
  %mul4 = mul i32 %8, 16, !dbg !313
  %div5 = udiv i32 %mul4, 9, !dbg !314
  %cmp6 = icmp eq i32 %7, %div5, !dbg !315
  br i1 %cmp6, label %land.lhs.true7, label %if.else12, !dbg !316

land.lhs.true7:                                   ; preds = %if.else
  %9 = load i32, i32* %yres, align 4, !dbg !317
  %mul8 = mul i32 %9, 16, !dbg !318
  %rem9 = urem i32 %mul8, 9, !dbg !319
  %tobool10 = icmp ne i32 %rem9, 0, !dbg !319
  br i1 %tobool10, label %if.else12, label %if.then11, !dbg !320

if.then11:                                        ; preds = %land.lhs.true7
  store i32 1, i32* %aspect, align 4, !dbg !321
  br label %if.end42, !dbg !322

if.else12:                                        ; preds = %land.lhs.true7, %if.else
  %10 = load i32, i32* %xres, align 4, !dbg !323
  %11 = load i32, i32* %yres, align 4, !dbg !325
  %mul13 = mul i32 %11, 16, !dbg !326
  %div14 = udiv i32 %mul13, 10, !dbg !327
  %cmp15 = icmp eq i32 %10, %div14, !dbg !328
  br i1 %cmp15, label %land.lhs.true16, label %if.else21, !dbg !329

land.lhs.true16:                                  ; preds = %if.else12
  %12 = load i32, i32* %yres, align 4, !dbg !330
  %mul17 = mul i32 %12, 16, !dbg !331
  %rem18 = urem i32 %mul17, 10, !dbg !332
  %tobool19 = icmp ne i32 %rem18, 0, !dbg !332
  br i1 %tobool19, label %if.else21, label %if.then20, !dbg !333

if.then20:                                        ; preds = %land.lhs.true16
  store i32 2, i32* %aspect, align 4, !dbg !334
  br label %if.end41, !dbg !335

if.else21:                                        ; preds = %land.lhs.true16, %if.else12
  %13 = load i32, i32* %xres, align 4, !dbg !336
  %14 = load i32, i32* %yres, align 4, !dbg !338
  %mul22 = mul i32 %14, 5, !dbg !339
  %div23 = udiv i32 %mul22, 4, !dbg !340
  %cmp24 = icmp eq i32 %13, %div23, !dbg !341
  br i1 %cmp24, label %land.lhs.true25, label %if.else30, !dbg !342

land.lhs.true25:                                  ; preds = %if.else21
  %15 = load i32, i32* %yres, align 4, !dbg !343
  %mul26 = mul i32 %15, 5, !dbg !344
  %rem27 = urem i32 %mul26, 4, !dbg !345
  %tobool28 = icmp ne i32 %rem27, 0, !dbg !345
  br i1 %tobool28, label %if.else30, label %if.then29, !dbg !346

if.then29:                                        ; preds = %land.lhs.true25
  store i32 3, i32* %aspect, align 4, !dbg !347
  br label %if.end40, !dbg !348

if.else30:                                        ; preds = %land.lhs.true25, %if.else21
  %16 = load i32, i32* %xres, align 4, !dbg !349
  %17 = load i32, i32* %yres, align 4, !dbg !351
  %mul31 = mul i32 %17, 15, !dbg !352
  %div32 = udiv i32 %mul31, 9, !dbg !353
  %cmp33 = icmp eq i32 %16, %div32, !dbg !354
  br i1 %cmp33, label %land.lhs.true34, label %if.else39, !dbg !355

land.lhs.true34:                                  ; preds = %if.else30
  %18 = load i32, i32* %yres, align 4, !dbg !356
  %mul35 = mul i32 %18, 15, !dbg !357
  %rem36 = urem i32 %mul35, 9, !dbg !358
  %tobool37 = icmp ne i32 %rem36, 0, !dbg !358
  br i1 %tobool37, label %if.else39, label %if.then38, !dbg !359

if.then38:                                        ; preds = %land.lhs.true34
  store i32 4, i32* %aspect, align 4, !dbg !360
  br label %if.end, !dbg !361

if.else39:                                        ; preds = %land.lhs.true34, %if.else30
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !362
  store i32 7, i32* %aspect, align 4, !dbg !364
  %19 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !365
  %status = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %19, i32 0, i32 22, !dbg !366
  store i32 1, i32* %status, align 4, !dbg !367
  br label %if.end

if.end:                                           ; preds = %if.else39, %if.then38
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then29
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then20
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then11
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then
  %20 = load i32, i32* %aspect, align 4, !dbg !368
  ret i32 %20, !dbg !369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_hperiod(%struct.fb_cvt_data* %cvt) #0 !dbg !370 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %num = alloca i32, align 4
  %den = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %num, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !375
  %f_refresh = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 3, !dbg !376
  %1 = load i32, i32* %f_refresh, align 4, !dbg !376
  %div = udiv i32 1000000000, %1, !dbg !377
  store i32 %div, i32* %num, align 4, !dbg !374
  call void @llvm.dbg.declare(metadata i32* %den, metadata !378, metadata !DIExpression()), !dbg !379
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !380
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %2, i32 0, i32 21, !dbg !382
  %3 = load i32, i32* %flags, align 4, !dbg !382
  %and = and i32 %3, 1, !dbg !383
  %tobool = icmp ne i32 %and, 0, !dbg !383
  br i1 %tobool, label %if.then, label %if.else, !dbg !384

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %num, align 4, !dbg !385
  %sub = sub i32 %4, 460000, !dbg !385
  store i32 %sub, i32* %num, align 4, !dbg !385
  %5 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !387
  %yres = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %5, i32 0, i32 1, !dbg !388
  %6 = load i32, i32* %yres, align 4, !dbg !388
  %7 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !389
  %interlace = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %7, i32 0, i32 18, !dbg !390
  %8 = load i32, i32* %interlace, align 4, !dbg !390
  %div1 = udiv i32 %6, %8, !dbg !391
  %9 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !392
  %v_margin = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %9, i32 0, i32 17, !dbg !393
  %10 = load i32, i32* %v_margin, align 4, !dbg !393
  %mul = mul i32 2, %10, !dbg !394
  %add = add i32 %div1, %mul, !dbg !395
  %mul2 = mul i32 2, %add, !dbg !396
  store i32 %mul2, i32* %den, align 4, !dbg !397
  br label %if.end, !dbg !398

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %num, align 4, !dbg !399
  %sub3 = sub i32 %11, 550000, !dbg !399
  store i32 %sub3, i32* %num, align 4, !dbg !399
  %12 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !401
  %yres4 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %12, i32 0, i32 1, !dbg !402
  %13 = load i32, i32* %yres4, align 4, !dbg !402
  %14 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !403
  %interlace5 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %14, i32 0, i32 18, !dbg !404
  %15 = load i32, i32* %interlace5, align 4, !dbg !404
  %div6 = udiv i32 %13, %15, !dbg !405
  %16 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !406
  %v_margin7 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %16, i32 0, i32 17, !dbg !407
  %17 = load i32, i32* %v_margin7, align 4, !dbg !407
  %mul8 = mul i32 %17, 2, !dbg !408
  %add9 = add i32 %div6, %mul8, !dbg !409
  %add10 = add i32 %add9, 3, !dbg !410
  %18 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !411
  %interlace11 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %18, i32 0, i32 18, !dbg !412
  %19 = load i32, i32* %interlace11, align 4, !dbg !412
  %div12 = udiv i32 %19, 2, !dbg !413
  %add13 = add i32 %add10, %div12, !dbg !414
  %mul14 = mul i32 2, %add13, !dbg !415
  store i32 %mul14, i32* %den, align 4, !dbg !416
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %num, align 4, !dbg !417
  %21 = load i32, i32* %den, align 4, !dbg !418
  %div15 = udiv i32 %20, %21, !dbg !419
  %mul16 = mul i32 2, %div15, !dbg !420
  ret i32 %mul16, !dbg !421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_vtotal(%struct.fb_cvt_data* %cvt) #0 !dbg !422 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %vtotal = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %vtotal, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !427
  %yres = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 1, !dbg !428
  %1 = load i32, i32* %yres, align 4, !dbg !428
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !429
  %interlace = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %2, i32 0, i32 18, !dbg !430
  %3 = load i32, i32* %interlace, align 4, !dbg !430
  %div = udiv i32 %1, %3, !dbg !431
  store i32 %div, i32* %vtotal, align 4, !dbg !426
  %4 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !432
  %v_margin = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %4, i32 0, i32 17, !dbg !433
  %5 = load i32, i32* %v_margin, align 4, !dbg !433
  %mul = mul i32 2, %5, !dbg !434
  %6 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !435
  %interlace1 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %6, i32 0, i32 18, !dbg !436
  %7 = load i32, i32* %interlace1, align 4, !dbg !436
  %div2 = udiv i32 %7, 2, !dbg !437
  %add = add i32 %mul, %div2, !dbg !438
  %8 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !439
  %call = call i32 @fb_cvt_vbi_lines(%struct.fb_cvt_data* %8) #9, !dbg !440
  %add3 = add i32 %add, %call, !dbg !441
  %9 = load i32, i32* %vtotal, align 4, !dbg !442
  %add4 = add i32 %9, %add3, !dbg !442
  store i32 %add4, i32* %vtotal, align 4, !dbg !442
  %10 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !443
  %interlace5 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %10, i32 0, i32 18, !dbg !444
  %11 = load i32, i32* %interlace5, align 4, !dbg !444
  %div6 = udiv i32 %11, 2, !dbg !445
  %12 = load i32, i32* %vtotal, align 4, !dbg !446
  %or = or i32 %12, %div6, !dbg !446
  store i32 %or, i32* %vtotal, align 4, !dbg !446
  %13 = load i32, i32* %vtotal, align 4, !dbg !447
  ret i32 %13, !dbg !448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_hblank(%struct.fb_cvt_data* %cvt) #0 !dbg !449 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %hblank = alloca i32, align 4
  %ideal_duty_cycle = alloca i32, align 4
  %active_pixels = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i32* %hblank, metadata !452, metadata !DIExpression()), !dbg !453
  store i32 0, i32* %hblank, align 4, !dbg !453
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !454
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 21, !dbg !456
  %1 = load i32, i32* %flags, align 4, !dbg !456
  %and = and i32 %1, 1, !dbg !457
  %tobool = icmp ne i32 %and, 0, !dbg !457
  br i1 %tobool, label %if.then, label %if.else, !dbg !458

if.then:                                          ; preds = %entry
  store i32 160, i32* %hblank, align 4, !dbg !459
  br label %if.end6, !dbg !460

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %ideal_duty_cycle, metadata !461, metadata !DIExpression()), !dbg !463
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !464
  %call = call i32 @fb_cvt_ideal_duty_cycle(%struct.fb_cvt_data* %2) #9, !dbg !465
  store i32 %call, i32* %ideal_duty_cycle, align 4, !dbg !463
  call void @llvm.dbg.declare(metadata i32* %active_pixels, metadata !466, metadata !DIExpression()), !dbg !467
  %3 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !468
  %active_pixels1 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %3, i32 0, i32 20, !dbg !469
  %4 = load i32, i32* %active_pixels1, align 4, !dbg !469
  store i32 %4, i32* %active_pixels, align 4, !dbg !467
  %5 = load i32, i32* %ideal_duty_cycle, align 4, !dbg !470
  %cmp = icmp ult i32 %5, 20000, !dbg !472
  br i1 %cmp, label %if.then2, label %if.else3, !dbg !473

if.then2:                                         ; preds = %if.else
  %6 = load i32, i32* %active_pixels, align 4, !dbg !474
  %mul = mul i32 %6, 20000, !dbg !475
  %div = udiv i32 %mul, 80000, !dbg !476
  store i32 %div, i32* %hblank, align 4, !dbg !477
  br label %if.end, !dbg !478

if.else3:                                         ; preds = %if.else
  %7 = load i32, i32* %active_pixels, align 4, !dbg !479
  %8 = load i32, i32* %ideal_duty_cycle, align 4, !dbg !481
  %mul4 = mul i32 %7, %8, !dbg !482
  %9 = load i32, i32* %ideal_duty_cycle, align 4, !dbg !483
  %sub = sub i32 100000, %9, !dbg !484
  %div5 = udiv i32 %mul4, %sub, !dbg !485
  store i32 %div5, i32* %hblank, align 4, !dbg !486
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %10 = load i32, i32* %hblank, align 4, !dbg !487
  %and7 = and i32 %10, -16, !dbg !487
  store i32 %and7, i32* %hblank, align 4, !dbg !487
  %11 = load i32, i32* %hblank, align 4, !dbg !488
  ret i32 %11, !dbg !489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_hsync(%struct.fb_cvt_data* %cvt) #0 !dbg !490 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %hsync = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i32* %hsync, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !495
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 21, !dbg !497
  %1 = load i32, i32* %flags, align 4, !dbg !497
  %and = and i32 %1, 1, !dbg !498
  %tobool = icmp ne i32 %and, 0, !dbg !498
  br i1 %tobool, label %if.then, label %if.else, !dbg !499

if.then:                                          ; preds = %entry
  store i32 32, i32* %hsync, align 4, !dbg !500
  br label %if.end, !dbg !501

if.else:                                          ; preds = %entry
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !502
  %htotal = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %2, i32 0, i32 8, !dbg !503
  %3 = load i32, i32* %htotal, align 4, !dbg !503
  %mul = mul i32 8, %3, !dbg !504
  %div = udiv i32 %mul, 100, !dbg !505
  store i32 %div, i32* %hsync, align 4, !dbg !506
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %hsync, align 4, !dbg !507
  %and1 = and i32 %4, -8, !dbg !507
  store i32 %and1, i32* %hsync, align 4, !dbg !507
  %5 = load i32, i32* %hsync, align 4, !dbg !508
  ret i32 %5, !dbg !509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_pixclock(%struct.fb_cvt_data* %cvt) #0 !dbg !510 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %pixclock = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %pixclock, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !515
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 21, !dbg !517
  %1 = load i32, i32* %flags, align 4, !dbg !517
  %and = and i32 %1, 1, !dbg !518
  %tobool = icmp ne i32 %and, 0, !dbg !518
  br i1 %tobool, label %if.then, label %if.else, !dbg !519

if.then:                                          ; preds = %entry
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !520
  %f_refresh = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %2, i32 0, i32 3, !dbg !521
  %3 = load i32, i32* %f_refresh, align 4, !dbg !521
  %4 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !522
  %vtotal = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %4, i32 0, i32 9, !dbg !523
  %5 = load i32, i32* %vtotal, align 4, !dbg !523
  %mul = mul i32 %3, %5, !dbg !524
  %6 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !525
  %htotal = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %6, i32 0, i32 8, !dbg !526
  %7 = load i32, i32* %htotal, align 4, !dbg !526
  %mul1 = mul i32 %mul, %7, !dbg !527
  %div = udiv i32 %mul1, 1000, !dbg !528
  store i32 %div, i32* %pixclock, align 4, !dbg !529
  br label %if.end, !dbg !530

if.else:                                          ; preds = %entry
  %8 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !531
  %htotal2 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %8, i32 0, i32 8, !dbg !532
  %9 = load i32, i32* %htotal2, align 4, !dbg !532
  %mul3 = mul i32 %9, 1000000, !dbg !533
  %10 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !534
  %hperiod = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %10, i32 0, i32 5, !dbg !535
  %11 = load i32, i32* %hperiod, align 4, !dbg !535
  %div4 = udiv i32 %mul3, %11, !dbg !536
  store i32 %div4, i32* %pixclock, align 4, !dbg !537
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %pixclock, align 4, !dbg !538
  %div5 = udiv i32 %12, 250, !dbg !538
  store i32 %div5, i32* %pixclock, align 4, !dbg !538
  %13 = load i32, i32* %pixclock, align 4, !dbg !539
  %mul6 = mul i32 %13, 250, !dbg !539
  store i32 %mul6, i32* %pixclock, align 4, !dbg !539
  %14 = load i32, i32* %pixclock, align 4, !dbg !540
  %mul7 = mul i32 %14, 1000, !dbg !540
  store i32 %mul7, i32* %pixclock, align 4, !dbg !540
  %15 = load i32, i32* %pixclock, align 4, !dbg !541
  ret i32 %15, !dbg !542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fb_cvt_print_name(%struct.fb_cvt_data* %cvt) #0 !dbg !543 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %pixcount = alloca i32, align 4
  %pixcount_mod = alloca i32, align 4
  %cnt = alloca i32, align 4
  %offset = alloca i32, align 4
  %read = alloca i32, align 4
  %buf = alloca i8*, align 8
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata i32* %pixcount, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.declare(metadata i32* %pixcount_mod, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 255, i32* %cnt, align 4, !dbg !553
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !554, metadata !DIExpression()), !dbg !555
  store i32 0, i32* %offset, align 4, !dbg !555
  call void @llvm.dbg.declare(metadata i32* %read, metadata !556, metadata !DIExpression()), !dbg !557
  store i32 0, i32* %read, align 4, !dbg !557
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !558, metadata !DIExpression()), !dbg !562
  %call = call i8* @kzalloc(i64 256, i32 3264) #9, !dbg !563
  store i8* %call, i8** %buf, align 8, !dbg !562
  %0 = load i8*, i8** %buf, align 8, !dbg !564
  %tobool = icmp ne i8* %0, null, !dbg !564
  br i1 %tobool, label %if.end, label %if.then, !dbg !566

if.then:                                          ; preds = %entry
  br label %return, !dbg !567

if.end:                                           ; preds = %entry
  %1 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !568
  %xres = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %1, i32 0, i32 0, !dbg !569
  %2 = load i32, i32* %xres, align 4, !dbg !569
  %3 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !570
  %yres = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %3, i32 0, i32 1, !dbg !571
  %4 = load i32, i32* %yres, align 4, !dbg !571
  %5 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !572
  %interlace = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %5, i32 0, i32 18, !dbg !573
  %6 = load i32, i32* %interlace, align 4, !dbg !573
  %div = udiv i32 %4, %6, !dbg !574
  %mul = mul i32 %2, %div, !dbg !575
  %div1 = udiv i32 %mul, 1000000, !dbg !576
  store i32 %div1, i32* %pixcount, align 4, !dbg !577
  %7 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !578
  %xres2 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %7, i32 0, i32 0, !dbg !579
  %8 = load i32, i32* %xres2, align 4, !dbg !579
  %9 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !580
  %yres3 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %9, i32 0, i32 1, !dbg !581
  %10 = load i32, i32* %yres3, align 4, !dbg !581
  %11 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !582
  %interlace4 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %11, i32 0, i32 18, !dbg !583
  %12 = load i32, i32* %interlace4, align 4, !dbg !583
  %div5 = udiv i32 %10, %12, !dbg !584
  %mul6 = mul i32 %8, %div5, !dbg !585
  %rem = urem i32 %mul6, 1000000, !dbg !586
  store i32 %rem, i32* %pixcount_mod, align 4, !dbg !587
  %13 = load i32, i32* %pixcount_mod, align 4, !dbg !588
  %div7 = udiv i32 %13, 1000, !dbg !588
  store i32 %div7, i32* %pixcount_mod, align 4, !dbg !588
  %14 = load i8*, i8** %buf, align 8, !dbg !589
  %15 = load i32, i32* %offset, align 4, !dbg !590
  %idx.ext = sext i32 %15 to i64, !dbg !591
  %add.ptr = getelementptr i8, i8* %14, i64 %idx.ext, !dbg !591
  %16 = load i32, i32* %cnt, align 4, !dbg !592
  %conv = sext i32 %16 to i64, !dbg !592
  %17 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !593
  %xres8 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %17, i32 0, i32 0, !dbg !594
  %18 = load i32, i32* %xres8, align 4, !dbg !594
  %19 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !595
  %yres9 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %19, i32 0, i32 1, !dbg !596
  %20 = load i32, i32* %yres9, align 4, !dbg !596
  %21 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !597
  %refresh = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %21, i32 0, i32 2, !dbg !598
  %22 = load i32, i32* %refresh, align 4, !dbg !598
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr, i64 %conv, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %20, i32 %22) #9, !dbg !599
  store i32 %call10, i32* %read, align 4, !dbg !600
  %23 = load i32, i32* %read, align 4, !dbg !601
  %24 = load i32, i32* %offset, align 4, !dbg !602
  %add = add i32 %24, %23, !dbg !602
  store i32 %add, i32* %offset, align 4, !dbg !602
  %25 = load i32, i32* %read, align 4, !dbg !603
  %26 = load i32, i32* %cnt, align 4, !dbg !604
  %sub = sub i32 %26, %25, !dbg !604
  store i32 %sub, i32* %cnt, align 4, !dbg !604
  %27 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !605
  %status = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %27, i32 0, i32 22, !dbg !607
  %28 = load i32, i32* %status, align 4, !dbg !607
  %tobool11 = icmp ne i32 %28, 0, !dbg !605
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !608

if.then12:                                        ; preds = %if.end
  %29 = load i8*, i8** %buf, align 8, !dbg !609
  %30 = load i32, i32* %offset, align 4, !dbg !610
  %idx.ext13 = sext i32 %30 to i64, !dbg !611
  %add.ptr14 = getelementptr i8, i8* %29, i64 %idx.ext13, !dbg !611
  %31 = load i32, i32* %cnt, align 4, !dbg !612
  %conv15 = sext i32 %31 to i64, !dbg !612
  %32 = load i32, i32* %pixcount, align 4, !dbg !613
  %33 = load i32, i32* %pixcount_mod, align 4, !dbg !614
  %call16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr14, i64 %conv15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %33) #9, !dbg !615
  br label %if.end84, !dbg !615

if.else:                                          ; preds = %if.end
  %34 = load i32, i32* %pixcount, align 4, !dbg !616
  %tobool17 = icmp ne i32 %34, 0, !dbg !616
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !619

if.then18:                                        ; preds = %if.else
  %35 = load i8*, i8** %buf, align 8, !dbg !620
  %36 = load i32, i32* %offset, align 4, !dbg !622
  %idx.ext19 = sext i32 %36 to i64, !dbg !623
  %add.ptr20 = getelementptr i8, i8* %35, i64 %idx.ext19, !dbg !623
  %37 = load i32, i32* %cnt, align 4, !dbg !624
  %conv21 = sext i32 %37 to i64, !dbg !624
  %38 = load i32, i32* %pixcount, align 4, !dbg !625
  %call22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr20, i64 %conv21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %38) #9, !dbg !626
  store i32 %call22, i32* %read, align 4, !dbg !627
  %39 = load i32, i32* %read, align 4, !dbg !628
  %40 = load i32, i32* %cnt, align 4, !dbg !629
  %sub23 = sub i32 %40, %39, !dbg !629
  store i32 %sub23, i32* %cnt, align 4, !dbg !629
  %41 = load i32, i32* %read, align 4, !dbg !630
  %42 = load i32, i32* %offset, align 4, !dbg !631
  %add24 = add i32 %42, %41, !dbg !631
  store i32 %add24, i32* %offset, align 4, !dbg !631
  br label %if.end25, !dbg !632

if.end25:                                         ; preds = %if.then18, %if.else
  %43 = load i8*, i8** %buf, align 8, !dbg !633
  %44 = load i32, i32* %offset, align 4, !dbg !634
  %idx.ext26 = sext i32 %44 to i64, !dbg !635
  %add.ptr27 = getelementptr i8, i8* %43, i64 %idx.ext26, !dbg !635
  %45 = load i32, i32* %cnt, align 4, !dbg !636
  %conv28 = sext i32 %45 to i64, !dbg !636
  %46 = load i32, i32* %pixcount_mod, align 4, !dbg !637
  %call29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr27, i64 %conv28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %46) #9, !dbg !638
  store i32 %call29, i32* %read, align 4, !dbg !639
  %47 = load i32, i32* %read, align 4, !dbg !640
  %48 = load i32, i32* %cnt, align 4, !dbg !641
  %sub30 = sub i32 %48, %47, !dbg !641
  store i32 %sub30, i32* %cnt, align 4, !dbg !641
  %49 = load i32, i32* %read, align 4, !dbg !642
  %50 = load i32, i32* %offset, align 4, !dbg !643
  %add31 = add i32 %50, %49, !dbg !643
  store i32 %add31, i32* %offset, align 4, !dbg !643
  %51 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !644
  %aspect_ratio = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %51, i32 0, i32 19, !dbg !646
  %52 = load i32, i32* %aspect_ratio, align 4, !dbg !646
  %cmp = icmp eq i32 %52, 0, !dbg !647
  br i1 %cmp, label %if.then33, label %if.else38, !dbg !648

if.then33:                                        ; preds = %if.end25
  %53 = load i8*, i8** %buf, align 8, !dbg !649
  %54 = load i32, i32* %offset, align 4, !dbg !650
  %idx.ext34 = sext i32 %54 to i64, !dbg !651
  %add.ptr35 = getelementptr i8, i8* %53, i64 %idx.ext34, !dbg !651
  %55 = load i32, i32* %cnt, align 4, !dbg !652
  %conv36 = sext i32 %55 to i64, !dbg !652
  %call37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr35, i64 %conv36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !653
  store i32 %call37, i32* %read, align 4, !dbg !654
  br label %if.end72, !dbg !655

if.else38:                                        ; preds = %if.end25
  %56 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !656
  %aspect_ratio39 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %56, i32 0, i32 19, !dbg !658
  %57 = load i32, i32* %aspect_ratio39, align 4, !dbg !658
  %cmp40 = icmp eq i32 %57, 3, !dbg !659
  br i1 %cmp40, label %if.then42, label %if.else47, !dbg !660

if.then42:                                        ; preds = %if.else38
  %58 = load i8*, i8** %buf, align 8, !dbg !661
  %59 = load i32, i32* %offset, align 4, !dbg !662
  %idx.ext43 = sext i32 %59 to i64, !dbg !663
  %add.ptr44 = getelementptr i8, i8* %58, i64 %idx.ext43, !dbg !663
  %60 = load i32, i32* %cnt, align 4, !dbg !664
  %conv45 = sext i32 %60 to i64, !dbg !664
  %call46 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr44, i64 %conv45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !665
  store i32 %call46, i32* %read, align 4, !dbg !666
  br label %if.end71, !dbg !667

if.else47:                                        ; preds = %if.else38
  %61 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !668
  %aspect_ratio48 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %61, i32 0, i32 19, !dbg !670
  %62 = load i32, i32* %aspect_ratio48, align 4, !dbg !670
  %cmp49 = icmp eq i32 %62, 1, !dbg !671
  br i1 %cmp49, label %if.then54, label %lor.lhs.false, !dbg !672

lor.lhs.false:                                    ; preds = %if.else47
  %63 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !673
  %aspect_ratio51 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %63, i32 0, i32 19, !dbg !674
  %64 = load i32, i32* %aspect_ratio51, align 4, !dbg !674
  %cmp52 = icmp eq i32 %64, 4, !dbg !675
  br i1 %cmp52, label %if.then54, label %if.else59, !dbg !676

if.then54:                                        ; preds = %lor.lhs.false, %if.else47
  %65 = load i8*, i8** %buf, align 8, !dbg !677
  %66 = load i32, i32* %offset, align 4, !dbg !678
  %idx.ext55 = sext i32 %66 to i64, !dbg !679
  %add.ptr56 = getelementptr i8, i8* %65, i64 %idx.ext55, !dbg !679
  %67 = load i32, i32* %cnt, align 4, !dbg !680
  %conv57 = sext i32 %67 to i64, !dbg !680
  %call58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr56, i64 %conv57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !681
  store i32 %call58, i32* %read, align 4, !dbg !682
  br label %if.end70, !dbg !683

if.else59:                                        ; preds = %lor.lhs.false
  %68 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !684
  %aspect_ratio60 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %68, i32 0, i32 19, !dbg !686
  %69 = load i32, i32* %aspect_ratio60, align 4, !dbg !686
  %cmp61 = icmp eq i32 %69, 2, !dbg !687
  br i1 %cmp61, label %if.then63, label %if.else68, !dbg !688

if.then63:                                        ; preds = %if.else59
  %70 = load i8*, i8** %buf, align 8, !dbg !689
  %71 = load i32, i32* %offset, align 4, !dbg !690
  %idx.ext64 = sext i32 %71 to i64, !dbg !691
  %add.ptr65 = getelementptr i8, i8* %70, i64 %idx.ext64, !dbg !691
  %72 = load i32, i32* %cnt, align 4, !dbg !692
  %conv66 = sext i32 %72 to i64, !dbg !692
  %call67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr65, i64 %conv66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !693
  store i32 %call67, i32* %read, align 4, !dbg !694
  br label %if.end69, !dbg !695

if.else68:                                        ; preds = %if.else59
  store i32 0, i32* %read, align 4, !dbg !696
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then54
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then42
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then33
  %73 = load i32, i32* %read, align 4, !dbg !697
  %74 = load i32, i32* %cnt, align 4, !dbg !698
  %sub73 = sub i32 %74, %73, !dbg !698
  store i32 %sub73, i32* %cnt, align 4, !dbg !698
  %75 = load i32, i32* %read, align 4, !dbg !699
  %76 = load i32, i32* %offset, align 4, !dbg !700
  %add74 = add i32 %76, %75, !dbg !700
  store i32 %add74, i32* %offset, align 4, !dbg !700
  %77 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !701
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %77, i32 0, i32 21, !dbg !703
  %78 = load i32, i32* %flags, align 4, !dbg !703
  %and = and i32 %78, 1, !dbg !704
  %tobool75 = icmp ne i32 %and, 0, !dbg !704
  br i1 %tobool75, label %if.then76, label %if.end83, !dbg !705

if.then76:                                        ; preds = %if.end72
  %79 = load i8*, i8** %buf, align 8, !dbg !706
  %80 = load i32, i32* %offset, align 4, !dbg !708
  %idx.ext77 = sext i32 %80 to i64, !dbg !709
  %add.ptr78 = getelementptr i8, i8* %79, i64 %idx.ext77, !dbg !709
  %81 = load i32, i32* %cnt, align 4, !dbg !710
  %conv79 = sext i32 %81 to i64, !dbg !710
  %call80 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %add.ptr78, i64 %conv79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !711
  store i32 %call80, i32* %read, align 4, !dbg !712
  %82 = load i32, i32* %read, align 4, !dbg !713
  %83 = load i32, i32* %cnt, align 4, !dbg !714
  %sub81 = sub i32 %83, %82, !dbg !714
  store i32 %sub81, i32* %cnt, align 4, !dbg !714
  %84 = load i32, i32* %read, align 4, !dbg !715
  %85 = load i32, i32* %offset, align 4, !dbg !716
  %add82 = add i32 %85, %84, !dbg !716
  store i32 %add82, i32* %offset, align 4, !dbg !716
  br label %if.end83, !dbg !717

if.end83:                                         ; preds = %if.then76, %if.end72
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then12
  %86 = load i8*, i8** %buf, align 8, !dbg !718
  %call85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %86) #8, !dbg !719
  %87 = load i8*, i8** %buf, align 8, !dbg !720
  call void @kfree(i8* %87) #9, !dbg !721
  br label %return, !dbg !722

return:                                           ; preds = %if.end84, %if.then
  ret void, !dbg !722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fb_cvt_convert_to_mode(%struct.fb_cvt_data* %cvt, %struct.fb_videomode* %mode) #0 !dbg !723 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %mode.addr = alloca %struct.fb_videomode*, align 8
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store %struct.fb_videomode* %mode, %struct.fb_videomode** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_videomode** %mode.addr, metadata !728, metadata !DIExpression()), !dbg !729
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !730
  %f_refresh = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 3, !dbg !731
  %1 = load i32, i32* %f_refresh, align 4, !dbg !731
  %2 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !732
  %refresh = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %2, i32 0, i32 1, !dbg !733
  store i32 %1, i32* %refresh, align 8, !dbg !734
  %3 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !735
  %pixclock = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %3, i32 0, i32 4, !dbg !735
  %4 = load i32, i32* %pixclock, align 4, !dbg !735
  %div = udiv i32 %4, 1000, !dbg !735
  %conv = zext i32 %div to i64, !dbg !735
  %div1 = udiv i64 1000000000, %conv, !dbg !735
  %conv2 = trunc i64 %div1 to i32, !dbg !735
  %5 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !736
  %pixclock3 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %5, i32 0, i32 4, !dbg !737
  store i32 %conv2, i32* %pixclock3, align 4, !dbg !738
  %6 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !739
  %h_back_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %6, i32 0, i32 13, !dbg !740
  %7 = load i32, i32* %h_back_porch, align 4, !dbg !740
  %8 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !741
  %left_margin = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %8, i32 0, i32 5, !dbg !742
  store i32 %7, i32* %left_margin, align 8, !dbg !743
  %9 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !744
  %h_front_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %9, i32 0, i32 12, !dbg !745
  %10 = load i32, i32* %h_front_porch, align 4, !dbg !745
  %11 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !746
  %right_margin = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %11, i32 0, i32 6, !dbg !747
  store i32 %10, i32* %right_margin, align 4, !dbg !748
  %12 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !749
  %hsync = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %12, i32 0, i32 11, !dbg !750
  %13 = load i32, i32* %hsync, align 4, !dbg !750
  %14 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !751
  %hsync_len = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %14, i32 0, i32 9, !dbg !752
  store i32 %13, i32* %hsync_len, align 8, !dbg !753
  %15 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !754
  %v_back_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %15, i32 0, i32 15, !dbg !755
  %16 = load i32, i32* %v_back_porch, align 4, !dbg !755
  %17 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !756
  %upper_margin = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %17, i32 0, i32 7, !dbg !757
  store i32 %16, i32* %upper_margin, align 8, !dbg !758
  %18 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !759
  %v_front_porch = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %18, i32 0, i32 14, !dbg !760
  %19 = load i32, i32* %v_front_porch, align 4, !dbg !760
  %20 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !761
  %lower_margin = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %20, i32 0, i32 8, !dbg !762
  store i32 %19, i32* %lower_margin, align 4, !dbg !763
  %21 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !764
  %vsync = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %21, i32 0, i32 10, !dbg !765
  %22 = load i32, i32* %vsync, align 4, !dbg !765
  %23 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !766
  %vsync_len = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %23, i32 0, i32 10, !dbg !767
  store i32 %22, i32* %vsync_len, align 4, !dbg !768
  %24 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !769
  %sync = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %24, i32 0, i32 11, !dbg !770
  %25 = load i32, i32* %sync, align 8, !dbg !771
  %and = and i32 %25, -4, !dbg !771
  store i32 %and, i32* %sync, align 8, !dbg !771
  %26 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !772
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %26, i32 0, i32 21, !dbg !774
  %27 = load i32, i32* %flags, align 4, !dbg !774
  %and4 = and i32 %27, 1, !dbg !775
  %tobool = icmp ne i32 %and4, 0, !dbg !775
  br i1 %tobool, label %if.then, label %if.else, !dbg !776

if.then:                                          ; preds = %entry
  %28 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !777
  %sync5 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %28, i32 0, i32 11, !dbg !778
  %29 = load i32, i32* %sync5, align 8, !dbg !779
  %or = or i32 %29, 1, !dbg !779
  store i32 %or, i32* %sync5, align 8, !dbg !779
  br label %if.end, !dbg !777

if.else:                                          ; preds = %entry
  %30 = load %struct.fb_videomode*, %struct.fb_videomode** %mode.addr, align 8, !dbg !780
  %sync6 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %30, i32 0, i32 11, !dbg !781
  %31 = load i32, i32* %sync6, align 8, !dbg !782
  %or7 = or i32 %31, 2, !dbg !782
  store i32 %or7, i32* %sync6, align 8, !dbg !782
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !783
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_vbi_lines(%struct.fb_cvt_data* %cvt) #0 !dbg !784 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %vbi_lines = alloca i32, align 4
  %min_vbi_lines = alloca i32, align 4
  %act_vbi_lines = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !785, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.declare(metadata i32* %vbi_lines, metadata !787, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata i32* %min_vbi_lines, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata i32* %act_vbi_lines, metadata !791, metadata !DIExpression()), !dbg !792
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !793
  %flags = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 21, !dbg !795
  %1 = load i32, i32* %flags, align 4, !dbg !795
  %and = and i32 %1, 1, !dbg !796
  %tobool = icmp ne i32 %and, 0, !dbg !796
  br i1 %tobool, label %if.then, label %if.else, !dbg !797

if.then:                                          ; preds = %entry
  %2 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !798
  %hperiod = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %2, i32 0, i32 5, !dbg !800
  %3 = load i32, i32* %hperiod, align 4, !dbg !800
  %div = udiv i32 460000, %3, !dbg !801
  %add = add i32 %div, 1, !dbg !802
  store i32 %add, i32* %vbi_lines, align 4, !dbg !803
  %4 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !804
  %vsync = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %4, i32 0, i32 10, !dbg !805
  %5 = load i32, i32* %vsync, align 4, !dbg !805
  %add1 = add i32 3, %5, !dbg !806
  %add2 = add i32 %add1, 6, !dbg !807
  store i32 %add2, i32* %min_vbi_lines, align 4, !dbg !808
  br label %if.end, !dbg !809

if.else:                                          ; preds = %entry
  %6 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !810
  %hperiod3 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %6, i32 0, i32 5, !dbg !812
  %7 = load i32, i32* %hperiod3, align 4, !dbg !812
  %div4 = udiv i32 550000, %7, !dbg !813
  %add5 = add i32 %div4, 1, !dbg !814
  %add6 = add i32 %add5, 3, !dbg !815
  store i32 %add6, i32* %vbi_lines, align 4, !dbg !816
  %8 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !817
  %vsync7 = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %8, i32 0, i32 10, !dbg !818
  %9 = load i32, i32* %vsync7, align 4, !dbg !818
  %add8 = add i32 %9, 6, !dbg !819
  %add9 = add i32 %add8, 3, !dbg !820
  store i32 %add9, i32* %min_vbi_lines, align 4, !dbg !821
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %vbi_lines, align 4, !dbg !822
  %11 = load i32, i32* %min_vbi_lines, align 4, !dbg !824
  %cmp = icmp ult i32 %10, %11, !dbg !825
  br i1 %cmp, label %if.then10, label %if.else11, !dbg !826

if.then10:                                        ; preds = %if.end
  %12 = load i32, i32* %min_vbi_lines, align 4, !dbg !827
  store i32 %12, i32* %act_vbi_lines, align 4, !dbg !828
  br label %if.end12, !dbg !829

if.else11:                                        ; preds = %if.end
  %13 = load i32, i32* %vbi_lines, align 4, !dbg !830
  store i32 %13, i32* %act_vbi_lines, align 4, !dbg !831
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %14 = load i32, i32* %act_vbi_lines, align 4, !dbg !832
  ret i32 %14, !dbg !833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fb_cvt_ideal_duty_cycle(%struct.fb_cvt_data* %cvt) #0 !dbg !834 {
entry:
  %cvt.addr = alloca %struct.fb_cvt_data*, align 8
  %c_prime = alloca i32, align 4
  %m_prime = alloca i32, align 4
  %h_period_est = alloca i32, align 4
  store %struct.fb_cvt_data* %cvt, %struct.fb_cvt_data** %cvt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_cvt_data** %cvt.addr, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %c_prime, metadata !837, metadata !DIExpression()), !dbg !838
  store i32 7680, i32* %c_prime, align 4, !dbg !838
  call void @llvm.dbg.declare(metadata i32* %m_prime, metadata !839, metadata !DIExpression()), !dbg !840
  store i32 76800, i32* %m_prime, align 4, !dbg !840
  call void @llvm.dbg.declare(metadata i32* %h_period_est, metadata !841, metadata !DIExpression()), !dbg !842
  %0 = load %struct.fb_cvt_data*, %struct.fb_cvt_data** %cvt.addr, align 8, !dbg !843
  %hperiod = getelementptr inbounds %struct.fb_cvt_data, %struct.fb_cvt_data* %0, i32 0, i32 5, !dbg !844
  %1 = load i32, i32* %hperiod, align 4, !dbg !844
  store i32 %1, i32* %h_period_est, align 4, !dbg !842
  %2 = load i32, i32* %c_prime, align 4, !dbg !845
  %mul = mul i32 1000, %2, !dbg !846
  %3 = load i32, i32* %m_prime, align 4, !dbg !847
  %4 = load i32, i32* %h_period_est, align 4, !dbg !848
  %mul1 = mul i32 %3, %4, !dbg !849
  %div = udiv i32 %mul1, 1000, !dbg !850
  %sub = sub i32 %mul, %div, !dbg !851
  %div2 = udiv i32 %sub, 256, !dbg !852
  ret i32 %div2, !dbg !853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !854 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !862, metadata !DIExpression()), !dbg !869
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !875, metadata !DIExpression()), !dbg !876
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !877, metadata !DIExpression()), !dbg !878
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !879, metadata !DIExpression()), !dbg !880
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !881, metadata !DIExpression()), !dbg !885
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !887, metadata !DIExpression()), !dbg !891
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !893, metadata !DIExpression()), !dbg !897
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !902, metadata !DIExpression()), !dbg !903
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !904, metadata !DIExpression()), !dbg !905
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !906, metadata !DIExpression()), !dbg !907
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !908, metadata !DIExpression()), !dbg !909
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !910, metadata !DIExpression()), !dbg !911
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !912, metadata !DIExpression()), !dbg !913
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !914, metadata !DIExpression()), !dbg !915
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !916, metadata !DIExpression()), !dbg !917
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !918, metadata !DIExpression()), !dbg !919
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !920, metadata !DIExpression()), !dbg !921
  %0 = load i64, i64* %size.addr, align 8, !dbg !922
  %1 = load i32, i32* %flags.addr, align 4, !dbg !923
  %or = or i32 %1, 256, !dbg !924
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !925
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !926
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !927

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !928
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !929
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !930

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !931
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !932
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !933
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !934
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !911
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !935
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !936
  %10 = load i32, i32* %order.i.i, align 4, !dbg !937
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !938
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !939
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !940
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !941
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !941
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !941
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !941
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !941
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !942
  br label %kmalloc.exit, !dbg !942

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !943
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !944
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !944
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !946

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !947
  br label %kmalloc_index.exit.i, !dbg !947

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !948
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !950
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !951

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !952
  br label %kmalloc_index.exit.i, !dbg !952

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !953
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !955
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !956

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !957
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !958
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !959

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !960
  br label %kmalloc_index.exit.i, !dbg !960

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !961
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !963
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !964

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !965
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !966
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !967

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !968
  br label %kmalloc_index.exit.i, !dbg !968

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !969
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !971
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !972

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !973
  br label %kmalloc_index.exit.i, !dbg !973

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !974
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !976
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !977

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !978
  br label %kmalloc_index.exit.i, !dbg !978

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !979
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !981
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !982

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !983
  br label %kmalloc_index.exit.i, !dbg !983

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !984
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !986
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !987

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !988
  br label %kmalloc_index.exit.i, !dbg !988

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !989
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !991
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !992

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !993
  br label %kmalloc_index.exit.i, !dbg !993

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !994
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !996
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !997

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !998
  br label %kmalloc_index.exit.i, !dbg !998

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !999
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !1001
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1002

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1003
  br label %kmalloc_index.exit.i, !dbg !1003

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1004
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !1006
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1007

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1008
  br label %kmalloc_index.exit.i, !dbg !1008

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1009
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !1011
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1012

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1013
  br label %kmalloc_index.exit.i, !dbg !1013

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1014
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !1016
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1017

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1018
  br label %kmalloc_index.exit.i, !dbg !1018

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1019
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !1021
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1022

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1023
  br label %kmalloc_index.exit.i, !dbg !1023

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1024
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !1026
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1027

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1028
  br label %kmalloc_index.exit.i, !dbg !1028

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1029
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !1031
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1032

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1033
  br label %kmalloc_index.exit.i, !dbg !1033

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1034
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !1036
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1037

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1038
  br label %kmalloc_index.exit.i, !dbg !1038

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1039
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !1041
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1042

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1043
  br label %kmalloc_index.exit.i, !dbg !1043

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1044
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !1046
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1047

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1048
  br label %kmalloc_index.exit.i, !dbg !1048

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1049
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !1051
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1052

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1053
  br label %kmalloc_index.exit.i, !dbg !1053

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1054
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !1056
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1057

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1058
  br label %kmalloc_index.exit.i, !dbg !1058

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1059
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !1061
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1062

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1063
  br label %kmalloc_index.exit.i, !dbg !1063

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1064
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !1066
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1067

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1068
  br label %kmalloc_index.exit.i, !dbg !1068

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1069
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !1071
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1072

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1073
  br label %kmalloc_index.exit.i, !dbg !1073

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1074
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !1076
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1077

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1078
  br label %kmalloc_index.exit.i, !dbg !1078

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1079
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !1081
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1082

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1083
  br label %kmalloc_index.exit.i, !dbg !1083

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1084
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !1086
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1087

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1088
  br label %kmalloc_index.exit.i, !dbg !1088

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !1089, !srcloc !1092
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #10, !dbg !1093, !srcloc !1096
  unreachable, !dbg !1097

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !1098
  store i32 %45, i32* %index.i, align 4, !dbg !1099
  %46 = load i32, i32* %index.i, align 4, !dbg !1100
  %tobool.i = icmp ne i32 %46, 0, !dbg !1100
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !1102

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1103
  br label %kmalloc.exit, !dbg !1103

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !1104
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1105
  %and.i.i = and i32 %48, 17, !dbg !1105
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1105
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1105
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1105
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1105
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1107

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1108
  br label %kmalloc_type.exit.i, !dbg !1108

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1109
  %and2.i.i = and i32 %49, 1, !dbg !1110
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1109
  %50 = zext i1 %tobool3.i.i to i64, !dbg !1109
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1109
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1111
  br label %kmalloc_type.exit.i, !dbg !1111

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !1112
  %idxprom.i = zext i32 %51 to i64, !dbg !1113
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1113
  %52 = load i32, i32* %index.i, align 4, !dbg !1114
  %idxprom6.i = zext i32 %52 to i64, !dbg !1113
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1113
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1113
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !1115
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !1116
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1117
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1118
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !1119
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1119
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1119
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1119
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !1119
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !880
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1120
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !1121
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1122
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1123
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !1124
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1125
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !1126
  store i8* %62, i8** %retval.i, align 8, !dbg !1127
  br label %kmalloc.exit, !dbg !1127

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !1128
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !1129
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !1130
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1130
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1130
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1130
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !1130
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1131
  br label %kmalloc.exit, !dbg !1131

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !1132
  ret i8* %65, !dbg !1133
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !1134 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1138, metadata !DIExpression()), !dbg !1145
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1147, metadata !DIExpression()), !dbg !1148
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load i64, i64* %size.addr, align 8, !dbg !1151
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1153
  br i1 %1, label %if.then, label %if.end447, !dbg !1154

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1155
  %tobool = icmp ne i64 %2, 0, !dbg !1155
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1158

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1159
  br label %return, !dbg !1159

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1160
  %cmp = icmp ult i64 %3, 4096, !dbg !1162
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1163

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub = sub i64 %4, 1, !dbg !1165
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1165
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1165

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub4 = sub i64 %6, 1, !dbg !1165
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1165
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1165

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub6 = sub i64 %8, 1, !dbg !1165
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1165
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1165

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1165

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub9 = sub i64 %9, 1, !dbg !1165
  %and = and i64 %sub9, -9223372036854775808, !dbg !1165
  %tobool10 = icmp ne i64 %and, 0, !dbg !1165
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1165

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1165

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub13 = sub i64 %10, 1, !dbg !1165
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1165
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1165
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1165

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1165

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub18 = sub i64 %11, 1, !dbg !1165
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1165
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1165
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1165

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1165

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub23 = sub i64 %12, 1, !dbg !1165
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1165
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1165
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1165

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1165

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub28 = sub i64 %13, 1, !dbg !1165
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1165
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1165
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1165

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1165

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub33 = sub i64 %14, 1, !dbg !1165
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1165
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1165
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1165

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1165

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub38 = sub i64 %15, 1, !dbg !1165
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1165
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1165
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1165

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1165

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub43 = sub i64 %16, 1, !dbg !1165
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1165
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1165
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1165

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1165

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub48 = sub i64 %17, 1, !dbg !1165
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1165
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1165
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1165

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1165

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub53 = sub i64 %18, 1, !dbg !1165
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1165
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1165
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1165

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1165

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub58 = sub i64 %19, 1, !dbg !1165
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1165
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1165
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1165

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1165

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub63 = sub i64 %20, 1, !dbg !1165
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1165
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1165
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1165

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1165

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub68 = sub i64 %21, 1, !dbg !1165
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1165
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1165
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1165

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1165

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub73 = sub i64 %22, 1, !dbg !1165
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1165
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1165
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1165

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1165

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub78 = sub i64 %23, 1, !dbg !1165
  %and79 = and i64 %sub78, 562949953421312, !dbg !1165
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1165
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1165

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1165

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub83 = sub i64 %24, 1, !dbg !1165
  %and84 = and i64 %sub83, 281474976710656, !dbg !1165
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1165
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1165

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1165

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub88 = sub i64 %25, 1, !dbg !1165
  %and89 = and i64 %sub88, 140737488355328, !dbg !1165
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1165
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1165

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1165

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub93 = sub i64 %26, 1, !dbg !1165
  %and94 = and i64 %sub93, 70368744177664, !dbg !1165
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1165
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1165

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1165

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub98 = sub i64 %27, 1, !dbg !1165
  %and99 = and i64 %sub98, 35184372088832, !dbg !1165
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1165
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1165

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1165

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub103 = sub i64 %28, 1, !dbg !1165
  %and104 = and i64 %sub103, 17592186044416, !dbg !1165
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1165
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1165

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1165

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub108 = sub i64 %29, 1, !dbg !1165
  %and109 = and i64 %sub108, 8796093022208, !dbg !1165
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1165
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1165

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1165

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub113 = sub i64 %30, 1, !dbg !1165
  %and114 = and i64 %sub113, 4398046511104, !dbg !1165
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1165
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1165

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1165

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub118 = sub i64 %31, 1, !dbg !1165
  %and119 = and i64 %sub118, 2199023255552, !dbg !1165
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1165
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1165

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1165

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub123 = sub i64 %32, 1, !dbg !1165
  %and124 = and i64 %sub123, 1099511627776, !dbg !1165
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1165
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1165

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1165

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub128 = sub i64 %33, 1, !dbg !1165
  %and129 = and i64 %sub128, 549755813888, !dbg !1165
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1165
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1165

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1165

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub133 = sub i64 %34, 1, !dbg !1165
  %and134 = and i64 %sub133, 274877906944, !dbg !1165
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1165
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1165

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1165

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub138 = sub i64 %35, 1, !dbg !1165
  %and139 = and i64 %sub138, 137438953472, !dbg !1165
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1165
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1165

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1165

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub143 = sub i64 %36, 1, !dbg !1165
  %and144 = and i64 %sub143, 68719476736, !dbg !1165
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1165
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1165

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1165

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub148 = sub i64 %37, 1, !dbg !1165
  %and149 = and i64 %sub148, 34359738368, !dbg !1165
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1165
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1165

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1165

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub153 = sub i64 %38, 1, !dbg !1165
  %and154 = and i64 %sub153, 17179869184, !dbg !1165
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1165
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1165

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1165

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub158 = sub i64 %39, 1, !dbg !1165
  %and159 = and i64 %sub158, 8589934592, !dbg !1165
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1165
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1165

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1165

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub163 = sub i64 %40, 1, !dbg !1165
  %and164 = and i64 %sub163, 4294967296, !dbg !1165
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1165
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1165

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1165

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub168 = sub i64 %41, 1, !dbg !1165
  %and169 = and i64 %sub168, 2147483648, !dbg !1165
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1165
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1165

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1165

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub173 = sub i64 %42, 1, !dbg !1165
  %and174 = and i64 %sub173, 1073741824, !dbg !1165
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1165
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1165

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1165

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub178 = sub i64 %43, 1, !dbg !1165
  %and179 = and i64 %sub178, 536870912, !dbg !1165
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1165
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1165

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1165

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub183 = sub i64 %44, 1, !dbg !1165
  %and184 = and i64 %sub183, 268435456, !dbg !1165
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1165
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1165

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1165

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub188 = sub i64 %45, 1, !dbg !1165
  %and189 = and i64 %sub188, 134217728, !dbg !1165
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1165
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1165

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1165

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub193 = sub i64 %46, 1, !dbg !1165
  %and194 = and i64 %sub193, 67108864, !dbg !1165
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1165
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1165

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1165

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub198 = sub i64 %47, 1, !dbg !1165
  %and199 = and i64 %sub198, 33554432, !dbg !1165
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1165
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1165

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1165

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub203 = sub i64 %48, 1, !dbg !1165
  %and204 = and i64 %sub203, 16777216, !dbg !1165
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1165
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1165

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1165

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub208 = sub i64 %49, 1, !dbg !1165
  %and209 = and i64 %sub208, 8388608, !dbg !1165
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1165
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1165

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1165

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub213 = sub i64 %50, 1, !dbg !1165
  %and214 = and i64 %sub213, 4194304, !dbg !1165
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1165
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1165

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1165

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub218 = sub i64 %51, 1, !dbg !1165
  %and219 = and i64 %sub218, 2097152, !dbg !1165
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1165
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1165

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1165

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub223 = sub i64 %52, 1, !dbg !1165
  %and224 = and i64 %sub223, 1048576, !dbg !1165
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1165
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1165

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1165

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub228 = sub i64 %53, 1, !dbg !1165
  %and229 = and i64 %sub228, 524288, !dbg !1165
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1165
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1165

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1165

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub233 = sub i64 %54, 1, !dbg !1165
  %and234 = and i64 %sub233, 262144, !dbg !1165
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1165
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1165

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1165

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub238 = sub i64 %55, 1, !dbg !1165
  %and239 = and i64 %sub238, 131072, !dbg !1165
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1165
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1165

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1165

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub243 = sub i64 %56, 1, !dbg !1165
  %and244 = and i64 %sub243, 65536, !dbg !1165
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1165
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1165

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1165

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub248 = sub i64 %57, 1, !dbg !1165
  %and249 = and i64 %sub248, 32768, !dbg !1165
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1165
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1165

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1165

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub253 = sub i64 %58, 1, !dbg !1165
  %and254 = and i64 %sub253, 16384, !dbg !1165
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1165
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1165

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1165

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub258 = sub i64 %59, 1, !dbg !1165
  %and259 = and i64 %sub258, 8192, !dbg !1165
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1165
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1165

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1165

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub263 = sub i64 %60, 1, !dbg !1165
  %and264 = and i64 %sub263, 4096, !dbg !1165
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1165
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1165

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1165

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub268 = sub i64 %61, 1, !dbg !1165
  %and269 = and i64 %sub268, 2048, !dbg !1165
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1165
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1165

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1165

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub273 = sub i64 %62, 1, !dbg !1165
  %and274 = and i64 %sub273, 1024, !dbg !1165
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1165
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1165

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1165

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub278 = sub i64 %63, 1, !dbg !1165
  %and279 = and i64 %sub278, 512, !dbg !1165
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1165
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1165

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1165

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub283 = sub i64 %64, 1, !dbg !1165
  %and284 = and i64 %sub283, 256, !dbg !1165
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1165
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1165

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1165

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub288 = sub i64 %65, 1, !dbg !1165
  %and289 = and i64 %sub288, 128, !dbg !1165
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1165
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1165

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1165

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub293 = sub i64 %66, 1, !dbg !1165
  %and294 = and i64 %sub293, 64, !dbg !1165
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1165
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1165

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1165

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub298 = sub i64 %67, 1, !dbg !1165
  %and299 = and i64 %sub298, 32, !dbg !1165
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1165
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1165

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1165

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub303 = sub i64 %68, 1, !dbg !1165
  %and304 = and i64 %sub303, 16, !dbg !1165
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1165
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1165

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1165

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub308 = sub i64 %69, 1, !dbg !1165
  %and309 = and i64 %sub308, 8, !dbg !1165
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1165
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1165

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1165

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub313 = sub i64 %70, 1, !dbg !1165
  %and314 = and i64 %sub313, 4, !dbg !1165
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1165
  %71 = zext i1 %tobool315 to i64, !dbg !1165
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1165
  br label %cond.end, !dbg !1165

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1165
  br label %cond.end317, !dbg !1165

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1165
  br label %cond.end319, !dbg !1165

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1165
  br label %cond.end321, !dbg !1165

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1165
  br label %cond.end323, !dbg !1165

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1165
  br label %cond.end325, !dbg !1165

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1165
  br label %cond.end327, !dbg !1165

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1165
  br label %cond.end329, !dbg !1165

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1165
  br label %cond.end331, !dbg !1165

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1165
  br label %cond.end333, !dbg !1165

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1165
  br label %cond.end335, !dbg !1165

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1165
  br label %cond.end337, !dbg !1165

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1165
  br label %cond.end339, !dbg !1165

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1165
  br label %cond.end341, !dbg !1165

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1165
  br label %cond.end343, !dbg !1165

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1165
  br label %cond.end345, !dbg !1165

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1165
  br label %cond.end347, !dbg !1165

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1165
  br label %cond.end349, !dbg !1165

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1165
  br label %cond.end351, !dbg !1165

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1165
  br label %cond.end353, !dbg !1165

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1165
  br label %cond.end355, !dbg !1165

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1165
  br label %cond.end357, !dbg !1165

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1165
  br label %cond.end359, !dbg !1165

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1165
  br label %cond.end361, !dbg !1165

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1165
  br label %cond.end363, !dbg !1165

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1165
  br label %cond.end365, !dbg !1165

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1165
  br label %cond.end367, !dbg !1165

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1165
  br label %cond.end369, !dbg !1165

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1165
  br label %cond.end371, !dbg !1165

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1165
  br label %cond.end373, !dbg !1165

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1165
  br label %cond.end375, !dbg !1165

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1165
  br label %cond.end377, !dbg !1165

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1165
  br label %cond.end379, !dbg !1165

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1165
  br label %cond.end381, !dbg !1165

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1165
  br label %cond.end383, !dbg !1165

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1165
  br label %cond.end385, !dbg !1165

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1165
  br label %cond.end387, !dbg !1165

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1165
  br label %cond.end389, !dbg !1165

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1165
  br label %cond.end391, !dbg !1165

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1165
  br label %cond.end393, !dbg !1165

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1165
  br label %cond.end395, !dbg !1165

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1165
  br label %cond.end397, !dbg !1165

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1165
  br label %cond.end399, !dbg !1165

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1165
  br label %cond.end401, !dbg !1165

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1165
  br label %cond.end403, !dbg !1165

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1165
  br label %cond.end405, !dbg !1165

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1165
  br label %cond.end407, !dbg !1165

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1165
  br label %cond.end409, !dbg !1165

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1165
  br label %cond.end411, !dbg !1165

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1165
  br label %cond.end413, !dbg !1165

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1165
  br label %cond.end415, !dbg !1165

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1165
  br label %cond.end417, !dbg !1165

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1165
  br label %cond.end419, !dbg !1165

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1165
  br label %cond.end421, !dbg !1165

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1165
  br label %cond.end423, !dbg !1165

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1165
  br label %cond.end425, !dbg !1165

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1165
  br label %cond.end427, !dbg !1165

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1165
  br label %cond.end429, !dbg !1165

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1165
  br label %cond.end431, !dbg !1165

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1165
  br label %cond.end433, !dbg !1165

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1165
  br label %cond.end435, !dbg !1165

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1165
  br label %cond.end437, !dbg !1165

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1165
  br label %cond.end440, !dbg !1165

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1165

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1165
  br label %cond.end444, !dbg !1165

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1165
  %sub443 = sub i64 %72, 1, !dbg !1165
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !1165
  br label %cond.end444, !dbg !1165

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1165
  %sub446 = sub i32 %cond445, 12, !dbg !1166
  %add = add i32 %sub446, 1, !dbg !1167
  store i32 %add, i32* %retval, align 4, !dbg !1168
  br label %return, !dbg !1168

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1169
  %dec = add i64 %73, -1, !dbg !1169
  store i64 %dec, i64* %size.addr, align 8, !dbg !1169
  %74 = load i64, i64* %size.addr, align 8, !dbg !1170
  %shr = lshr i64 %74, 12, !dbg !1170
  store i64 %shr, i64* %size.addr, align 8, !dbg !1170
  %75 = load i64, i64* %size.addr, align 8, !dbg !1171
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1148
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1172
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1173
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !1172, !srcloc !1174
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1172
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1175
  %add.i = add i32 %79, 1, !dbg !1176
  store i32 %add.i, i32* %retval, align 4, !dbg !1177
  br label %return, !dbg !1177

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1178
  ret i32 %80, !dbg !1178
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !1179 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1138, metadata !DIExpression()), !dbg !1184
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1147, metadata !DIExpression()), !dbg !1186
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1187, metadata !DIExpression()), !dbg !1188
  %0 = load i64, i64* %n.addr, align 8, !dbg !1189
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1186
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1190
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1191
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !1190, !srcloc !1174
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1190
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1192
  %add.i = add i32 %4, 1, !dbg !1193
  %sub = sub i32 %add.i, 1, !dbg !1194
  ret i32 %sub, !dbg !1195
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1196 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1204, metadata !DIExpression()), !dbg !1205
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1210
  ret i8* %0, !dbg !1211
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fb_cvt_vbi_tab", scope: !2, file: !3, line: 61, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/core/fbcvt.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !15, line: 148, baseType: !7)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0}
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!28 = distinct !DISubprogram(name: "fb_find_mode_cvt", scope: !3, file: !3, line: 305, type: !29, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !31, !31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !34, line: 766, size: 512, elements: !35)
!34 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !40, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !33, file: !34, line: 767, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !33, file: !34, line: 768, baseType: !41, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !42, line: 21, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !44, line: 27, baseType: !7)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!45 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !33, file: !34, line: 769, baseType: !41, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !33, file: !34, line: 770, baseType: !41, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !33, file: !34, line: 771, baseType: !41, size: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !33, file: !34, line: 772, baseType: !41, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !33, file: !34, line: 773, baseType: !41, size: 32, offset: 224)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !33, file: !34, line: 774, baseType: !41, size: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !33, file: !34, line: 775, baseType: !41, size: 32, offset: 288)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !33, file: !34, line: 776, baseType: !41, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !33, file: !34, line: 777, baseType: !41, size: 32, offset: 352)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !33, file: !34, line: 778, baseType: !41, size: 32, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !33, file: !34, line: 779, baseType: !41, size: 32, offset: 416)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !33, file: !34, line: 780, baseType: !41, size: 32, offset: 448)
!57 = !{}
!58 = !DILocalVariable(name: "mode", arg: 1, scope: !28, file: !3, line: 305, type: !32)
!59 = !DILocation(line: 305, column: 43, scope: !28)
!60 = !DILocalVariable(name: "margins", arg: 2, scope: !28, file: !3, line: 305, type: !31)
!61 = !DILocation(line: 305, column: 53, scope: !28)
!62 = !DILocalVariable(name: "rb", arg: 3, scope: !28, file: !3, line: 305, type: !31)
!63 = !DILocation(line: 305, column: 66, scope: !28)
!64 = !DILocalVariable(name: "cvt", scope: !28, file: !3, line: 307, type: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cvt_data", file: !3, line: 35, size: 736, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !65, file: !3, line: 36, baseType: !41, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !65, file: !3, line: 37, baseType: !41, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !65, file: !3, line: 38, baseType: !41, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "f_refresh", scope: !65, file: !3, line: 39, baseType: !41, size: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !65, file: !3, line: 40, baseType: !41, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "hperiod", scope: !65, file: !3, line: 41, baseType: !41, size: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "hblank", scope: !65, file: !3, line: 42, baseType: !41, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "hfreq", scope: !65, file: !3, line: 43, baseType: !41, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !65, file: !3, line: 44, baseType: !41, size: 32, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !65, file: !3, line: 45, baseType: !41, size: 32, offset: 288)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !65, file: !3, line: 46, baseType: !41, size: 32, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hsync", scope: !65, file: !3, line: 47, baseType: !41, size: 32, offset: 352)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "h_front_porch", scope: !65, file: !3, line: 48, baseType: !41, size: 32, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "h_back_porch", scope: !65, file: !3, line: 49, baseType: !41, size: 32, offset: 416)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "v_front_porch", scope: !65, file: !3, line: 50, baseType: !41, size: 32, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "v_back_porch", scope: !65, file: !3, line: 51, baseType: !41, size: 32, offset: 480)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "h_margin", scope: !65, file: !3, line: 52, baseType: !41, size: 32, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "v_margin", scope: !65, file: !3, line: 53, baseType: !41, size: 32, offset: 544)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !65, file: !3, line: 54, baseType: !41, size: 32, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio", scope: !65, file: !3, line: 55, baseType: !41, size: 32, offset: 608)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "active_pixels", scope: !65, file: !3, line: 56, baseType: !41, size: 32, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !3, line: 57, baseType: !41, size: 32, offset: 672)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !65, file: !3, line: 58, baseType: !41, size: 32, offset: 704)
!90 = !DILocation(line: 307, column: 21, scope: !28)
!91 = !DILocation(line: 309, column: 2, scope: !28)
!92 = !DILocation(line: 311, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !28, file: !3, line: 311, column: 6)
!94 = !DILocation(line: 311, column: 6, scope: !28)
!95 = !DILocation(line: 312, column: 10, scope: !93)
!96 = !DILocation(line: 312, column: 16, scope: !93)
!97 = !DILocation(line: 312, column: 6, scope: !93)
!98 = !DILocation(line: 314, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !28, file: !3, line: 314, column: 6)
!100 = !DILocation(line: 314, column: 6, scope: !28)
!101 = !DILocation(line: 315, column: 10, scope: !99)
!102 = !DILocation(line: 315, column: 16, scope: !99)
!103 = !DILocation(line: 315, column: 6, scope: !99)
!104 = !DILocation(line: 317, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !28, file: !3, line: 317, column: 6)
!106 = !DILocation(line: 317, column: 12, scope: !105)
!107 = !DILocation(line: 317, column: 18, scope: !105)
!108 = !DILocation(line: 317, column: 6, scope: !28)
!109 = !DILocation(line: 318, column: 10, scope: !105)
!110 = !DILocation(line: 318, column: 16, scope: !105)
!111 = !DILocation(line: 318, column: 6, scope: !105)
!112 = !DILocation(line: 320, column: 13, scope: !28)
!113 = !DILocation(line: 320, column: 19, scope: !28)
!114 = !DILocation(line: 320, column: 6, scope: !28)
!115 = !DILocation(line: 320, column: 11, scope: !28)
!116 = !DILocation(line: 321, column: 13, scope: !28)
!117 = !DILocation(line: 321, column: 19, scope: !28)
!118 = !DILocation(line: 321, column: 6, scope: !28)
!119 = !DILocation(line: 321, column: 11, scope: !28)
!120 = !DILocation(line: 322, column: 16, scope: !28)
!121 = !DILocation(line: 322, column: 22, scope: !28)
!122 = !DILocation(line: 322, column: 6, scope: !28)
!123 = !DILocation(line: 322, column: 14, scope: !28)
!124 = !DILocation(line: 323, column: 22, scope: !28)
!125 = !DILocation(line: 323, column: 6, scope: !28)
!126 = !DILocation(line: 323, column: 16, scope: !28)
!127 = !DILocation(line: 324, column: 6, scope: !28)
!128 = !DILocation(line: 324, column: 16, scope: !28)
!129 = !DILocation(line: 326, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !28, file: !3, line: 326, column: 6)
!131 = !DILocation(line: 326, column: 7, scope: !130)
!132 = !DILocation(line: 326, column: 16, scope: !130)
!133 = !DILocation(line: 326, column: 24, scope: !130)
!134 = !DILocation(line: 326, column: 20, scope: !130)
!135 = !DILocation(line: 326, column: 29, scope: !130)
!136 = !DILocation(line: 326, column: 37, scope: !130)
!137 = !DILocation(line: 326, column: 33, scope: !130)
!138 = !DILocation(line: 326, column: 6, scope: !28)
!139 = !DILocation(line: 327, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !3, line: 326, column: 46)
!141 = !DILocation(line: 328, column: 3, scope: !140)
!142 = !DILocation(line: 331, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !28, file: !3, line: 331, column: 6)
!144 = !DILocation(line: 331, column: 20, scope: !143)
!145 = !DILocation(line: 331, column: 26, scope: !143)
!146 = !DILocation(line: 331, column: 33, scope: !143)
!147 = !DILocation(line: 331, column: 41, scope: !143)
!148 = !DILocation(line: 331, column: 47, scope: !143)
!149 = !DILocation(line: 331, column: 54, scope: !143)
!150 = !DILocation(line: 331, column: 62, scope: !143)
!151 = !DILocation(line: 331, column: 68, scope: !143)
!152 = !DILocation(line: 332, column: 12, scope: !143)
!153 = !DILocation(line: 332, column: 20, scope: !143)
!154 = !DILocation(line: 331, column: 6, scope: !28)
!155 = !DILocation(line: 333, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !143, file: !3, line: 332, column: 28)
!157 = !DILocation(line: 335, column: 7, scope: !156)
!158 = !DILocation(line: 335, column: 14, scope: !156)
!159 = !DILocation(line: 336, column: 2, scope: !156)
!160 = !DILocation(line: 338, column: 6, scope: !28)
!161 = !DILocation(line: 338, column: 11, scope: !28)
!162 = !DILocation(line: 340, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !28, file: !3, line: 340, column: 6)
!164 = !DILocation(line: 340, column: 16, scope: !163)
!165 = !DILocation(line: 340, column: 6, scope: !28)
!166 = !DILocation(line: 341, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 340, column: 42)
!168 = !DILocation(line: 341, column: 17, scope: !167)
!169 = !DILocation(line: 342, column: 7, scope: !167)
!170 = !DILocation(line: 342, column: 17, scope: !167)
!171 = !DILocation(line: 343, column: 2, scope: !167)
!172 = !DILocation(line: 345, column: 10, scope: !173)
!173 = distinct !DILexicalBlock(scope: !28, file: !3, line: 345, column: 6)
!174 = !DILocation(line: 345, column: 16, scope: !173)
!175 = !DILocation(line: 345, column: 6, scope: !28)
!176 = !DILocation(line: 346, column: 11, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 346, column: 7)
!178 = distinct !DILexicalBlock(scope: !173, file: !3, line: 345, column: 45)
!179 = !DILocation(line: 346, column: 19, scope: !177)
!180 = !DILocation(line: 346, column: 7, scope: !178)
!181 = !DILocation(line: 347, column: 4, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !3, line: 346, column: 26)
!183 = !DILocation(line: 349, column: 8, scope: !182)
!184 = !DILocation(line: 349, column: 15, scope: !182)
!185 = !DILocation(line: 350, column: 3, scope: !182)
!186 = !DILocation(line: 351, column: 2, scope: !178)
!187 = !DILocation(line: 353, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !28, file: !3, line: 353, column: 6)
!189 = !DILocation(line: 353, column: 16, scope: !188)
!190 = !DILocation(line: 353, column: 6, scope: !28)
!191 = !DILocation(line: 354, column: 23, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !3, line: 353, column: 39)
!193 = !DILocation(line: 354, column: 28, scope: !192)
!194 = !DILocation(line: 354, column: 33, scope: !192)
!195 = !DILocation(line: 354, column: 7, scope: !192)
!196 = !DILocation(line: 354, column: 16, scope: !192)
!197 = !DILocation(line: 355, column: 7, scope: !192)
!198 = !DILocation(line: 355, column: 16, scope: !192)
!199 = !DILocation(line: 356, column: 24, scope: !192)
!200 = !DILocation(line: 356, column: 33, scope: !192)
!201 = !DILocation(line: 356, column: 28, scope: !192)
!202 = !DILocation(line: 356, column: 43, scope: !192)
!203 = !DILocation(line: 356, column: 48, scope: !192)
!204 = !DILocation(line: 356, column: 7, scope: !192)
!205 = !DILocation(line: 356, column: 16, scope: !192)
!206 = !DILocation(line: 357, column: 2, scope: !192)
!207 = !DILocation(line: 359, column: 21, scope: !28)
!208 = !DILocation(line: 359, column: 6, scope: !28)
!209 = !DILocation(line: 359, column: 19, scope: !28)
!210 = !DILocation(line: 360, column: 26, scope: !28)
!211 = !DILocation(line: 360, column: 41, scope: !28)
!212 = !DILocation(line: 360, column: 35, scope: !28)
!213 = !DILocation(line: 360, column: 31, scope: !28)
!214 = !DILocation(line: 360, column: 6, scope: !28)
!215 = !DILocation(line: 360, column: 20, scope: !28)
!216 = !DILocation(line: 361, column: 16, scope: !28)
!217 = !DILocation(line: 361, column: 6, scope: !28)
!218 = !DILocation(line: 361, column: 14, scope: !28)
!219 = !DILocation(line: 362, column: 33, scope: !28)
!220 = !DILocation(line: 362, column: 14, scope: !28)
!221 = !DILocation(line: 362, column: 6, scope: !28)
!222 = !DILocation(line: 362, column: 12, scope: !28)
!223 = !DILocation(line: 363, column: 15, scope: !28)
!224 = !DILocation(line: 363, column: 6, scope: !28)
!225 = !DILocation(line: 363, column: 13, scope: !28)
!226 = !DILocation(line: 364, column: 15, scope: !28)
!227 = !DILocation(line: 364, column: 6, scope: !28)
!228 = !DILocation(line: 364, column: 13, scope: !28)
!229 = !DILocation(line: 365, column: 19, scope: !28)
!230 = !DILocation(line: 365, column: 39, scope: !28)
!231 = !DILocation(line: 365, column: 33, scope: !28)
!232 = !DILocation(line: 365, column: 6, scope: !28)
!233 = !DILocation(line: 365, column: 13, scope: !28)
!234 = !DILocation(line: 366, column: 14, scope: !28)
!235 = !DILocation(line: 366, column: 6, scope: !28)
!236 = !DILocation(line: 366, column: 12, scope: !28)
!237 = !DILocation(line: 367, column: 17, scope: !28)
!238 = !DILocation(line: 367, column: 6, scope: !28)
!239 = !DILocation(line: 367, column: 15, scope: !28)
!240 = !DILocation(line: 368, column: 18, scope: !28)
!241 = !DILocation(line: 368, column: 31, scope: !28)
!242 = !DILocation(line: 368, column: 26, scope: !28)
!243 = !DILocation(line: 368, column: 6, scope: !28)
!244 = !DILocation(line: 368, column: 12, scope: !28)
!245 = !DILocation(line: 369, column: 25, scope: !28)
!246 = !DILocation(line: 369, column: 31, scope: !28)
!247 = !DILocation(line: 369, column: 40, scope: !28)
!248 = !DILocation(line: 369, column: 34, scope: !28)
!249 = !DILocation(line: 369, column: 6, scope: !28)
!250 = !DILocation(line: 369, column: 19, scope: !28)
!251 = !DILocation(line: 370, column: 26, scope: !28)
!252 = !DILocation(line: 370, column: 39, scope: !28)
!253 = !DILocation(line: 370, column: 33, scope: !28)
!254 = !DILocation(line: 370, column: 51, scope: !28)
!255 = !DILocation(line: 370, column: 45, scope: !28)
!256 = !DILocation(line: 371, column: 11, scope: !28)
!257 = !DILocation(line: 371, column: 5, scope: !28)
!258 = !DILocation(line: 370, column: 64, scope: !28)
!259 = !DILocation(line: 370, column: 6, scope: !28)
!260 = !DILocation(line: 370, column: 20, scope: !28)
!261 = !DILocation(line: 372, column: 30, scope: !28)
!262 = !DILocation(line: 372, column: 24, scope: !28)
!263 = !DILocation(line: 372, column: 6, scope: !28)
!264 = !DILocation(line: 372, column: 20, scope: !28)
!265 = !DILocation(line: 373, column: 25, scope: !28)
!266 = !DILocation(line: 373, column: 38, scope: !28)
!267 = !DILocation(line: 373, column: 47, scope: !28)
!268 = !DILocation(line: 373, column: 42, scope: !28)
!269 = !DILocation(line: 373, column: 32, scope: !28)
!270 = !DILocation(line: 374, column: 10, scope: !28)
!271 = !DILocation(line: 373, column: 57, scope: !28)
!272 = !DILocation(line: 374, column: 30, scope: !28)
!273 = !DILocation(line: 374, column: 24, scope: !28)
!274 = !DILocation(line: 373, column: 6, scope: !28)
!275 = !DILocation(line: 373, column: 19, scope: !28)
!276 = !DILocation(line: 375, column: 2, scope: !28)
!277 = !DILocation(line: 376, column: 31, scope: !28)
!278 = !DILocation(line: 376, column: 2, scope: !28)
!279 = !DILocation(line: 378, column: 2, scope: !28)
!280 = !DILocation(line: 379, column: 1, scope: !28)
!281 = distinct !DISubprogram(name: "fb_cvt_aspect_ratio", scope: !3, file: !3, line: 188, type: !282, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!282 = !DISubroutineType(types: !283)
!283 = !{!41, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!285 = !DILocalVariable(name: "cvt", arg: 1, scope: !281, file: !3, line: 188, type: !284)
!286 = !DILocation(line: 188, column: 52, scope: !281)
!287 = !DILocalVariable(name: "xres", scope: !281, file: !3, line: 190, type: !41)
!288 = !DILocation(line: 190, column: 6, scope: !281)
!289 = !DILocation(line: 190, column: 13, scope: !281)
!290 = !DILocation(line: 190, column: 18, scope: !281)
!291 = !DILocalVariable(name: "yres", scope: !281, file: !3, line: 191, type: !41)
!292 = !DILocation(line: 191, column: 6, scope: !281)
!293 = !DILocation(line: 191, column: 13, scope: !281)
!294 = !DILocation(line: 191, column: 18, scope: !281)
!295 = !DILocalVariable(name: "aspect", scope: !281, file: !3, line: 192, type: !41)
!296 = !DILocation(line: 192, column: 6, scope: !281)
!297 = !DILocation(line: 194, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !281, file: !3, line: 194, column: 6)
!299 = !DILocation(line: 194, column: 15, scope: !298)
!300 = !DILocation(line: 194, column: 20, scope: !298)
!301 = !DILocation(line: 194, column: 24, scope: !298)
!302 = !DILocation(line: 194, column: 11, scope: !298)
!303 = !DILocation(line: 194, column: 27, scope: !298)
!304 = !DILocation(line: 194, column: 33, scope: !298)
!305 = !DILocation(line: 194, column: 38, scope: !298)
!306 = !DILocation(line: 194, column: 43, scope: !298)
!307 = !DILocation(line: 194, column: 6, scope: !281)
!308 = !DILocation(line: 195, column: 10, scope: !298)
!309 = !DILocation(line: 195, column: 3, scope: !298)
!310 = !DILocation(line: 196, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !298, file: !3, line: 196, column: 11)
!312 = !DILocation(line: 196, column: 20, scope: !311)
!313 = !DILocation(line: 196, column: 25, scope: !311)
!314 = !DILocation(line: 196, column: 30, scope: !311)
!315 = !DILocation(line: 196, column: 16, scope: !311)
!316 = !DILocation(line: 196, column: 33, scope: !311)
!317 = !DILocation(line: 196, column: 39, scope: !311)
!318 = !DILocation(line: 196, column: 44, scope: !311)
!319 = !DILocation(line: 196, column: 50, scope: !311)
!320 = !DILocation(line: 196, column: 11, scope: !298)
!321 = !DILocation(line: 197, column: 10, scope: !311)
!322 = !DILocation(line: 197, column: 3, scope: !311)
!323 = !DILocation(line: 198, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !311, file: !3, line: 198, column: 11)
!325 = !DILocation(line: 198, column: 20, scope: !324)
!326 = !DILocation(line: 198, column: 25, scope: !324)
!327 = !DILocation(line: 198, column: 30, scope: !324)
!328 = !DILocation(line: 198, column: 16, scope: !324)
!329 = !DILocation(line: 198, column: 34, scope: !324)
!330 = !DILocation(line: 198, column: 40, scope: !324)
!331 = !DILocation(line: 198, column: 45, scope: !324)
!332 = !DILocation(line: 198, column: 51, scope: !324)
!333 = !DILocation(line: 198, column: 11, scope: !311)
!334 = !DILocation(line: 199, column: 10, scope: !324)
!335 = !DILocation(line: 199, column: 3, scope: !324)
!336 = !DILocation(line: 200, column: 11, scope: !337)
!337 = distinct !DILexicalBlock(scope: !324, file: !3, line: 200, column: 11)
!338 = !DILocation(line: 200, column: 20, scope: !337)
!339 = !DILocation(line: 200, column: 25, scope: !337)
!340 = !DILocation(line: 200, column: 29, scope: !337)
!341 = !DILocation(line: 200, column: 16, scope: !337)
!342 = !DILocation(line: 200, column: 32, scope: !337)
!343 = !DILocation(line: 200, column: 38, scope: !337)
!344 = !DILocation(line: 200, column: 43, scope: !337)
!345 = !DILocation(line: 200, column: 48, scope: !337)
!346 = !DILocation(line: 200, column: 11, scope: !324)
!347 = !DILocation(line: 201, column: 10, scope: !337)
!348 = !DILocation(line: 201, column: 3, scope: !337)
!349 = !DILocation(line: 202, column: 11, scope: !350)
!350 = distinct !DILexicalBlock(scope: !337, file: !3, line: 202, column: 11)
!351 = !DILocation(line: 202, column: 20, scope: !350)
!352 = !DILocation(line: 202, column: 25, scope: !350)
!353 = !DILocation(line: 202, column: 30, scope: !350)
!354 = !DILocation(line: 202, column: 16, scope: !350)
!355 = !DILocation(line: 202, column: 33, scope: !350)
!356 = !DILocation(line: 202, column: 39, scope: !350)
!357 = !DILocation(line: 202, column: 44, scope: !350)
!358 = !DILocation(line: 202, column: 50, scope: !350)
!359 = !DILocation(line: 202, column: 11, scope: !337)
!360 = !DILocation(line: 203, column: 10, scope: !350)
!361 = !DILocation(line: 203, column: 3, scope: !350)
!362 = !DILocation(line: 205, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !350, file: !3, line: 204, column: 7)
!364 = !DILocation(line: 207, column: 10, scope: !363)
!365 = !DILocation(line: 208, column: 3, scope: !363)
!366 = !DILocation(line: 208, column: 8, scope: !363)
!367 = !DILocation(line: 208, column: 15, scope: !363)
!368 = !DILocation(line: 211, column: 9, scope: !281)
!369 = !DILocation(line: 211, column: 2, scope: !281)
!370 = distinct !DISubprogram(name: "fb_cvt_hperiod", scope: !3, file: !3, line: 73, type: !282, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!371 = !DILocalVariable(name: "cvt", arg: 1, scope: !370, file: !3, line: 73, type: !284)
!372 = !DILocation(line: 73, column: 47, scope: !370)
!373 = !DILocalVariable(name: "num", scope: !370, file: !3, line: 75, type: !41)
!374 = !DILocation(line: 75, column: 6, scope: !370)
!375 = !DILocation(line: 75, column: 23, scope: !370)
!376 = !DILocation(line: 75, column: 28, scope: !370)
!377 = !DILocation(line: 75, column: 22, scope: !370)
!378 = !DILocalVariable(name: "den", scope: !370, file: !3, line: 76, type: !41)
!379 = !DILocation(line: 76, column: 6, scope: !370)
!380 = !DILocation(line: 78, column: 6, scope: !381)
!381 = distinct !DILexicalBlock(scope: !370, file: !3, line: 78, column: 6)
!382 = !DILocation(line: 78, column: 11, scope: !381)
!383 = !DILocation(line: 78, column: 17, scope: !381)
!384 = !DILocation(line: 78, column: 6, scope: !370)
!385 = !DILocation(line: 79, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !3, line: 78, column: 46)
!387 = !DILocation(line: 80, column: 14, scope: !386)
!388 = !DILocation(line: 80, column: 19, scope: !386)
!389 = !DILocation(line: 80, column: 24, scope: !386)
!390 = !DILocation(line: 80, column: 29, scope: !386)
!391 = !DILocation(line: 80, column: 23, scope: !386)
!392 = !DILocation(line: 80, column: 45, scope: !386)
!393 = !DILocation(line: 80, column: 50, scope: !386)
!394 = !DILocation(line: 80, column: 43, scope: !386)
!395 = !DILocation(line: 80, column: 39, scope: !386)
!396 = !DILocation(line: 80, column: 11, scope: !386)
!397 = !DILocation(line: 80, column: 7, scope: !386)
!398 = !DILocation(line: 81, column: 2, scope: !386)
!399 = !DILocation(line: 82, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !381, file: !3, line: 81, column: 9)
!401 = !DILocation(line: 83, column: 14, scope: !400)
!402 = !DILocation(line: 83, column: 19, scope: !400)
!403 = !DILocation(line: 83, column: 24, scope: !400)
!404 = !DILocation(line: 83, column: 29, scope: !400)
!405 = !DILocation(line: 83, column: 23, scope: !400)
!406 = !DILocation(line: 83, column: 41, scope: !400)
!407 = !DILocation(line: 83, column: 46, scope: !400)
!408 = !DILocation(line: 83, column: 55, scope: !400)
!409 = !DILocation(line: 83, column: 39, scope: !400)
!410 = !DILocation(line: 84, column: 7, scope: !400)
!411 = !DILocation(line: 84, column: 29, scope: !400)
!412 = !DILocation(line: 84, column: 34, scope: !400)
!413 = !DILocation(line: 84, column: 43, scope: !400)
!414 = !DILocation(line: 84, column: 27, scope: !400)
!415 = !DILocation(line: 83, column: 11, scope: !400)
!416 = !DILocation(line: 83, column: 7, scope: !400)
!417 = !DILocation(line: 87, column: 14, scope: !370)
!418 = !DILocation(line: 87, column: 18, scope: !370)
!419 = !DILocation(line: 87, column: 17, scope: !370)
!420 = !DILocation(line: 87, column: 11, scope: !370)
!421 = !DILocation(line: 87, column: 2, scope: !370)
!422 = distinct !DISubprogram(name: "fb_cvt_vtotal", scope: !3, file: !3, line: 162, type: !282, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!423 = !DILocalVariable(name: "cvt", arg: 1, scope: !422, file: !3, line: 162, type: !284)
!424 = !DILocation(line: 162, column: 46, scope: !422)
!425 = !DILocalVariable(name: "vtotal", scope: !422, file: !3, line: 164, type: !41)
!426 = !DILocation(line: 164, column: 6, scope: !422)
!427 = !DILocation(line: 164, column: 15, scope: !422)
!428 = !DILocation(line: 164, column: 20, scope: !422)
!429 = !DILocation(line: 164, column: 25, scope: !422)
!430 = !DILocation(line: 164, column: 30, scope: !422)
!431 = !DILocation(line: 164, column: 24, scope: !422)
!432 = !DILocation(line: 166, column: 16, scope: !422)
!433 = !DILocation(line: 166, column: 21, scope: !422)
!434 = !DILocation(line: 166, column: 14, scope: !422)
!435 = !DILocation(line: 166, column: 32, scope: !422)
!436 = !DILocation(line: 166, column: 37, scope: !422)
!437 = !DILocation(line: 166, column: 46, scope: !422)
!438 = !DILocation(line: 166, column: 30, scope: !422)
!439 = !DILocation(line: 166, column: 68, scope: !422)
!440 = !DILocation(line: 166, column: 51, scope: !422)
!441 = !DILocation(line: 166, column: 49, scope: !422)
!442 = !DILocation(line: 166, column: 9, scope: !422)
!443 = !DILocation(line: 167, column: 12, scope: !422)
!444 = !DILocation(line: 167, column: 17, scope: !422)
!445 = !DILocation(line: 167, column: 26, scope: !422)
!446 = !DILocation(line: 167, column: 9, scope: !422)
!447 = !DILocation(line: 169, column: 9, scope: !422)
!448 = !DILocation(line: 169, column: 2, scope: !422)
!449 = distinct !DISubprogram(name: "fb_cvt_hblank", scope: !3, file: !3, line: 101, type: !282, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!450 = !DILocalVariable(name: "cvt", arg: 1, scope: !449, file: !3, line: 101, type: !284)
!451 = !DILocation(line: 101, column: 46, scope: !449)
!452 = !DILocalVariable(name: "hblank", scope: !449, file: !3, line: 103, type: !41)
!453 = !DILocation(line: 103, column: 6, scope: !449)
!454 = !DILocation(line: 105, column: 6, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !3, line: 105, column: 6)
!456 = !DILocation(line: 105, column: 11, scope: !455)
!457 = !DILocation(line: 105, column: 17, scope: !455)
!458 = !DILocation(line: 105, column: 6, scope: !449)
!459 = !DILocation(line: 106, column: 10, scope: !455)
!460 = !DILocation(line: 106, column: 3, scope: !455)
!461 = !DILocalVariable(name: "ideal_duty_cycle", scope: !462, file: !3, line: 108, type: !41)
!462 = distinct !DILexicalBlock(scope: !455, file: !3, line: 107, column: 7)
!463 = !DILocation(line: 108, column: 7, scope: !462)
!464 = !DILocation(line: 108, column: 50, scope: !462)
!465 = !DILocation(line: 108, column: 26, scope: !462)
!466 = !DILocalVariable(name: "active_pixels", scope: !462, file: !3, line: 109, type: !41)
!467 = !DILocation(line: 109, column: 7, scope: !462)
!468 = !DILocation(line: 109, column: 23, scope: !462)
!469 = !DILocation(line: 109, column: 28, scope: !462)
!470 = !DILocation(line: 111, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !462, file: !3, line: 111, column: 7)
!472 = !DILocation(line: 111, column: 24, scope: !471)
!473 = !DILocation(line: 111, column: 7, scope: !462)
!474 = !DILocation(line: 112, column: 14, scope: !471)
!475 = !DILocation(line: 112, column: 28, scope: !471)
!476 = !DILocation(line: 112, column: 36, scope: !471)
!477 = !DILocation(line: 112, column: 11, scope: !471)
!478 = !DILocation(line: 112, column: 4, scope: !471)
!479 = !DILocation(line: 115, column: 14, scope: !480)
!480 = distinct !DILexicalBlock(scope: !471, file: !3, line: 114, column: 8)
!481 = !DILocation(line: 115, column: 30, scope: !480)
!482 = !DILocation(line: 115, column: 28, scope: !480)
!483 = !DILocation(line: 116, column: 15, scope: !480)
!484 = !DILocation(line: 116, column: 13, scope: !480)
!485 = !DILocation(line: 115, column: 47, scope: !480)
!486 = !DILocation(line: 115, column: 11, scope: !480)
!487 = !DILocation(line: 120, column: 9, scope: !449)
!488 = !DILocation(line: 122, column: 9, scope: !449)
!489 = !DILocation(line: 122, column: 2, scope: !449)
!490 = distinct !DISubprogram(name: "fb_cvt_hsync", scope: !3, file: !3, line: 125, type: !282, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!491 = !DILocalVariable(name: "cvt", arg: 1, scope: !490, file: !3, line: 125, type: !284)
!492 = !DILocation(line: 125, column: 45, scope: !490)
!493 = !DILocalVariable(name: "hsync", scope: !490, file: !3, line: 127, type: !41)
!494 = !DILocation(line: 127, column: 6, scope: !490)
!495 = !DILocation(line: 129, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !490, file: !3, line: 129, column: 6)
!497 = !DILocation(line: 129, column: 11, scope: !496)
!498 = !DILocation(line: 129, column: 17, scope: !496)
!499 = !DILocation(line: 129, column: 6, scope: !490)
!500 = !DILocation(line: 130, column: 9, scope: !496)
!501 = !DILocation(line: 130, column: 3, scope: !496)
!502 = !DILocation(line: 132, column: 30, scope: !496)
!503 = !DILocation(line: 132, column: 35, scope: !496)
!504 = !DILocation(line: 132, column: 28, scope: !496)
!505 = !DILocation(line: 132, column: 42, scope: !496)
!506 = !DILocation(line: 132, column: 9, scope: !496)
!507 = !DILocation(line: 134, column: 8, scope: !490)
!508 = !DILocation(line: 135, column: 9, scope: !490)
!509 = !DILocation(line: 135, column: 2, scope: !490)
!510 = distinct !DISubprogram(name: "fb_cvt_pixclock", scope: !3, file: !3, line: 172, type: !282, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!511 = !DILocalVariable(name: "cvt", arg: 1, scope: !510, file: !3, line: 172, type: !284)
!512 = !DILocation(line: 172, column: 48, scope: !510)
!513 = !DILocalVariable(name: "pixclock", scope: !510, file: !3, line: 174, type: !41)
!514 = !DILocation(line: 174, column: 6, scope: !510)
!515 = !DILocation(line: 176, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 176, column: 6)
!517 = !DILocation(line: 176, column: 11, scope: !516)
!518 = !DILocation(line: 176, column: 17, scope: !516)
!519 = !DILocation(line: 176, column: 6, scope: !510)
!520 = !DILocation(line: 177, column: 15, scope: !516)
!521 = !DILocation(line: 177, column: 20, scope: !516)
!522 = !DILocation(line: 177, column: 32, scope: !516)
!523 = !DILocation(line: 177, column: 37, scope: !516)
!524 = !DILocation(line: 177, column: 30, scope: !516)
!525 = !DILocation(line: 177, column: 46, scope: !516)
!526 = !DILocation(line: 177, column: 51, scope: !516)
!527 = !DILocation(line: 177, column: 44, scope: !516)
!528 = !DILocation(line: 177, column: 58, scope: !516)
!529 = !DILocation(line: 177, column: 12, scope: !516)
!530 = !DILocation(line: 177, column: 3, scope: !516)
!531 = !DILocation(line: 179, column: 15, scope: !516)
!532 = !DILocation(line: 179, column: 20, scope: !516)
!533 = !DILocation(line: 179, column: 27, scope: !516)
!534 = !DILocation(line: 179, column: 38, scope: !516)
!535 = !DILocation(line: 179, column: 43, scope: !516)
!536 = !DILocation(line: 179, column: 37, scope: !516)
!537 = !DILocation(line: 179, column: 12, scope: !516)
!538 = !DILocation(line: 181, column: 11, scope: !510)
!539 = !DILocation(line: 182, column: 11, scope: !510)
!540 = !DILocation(line: 183, column: 11, scope: !510)
!541 = !DILocation(line: 185, column: 9, scope: !510)
!542 = !DILocation(line: 185, column: 2, scope: !510)
!543 = distinct !DISubprogram(name: "fb_cvt_print_name", scope: !3, file: !3, line: 214, type: !544, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !284}
!546 = !DILocalVariable(name: "cvt", arg: 1, scope: !543, file: !3, line: 214, type: !284)
!547 = !DILocation(line: 214, column: 51, scope: !543)
!548 = !DILocalVariable(name: "pixcount", scope: !543, file: !3, line: 216, type: !41)
!549 = !DILocation(line: 216, column: 6, scope: !543)
!550 = !DILocalVariable(name: "pixcount_mod", scope: !543, file: !3, line: 216, type: !41)
!551 = !DILocation(line: 216, column: 16, scope: !543)
!552 = !DILocalVariable(name: "cnt", scope: !543, file: !3, line: 217, type: !31)
!553 = !DILocation(line: 217, column: 6, scope: !543)
!554 = !DILocalVariable(name: "offset", scope: !543, file: !3, line: 217, type: !31)
!555 = !DILocation(line: 217, column: 17, scope: !543)
!556 = !DILocalVariable(name: "read", scope: !543, file: !3, line: 217, type: !31)
!557 = !DILocation(line: 217, column: 29, scope: !543)
!558 = !DILocalVariable(name: "buf", scope: !543, file: !3, line: 218, type: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !42, line: 17, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !44, line: 21, baseType: !20)
!562 = !DILocation(line: 218, column: 6, scope: !543)
!563 = !DILocation(line: 218, column: 12, scope: !543)
!564 = !DILocation(line: 220, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !543, file: !3, line: 220, column: 6)
!566 = !DILocation(line: 220, column: 6, scope: !543)
!567 = !DILocation(line: 221, column: 3, scope: !565)
!568 = !DILocation(line: 223, column: 14, scope: !543)
!569 = !DILocation(line: 223, column: 19, scope: !543)
!570 = !DILocation(line: 223, column: 27, scope: !543)
!571 = !DILocation(line: 223, column: 32, scope: !543)
!572 = !DILocation(line: 223, column: 37, scope: !543)
!573 = !DILocation(line: 223, column: 42, scope: !543)
!574 = !DILocation(line: 223, column: 36, scope: !543)
!575 = !DILocation(line: 223, column: 24, scope: !543)
!576 = !DILocation(line: 223, column: 53, scope: !543)
!577 = !DILocation(line: 223, column: 11, scope: !543)
!578 = !DILocation(line: 224, column: 18, scope: !543)
!579 = !DILocation(line: 224, column: 23, scope: !543)
!580 = !DILocation(line: 224, column: 31, scope: !543)
!581 = !DILocation(line: 224, column: 36, scope: !543)
!582 = !DILocation(line: 224, column: 41, scope: !543)
!583 = !DILocation(line: 224, column: 46, scope: !543)
!584 = !DILocation(line: 224, column: 40, scope: !543)
!585 = !DILocation(line: 224, column: 28, scope: !543)
!586 = !DILocation(line: 224, column: 58, scope: !543)
!587 = !DILocation(line: 224, column: 15, scope: !543)
!588 = !DILocation(line: 225, column: 15, scope: !543)
!589 = !DILocation(line: 227, column: 18, scope: !543)
!590 = !DILocation(line: 227, column: 22, scope: !543)
!591 = !DILocation(line: 227, column: 21, scope: !543)
!592 = !DILocation(line: 227, column: 30, scope: !543)
!593 = !DILocation(line: 228, column: 4, scope: !543)
!594 = !DILocation(line: 228, column: 9, scope: !543)
!595 = !DILocation(line: 228, column: 15, scope: !543)
!596 = !DILocation(line: 228, column: 20, scope: !543)
!597 = !DILocation(line: 228, column: 26, scope: !543)
!598 = !DILocation(line: 228, column: 31, scope: !543)
!599 = !DILocation(line: 227, column: 9, scope: !543)
!600 = !DILocation(line: 227, column: 7, scope: !543)
!601 = !DILocation(line: 229, column: 12, scope: !543)
!602 = !DILocation(line: 229, column: 9, scope: !543)
!603 = !DILocation(line: 230, column: 9, scope: !543)
!604 = !DILocation(line: 230, column: 6, scope: !543)
!605 = !DILocation(line: 232, column: 6, scope: !606)
!606 = distinct !DILexicalBlock(scope: !543, file: !3, line: 232, column: 6)
!607 = !DILocation(line: 232, column: 11, scope: !606)
!608 = !DILocation(line: 232, column: 6, scope: !543)
!609 = !DILocation(line: 233, column: 12, scope: !606)
!610 = !DILocation(line: 233, column: 16, scope: !606)
!611 = !DILocation(line: 233, column: 15, scope: !606)
!612 = !DILocation(line: 233, column: 24, scope: !606)
!613 = !DILocation(line: 234, column: 22, scope: !606)
!614 = !DILocation(line: 234, column: 32, scope: !606)
!615 = !DILocation(line: 233, column: 3, scope: !606)
!616 = !DILocation(line: 236, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 236, column: 7)
!618 = distinct !DILexicalBlock(scope: !606, file: !3, line: 235, column: 7)
!619 = !DILocation(line: 236, column: 7, scope: !618)
!620 = !DILocation(line: 237, column: 20, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 236, column: 17)
!622 = !DILocation(line: 237, column: 24, scope: !621)
!623 = !DILocation(line: 237, column: 23, scope: !621)
!624 = !DILocation(line: 237, column: 32, scope: !621)
!625 = !DILocation(line: 237, column: 43, scope: !621)
!626 = !DILocation(line: 237, column: 11, scope: !621)
!627 = !DILocation(line: 237, column: 9, scope: !621)
!628 = !DILocation(line: 238, column: 11, scope: !621)
!629 = !DILocation(line: 238, column: 8, scope: !621)
!630 = !DILocation(line: 239, column: 14, scope: !621)
!631 = !DILocation(line: 239, column: 11, scope: !621)
!632 = !DILocation(line: 240, column: 3, scope: !621)
!633 = !DILocation(line: 242, column: 19, scope: !618)
!634 = !DILocation(line: 242, column: 23, scope: !618)
!635 = !DILocation(line: 242, column: 22, scope: !618)
!636 = !DILocation(line: 242, column: 31, scope: !618)
!637 = !DILocation(line: 242, column: 46, scope: !618)
!638 = !DILocation(line: 242, column: 10, scope: !618)
!639 = !DILocation(line: 242, column: 8, scope: !618)
!640 = !DILocation(line: 243, column: 10, scope: !618)
!641 = !DILocation(line: 243, column: 7, scope: !618)
!642 = !DILocation(line: 244, column: 13, scope: !618)
!643 = !DILocation(line: 244, column: 10, scope: !618)
!644 = !DILocation(line: 246, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !618, file: !3, line: 246, column: 7)
!646 = !DILocation(line: 246, column: 12, scope: !645)
!647 = !DILocation(line: 246, column: 25, scope: !645)
!648 = !DILocation(line: 246, column: 7, scope: !618)
!649 = !DILocation(line: 247, column: 20, scope: !645)
!650 = !DILocation(line: 247, column: 24, scope: !645)
!651 = !DILocation(line: 247, column: 23, scope: !645)
!652 = !DILocation(line: 247, column: 32, scope: !645)
!653 = !DILocation(line: 247, column: 11, scope: !645)
!654 = !DILocation(line: 247, column: 9, scope: !645)
!655 = !DILocation(line: 247, column: 4, scope: !645)
!656 = !DILocation(line: 248, column: 12, scope: !657)
!657 = distinct !DILexicalBlock(scope: !645, file: !3, line: 248, column: 12)
!658 = !DILocation(line: 248, column: 17, scope: !657)
!659 = !DILocation(line: 248, column: 30, scope: !657)
!660 = !DILocation(line: 248, column: 12, scope: !645)
!661 = !DILocation(line: 249, column: 20, scope: !657)
!662 = !DILocation(line: 249, column: 24, scope: !657)
!663 = !DILocation(line: 249, column: 23, scope: !657)
!664 = !DILocation(line: 249, column: 32, scope: !657)
!665 = !DILocation(line: 249, column: 11, scope: !657)
!666 = !DILocation(line: 249, column: 9, scope: !657)
!667 = !DILocation(line: 249, column: 4, scope: !657)
!668 = !DILocation(line: 250, column: 12, scope: !669)
!669 = distinct !DILexicalBlock(scope: !657, file: !3, line: 250, column: 12)
!670 = !DILocation(line: 250, column: 17, scope: !669)
!671 = !DILocation(line: 250, column: 30, scope: !669)
!672 = !DILocation(line: 250, column: 35, scope: !669)
!673 = !DILocation(line: 250, column: 38, scope: !669)
!674 = !DILocation(line: 250, column: 43, scope: !669)
!675 = !DILocation(line: 250, column: 56, scope: !669)
!676 = !DILocation(line: 250, column: 12, scope: !657)
!677 = !DILocation(line: 251, column: 20, scope: !669)
!678 = !DILocation(line: 251, column: 24, scope: !669)
!679 = !DILocation(line: 251, column: 23, scope: !669)
!680 = !DILocation(line: 251, column: 32, scope: !669)
!681 = !DILocation(line: 251, column: 11, scope: !669)
!682 = !DILocation(line: 251, column: 9, scope: !669)
!683 = !DILocation(line: 251, column: 4, scope: !669)
!684 = !DILocation(line: 252, column: 12, scope: !685)
!685 = distinct !DILexicalBlock(scope: !669, file: !3, line: 252, column: 12)
!686 = !DILocation(line: 252, column: 17, scope: !685)
!687 = !DILocation(line: 252, column: 30, scope: !685)
!688 = !DILocation(line: 252, column: 12, scope: !669)
!689 = !DILocation(line: 253, column: 20, scope: !685)
!690 = !DILocation(line: 253, column: 24, scope: !685)
!691 = !DILocation(line: 253, column: 23, scope: !685)
!692 = !DILocation(line: 253, column: 32, scope: !685)
!693 = !DILocation(line: 253, column: 11, scope: !685)
!694 = !DILocation(line: 253, column: 9, scope: !685)
!695 = !DILocation(line: 253, column: 4, scope: !685)
!696 = !DILocation(line: 255, column: 9, scope: !685)
!697 = !DILocation(line: 256, column: 10, scope: !618)
!698 = !DILocation(line: 256, column: 7, scope: !618)
!699 = !DILocation(line: 257, column: 13, scope: !618)
!700 = !DILocation(line: 257, column: 10, scope: !618)
!701 = !DILocation(line: 259, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !618, file: !3, line: 259, column: 7)
!703 = !DILocation(line: 259, column: 12, scope: !702)
!704 = !DILocation(line: 259, column: 18, scope: !702)
!705 = !DILocation(line: 259, column: 7, scope: !618)
!706 = !DILocation(line: 260, column: 20, scope: !707)
!707 = distinct !DILexicalBlock(scope: !702, file: !3, line: 259, column: 47)
!708 = !DILocation(line: 260, column: 24, scope: !707)
!709 = !DILocation(line: 260, column: 23, scope: !707)
!710 = !DILocation(line: 260, column: 32, scope: !707)
!711 = !DILocation(line: 260, column: 11, scope: !707)
!712 = !DILocation(line: 260, column: 9, scope: !707)
!713 = !DILocation(line: 261, column: 11, scope: !707)
!714 = !DILocation(line: 261, column: 8, scope: !707)
!715 = !DILocation(line: 262, column: 14, scope: !707)
!716 = !DILocation(line: 262, column: 11, scope: !707)
!717 = !DILocation(line: 263, column: 3, scope: !707)
!718 = !DILocation(line: 266, column: 27, scope: !543)
!719 = !DILocation(line: 266, column: 2, scope: !543)
!720 = !DILocation(line: 267, column: 8, scope: !543)
!721 = !DILocation(line: 267, column: 2, scope: !543)
!722 = !DILocation(line: 268, column: 1, scope: !543)
!723 = distinct !DISubprogram(name: "fb_cvt_convert_to_mode", scope: !3, file: !3, line: 270, type: !724, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !284, !32}
!726 = !DILocalVariable(name: "cvt", arg: 1, scope: !723, file: !3, line: 270, type: !284)
!727 = !DILocation(line: 270, column: 56, scope: !723)
!728 = !DILocalVariable(name: "mode", arg: 2, scope: !723, file: !3, line: 271, type: !32)
!729 = !DILocation(line: 271, column: 29, scope: !723)
!730 = !DILocation(line: 273, column: 18, scope: !723)
!731 = !DILocation(line: 273, column: 23, scope: !723)
!732 = !DILocation(line: 273, column: 2, scope: !723)
!733 = !DILocation(line: 273, column: 8, scope: !723)
!734 = !DILocation(line: 273, column: 16, scope: !723)
!735 = !DILocation(line: 274, column: 19, scope: !723)
!736 = !DILocation(line: 274, column: 2, scope: !723)
!737 = !DILocation(line: 274, column: 8, scope: !723)
!738 = !DILocation(line: 274, column: 17, scope: !723)
!739 = !DILocation(line: 275, column: 22, scope: !723)
!740 = !DILocation(line: 275, column: 27, scope: !723)
!741 = !DILocation(line: 275, column: 2, scope: !723)
!742 = !DILocation(line: 275, column: 8, scope: !723)
!743 = !DILocation(line: 275, column: 20, scope: !723)
!744 = !DILocation(line: 276, column: 23, scope: !723)
!745 = !DILocation(line: 276, column: 28, scope: !723)
!746 = !DILocation(line: 276, column: 2, scope: !723)
!747 = !DILocation(line: 276, column: 8, scope: !723)
!748 = !DILocation(line: 276, column: 21, scope: !723)
!749 = !DILocation(line: 277, column: 20, scope: !723)
!750 = !DILocation(line: 277, column: 25, scope: !723)
!751 = !DILocation(line: 277, column: 2, scope: !723)
!752 = !DILocation(line: 277, column: 8, scope: !723)
!753 = !DILocation(line: 277, column: 18, scope: !723)
!754 = !DILocation(line: 278, column: 23, scope: !723)
!755 = !DILocation(line: 278, column: 28, scope: !723)
!756 = !DILocation(line: 278, column: 2, scope: !723)
!757 = !DILocation(line: 278, column: 8, scope: !723)
!758 = !DILocation(line: 278, column: 21, scope: !723)
!759 = !DILocation(line: 279, column: 23, scope: !723)
!760 = !DILocation(line: 279, column: 28, scope: !723)
!761 = !DILocation(line: 279, column: 2, scope: !723)
!762 = !DILocation(line: 279, column: 8, scope: !723)
!763 = !DILocation(line: 279, column: 21, scope: !723)
!764 = !DILocation(line: 280, column: 20, scope: !723)
!765 = !DILocation(line: 280, column: 25, scope: !723)
!766 = !DILocation(line: 280, column: 2, scope: !723)
!767 = !DILocation(line: 280, column: 8, scope: !723)
!768 = !DILocation(line: 280, column: 18, scope: !723)
!769 = !DILocation(line: 282, column: 2, scope: !723)
!770 = !DILocation(line: 282, column: 8, scope: !723)
!771 = !DILocation(line: 282, column: 13, scope: !723)
!772 = !DILocation(line: 284, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !723, file: !3, line: 284, column: 6)
!774 = !DILocation(line: 284, column: 11, scope: !773)
!775 = !DILocation(line: 284, column: 17, scope: !773)
!776 = !DILocation(line: 284, column: 6, scope: !723)
!777 = !DILocation(line: 285, column: 3, scope: !773)
!778 = !DILocation(line: 285, column: 9, scope: !773)
!779 = !DILocation(line: 285, column: 14, scope: !773)
!780 = !DILocation(line: 287, column: 3, scope: !773)
!781 = !DILocation(line: 287, column: 9, scope: !773)
!782 = !DILocation(line: 287, column: 14, scope: !773)
!783 = !DILocation(line: 288, column: 1, scope: !723)
!784 = distinct !DISubprogram(name: "fb_cvt_vbi_lines", scope: !3, file: !3, line: 138, type: !282, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!785 = !DILocalVariable(name: "cvt", arg: 1, scope: !784, file: !3, line: 138, type: !284)
!786 = !DILocation(line: 138, column: 49, scope: !784)
!787 = !DILocalVariable(name: "vbi_lines", scope: !784, file: !3, line: 140, type: !41)
!788 = !DILocation(line: 140, column: 6, scope: !784)
!789 = !DILocalVariable(name: "min_vbi_lines", scope: !784, file: !3, line: 140, type: !41)
!790 = !DILocation(line: 140, column: 17, scope: !784)
!791 = !DILocalVariable(name: "act_vbi_lines", scope: !784, file: !3, line: 140, type: !41)
!792 = !DILocation(line: 140, column: 32, scope: !784)
!793 = !DILocation(line: 142, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !784, file: !3, line: 142, column: 6)
!795 = !DILocation(line: 142, column: 11, scope: !794)
!796 = !DILocation(line: 142, column: 17, scope: !794)
!797 = !DILocation(line: 142, column: 6, scope: !784)
!798 = !DILocation(line: 143, column: 45, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !3, line: 142, column: 46)
!800 = !DILocation(line: 143, column: 50, scope: !799)
!801 = !DILocation(line: 143, column: 44, scope: !799)
!802 = !DILocation(line: 143, column: 58, scope: !799)
!803 = !DILocation(line: 143, column: 13, scope: !799)
!804 = !DILocation(line: 144, column: 41, scope: !799)
!805 = !DILocation(line: 144, column: 46, scope: !799)
!806 = !DILocation(line: 144, column: 39, scope: !799)
!807 = !DILocation(line: 144, column: 52, scope: !799)
!808 = !DILocation(line: 144, column: 17, scope: !799)
!809 = !DILocation(line: 147, column: 2, scope: !799)
!810 = !DILocation(line: 148, column: 44, scope: !811)
!811 = distinct !DILexicalBlock(scope: !794, file: !3, line: 147, column: 9)
!812 = !DILocation(line: 148, column: 49, scope: !811)
!813 = !DILocation(line: 148, column: 43, scope: !811)
!814 = !DILocation(line: 148, column: 57, scope: !811)
!815 = !DILocation(line: 148, column: 61, scope: !811)
!816 = !DILocation(line: 148, column: 13, scope: !811)
!817 = !DILocation(line: 150, column: 19, scope: !811)
!818 = !DILocation(line: 150, column: 24, scope: !811)
!819 = !DILocation(line: 150, column: 30, scope: !811)
!820 = !DILocation(line: 150, column: 50, scope: !811)
!821 = !DILocation(line: 150, column: 17, scope: !811)
!822 = !DILocation(line: 154, column: 6, scope: !823)
!823 = distinct !DILexicalBlock(scope: !784, file: !3, line: 154, column: 6)
!824 = !DILocation(line: 154, column: 18, scope: !823)
!825 = !DILocation(line: 154, column: 16, scope: !823)
!826 = !DILocation(line: 154, column: 6, scope: !784)
!827 = !DILocation(line: 155, column: 19, scope: !823)
!828 = !DILocation(line: 155, column: 17, scope: !823)
!829 = !DILocation(line: 155, column: 3, scope: !823)
!830 = !DILocation(line: 157, column: 19, scope: !823)
!831 = !DILocation(line: 157, column: 17, scope: !823)
!832 = !DILocation(line: 159, column: 9, scope: !784)
!833 = !DILocation(line: 159, column: 2, scope: !784)
!834 = distinct !DISubprogram(name: "fb_cvt_ideal_duty_cycle", scope: !3, file: !3, line: 91, type: !282, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!835 = !DILocalVariable(name: "cvt", arg: 1, scope: !834, file: !3, line: 91, type: !284)
!836 = !DILocation(line: 91, column: 56, scope: !834)
!837 = !DILocalVariable(name: "c_prime", scope: !834, file: !3, line: 93, type: !41)
!838 = !DILocation(line: 93, column: 6, scope: !834)
!839 = !DILocalVariable(name: "m_prime", scope: !834, file: !3, line: 95, type: !41)
!840 = !DILocation(line: 95, column: 6, scope: !834)
!841 = !DILocalVariable(name: "h_period_est", scope: !834, file: !3, line: 96, type: !41)
!842 = !DILocation(line: 96, column: 6, scope: !834)
!843 = !DILocation(line: 96, column: 21, scope: !834)
!844 = !DILocation(line: 96, column: 26, scope: !834)
!845 = !DILocation(line: 98, column: 17, scope: !834)
!846 = !DILocation(line: 98, column: 15, scope: !834)
!847 = !DILocation(line: 98, column: 30, scope: !834)
!848 = !DILocation(line: 98, column: 40, scope: !834)
!849 = !DILocation(line: 98, column: 38, scope: !834)
!850 = !DILocation(line: 98, column: 53, scope: !834)
!851 = !DILocation(line: 98, column: 26, scope: !834)
!852 = !DILocation(line: 98, column: 60, scope: !834)
!853 = !DILocation(line: 98, column: 2, scope: !834)
!854 = distinct !DISubprogram(name: "kzalloc", scope: !6, file: !6, line: 662, type: !855, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!855 = !DISubroutineType(types: !856)
!856 = !{!16, !857, !14}
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 55, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !859, line: 72, baseType: !860)
!859 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !859, line: 16, baseType: !861)
!861 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!862 = !DILocalVariable(name: "s", arg: 1, scope: !863, file: !6, line: 445, type: !866)
!863 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !864, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!864 = !DISubroutineType(types: !865)
!865 = !{!16, !866, !14, !857}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !868, line: 117, flags: DIFlagFwdDecl)
!868 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DILocation(line: 445, column: 72, scope: !863, inlinedAt: !870)
!870 = distinct !DILocation(line: 552, column: 10, scope: !871, inlinedAt: !874)
!871 = distinct !DILexicalBlock(scope: !872, file: !6, line: 540, column: 34)
!872 = distinct !DILexicalBlock(scope: !873, file: !6, line: 540, column: 6)
!873 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !855, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!874 = distinct !DILocation(line: 664, column: 9, scope: !854)
!875 = !DILocalVariable(name: "flags", arg: 2, scope: !863, file: !6, line: 446, type: !14)
!876 = !DILocation(line: 446, column: 9, scope: !863, inlinedAt: !870)
!877 = !DILocalVariable(name: "size", arg: 3, scope: !863, file: !6, line: 446, type: !857)
!878 = !DILocation(line: 446, column: 23, scope: !863, inlinedAt: !870)
!879 = !DILocalVariable(name: "ret", scope: !863, file: !6, line: 448, type: !16)
!880 = !DILocation(line: 448, column: 8, scope: !863, inlinedAt: !870)
!881 = !DILocalVariable(name: "flags", arg: 1, scope: !882, file: !6, line: 318, type: !14)
!882 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !883, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!883 = !DISubroutineType(types: !884)
!884 = !{!5, !14}
!885 = !DILocation(line: 318, column: 67, scope: !882, inlinedAt: !886)
!886 = distinct !DILocation(line: 553, column: 20, scope: !871, inlinedAt: !874)
!887 = !DILocalVariable(name: "size", arg: 1, scope: !888, file: !6, line: 346, type: !857)
!888 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !889, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!889 = !DISubroutineType(types: !890)
!890 = !{!7, !857}
!891 = !DILocation(line: 346, column: 58, scope: !888, inlinedAt: !892)
!892 = distinct !DILocation(line: 547, column: 11, scope: !871, inlinedAt: !874)
!893 = !DILocalVariable(name: "size", arg: 1, scope: !894, file: !6, line: 472, type: !857)
!894 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !895, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!895 = !DISubroutineType(types: !896)
!896 = !{!16, !857, !14, !7}
!897 = !DILocation(line: 472, column: 28, scope: !894, inlinedAt: !898)
!898 = distinct !DILocation(line: 481, column: 9, scope: !899, inlinedAt: !900)
!899 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !855, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!900 = distinct !DILocation(line: 545, column: 11, scope: !901, inlinedAt: !874)
!901 = distinct !DILexicalBlock(scope: !871, file: !6, line: 544, column: 7)
!902 = !DILocalVariable(name: "flags", arg: 2, scope: !894, file: !6, line: 472, type: !14)
!903 = !DILocation(line: 472, column: 40, scope: !894, inlinedAt: !898)
!904 = !DILocalVariable(name: "order", arg: 3, scope: !894, file: !6, line: 472, type: !7)
!905 = !DILocation(line: 472, column: 60, scope: !894, inlinedAt: !898)
!906 = !DILocalVariable(name: "size", arg: 1, scope: !899, file: !6, line: 478, type: !857)
!907 = !DILocation(line: 478, column: 51, scope: !899, inlinedAt: !900)
!908 = !DILocalVariable(name: "flags", arg: 2, scope: !899, file: !6, line: 478, type: !14)
!909 = !DILocation(line: 478, column: 63, scope: !899, inlinedAt: !900)
!910 = !DILocalVariable(name: "order", scope: !899, file: !6, line: 480, type: !7)
!911 = !DILocation(line: 480, column: 15, scope: !899, inlinedAt: !900)
!912 = !DILocalVariable(name: "size", arg: 1, scope: !873, file: !6, line: 538, type: !857)
!913 = !DILocation(line: 538, column: 45, scope: !873, inlinedAt: !874)
!914 = !DILocalVariable(name: "flags", arg: 2, scope: !873, file: !6, line: 538, type: !14)
!915 = !DILocation(line: 538, column: 57, scope: !873, inlinedAt: !874)
!916 = !DILocalVariable(name: "index", scope: !871, file: !6, line: 542, type: !7)
!917 = !DILocation(line: 542, column: 16, scope: !871, inlinedAt: !874)
!918 = !DILocalVariable(name: "size", arg: 1, scope: !854, file: !6, line: 662, type: !857)
!919 = !DILocation(line: 662, column: 36, scope: !854)
!920 = !DILocalVariable(name: "flags", arg: 2, scope: !854, file: !6, line: 662, type: !14)
!921 = !DILocation(line: 662, column: 48, scope: !854)
!922 = !DILocation(line: 664, column: 17, scope: !854)
!923 = !DILocation(line: 664, column: 23, scope: !854)
!924 = !DILocation(line: 664, column: 29, scope: !854)
!925 = !DILocation(line: 540, column: 27, scope: !872, inlinedAt: !874)
!926 = !DILocation(line: 540, column: 6, scope: !872, inlinedAt: !874)
!927 = !DILocation(line: 540, column: 6, scope: !873, inlinedAt: !874)
!928 = !DILocation(line: 544, column: 7, scope: !901, inlinedAt: !874)
!929 = !DILocation(line: 544, column: 12, scope: !901, inlinedAt: !874)
!930 = !DILocation(line: 544, column: 7, scope: !871, inlinedAt: !874)
!931 = !DILocation(line: 545, column: 25, scope: !901, inlinedAt: !874)
!932 = !DILocation(line: 545, column: 31, scope: !901, inlinedAt: !874)
!933 = !DILocation(line: 480, column: 33, scope: !899, inlinedAt: !900)
!934 = !DILocation(line: 480, column: 23, scope: !899, inlinedAt: !900)
!935 = !DILocation(line: 481, column: 29, scope: !899, inlinedAt: !900)
!936 = !DILocation(line: 481, column: 35, scope: !899, inlinedAt: !900)
!937 = !DILocation(line: 481, column: 42, scope: !899, inlinedAt: !900)
!938 = !DILocation(line: 474, column: 23, scope: !894, inlinedAt: !898)
!939 = !DILocation(line: 474, column: 29, scope: !894, inlinedAt: !898)
!940 = !DILocation(line: 474, column: 36, scope: !894, inlinedAt: !898)
!941 = !DILocation(line: 474, column: 9, scope: !894, inlinedAt: !898)
!942 = !DILocation(line: 545, column: 4, scope: !901, inlinedAt: !874)
!943 = !DILocation(line: 547, column: 25, scope: !871, inlinedAt: !874)
!944 = !DILocation(line: 348, column: 7, scope: !945, inlinedAt: !892)
!945 = distinct !DILexicalBlock(scope: !888, file: !6, line: 348, column: 6)
!946 = !DILocation(line: 348, column: 6, scope: !888, inlinedAt: !892)
!947 = !DILocation(line: 349, column: 3, scope: !945, inlinedAt: !892)
!948 = !DILocation(line: 351, column: 6, scope: !949, inlinedAt: !892)
!949 = distinct !DILexicalBlock(scope: !888, file: !6, line: 351, column: 6)
!950 = !DILocation(line: 351, column: 11, scope: !949, inlinedAt: !892)
!951 = !DILocation(line: 351, column: 6, scope: !888, inlinedAt: !892)
!952 = !DILocation(line: 352, column: 3, scope: !949, inlinedAt: !892)
!953 = !DILocation(line: 354, column: 32, scope: !954, inlinedAt: !892)
!954 = distinct !DILexicalBlock(scope: !888, file: !6, line: 354, column: 6)
!955 = !DILocation(line: 354, column: 37, scope: !954, inlinedAt: !892)
!956 = !DILocation(line: 354, column: 42, scope: !954, inlinedAt: !892)
!957 = !DILocation(line: 354, column: 45, scope: !954, inlinedAt: !892)
!958 = !DILocation(line: 354, column: 50, scope: !954, inlinedAt: !892)
!959 = !DILocation(line: 354, column: 6, scope: !888, inlinedAt: !892)
!960 = !DILocation(line: 355, column: 3, scope: !954, inlinedAt: !892)
!961 = !DILocation(line: 356, column: 32, scope: !962, inlinedAt: !892)
!962 = distinct !DILexicalBlock(scope: !888, file: !6, line: 356, column: 6)
!963 = !DILocation(line: 356, column: 37, scope: !962, inlinedAt: !892)
!964 = !DILocation(line: 356, column: 43, scope: !962, inlinedAt: !892)
!965 = !DILocation(line: 356, column: 46, scope: !962, inlinedAt: !892)
!966 = !DILocation(line: 356, column: 51, scope: !962, inlinedAt: !892)
!967 = !DILocation(line: 356, column: 6, scope: !888, inlinedAt: !892)
!968 = !DILocation(line: 357, column: 3, scope: !962, inlinedAt: !892)
!969 = !DILocation(line: 358, column: 6, scope: !970, inlinedAt: !892)
!970 = distinct !DILexicalBlock(scope: !888, file: !6, line: 358, column: 6)
!971 = !DILocation(line: 358, column: 11, scope: !970, inlinedAt: !892)
!972 = !DILocation(line: 358, column: 6, scope: !888, inlinedAt: !892)
!973 = !DILocation(line: 358, column: 26, scope: !970, inlinedAt: !892)
!974 = !DILocation(line: 359, column: 6, scope: !975, inlinedAt: !892)
!975 = distinct !DILexicalBlock(scope: !888, file: !6, line: 359, column: 6)
!976 = !DILocation(line: 359, column: 11, scope: !975, inlinedAt: !892)
!977 = !DILocation(line: 359, column: 6, scope: !888, inlinedAt: !892)
!978 = !DILocation(line: 359, column: 26, scope: !975, inlinedAt: !892)
!979 = !DILocation(line: 360, column: 6, scope: !980, inlinedAt: !892)
!980 = distinct !DILexicalBlock(scope: !888, file: !6, line: 360, column: 6)
!981 = !DILocation(line: 360, column: 11, scope: !980, inlinedAt: !892)
!982 = !DILocation(line: 360, column: 6, scope: !888, inlinedAt: !892)
!983 = !DILocation(line: 360, column: 26, scope: !980, inlinedAt: !892)
!984 = !DILocation(line: 361, column: 6, scope: !985, inlinedAt: !892)
!985 = distinct !DILexicalBlock(scope: !888, file: !6, line: 361, column: 6)
!986 = !DILocation(line: 361, column: 11, scope: !985, inlinedAt: !892)
!987 = !DILocation(line: 361, column: 6, scope: !888, inlinedAt: !892)
!988 = !DILocation(line: 361, column: 26, scope: !985, inlinedAt: !892)
!989 = !DILocation(line: 362, column: 6, scope: !990, inlinedAt: !892)
!990 = distinct !DILexicalBlock(scope: !888, file: !6, line: 362, column: 6)
!991 = !DILocation(line: 362, column: 11, scope: !990, inlinedAt: !892)
!992 = !DILocation(line: 362, column: 6, scope: !888, inlinedAt: !892)
!993 = !DILocation(line: 362, column: 26, scope: !990, inlinedAt: !892)
!994 = !DILocation(line: 363, column: 6, scope: !995, inlinedAt: !892)
!995 = distinct !DILexicalBlock(scope: !888, file: !6, line: 363, column: 6)
!996 = !DILocation(line: 363, column: 11, scope: !995, inlinedAt: !892)
!997 = !DILocation(line: 363, column: 6, scope: !888, inlinedAt: !892)
!998 = !DILocation(line: 363, column: 26, scope: !995, inlinedAt: !892)
!999 = !DILocation(line: 364, column: 6, scope: !1000, inlinedAt: !892)
!1000 = distinct !DILexicalBlock(scope: !888, file: !6, line: 364, column: 6)
!1001 = !DILocation(line: 364, column: 11, scope: !1000, inlinedAt: !892)
!1002 = !DILocation(line: 364, column: 6, scope: !888, inlinedAt: !892)
!1003 = !DILocation(line: 364, column: 26, scope: !1000, inlinedAt: !892)
!1004 = !DILocation(line: 365, column: 6, scope: !1005, inlinedAt: !892)
!1005 = distinct !DILexicalBlock(scope: !888, file: !6, line: 365, column: 6)
!1006 = !DILocation(line: 365, column: 11, scope: !1005, inlinedAt: !892)
!1007 = !DILocation(line: 365, column: 6, scope: !888, inlinedAt: !892)
!1008 = !DILocation(line: 365, column: 26, scope: !1005, inlinedAt: !892)
!1009 = !DILocation(line: 366, column: 6, scope: !1010, inlinedAt: !892)
!1010 = distinct !DILexicalBlock(scope: !888, file: !6, line: 366, column: 6)
!1011 = !DILocation(line: 366, column: 11, scope: !1010, inlinedAt: !892)
!1012 = !DILocation(line: 366, column: 6, scope: !888, inlinedAt: !892)
!1013 = !DILocation(line: 366, column: 26, scope: !1010, inlinedAt: !892)
!1014 = !DILocation(line: 367, column: 6, scope: !1015, inlinedAt: !892)
!1015 = distinct !DILexicalBlock(scope: !888, file: !6, line: 367, column: 6)
!1016 = !DILocation(line: 367, column: 11, scope: !1015, inlinedAt: !892)
!1017 = !DILocation(line: 367, column: 6, scope: !888, inlinedAt: !892)
!1018 = !DILocation(line: 367, column: 26, scope: !1015, inlinedAt: !892)
!1019 = !DILocation(line: 368, column: 6, scope: !1020, inlinedAt: !892)
!1020 = distinct !DILexicalBlock(scope: !888, file: !6, line: 368, column: 6)
!1021 = !DILocation(line: 368, column: 11, scope: !1020, inlinedAt: !892)
!1022 = !DILocation(line: 368, column: 6, scope: !888, inlinedAt: !892)
!1023 = !DILocation(line: 368, column: 26, scope: !1020, inlinedAt: !892)
!1024 = !DILocation(line: 369, column: 6, scope: !1025, inlinedAt: !892)
!1025 = distinct !DILexicalBlock(scope: !888, file: !6, line: 369, column: 6)
!1026 = !DILocation(line: 369, column: 11, scope: !1025, inlinedAt: !892)
!1027 = !DILocation(line: 369, column: 6, scope: !888, inlinedAt: !892)
!1028 = !DILocation(line: 369, column: 26, scope: !1025, inlinedAt: !892)
!1029 = !DILocation(line: 370, column: 6, scope: !1030, inlinedAt: !892)
!1030 = distinct !DILexicalBlock(scope: !888, file: !6, line: 370, column: 6)
!1031 = !DILocation(line: 370, column: 11, scope: !1030, inlinedAt: !892)
!1032 = !DILocation(line: 370, column: 6, scope: !888, inlinedAt: !892)
!1033 = !DILocation(line: 370, column: 26, scope: !1030, inlinedAt: !892)
!1034 = !DILocation(line: 371, column: 6, scope: !1035, inlinedAt: !892)
!1035 = distinct !DILexicalBlock(scope: !888, file: !6, line: 371, column: 6)
!1036 = !DILocation(line: 371, column: 11, scope: !1035, inlinedAt: !892)
!1037 = !DILocation(line: 371, column: 6, scope: !888, inlinedAt: !892)
!1038 = !DILocation(line: 371, column: 26, scope: !1035, inlinedAt: !892)
!1039 = !DILocation(line: 372, column: 6, scope: !1040, inlinedAt: !892)
!1040 = distinct !DILexicalBlock(scope: !888, file: !6, line: 372, column: 6)
!1041 = !DILocation(line: 372, column: 11, scope: !1040, inlinedAt: !892)
!1042 = !DILocation(line: 372, column: 6, scope: !888, inlinedAt: !892)
!1043 = !DILocation(line: 372, column: 26, scope: !1040, inlinedAt: !892)
!1044 = !DILocation(line: 373, column: 6, scope: !1045, inlinedAt: !892)
!1045 = distinct !DILexicalBlock(scope: !888, file: !6, line: 373, column: 6)
!1046 = !DILocation(line: 373, column: 11, scope: !1045, inlinedAt: !892)
!1047 = !DILocation(line: 373, column: 6, scope: !888, inlinedAt: !892)
!1048 = !DILocation(line: 373, column: 26, scope: !1045, inlinedAt: !892)
!1049 = !DILocation(line: 374, column: 6, scope: !1050, inlinedAt: !892)
!1050 = distinct !DILexicalBlock(scope: !888, file: !6, line: 374, column: 6)
!1051 = !DILocation(line: 374, column: 11, scope: !1050, inlinedAt: !892)
!1052 = !DILocation(line: 374, column: 6, scope: !888, inlinedAt: !892)
!1053 = !DILocation(line: 374, column: 26, scope: !1050, inlinedAt: !892)
!1054 = !DILocation(line: 375, column: 6, scope: !1055, inlinedAt: !892)
!1055 = distinct !DILexicalBlock(scope: !888, file: !6, line: 375, column: 6)
!1056 = !DILocation(line: 375, column: 11, scope: !1055, inlinedAt: !892)
!1057 = !DILocation(line: 375, column: 6, scope: !888, inlinedAt: !892)
!1058 = !DILocation(line: 375, column: 27, scope: !1055, inlinedAt: !892)
!1059 = !DILocation(line: 376, column: 6, scope: !1060, inlinedAt: !892)
!1060 = distinct !DILexicalBlock(scope: !888, file: !6, line: 376, column: 6)
!1061 = !DILocation(line: 376, column: 11, scope: !1060, inlinedAt: !892)
!1062 = !DILocation(line: 376, column: 6, scope: !888, inlinedAt: !892)
!1063 = !DILocation(line: 376, column: 32, scope: !1060, inlinedAt: !892)
!1064 = !DILocation(line: 377, column: 6, scope: !1065, inlinedAt: !892)
!1065 = distinct !DILexicalBlock(scope: !888, file: !6, line: 377, column: 6)
!1066 = !DILocation(line: 377, column: 11, scope: !1065, inlinedAt: !892)
!1067 = !DILocation(line: 377, column: 6, scope: !888, inlinedAt: !892)
!1068 = !DILocation(line: 377, column: 32, scope: !1065, inlinedAt: !892)
!1069 = !DILocation(line: 378, column: 6, scope: !1070, inlinedAt: !892)
!1070 = distinct !DILexicalBlock(scope: !888, file: !6, line: 378, column: 6)
!1071 = !DILocation(line: 378, column: 11, scope: !1070, inlinedAt: !892)
!1072 = !DILocation(line: 378, column: 6, scope: !888, inlinedAt: !892)
!1073 = !DILocation(line: 378, column: 32, scope: !1070, inlinedAt: !892)
!1074 = !DILocation(line: 379, column: 6, scope: !1075, inlinedAt: !892)
!1075 = distinct !DILexicalBlock(scope: !888, file: !6, line: 379, column: 6)
!1076 = !DILocation(line: 379, column: 11, scope: !1075, inlinedAt: !892)
!1077 = !DILocation(line: 379, column: 6, scope: !888, inlinedAt: !892)
!1078 = !DILocation(line: 379, column: 33, scope: !1075, inlinedAt: !892)
!1079 = !DILocation(line: 380, column: 6, scope: !1080, inlinedAt: !892)
!1080 = distinct !DILexicalBlock(scope: !888, file: !6, line: 380, column: 6)
!1081 = !DILocation(line: 380, column: 11, scope: !1080, inlinedAt: !892)
!1082 = !DILocation(line: 380, column: 6, scope: !888, inlinedAt: !892)
!1083 = !DILocation(line: 380, column: 33, scope: !1080, inlinedAt: !892)
!1084 = !DILocation(line: 381, column: 6, scope: !1085, inlinedAt: !892)
!1085 = distinct !DILexicalBlock(scope: !888, file: !6, line: 381, column: 6)
!1086 = !DILocation(line: 381, column: 11, scope: !1085, inlinedAt: !892)
!1087 = !DILocation(line: 381, column: 6, scope: !888, inlinedAt: !892)
!1088 = !DILocation(line: 381, column: 33, scope: !1085, inlinedAt: !892)
!1089 = !DILocation(line: 382, column: 2, scope: !1090, inlinedAt: !892)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !6, line: 382, column: 2)
!1091 = distinct !DILexicalBlock(scope: !888, file: !6, line: 382, column: 2)
!1092 = !{i32 -2142078304, i32 -2142078275, i32 -2142078229, i32 -2142078171, i32 -2142078117, i32 -2142078063, i32 -2142078008, i32 -2142077977}
!1093 = !DILocation(line: 382, column: 2, scope: !1094, inlinedAt: !892)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !6, line: 382, column: 2)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !6, line: 382, column: 2)
!1096 = !{i32 -2142077534, i32 -2142077527, i32 -2142077473, i32 -2142077442, i32 -2142077412}
!1097 = !DILocation(line: 382, column: 2, scope: !1095, inlinedAt: !892)
!1098 = !DILocation(line: 386, column: 1, scope: !888, inlinedAt: !892)
!1099 = !DILocation(line: 547, column: 9, scope: !871, inlinedAt: !874)
!1100 = !DILocation(line: 549, column: 8, scope: !1101, inlinedAt: !874)
!1101 = distinct !DILexicalBlock(scope: !871, file: !6, line: 549, column: 7)
!1102 = !DILocation(line: 549, column: 7, scope: !871, inlinedAt: !874)
!1103 = !DILocation(line: 550, column: 4, scope: !1101, inlinedAt: !874)
!1104 = !DILocation(line: 553, column: 33, scope: !871, inlinedAt: !874)
!1105 = !DILocation(line: 325, column: 6, scope: !1106, inlinedAt: !886)
!1106 = distinct !DILexicalBlock(scope: !882, file: !6, line: 325, column: 6)
!1107 = !DILocation(line: 325, column: 6, scope: !882, inlinedAt: !886)
!1108 = !DILocation(line: 326, column: 3, scope: !1106, inlinedAt: !886)
!1109 = !DILocation(line: 332, column: 9, scope: !882, inlinedAt: !886)
!1110 = !DILocation(line: 332, column: 15, scope: !882, inlinedAt: !886)
!1111 = !DILocation(line: 332, column: 2, scope: !882, inlinedAt: !886)
!1112 = !DILocation(line: 336, column: 1, scope: !882, inlinedAt: !886)
!1113 = !DILocation(line: 553, column: 5, scope: !871, inlinedAt: !874)
!1114 = !DILocation(line: 553, column: 41, scope: !871, inlinedAt: !874)
!1115 = !DILocation(line: 554, column: 5, scope: !871, inlinedAt: !874)
!1116 = !DILocation(line: 554, column: 12, scope: !871, inlinedAt: !874)
!1117 = !DILocation(line: 448, column: 31, scope: !863, inlinedAt: !870)
!1118 = !DILocation(line: 448, column: 34, scope: !863, inlinedAt: !870)
!1119 = !DILocation(line: 448, column: 14, scope: !863, inlinedAt: !870)
!1120 = !DILocation(line: 450, column: 22, scope: !863, inlinedAt: !870)
!1121 = !DILocation(line: 450, column: 25, scope: !863, inlinedAt: !870)
!1122 = !DILocation(line: 450, column: 30, scope: !863, inlinedAt: !870)
!1123 = !DILocation(line: 450, column: 36, scope: !863, inlinedAt: !870)
!1124 = !DILocation(line: 450, column: 8, scope: !863, inlinedAt: !870)
!1125 = !DILocation(line: 450, column: 6, scope: !863, inlinedAt: !870)
!1126 = !DILocation(line: 451, column: 9, scope: !863, inlinedAt: !870)
!1127 = !DILocation(line: 552, column: 3, scope: !871, inlinedAt: !874)
!1128 = !DILocation(line: 557, column: 19, scope: !873, inlinedAt: !874)
!1129 = !DILocation(line: 557, column: 25, scope: !873, inlinedAt: !874)
!1130 = !DILocation(line: 557, column: 9, scope: !873, inlinedAt: !874)
!1131 = !DILocation(line: 557, column: 2, scope: !873, inlinedAt: !874)
!1132 = !DILocation(line: 558, column: 1, scope: !873, inlinedAt: !874)
!1133 = !DILocation(line: 664, column: 2, scope: !854)
!1134 = distinct !DISubprogram(name: "get_order", scope: !1135, file: !1135, line: 29, type: !1136, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1135 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!31, !861}
!1138 = !DILocalVariable(name: "x", arg: 1, scope: !1139, file: !1140, line: 366, type: !1143)
!1139 = distinct !DISubprogram(name: "fls64", scope: !1140, file: !1140, line: 366, type: !1141, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1140 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!31, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !44, line: 31, baseType: !1144)
!1144 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1145 = !DILocation(line: 366, column: 40, scope: !1139, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 46, column: 9, scope: !1134)
!1147 = !DILocalVariable(name: "bitpos", scope: !1139, file: !1140, line: 368, type: !31)
!1148 = !DILocation(line: 368, column: 6, scope: !1139, inlinedAt: !1146)
!1149 = !DILocalVariable(name: "size", arg: 1, scope: !1134, file: !1135, line: 29, type: !861)
!1150 = !DILocation(line: 29, column: 63, scope: !1134)
!1151 = !DILocation(line: 31, column: 27, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1134, file: !1135, line: 31, column: 6)
!1153 = !DILocation(line: 31, column: 6, scope: !1152)
!1154 = !DILocation(line: 31, column: 6, scope: !1134)
!1155 = !DILocation(line: 32, column: 8, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !1135, line: 32, column: 7)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !1135, line: 31, column: 34)
!1158 = !DILocation(line: 32, column: 7, scope: !1157)
!1159 = !DILocation(line: 33, column: 4, scope: !1156)
!1160 = !DILocation(line: 35, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !1135, line: 35, column: 7)
!1162 = !DILocation(line: 35, column: 12, scope: !1161)
!1163 = !DILocation(line: 35, column: 7, scope: !1157)
!1164 = !DILocation(line: 36, column: 4, scope: !1161)
!1165 = !DILocation(line: 38, column: 10, scope: !1157)
!1166 = !DILocation(line: 38, column: 28, scope: !1157)
!1167 = !DILocation(line: 38, column: 41, scope: !1157)
!1168 = !DILocation(line: 38, column: 3, scope: !1157)
!1169 = !DILocation(line: 41, column: 6, scope: !1134)
!1170 = !DILocation(line: 42, column: 7, scope: !1134)
!1171 = !DILocation(line: 46, column: 15, scope: !1134)
!1172 = !DILocation(line: 374, column: 2, scope: !1139, inlinedAt: !1146)
!1173 = !DILocation(line: 376, column: 14, scope: !1139, inlinedAt: !1146)
!1174 = !{i32 689979}
!1175 = !DILocation(line: 377, column: 9, scope: !1139, inlinedAt: !1146)
!1176 = !DILocation(line: 377, column: 16, scope: !1139, inlinedAt: !1146)
!1177 = !DILocation(line: 46, column: 2, scope: !1134)
!1178 = !DILocation(line: 48, column: 1, scope: !1134)
!1179 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1180, file: !1180, line: 30, type: !1181, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1180 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!31, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !42, line: 23, baseType: !1143)
!1184 = !DILocation(line: 366, column: 40, scope: !1139, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 32, column: 9, scope: !1179)
!1186 = !DILocation(line: 368, column: 6, scope: !1139, inlinedAt: !1185)
!1187 = !DILocalVariable(name: "n", arg: 1, scope: !1179, file: !1180, line: 30, type: !1183)
!1188 = !DILocation(line: 30, column: 21, scope: !1179)
!1189 = !DILocation(line: 32, column: 15, scope: !1179)
!1190 = !DILocation(line: 374, column: 2, scope: !1139, inlinedAt: !1185)
!1191 = !DILocation(line: 376, column: 14, scope: !1139, inlinedAt: !1185)
!1192 = !DILocation(line: 377, column: 9, scope: !1139, inlinedAt: !1185)
!1193 = !DILocation(line: 377, column: 16, scope: !1139, inlinedAt: !1185)
!1194 = !DILocation(line: 32, column: 18, scope: !1179)
!1195 = !DILocation(line: 32, column: 2, scope: !1179)
!1196 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1197, file: !1197, line: 137, type: !1198, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!1197 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!16, !866, !1200, !857, !14}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1202 = !DILocalVariable(name: "s", arg: 1, scope: !1196, file: !1197, line: 137, type: !866)
!1203 = !DILocation(line: 137, column: 54, scope: !1196)
!1204 = !DILocalVariable(name: "object", arg: 2, scope: !1196, file: !1197, line: 137, type: !1200)
!1205 = !DILocation(line: 137, column: 69, scope: !1196)
!1206 = !DILocalVariable(name: "size", arg: 3, scope: !1196, file: !1197, line: 138, type: !857)
!1207 = !DILocation(line: 138, column: 12, scope: !1196)
!1208 = !DILocalVariable(name: "flags", arg: 4, scope: !1196, file: !1197, line: 138, type: !14)
!1209 = !DILocation(line: 138, column: 24, scope: !1196)
!1210 = !DILocation(line: 140, column: 17, scope: !1196)
!1211 = !DILocation(line: 140, column: 2, scope: !1196)
