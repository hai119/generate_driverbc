; ModuleID = '../bcout/drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_eseries.llvm.bc'
source_filename = "drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_eseries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

@.str = private unnamed_addr constant [11 x i8] c"ni_eseries\00", align 1
@ni_eseries_route_values = dso_local constant { i8*, <{ <{ [162 x i8], [48 x i8] }>, <{ [163 x i8], [47 x i8] }>, <{ [164 x i8], [46 x i8] }>, <{ [78 x i8], [132 x i8] }>, <{ [86 x i8], [124 x i8] }>, <{ [171 x i8], [39 x i8] }>, <{ [173 x i8], [37 x i8] }>, <{ [160 x i8], [50 x i8] }>, <{ [77 x i8], [133 x i8] }>, <{ [85 x i8], [125 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [193 x i8], [17 x i8] }>, <{ [170 x i8], [40 x i8] }>, <{ [170 x i8], [40 x i8] }>, <{ [160 x i8], [50 x i8] }>, <{ [160 x i8], [50 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [157 x i8], [53 x i8] }>, <{ [134 x i8], [76 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [141 x i8], [69 x i8] }> }> } { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), <{ <{ [162 x i8], [48 x i8] }>, <{ [163 x i8], [47 x i8] }>, <{ [164 x i8], [46 x i8] }>, <{ [78 x i8], [132 x i8] }>, <{ [86 x i8], [124 x i8] }>, <{ [171 x i8], [39 x i8] }>, <{ [173 x i8], [37 x i8] }>, <{ [160 x i8], [50 x i8] }>, <{ [77 x i8], [133 x i8] }>, <{ [85 x i8], [125 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [193 x i8], [17 x i8] }>, <{ [170 x i8], [40 x i8] }>, <{ [170 x i8], [40 x i8] }>, <{ [160 x i8], [50 x i8] }>, <{ [160 x i8], [50 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [157 x i8], [53 x i8] }>, <{ [134 x i8], [76 x i8] }>, [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], [210 x i8], <{ [141 x i8], [69 x i8] }> }> <{ <{ [162 x i8], [48 x i8] }> <{ [162 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\81", [48 x i8] zeroinitializer }>, <{ [163 x i8], [47 x i8] }> <{ [163 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\82", [47 x i8] zeroinitializer }>, <{ [164 x i8], [46 x i8] }> <{ [164 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\83", [46 x i8] zeroinitializer }>, <{ [78 x i8], [132 x i8] }> <{ [78 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\84", [132 x i8] zeroinitializer }>, <{ [86 x i8], [124 x i8] }> <{ [86 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\85", [124 x i8] zeroinitializer }>, <{ [171 x i8], [39 x i8] }> <{ [171 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86", [39 x i8] zeroinitializer }>, <{ [173 x i8], [37 x i8] }> <{ [173 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [37 x i8] zeroinitializer }>, <{ [160 x i8], [50 x i8] }> <{ [160 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88", [50 x i8] zeroinitializer }>, <{ [77 x i8], [133 x i8] }> <{ [77 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\89", [133 x i8] zeroinitializer }>, <{ [85 x i8], [125 x i8] }> <{ [85 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8A", [125 x i8] zeroinitializer }>, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [210 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\88\89\8A\8B\85\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\00\00\00\00\00\00\83\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", <{ [193 x i8], [17 x i8] }> <{ [193 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8C", [17 x i8] zeroinitializer }>, <{ [170 x i8], [40 x i8] }> <{ [170 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\83\84\85\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\87", [40 x i8] zeroinitializer }>, <{ [170 x i8], [40 x i8] }> <{ [170 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\83\84\85\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\00\00\00\00\00\00\00\00\00\00\00\00\87", [40 x i8] zeroinitializer }>, <{ [160 x i8], [50 x i8] }> <{ [160 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\83\84\85\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\00\00\87", [50 x i8] zeroinitializer }>, <{ [160 x i8], [50 x i8] }> <{ [160 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\83\84\85\86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\86\00\00\87", [50 x i8] zeroinitializer }>, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\94\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\00\95\92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\94\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\00\95\92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, <{ [157 x i8], [53 x i8] }> <{ [157 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\81\82\83\84\85\86\87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\87", [53 x i8] zeroinitializer }>, <{ [134 x i8], [76 x i8] }> <{ [134 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", [76 x i8] zeroinitializer }>, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] zeroinitializer, [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] zeroinitializer, [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] zeroinitializer, [210 x i8] c"\81\82\83\84\85\86\87\88\89\8A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8B\8C\8D\8E\8F\90\91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\91\00\00\00\00\92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F\00\00\00\00\00", [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, [210 x i8] zeroinitializer, <{ [141 x i8], [69 x i8] }> <{ [141 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\81", [69 x i8] zeroinitializer }> }> }, align 8, !dbg !0

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ni_eseries_route_values", scope: !2, file: !3, line: 45, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routing/ni_route_values/ni_eseries.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "family_route_values", file: !8, line: 90, size: 352896, elements: !9)
!8 = !DIFile(filename: "drivers/staging/comedi/drivers/ni_routing/ni_route_values/../ni_route_values.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !14}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !7, file: !8, line: 91, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "register_values", scope: !7, file: !8, line: 92, baseType: !15, size: 352800, offset: 64)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 352800, elements: !23)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "register_type", file: !8, line: 48, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24, !24}
!24 = !DISubrange(count: 210)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"Code Model", i32 2}
!29 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}